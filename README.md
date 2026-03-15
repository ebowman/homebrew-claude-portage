# homebrew-claude-portage

Homebrew tap for [claude-portage](https://github.com/ebowman/claude-portage) — portable Claude Code workspace archives.

## Install

```bash
brew tap ebowman/claude-portage
brew install claude-portage
```

## Usage

```bash
claude-portage pack ~/src/my-project
claude-portage unpack my-project.portage.tar.gz /new/path/my-project
claude-portage rename ~/src/old-name ~/src/new-name
claude-portage inspect my-project.portage.tar.gz
```
