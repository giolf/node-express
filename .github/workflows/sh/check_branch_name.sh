BASE_REF=$1
HEAD_REF=$2

if [[ $BASE_REF == "develop" ]] && [[ ! $HEAD_REF =~ ^feature\/GP-[0-9]+$ ]]; then
  echo "::error::Error message for dev"
fi
if [[ $BASE_REF == "master" ]] && [[ ! $HEAD_REF =~ ^(release|hotfix)\/GP-[0-9]+$ ]]; then
  echo "::error::Error message for master"
fi
