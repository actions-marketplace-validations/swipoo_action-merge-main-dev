# Swipoo Merge Main into Dev Action

Merge production branch into development branch o push to production.

## Inputs

### `prod_branch`

**Required** Name of production branch. Default `"main"`.

### `dev_branch`

**Required** Name of development branch. Default `"sandbox"`.

### `owner_username`

**Required** Username of the owner (user or org) of the repo. Default `"swipoo"`.

### `repo_name`

**Required** Name of the repository.

### `gh_username`

**Required** Username of the GitHub account. Must be authorized to push to the repository.

### `gh_email`

**Required** Email of the GitHub account. Must be authorized to push to the repository.

### `gh_token`

**Required** Personal access token of the GitHub account. Collected through the GitHub Secrets.

### `gh_actor`

**Required** Actor of the GitHub account. Collected through GitHub ENV variables.

## Example usage

```yml
uses: swipoo/actions-merge-main-dev@v1
with:
  prod_branch: 'main-branch'
  dev_branch: 'dev-branch'
  owner_username: 'swipoo'
  repo_name: 'my-super-repo'
  gh_username: 'octocat'
  gh_email: 'octocat@swipoo.com'
  gh_token: ${{secrets.GITHUB_TOKEN}}
  gh_actor: $GITHUB_ACTOR
```
