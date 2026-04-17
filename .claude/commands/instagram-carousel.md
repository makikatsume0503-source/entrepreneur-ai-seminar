# Instagram カルーセル作成

Instagramカルーセル投稿用のHTMLスライドを作成する。

## 出力先

`posts/YYYYMMDD/` ディレクトリに以下を作成：
- `slide-01.html` 〜 `slide-0N.html`（各スライド個別ファイル）
- `index.html`（サムネイル一覧・ダウンロードページ）

## デザインシステム（必ず遵守）

### 基本仕様
- サイズ: **1080px × 1350px**（Instagram縦型 4:5）
- フォント: Noto Sans JP（Google Fonts CDN）
- ゴールド: `#c9a84c`
- 背景ダーク: `#0b1629` / `#162040`

### 共通CSS（全スライド必須）

```css
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}

/* コーナー装飾 */
.tc{position:absolute;width:54px;height:54px;border-style:solid;border-color:rgba(201,168,76,0.6);filter:drop-shadow(0 0 4px rgba(201,168,76,0.35))}
.tc.tl{top:38px;left:38px;border-width:2px 0 0 2px}
.tc.tr{top:38px;right:38px;border-width:2px 2px 0 0}
.tc.bl{bottom:38px;left:38px;border-width:0 0 2px 2px}
.tc.br{bottom:38px;right:38px;border-width:0 2px 2px 0}
.tc::before{content:'';position:absolute;width:7px;height:7px;border-radius:50%;background:#c9a84c;box-shadow:0 0 10px rgba(201,168,76,0.9),0 0 18px rgba(201,168,76,0.4)}
.tc.tl::before{top:-4px;left:-4px}.tc.tr::before{top:-4px;right:-4px}
.tc.bl::before{bottom:-4px;left:-4px}.tc.br::before{bottom:-4px;right:-4px}

/* 背景 */
body{
  background-image:
    radial-gradient(circle,rgba(201,168,76,0.055) 1px,transparent 1px),
    radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  background-size:44px 44px,100% 100%;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}

/* 背景スライド番号 */
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:transparent;
  -webkit-text-stroke:1px rgba(201,168,76,0.09);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}

/* 区切り線 */
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:linear-gradient(90deg,transparent,rgba(201,168,76,0.65),transparent);box-shadow:0 0 6px rgba(201,168,76,0.25)}
.divider span{color:#c9a84c;font-size:16px;text-shadow:0 0 8px rgba(201,168,76,0.8)}

/* ブランド名（絶対配置・下部） */
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
```

### 共通HTML構造

```html
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
/* 共通CSS + スライド固有CSS */
</style>
</head>
<body>
  <div class="tc tl"></div><div class="tc tr"></div>
  <div class="tc bl"></div><div class="tc br"></div>
  <div class="bg-num">01</div>
  <!-- コンテンツ -->
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
```

## スライドタイプ別テンプレート

### 表紙スライド（slide-01）

```css
.badge{display:inline-block;padding:12px 44px;border-radius:4px;
  background:linear-gradient(135deg,#c9a84c,#a07830);
  color:#fff;font-weight:700;font-size:24px;letter-spacing:3px;margin-bottom:44px;}
h1{font-size:88px;font-weight:900;line-height:1.2;color:#fff;margin-bottom:40px;letter-spacing:-1px}
.gold{color:#c9a84c}
.sub{font-size:26px;color:rgba(255,255,255,0.75);line-height:2;margin-bottom:44px}
.tag{display:inline-block;border:1px solid rgba(201,168,76,0.4);border-radius:4px;
  padding:10px 36px;font-size:20px;color:rgba(201,168,76,0.85);letter-spacing:2px;}
```

### コンテンツスライド（slide-02〜）

```css
.num-badge{width:100px;height:100px;border-radius:50%;
  background:rgba(201,168,76,0.12);border:2px solid rgba(201,168,76,0.5);
  display:flex;align-items:center;justify-content:center;
  font-size:52px;font-weight:900;color:#c9a84c;margin-bottom:24px;
  margin-left:auto;margin-right:auto;}
h2{font-size:64px;font-weight:900;color:#fff;line-height:1.2;margin-bottom:12px}
.tagline{font-size:26px;color:#c9a84c;font-weight:700;margin-bottom:36px;letter-spacing:1px}
.body{font-size:26px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.tip-box{border:1px solid rgba(201,168,76,0.35);border-radius:8px;
  padding:18px 40px;font-size:22px;color:#c9a84c;margin-top:8px;
  background:rgba(201,168,76,0.06);}
```

### CTAスライド（最終）

```css
h2{font-size:64px;font-weight:900;color:#fff;line-height:1.3;margin-bottom:28px}
.body{font-size:26px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.cta-box{border:1px solid rgba(201,168,76,0.45);border-radius:12px;
  padding:28px 50px;background:rgba(201,168,76,0.06);margin-bottom:24px;}
.cta-box p{font-size:24px;color:rgba(255,255,255,0.9);line-height:1.9}
.follow{font-size:28px;font-weight:700;color:#c9a84c;margin-top:8px}
```

## index.html テンプレート

```html
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>[タイトル] カルーセル</title>
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{background:#0b1629;font-family:'Noto Sans JP',sans-serif;padding:48px 40px}
h1{color:#c9a84c;text-align:center;font-size:32px;margin-bottom:8px;letter-spacing:2px}
.sub{color:rgba(255,255,255,0.4);text-align:center;font-size:14px;margin-bottom:40px;letter-spacing:1px}
.dl-all{text-align:center;margin-bottom:48px}
.dl-all button{background:linear-gradient(135deg,#c9a84c,#a07830);color:#fff;border:none;
  padding:16px 56px;border-radius:10px;font-size:20px;font-weight:bold;cursor:pointer;
  letter-spacing:2px;box-shadow:0 6px 24px rgba(201,168,76,0.3);}
.grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px;max-width:1400px;margin:0 auto}
.card{background:#162040;border-radius:14px;overflow:hidden;border:1px solid rgba(201,168,76,0.15)}
.card img{width:100%;display:block;cursor:pointer}
.info{padding:14px 18px;display:flex;justify-content:space-between;align-items:center}
.name{color:#fff;font-size:14px;font-weight:500}
.dl-btn{background:#c9a84c;color:#0b1629;padding:7px 18px;border-radius:7px;
  text-decoration:none;font-weight:700;font-size:13px;white-space:nowrap;}
</style>
</head>
<body>
<h1>[タイトル]</h1>
<p class="sub">全N枚 · 1080×1350px · Instagram縦型</p>
<div class="dl-all"><button onclick="downloadAll()">⬇ すべてダウンロード</button></div>
<div class="grid">
  <!-- .card × N枚 -->
</div>
<script>
function downloadAll(){
  document.querySelectorAll('.dl-btn').forEach((a,i)=>setTimeout(()=>a.click(),i*500));
}
</script>
</body>
</html>
```

## 作成手順

1. `posts/YYYYMMDD/` ディレクトリを作成
2. 各スライドを `slide-01.html` から順に作成（bg-numの番号を合わせること）
3. `index.html` を作成（スライド数に合わせてカードを生成）
4. `claude/insta-carousel-skill-cURpK` ブランチにプッシュ

## 注意事項

- `.brand` は常に `勝 目 麻 希`（全角スペース区切り）
- bg-numは2桁ゼロ埋め（`01`, `02`, ...）
- index.htmlのpngパスはスライドHTMLと同じフォルダを前提（`slide-01.png`形式）
- スライドHTMLは**1ファイル1スライド**（まとめファイルは作らない）
