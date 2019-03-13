# fish-git

The missing git commands

## git version

Add version command like npm's to git.

Bump the version, create a tag, and push it upstream.

```bash
git version patch

git version minor

git version major
```

## git ignore

Add directories/files to your .gitignore file.

Creates a .gitignore file if one doesn't exist

```bash
git ignore node_modules/
```

## git untracked

Shows all untracked files

```bash
git untracked
```

## git staged

Shows all staged files

```bash
git staged
```

## git changed

Shows all edited files - does not show removed or untracked files

```bash
git changed
```

