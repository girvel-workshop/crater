This should be a lua-based shell script, who can update a git repository and nicely display changelog.

# Commit format

change1 @category; chage2 @category...

# Usage

```bash
updater
  [-b|--branch <name of the branch you are pulling from, default is master>]
```

# Algorythm

- Check, is there any tagged releases in the gh repository
- If there is, pull until the last release
- Get all the changes from commits
- Display them nicely

# Sample output

```
Checking for upgrades...
Found new version '0.3 editor'
Downloading...

Successfully upgraded war-routine:
  0.2.1 structural hotfixes -> 0.3 editor

Changelog:

[feature]
- add editor mode
- add random weapon accuracy

[refactor]
- change execution structure
- move all the movement actions from engine/modes/default.lua to assets/actions/

[flow]
- add updater as bin/upgrade

[documentation]
- update README.md
- add a couple of docstrings
```
