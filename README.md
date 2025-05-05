この設定の目標：
- できる限りシンプルにして、ツールに対する学習時間を少なくする。
- 同時に、必要な機能を備えたvim環境を用意する。
- 大きなコードベースを読むのに便利な機能が欲しい。

方針：
- [vim-plug](https://github.com/junegunn/vim-plug)というプラグインマネージャーを使う。
- `~/.vimrc`という1つのファイルで、全てのプラグインを管理する。

## セットアップ

- [vim-plug README](https://github.com/junegunn/vim-plug)に移動する。
- [Installation](https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation)を参考にインストールする。
- `~/.vimrc`に以下のコードを書く。（`vim ~/.vimrc`とターミナルに打ち込めば書き込める）

```vimrc
call plug#begin()

" この間にプラグインを羅列していく
Plug 'tpope/vim-sensible'

call plug#end()
```

フォーマット：`Plug 'プラグイン名'`

- プラグインの追加方法：	
1. 追加したいプラグインを、上記のように`.vimrc`に書き込む。
2. Vimを再起動(`:source ~/.vimrc)`
3. `:PlugInstall`を実行

- その他の重要なコマンド:
- `:PlugUpdate`　プラグインをアップデートする。
- `:PlugDiff`　最新のアップデータからの差異を表示する 
- `:PlugClean` リストから除外したプラグインをアンインストールする。

## インストールしたプラグイン

- [vim-airline](https://github.com/vim-airline/vim-airline)
	- ファンシーなステータスバーになる
- [Auto Pairs](https://www.vim.org/scripts/script.php?script_id=3599)
	- カッコの挿入や削除が楽になる。
	- 一番基本的な機能は、例えば`[`を書いたら自動で`[]`となること。
- [fzf.vim](https://github.com/junegunn/fzf.vim)
	- ファイル名を部分一致で検索することができる。
	- ファイル名を完全に知らなくても、見つけることができるので、親しみのない大規模なコードベースを探索するときに便利。
	- コマンドラインで検索するプログラム[fzf](https://github.com/junegunn/fzf)をVimで使えるプラグイン。
	- ファイル名の検索以外にも、Gitレポジトリに追跡されている全てのファイルや、Vimのキーバインディングなども検索できる。
	- 使用法の説明は、[このブログ](https://www.redhat.com/en/blog/five-vim-plugins)がわかりやすい。
-  [nerdtree](https://github.com/preservim/nerdtree)
	- `:NERDTreeToggle`で開閉できる。他のキーに[Map](https://vimdoc.sourceforge.net/htmldoc/map.html#key-mapping)させると便利。
	- 操作は通常のvimと同じ。
	- Enterキーを押してファイルを開ける。
	- 開くときにタブを分割したり、プレビュー画面を見ることもできる。詳しくは`?`を押してヘルプを参照。
	- NERDTreeを開いた状態で、`m`を押すとファイルの作成や削除などのファイル/ディレクトリ操作ができる。
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
	- Gitコマンドをvimから実行できる。
	- 使用例：`:Git status`


Reference:
- https://github.com/junegunn/vim-plug?tab=readme-ov-file#usage
- https://www.redhat.com/en/blog/five-vim-plugins
- https://opensource.com/article/19/1/vim-plugins-developers?extIdCarryOver=true&sc_cid=701f2000001OH7EAAW
