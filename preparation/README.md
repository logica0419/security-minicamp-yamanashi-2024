# 手書きSMTPが送れる環境の構築

実際は、受講者全員の環境差異を無くすための措置でしかなくなってしまった

## 構築方法

1. 手元のPCにansible-playbook / ansible-galaxy / passlibをインストール
2. Ubuntu 24.04の仮想マシンを、以下のスペックで1台用意
   - CPU: 2Core
   - RAM: 4GB
3. preparationディレクトリ直下に「hosts」という名前で以下の内容のファイルを作成

    ```plain
    [all:vars]
    ansible_ssh_user="{ユーザー名}"
    ansible_sudo_pass="{sudo権限を実行するためのパスワード}"
    ansible_ssh_private_key_file="{マシンにアクセスする秘密鍵のパス}"

    [client]
    {メールクライアント用マシンのIPアドレス}

    [client:vars]
    password="{メールクライアント用マシンの一般ユーザーのパスワード}"
    ```

    例:

    ```plain
    [all:vars]
    ansible_ssh_user="ubuntu"
    ansible_sudo_pass="password"
    ansible_ssh_private_key_file="~/.ssh/id_ed25519"

    [client]
    163.43.113.65 password="sample_password"
    ```

4. preparationディレクトリ直下で以下のコマンドを実行

    ```bash
    sh run.sh
    ```

5. userユーザーにのみ、パスワードによるSSHログインを許可
   - `/etc/ssh/sshd_config`の末尾に以下の設定を追加

    ```conf
    Match User user
      PasswordAuthentication yes
    ```
