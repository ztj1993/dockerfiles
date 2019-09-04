#!/bin/sh

set -e

export PACKAGE_NAME=$(python setup.py --name)
export PACKAGE_VERSION=$(python setup.py --version)
echo "package: ${PACKAGE_NAME}==${PACKAGE_VERSION}"

export TEST_ENABLE=${TEST_ENABLE:-"false"}
export TEST_UPLOAD_URL=${TEST_UPLOAD_URL:-"https://test.pypi.org/legacy/"}
export TEST_INDEX_URL=${TEST_INDEX_URL:-"https://test.pypi.org/simple/"}
export TEST_USERNAME=${TEST_USERNAME:-"not_set"}
export TEST_PASSWORD=${TEST_PASSWORD:-"not_set"}

export PYPI_ENABLE=${TEST_ENABLE:-"false"}
export PYPI_USERNAME=${PYPI_USERNAME:-"not_set"}
export PYPI_PASSWORD=${PYPI_PASSWORD:-"not_set"}

python setup.py bdist_wheel --build-number $(date +%Y%m%d%H%M%S)

if [[ "${TEST_ENABLE}" == "true" ]]; then
    python -m twine upload \
      --repository-url ${TEST_UPLOAD_URL} \
      --username ${TEST_USERNAME} \
      --password ${TEST_PASSWORD} \
      dist/*

    python -m pip install --index-url ${TEST_INDEX_URL} --no-deps ${PACKAGE_NAME}==${PACKAGE_VERSION}
    python -m pip uninstall ${PACKAGE_NAME}
fi

if [[ "${PYPI_ENABLE}" == "true" ]]; then
    python -m twine upload \
      --username ${PYPI_USERNAME} \
      --password ${PYPI_PASSWORD} \
      dist/*

    python -m pip install ${PACKAGE_NAME}
    python -m pip uninstall ${PACKAGE_NAME}
fi

exec "$@"
