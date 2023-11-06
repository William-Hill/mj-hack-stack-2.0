  
#!/bin/bash

# Exit in case of error
set -e

if [ ! -d ./fastapi-nextjs ] ; then
    echo "Run this script from outside the project, to generate a sibling dev project"
    exit 1
fi

rm -rf ./dev-fastapi-nextjs

python -m cookiecutter --no-input -f ./fastapi-nextjs project_slug="dev-fastapi-nextjs"