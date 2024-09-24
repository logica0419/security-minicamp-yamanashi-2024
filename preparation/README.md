# 危険なメールが送れるような環境の構築

## 構築方法

1. ansible-playbookをインストール
2. Ubuntu 24.04の仮想マシンを、以下のスペックで2台用意
   - CPU: 2Core
   - RAM: 4GB
3. preparationディレクトリ直下に「hosts」という名前で以下の内容のファイルを作成

    ```plain
    [all:vars]
    ansible_ssh_user="{ユーザー名}"
    ansible_ssh_private_key_file="{マシンにアクセスする秘密鍵のパス}"

    [server]
    {メールサーバー用マシンのプライベートIPアドレス}

    [client]
    {メールクライアント用マシンのパブリックIPアドレス}

    [client:vars]
    password="{メールクライアント用マシンの一般ユーザーのパスワード}"
    ```

    例:

    ```plain
    [all:vars]
    ansible_ssh_user="ubuntu"
    ansible_ssh_private_key_file="~/.ssh/id_ed25519"

    [server]
    163.43.158.225

    [client]
    163.43.183.173
    ```

4. preparationディレクトリ直下で以下のコマンドを実行

    ```bash
    sh run.sh
    ```
