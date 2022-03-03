# minecraft-server-quickstart
Minecraft server 設定自動化  
Auto configuration and run for Minecraft server  

javaランタイムのセットアップとLog4j2のパッチ当てを自動でやります。ポートは各自設定してください。

# 使い方
1. サーバー（server.jar）を用意する
1. スクリプトを実行する
    * Ubuntuは `*.sh` ファイル、Windowsは `*.bat` ファイル

* WindowsはMicrosoft Store版ランチャーをインストール済みで、過去に一度対象のバージョンでMinecraftを起動しておく必要があります
    * ランチャー付属のJavaランタイムを使用するため、上記の作業が必要

## 例
以下のようにする。1.16.5の場合
### Ubuntu
```
mcserver/
├── server.jar
└── start_1.12-1.16.5.sh
```

### Windows
```
mcserver/
├── server.jar
└── start_1.12-1.16.5.bat
```

# バージョン別
## 1.18.1 以降
* start_1.18.1-.sh
* start_1.18.1-.bat

## 1.18
用意していません。1.18.1以降を使用してください。

## 1.17.*
* start_1.17.sh
* start_1.17.bat

## 1.12.* - 1.16.*
* start_1.12-1.16.5.sh
* start_1.12-1.16.5.bat

## 1.7.* - 1.11.*
* start_1.7-1.11.2.sh
* start_1.7-1.11.2.bat

## 1.6.* 以前
用意していません。需要があればつくります。

# なにをしているのか
## *.sh (Ubuntu Linux版)
1. サーバー実行に必要なjavaランタイムをダウンロード、実行可能な状態にする
    * 次回以降、ランタイムがあるか確認し、あればスキップ
2. Log4j2パッチ当てが必要なバージョンなら、パッチをダウンロード
    * 次回以降、パッチがあるならスキップ
3. サーバー実行

## *.bat (Windows版)
1. サーバー実行に必要なjavaランタイムのパスを設定
    * Minecraft Launcher に付属しているjavaランタイムを使用
2. Log4j2パッチ当てが必要なバージョンなら、パッチをダウンロード
    * 次回以降、パッチがあるならスキップ
3. サーバー実行


# 動作確認
* WSL2 Ubuntu 20.04
* Windows11 21H2

# Log4j2 重要なお知らせ important message
* [【重要なお知らせ】JAVA 版 MINECRAFT にセキュリティ上の脆弱性](https://www.minecraft.net/ja-jp/article/important-message--security-vulnerability-java-edition-jp)
* [IMPORTANT MESSAGE: SECURITY VULNERABILITY IN JAVA EDITION](https://www.minecraft.net/ja-jp/article/important-message--security-vulnerability-java-edition)
