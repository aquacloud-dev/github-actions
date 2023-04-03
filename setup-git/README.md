# Usage

```yml
- name: Setup GIT
  uses: aquacloud-dev/github-actions/setup-git
  with:
    BOT_PEM: ${{ secrets.APP_PEM }}
    BOT_ID: ${{ secrets.APP_ID }}
```
