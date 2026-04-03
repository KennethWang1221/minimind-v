#!/usr/bin/env bash
set -euo pipefail

echo "Fetching remotes..."
git fetch origin
git fetch upstream

echo "Syncing master with upstream/master..."
git switch master
git reset --hard upstream/master
git push --force-with-lease origin master

echo "Rebasing feat onto master..."
git switch feat

if git rebase master; then
  git push --force-with-lease origin feat
  echo "Done: master is synced and feat is updated."
else
  echo "Rebase stopped due to conflicts on feat."
  echo "Resolve conflicts, then run:"
  echo "  git add <files>"
  echo "  git rebase --continue"
  echo "  git push --force-with-lease origin feat"
  exit 1
fi



# 以后 minimind-v 的固定操作
# 同步官方到 master：
# git switch master
# git fetch upstream
# git reset --hard upstream/master
# git push --force-with-lease origin master
# 把官方更新带到你的开发分支：
# git switch feat
# git rebase master
# git push --force-with-lease origin feat
# 如果这里冲突，就在 feat 上手动处理，这正符合你的目标。

