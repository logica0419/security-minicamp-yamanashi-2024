# security-minicamp-yamanashi-2024

セキュリティ・ミニキャンプ in 山梨 2024 講義 & ハンズオン資料

## 講義資料

🔨 WIP 🔨

## ハンズオン事前準備

講義中に「メールソフトの役割を自分たちで補って、メールを送信してみよう！」というハンズオンを実施するのですが、それにあたって事前準備が必要なので、お願いしている形になります。

### telnetが叩ける環境を用意する

MacやLinux、WSLなど、CLIでtelnetが叩ける環境を用意してください。  
[実際に使った環境はこちら](./preparation/README.md)

### Brevoに登録する

今回は、メールを送信する先としてBrevoというサービスを使います。  
GmailやiCloud Mailなどに直接送れれば良いのですが、それらの大手サービスはセキュリティが厳しく、手書きでメールを送るという目的には向かないため、もう少し簡素なサービスを使います。

1. <https://www.brevo.com/> より、右上の「Sign Up Free」というボタンをクリックします。
2. アカウント登録を開始します。
   - Google / Appleアカウントで登録する場合
     - 該当のボタンを押してアカウントを認証すると、プロフィール入力画面に行きます。
   - メールアドレスとパスワードで登録する場合
     - 下の方の「Email」「Password」と書いてあるテキストボックスに、それぞれメールアドレスとパスワードを入力します。
     - 入力して「Create an account」を押すと、入力したメールアドレスに確認メールが届きます。
     - そのメールに記載されたリンクをクリックすると、プロフィール入力画面に行きます。
3. プロフィール入力画面を飛ばします。
   - 「Answer Later」を押して、次の画面に移ります。
   - 入力したければしてもかまいませんが、ここは入力しなくても今回の目的は達成できます。
4. プラン選択画面で、Freeプランを選びます。
   - 一番左のプランを選びます。
5. Brevoのダッシュボードっぽいものが見れたら、登録完了です！
6. 必要な情報が全てあるか、確かめておいてください。
   - <https://app.brevo.com/senders/list> で、自分が登録したメールアドレスがあるか確かめて下さい。
   - <https://app.brevo.com/settings/keys/smtp> で、「Your SMTP Settings」が見れることを確かめて下さい。

## ハンズオン

[こちらの資料](./handson.md)を参考にして下さい。
