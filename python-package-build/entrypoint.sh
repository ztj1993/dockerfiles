#!/bin/sh

set -e

package_name=$(python setup.py --name)
echo "package name: ${package_name}"

TEST_PYPI_ENABLE=${TEST_PYPI_ENABLE:-"false"}
TEST_PYPI_USERNAME=${TEST_PYPI_USERNAME:-"not_set"}
TEST_PYPI_PASSWORD=${TEST_PYPI_PASSWORD:-"not_set"}

PYPI_ENABLE=${TEST_PYPI_ENABLE:-"false"}
PYPI_USERNAME=${PYPI_USERNAME:-"not_set"}
PYPI_PASSWORD=${PYPI_PASSWORD:-"not_set"}

python setup.py sdist bdist_wheel

if [[ "${TEST_PYPI_ENABLE}" == "true" ]]; then
    python -m twine upload \
      --repository-url https://test.pypi.org/legacy/ \
      --username ${TEST_PYPI_USERNAME} \
      --password ${TEST_PYPI_PASSWORD} \
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
