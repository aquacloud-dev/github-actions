# Semantic Release

## Basic Usage

```yml
- uses: aquacloud-dev/github-actions/setup-git@main
  id: git
  with:
    BOT_PEM: ${{ secrets.BOT_PEM }}
    BOT_ID: ${{ secrets.BOT_ID }}
- uses: aquacloud-dev/github-actions/semantic-release@main
  env:
    GITHUB_TOKEN: ${{ steps.git.outputs.token }}
```
