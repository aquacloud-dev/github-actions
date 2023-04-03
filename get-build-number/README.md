# Usage

```yaml
- name: Setup GIT
  uses: aquacloud-dev/actions/setup-git@main
- name: Get Build Number
  id: get_build_number
  uses: aquacloud-dev/actions/get-build-number@main
- name: Print
  run: |
    echo ${{ steps.get_build_number.outputs.next_tag }}
    echo ${{ steps.get_build_number.outputs.build_number }}
```
