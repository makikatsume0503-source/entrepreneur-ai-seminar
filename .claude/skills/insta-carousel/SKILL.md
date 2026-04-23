# insta-carousel

Instagram carousel slides（PNG画像）を生成してチャットに表示するスキル。

## When to use

ユーザーが `/insta-carousel` を実行、またはInstagramカルーセルの生成を依頼したとき。

## Steps

### 投稿日フォルダへ生成（通常の使い方）

1. リポジトリルートで実行（`posts/YYYYMMDD/` へ自動保存）:
   ```
   bash .claude/skills/insta-carousel/scripts/new-post.sh
   ```
   日付を指定したい場合:
   ```
   bash .claude/skills/insta-carousel/scripts/new-post.sh 20260419
   ```

2. 生成された PNG を **全枚数 Read ツールで読み込み、チャットに表示する**。
   ```
   Read: posts/20260416/slide-01.png
   Read: posts/20260416/slide-02.png
   ... (全スライド)
   ```

3. 枚数・保存先を伝える。修正希望があれば対応する。

---

### セミナー用カルーセル

1. リポジトリルートで生成スクリプトを実行:
   ```
   bash .claude/skills/insta-carousel/scripts/generate.sh --output carousel-output
   ```
   その後、PNG変換:
   ```
   node .claude/skills/insta-carousel/scripts/screenshot.cjs carousel-output
   ```

2. 生成された PNG を **全枚数 Read ツールで読み込み、チャットに表示する**。
   ```
   Read: carousel-output/slide-01.png
   Read: carousel-output/slide-02.png
   ... (全スライド)
   ```

3. 枚数・保存先を伝える。修正希望があれば対応する。

---

### Claude Code活用術カルーセル（個別実行）

1. リポジトリルートで実行（HTML生成 + PNG変換が自動で行われる）:
   ```
   bash .claude/skills/insta-carousel/scripts/generate-claude-code.sh --output carousel-output-claude-code
   ```

2. 生成された PNG を **全枚数 Read ツールで読み込み、チャットに表示する**。
   ```
   Read: carousel-output-claude-code/slide-01.png
   Read: carousel-output-claude-code/slide-02.png
   ... (全スライド)
   ```

3. 枚数・保存先を伝える。修正希望があれば対応する。

---

## 重要: 画像表示ルール

- スクリプト実行後、**必ず全スライドの PNG を Read ツールで読み込んでチャット内に表示すること**
- 「どこで見られますか？」と聞かれる前に自動表示する
- 画像は `carousel-output*/slide-NN.png` に保存される

## Slide contents（Claude Code活用術版）

| # | Theme |
|---|-------|
| 01 | カバー — 2026年注目度NO.1 Claude Code活用術 |
| 02 | Claude Codeとは？ |
| 03 | たとえば、LPが自分で作れます |
| 04 | 業務ツールだって作れます |
| 05 | 「Skills」で繰り返し作業を自動化 |
| 06 | 始め方はたったの3ステップ |
| 07 | なぜ今、起業家が使うべきか |
| 08 | CTA — 「できること」を一緒に広げませんか？ |

## Brand tokens

| Token | Value | Usage |
|-------|-------|-------|
| Background | `#0b1629` + radial glow | 深いネイビー |
| Gold | `#c9a84c` | タイトル・アクセント・◇デバイダー |
| Font | Noto Sans JP (Google Fonts) | 全テキスト |
| Slide size | 1080 × 1350 px | Instagram縦型 |
