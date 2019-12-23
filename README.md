# git-sync

Tool for keeping a local folder synced with a remote git repository.

## Environment Variables
Define three environment variables to the image:
- `GIT_REPO`: The url for pull from the repo
- `GIT_BRANCH`: Which branch to pull from
- `INTERVAL`: How many seconds between each pull request

## SSH Keys
To connect via SSH, place the private and public key files, along with the Docker host's `known_hosts` file into the `/keys` folder inside the container.  My recommendation is to the `Secrets` functionality and mount these in the folder, but you could also use a bind mount from the host's `~/.ssh` folder.