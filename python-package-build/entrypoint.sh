#!/bin/sh

set -e

package_name=$(python setup.py --name)
echo "package name: ${package_name}"

TEST_ENABLE=${TEST_ENABLE:-"false"}
TEST_URL=${TEST_URL:-"https://test.pypi.org/legacy/"}
TEST_USERNAME=${TEST_USERNAME:-"not_set"}
TEST_PASSWORD=${TEST_PASSWORD:-"not_set"}

PYPI_ENABLE=${TEST_ENABLE:-"false"}
PYPI_USERNAME=${PYPI_USERNAME:-"not_set"}
PYPI_PASSWORD=${PYPI_PASSWORD:-"not_set"}

python setup.py sdist bdist_wheel

if [[ "${TEST_ENABLE}" == "true" ]]; then
    python -m twine upload \
      --repository-url ${TEST_URL} \
      --username ${TEST_USERNAME} \
      --password ${TEST_PASSWORD} \
      dist/*

    python -m pip install --index-url https://test.pypi.org/simple/ --no-deps ${package_name}
    python -m pip uninstall ${package_name}
fi

if [[ "${PYPI_ENABLE}" == "true" ]]; then
    python -m twine upload \
      --username ${PYPI_USERNAME} \
      --password ${PYPI_PASSWORD} \
      dist/*

    python -m pip install ${package_name}
    python -m pip uninstall ${package_name}
fi

exec "$@"
