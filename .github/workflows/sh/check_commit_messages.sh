BASE_SHA=$1
HEAD_SHA=$2

npx commitlint --from $BASE_SHA --to $HEAD_SHA --verbose
