#This was the initial commit from the git training of reddoorz.

Then your **Preview** will render the structure properly:

# GitHub Command Notes

## Method 1 — Empty Wala Repo

1. Create a repo on GitHub (empty).
2. Connect it with the local repo using commands:
   1. `git init` — Be in the correct directory.
   2. `git remote add origin https://github.com/USERNAME/REPOSITORY.git`
   3. `git add .` — Add everything.
      - Or `git add file1.md file2.md` for specific files.
      - Or `git add folder/` for a folder.
   4. `git commit -m "Add initial setup"`
   5. If your GitHub repository is empty:
      ```bash
      git branch -M main or skip it if its a main branch
      git push -u origin main
      ```

---

## Method 2 — Already Existing Files

1. If files already exist on GitHub:
   ```bash
   git pull origin main --no-rebase --allow-unrelated-histories
