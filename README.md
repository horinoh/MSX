# MSX

## 仮想ディスク作成
- MSX Floppy Disk Manager - MSX-DOS1 形式の仮想ディスクを作成する
- ファイルをドラッグ&ドロップする
- ▲取り出し

## 仮想ディスク使用
- MSXPLAYer - Fdd - IMAGE FILE - 仮想ディスクを読み込む
- BASIC を軌道
    ~~~
    $BASIC
    ~~~
- FILES でファイル一覧に表示されるはず
    ~~~
    $FILES
    ~~~
- 読み込んで実行
    ~~~
    $LOAD "HELLO.BAS"
    $RUN
    ~~~

## 操作
- PageUp 一時停止
- Ctrl + PageUp 強制停止
- F4 LIST
- F5 RUN
- 「"」 -> 「@」キー

## 
- VRAM 
    - &H0000 - &H3FFF
    - &H1800 - 文字情報

- スプライト
    - 8x8 パターン[0, 255]
    - 16x16 パターン[0, 63]
    - スプライト面 [0, 31]
    - 座標 (255, 191)
    - 横方向に 4 枚

