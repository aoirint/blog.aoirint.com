---
canonical_url: ./
title: Atom Text Editor Setup
date: '2021-05-14 01:00:00'
draft: false
category: Editor
tags:
  - Atom
  - テキストエディタ
---

# Atom Text Editor Setup

GitHubが開発するElectron製高機能テキストエディタ。

## Installation
### macOS, Windows
- https://atom.io/

### Ubuntu
- https://flight-manual.atom.io/getting-started/sections/installing-atom/#platform-linux

```shell
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update

sudo apt install atom
```



## Key Binding Resolver (Ctrl + .)
キーバインドが重複してどれが動いているかわからないときに便利。


## Packages
パッケージにより機能拡張ができる。

- https://atom.io/packages/

GUIによる操作

- Install: Edit > Preferences > Install
- Config: Edit > Preferences > Packages

CLIによる一括インストール

```shell
# Export Package List
apm list -b -e -i --no-v > atom_packages.txt

# Import Package List and Install
apm install --packages-file atom_packages.txt
```

おすすめパッケージリスト

```
# atom_packages.txt

Sublime-Style-Column-Selection
atom-beautify
atom-ide-ui
atom-terminus
autocomplete-python
convert-to-utf8
document-outline
file-icons
ide-python
ide-typescript
language-docker
language-graphql
language-julia
language-latex
language-nginx
latex
markdown-preview-plus
pdf-view
project-manager
project-view
project-viewer
```

### Sublime-Style-Column-Selection
- https://atom.io/packages/sublime-style-column-selection

Shift + 左ボタンドラッグで矩形選択ができる

### atom-beautify
- https://atom.io/packages/atom-beautify

デフォルトで入っているフォーマッタ

### atom-ide-ui
- https://atom.io/packages/atom-ide-ui

IDE機能のコア

### atom-terminus
- https://atom.io/packages/atom-terminus
- fork of atom-terminal: https://atom.io/packages/atom-terminal

Ctrl + Shift + Tでターミナルウインドウを開く

### autocomplete-python
- https://github.com/autocomplete-python/autocomplete-python

Python補完用（要Jedi or Kite）

Python Executable Paths: `{HOME}/.pyenv/shims/python`

```shell
pip3 install jedi
```

### convert-to-utf8
https://atom.io/packages/convert-to-utf8

CP932やEUC-JPのテキストファイルをUTF-8に変換する

### document-outline
- https://atom.io/packages/document-outline

文書のアウトライン表示

### file-icons
- https://atom.io/packages/file-icons

ファイルアイコン表示

### ide-python
- https://atom.io/packages/ide-python

Python IDE機能

Python Executable: `{HOME}/.pyenv/shims/python`

### ide-typescript
- https://atom.io/packages/ide-typescript

TypeScript IDE機能

```shell
npm set prefix ~/.node
npm install -g typescript
```

TypeScript server path: `{HOME}/.node/lib/node_modules/typescript/lib/tsserver.js`

### language-docker
- https://atom.io/packages/language-docker

Docker シンタックスハイライト

### language-graphql
- https://atom.io/packages/language-graphql

GraphQL シンタックスハイライト

### language-julia
- https://atom.io/packages/language-julia

Julia シンタックスハイライト

### language-latex
- https://atom.io/packages/language-latex

LaTeX シンタックスハイライト

### language-nginx
- https://atom.io/packages/search?q=language-nginx

nginx シンタックスハイライト

### latex
- https://atom.io/packages/latex

LaTeX ビルド

### markdown-preview-plus
- https://atom.io/packages/markdown-preview-plus

Markdown プレビュー

### pdf-view
- https://atom.io/packages/pdf-view

PDF プレビュー

### project-view
- https://atom.io/packages/project-view

プロジェクトツリー（tree-view）にプロジェクトパスを表示

### project-viewer
- https://atom.io/packages/project-viewer

GUIで編集できるプロジェクト管理ツール