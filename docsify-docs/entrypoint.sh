#!/bin/sh

set -e

echo "system starting......"

docs_dir=${DOCSIFY_DOCS_DIR:-/docs}
echo "docs dir: ${docs_dir}"

for doc_dir in $(ls ${docs_dir}); do
    if [[ ! -d ${docs_dir}/${doc_dir} ]]; then
        continue
    fi
    if [[ ! -f ${docs_dir}/${doc_dir}/index.html ]]; then
        cp /docsify_index.html ${docs_dir}/${doc_dir}/index.html
        echo "copy file: ${docs_dir}/${doc_dir}/index.html"
    fi
    if [[ -f ${docs_dir}/${doc_dir}/.docsify/_coverpage.md ]]; then
        sed -i "s/coverpage\:.*,/coverpage: true,/" ${docs_dir}/${doc_dir}/index.html
    else
        sed -i "s/coverpage\:.*,/coverpage: false,/" ${docs_dir}/${doc_dir}/index.html
    fi
    if [[ -f ${docs_dir}/${doc_dir}/.docsify/_sidebar.md ]]; then
        sed -i "s/loadSidebar\:.*,/loadSidebar: true,/" ${docs_dir}/${doc_dir}/index.html
    else
        sed -i "s/loadSidebar\:.*,/loadSidebar: false,/" ${docs_dir}/${doc_dir}/index.html
    fi
    if [[ -f ${docs_dir}/${doc_dir}/.docsify/_navbar.md.md ]]; then
        sed -i "s/loadNavbar\:.*,/loadNavbar: true,/" ${docs_dir}/${doc_dir}/index.html
    else
        sed -i "s/loadNavbar\:.*,/loadNavbar: false,/" ${docs_dir}/${doc_dir}/index.html
    fi
done

exec "$@"
