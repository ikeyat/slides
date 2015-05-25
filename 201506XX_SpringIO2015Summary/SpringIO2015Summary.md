Spring I/O 2015報告
=====

2015/6/XX JSUG定例

### agenda

* 概要
* Key Note 「Springの歴史」
* Spring 4.2
* Boot
* Web
* Batch
* Others
* 総評

概要
---

### 概要

＃（余談）スライドメモ用の写真がカメラアプリのバグのため全消失する事故・・・

Key Note 「Springの歴史」
---

### Key Note

Spring 4.2
---

Boot
---

Web
---

Batch
---

### Spring Batch for Large Enterprises Operations (Ignasi Gonzalez)

- 簡単なSpring Batchの紹介とエンタープライズ開発事例紹介
- 公式サイトのPDFリンクは正しくない・・・
- 事例１：銀行系
    - プロフィール
        - 7,000 tps
        - 30,000 users
        - 30 developers
    - ホストとの統合のため、商用ツールと連携する必要があった。
    - 商用ツールに合わせスケジューラやランチャーをカスタマイズした。
- 事例２：電力系
    - プロフィール
        - 4 providers向け
        - 規模は秘密
        - 300 developers
    - ポイント
        - 現行のスクラッチ実装のバッチをどのようにSpring Batchに移行するか。
        - 300人の開発でいかに品質を確保するか。
    - ポイントに対しPoCを実施した。
        - CheckstyleやSonar等を用いコードの品質確保を確認した。
        - reportingとschedulingが弱いので拡張が必要だった。

Others
---

### Code Highlight

```java
public class Hoge {
  public static void main(String[] args) {
    System.out.println("Hello World!");
  }
}
```

### Reference

http://www.springio.net
