if [[ ${{ github.base_ref }} == "develop" ]] && [[ ! ${{ github.head_ref }} =~ ^feature\/GP-[0-9]+$ ]]; then
  echo "::error::Error message for dev"
  exit 1
fi
if [[ ${{ github.base_ref }} == "master" ]] && [[ ! ${{ github.head_ref }} =~ ^(release|hotfix)\/GP-[0-9]+$ ]]; then
  echo "::error::Error message for master"
  exit 1
fi
