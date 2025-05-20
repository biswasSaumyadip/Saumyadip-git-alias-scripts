### 1. Add This File to Your Global Git Config
Edit your global Git config file (~/.gitconfig on macOS/Linux or %USERPROFILE%\.gitconfig on Windows) and add:

```ini
[include]
  path = ~/.git-aliases
```

If your .git-aliases is somewhere else, replace the path accordingly.

On Windows, use forward slashes or double backslashes, e.g.:

```ini
[include]
  path = C:/Users/YourName/dotfiles/.git-aliases
```  
### 2. How to Use the Aliases
Examples:

```bash

git st           # git status
git co main      # git checkout main
git br           # git branch
git undo         # undo last commit (soft reset)
git delete-branch feature-xyz   # deletes local branch feature-xyz
git find-commit "fix bug 123"   # search commit messages matching text
git stash-apply 0                # apply stash at index 0
git push-current                # push current branch and set upstream
```