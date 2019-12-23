# git-sync

Tool for keeping a local folder synced with a remote git repository.

## Environment Variables

You must define three environment variables to the image:
- `GIT_REPO`: The url for pull from the repo
- `GIT_BRANCH`: Which branch to pull from
- `INTERVAL`: How many seconds between each pull request