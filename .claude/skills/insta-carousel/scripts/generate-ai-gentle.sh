#!/usr/bin/env bash
# .claude/skills/insta-carousel/scripts/generate-ai-gentle.sh
#
# Generates 8 Instagram carousel slides as PNG (1080×1350)
# Topic: 最新AI情報をやさしく・女性向けに伝える
# Style: ふわっと明るいラベンダー×ピンク、カジュアルな日本語

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="carousel-output-gentle"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --output) OUT="$2"; shift 2 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

mkdir -p "$OUT"
echo "Generating 8 slides → $OUT/"

_save() {
  local f="$OUT/$(printf 'slide-%02d.html' "$1")"
  cat > "$f"
  echo "  ✓  $f"
}

# ── SLIDE 1: Cover ────────────────────────────────────────────────────────────
s1() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(150deg,#fce7f3 0%,#ede9fe 50%,#e0f2fe 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.deco-circle{position:absolute;border-radius:50%;opacity:.25}
.tag{
  display:inline-block;background:#fff;border-radius:50px;
  padding:12px 36px;font-size:22px;color:#a855f7;font-weight:700;
  letter-spacing:1px;margin-bottom:44px;
  box-shadow:0 4px 20px rgba(168,85,247,0.15);
}
h1{font-size:80px;font-weight:900;color:#3b1d6e;line-height:1.2;margin-bottom:32px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.3)}
.divider span{color:#a855f7;font-size:18px}
.sub{font-size:26px;color:#6b4f9e;line-height:2;margin-bottom:48px;font-weight:400}
.spark{font-size:20px;letter-spacing:8px;color:#ec4899;opacity:.7}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="deco-circle" style="width:500px;height:500px;background:#f9a8d4;top:-180px;right:-150px"></div>
  <div class="deco-circle" style="width:350px;height:350px;background:#c4b5fd;bottom:-120px;left:-100px"></div>
  <div class="deco-circle" style="width:200px;height:200px;background:#bae6fd;bottom:200px;right:60px"></div>

  <div class="tag">✦ 2026年 最注目AIツール</div>
  <h1><span class="pink">Claude Code</span><br>って知ってる？</h1>
  <div class="divider"><span>✦</span></div>
  <p class="sub">プログラミングなしで<br>なんでも作れちゃう時代が来たよ！</p>
  <p class="spark">✦ ✦ ✦</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 2: フック ───────────────────────────────────────────────────────────
s2() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#fff;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.top-tag{font-size:20px;color:#a855f7;font-weight:700;letter-spacing:2px;margin-bottom:24px}
h2{font-size:58px;font-weight:900;color:#3b1d6e;line-height:1.35;margin-bottom:40px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 44px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.25)}
.divider span{color:#a855f7;font-size:18px}
.bubbles{display:flex;flex-direction:column;gap:20px;width:100%}
.bubble{
  background:linear-gradient(135deg,#fdf4ff,#fce7f3);
  border-radius:20px;padding:28px 36px;
  border-left:5px solid #e879f9;
  text-align:left;display:flex;align-items:center;gap:16px;
}
.bubble-icon{font-size:32px;flex-shrink:0}
.bubble p{font-size:26px;color:#4b2d7f;font-weight:500;line-height:1.5}
.answer{
  margin-top:8px;font-size:28px;font-weight:700;
  color:#a855f7;text-align:center;
}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <p class="top-tag">✦ こんなこと思ってない？</p>
  <h2>AIって<span class="pink">難しそう</span>…<br>って感じてない？</h2>
  <div class="divider"><span>✦</span></div>
  <div class="bubbles">
    <div class="bubble"><span class="bubble-icon">😓</span><p>プログラミングできないと使えないと思ってた</p></div>
    <div class="bubble"><span class="bubble-icon">😅</span><p>ChatGPTは使ったけど、それ以上は難しそう…</p></div>
    <div class="bubble"><span class="bubble-icon">🥺</span><p>AIで何かを「作る」なんて自分には無理だと思ってた</p></div>
  </div>
  <p class="answer">それ、全部解決できるよ！✦</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 3: Claude Codeとは ──────────────────────────────────────────────────
s3() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(160deg,#fdf4ff 0%,#f5f3ff 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.tag{font-size:20px;color:#a855f7;font-weight:700;letter-spacing:2px;margin-bottom:20px}
h2{font-size:58px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:16px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.25)}
.divider span{color:#a855f7;font-size:18px}
.desc{font-size:26px;color:#6b4f9e;line-height:1.9;margin-bottom:44px}
.points{display:flex;flex-direction:column;gap:18px;width:100%}
.point{
  background:#fff;border-radius:18px;padding:24px 32px;
  box-shadow:0 4px 20px rgba(168,85,247,0.1);
  display:flex;align-items:center;gap:20px;text-align:left;
}
.p-icon{
  width:56px;height:56px;border-radius:16px;
  background:linear-gradient(135deg,#a855f7,#ec4899);
  display:flex;align-items:center;justify-content:center;
  font-size:26px;flex-shrink:0;
}
.point p{font-size:24px;color:#3b1d6e;font-weight:600;line-height:1.5}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <p class="tag">✦ Claude Codeってなに？</p>
  <h2><span class="pink">3分</span>でわかる<br>Claude Code入門</h2>
  <div class="divider"><span>✦</span></div>
  <p class="desc">Anthropicが作った最新AIアシスタント。<br>日本語で話しかけるだけで<br>なんでも作ってくれるの！</p>
  <div class="points">
    <div class="point">
      <div class="p-icon">💬</div>
      <p>「〇〇作って」と日本語で伝えるだけ</p>
    </div>
    <div class="point">
      <div class="p-icon">⚡</div>
      <p>コードは全部AIが書いてくれる</p>
    </div>
    <div class="point">
      <div class="p-icon">✨</div>
      <p>完成まで自分で考えて動いてくれる</p>
    </div>
  </div>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 4: LPが作れる ───────────────────────────────────────────────────────
s4() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(160deg,#fce7f3 0%,#fdf4ff 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.num{font-size:100px;font-weight:900;color:rgba(168,85,247,0.1);line-height:1;margin-bottom:-20px}
.tag{font-size:20px;color:#ec4899;font-weight:700;letter-spacing:2px;margin-bottom:20px}
h2{font-size:58px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:16px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(236,72,153,0.25)}
.divider span{color:#ec4899;font-size:18px}
.body{font-size:27px;color:#4b2d7f;line-height:2;margin-bottom:28px}
.highlight{color:#ec4899;font-weight:700}
.card{
  background:#fff;border-radius:20px;padding:28px 40px;
  box-shadow:0 6px 28px rgba(236,72,153,0.12);
  width:100%;margin-bottom:20px;
}
.card-label{font-size:18px;color:#ec4899;font-weight:700;letter-spacing:2px;margin-bottom:12px}
.card-text{font-size:25px;color:#3b1d6e;font-weight:600;line-height:1.6}
.note{font-size:21px;color:#9d7cb8;line-height:1.8}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="num">01</div>
  <p class="tag">✦ できること その1</p>
  <h2>LPがサクッと<br><span class="pink">自分で作れちゃう！</span></h2>
  <div class="divider"><span>✦</span></div>
  <p class="body">「こんなサービスの紹介ページ作って」<br>って伝えるだけで</p>
  <div class="card">
    <p class="card-label">AIがやってくれること</p>
    <p class="card-text">デザイン・文章・コード<br>ぜーんぶおまかせでOK！</p>
  </div>
  <p class="note">外注費がかからなくなるし、<br>何度でも気軽に直せるのが嬉しい♡</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 5: 業務自動化 ───────────────────────────────────────────────────────
s5() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(160deg,#f5f3ff 0%,#ede9fe 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.num{font-size:100px;font-weight:900;color:rgba(168,85,247,0.1);line-height:1;margin-bottom:-20px}
.tag{font-size:20px;color:#a855f7;font-weight:700;letter-spacing:2px;margin-bottom:20px}
h2{font-size:56px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:16px}
.purple{color:#a855f7}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.25)}
.divider span{color:#a855f7;font-size:18px}
.body{font-size:27px;color:#4b2d7f;line-height:2;margin-bottom:28px}
.tasks{display:flex;flex-direction:column;gap:16px;width:100%;margin-bottom:28px}
.task{
  background:#fff;border-radius:16px;padding:20px 32px;
  display:flex;align-items:center;gap:16px;text-align:left;
  box-shadow:0 4px 16px rgba(168,85,247,0.08);
}
.task-icon{font-size:28px;flex-shrink:0}
.task p{font-size:24px;color:#3b1d6e;font-weight:500}
.result{
  font-size:28px;font-weight:700;color:#a855f7;
  background:#fff;border-radius:16px;padding:20px 40px;
  box-shadow:0 4px 16px rgba(168,85,247,0.1);
}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="num">02</div>
  <p class="tag">✦ できること その2</p>
  <h2>毎日の<span class="purple">めんどくさい</span>作業<br>全部おまかせできる！</h2>
  <div class="divider"><span>✦</span></div>
  <p class="body">例えばこんな作業…</p>
  <div class="tasks">
    <div class="task"><span class="task-icon">📊</span><p>売上データをまとめてレポート作成</p></div>
    <div class="task"><span class="task-icon">📧</span><p>定型メールの自動送信</p></div>
    <div class="task"><span class="task-icon">📋</span><p>顧客リストの整理・更新</p></div>
  </div>
  <div class="result">毎日2〜3時間が丸ごと空く✨</div>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 6: 自分専用ツール ───────────────────────────────────────────────────
s6() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(160deg,#fce7f3 0%,#ede9fe 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.deco-circle{position:absolute;border-radius:50%;opacity:.2}
.num{font-size:100px;font-weight:900;color:rgba(236,72,153,0.1);line-height:1;margin-bottom:-20px}
.tag{font-size:20px;color:#ec4899;font-weight:700;letter-spacing:2px;margin-bottom:20px}
h2{font-size:56px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:16px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(236,72,153,0.25)}
.divider span{color:#ec4899;font-size:18px}
.body{font-size:27px;color:#4b2d7f;line-height:2;margin-bottom:28px}
.example{
  background:#fff;border-radius:20px;padding:32px 40px;
  box-shadow:0 6px 28px rgba(236,72,153,0.1);
  width:100%;margin-bottom:24px;
}
.example-label{font-size:18px;color:#ec4899;font-weight:700;letter-spacing:1px;margin-bottom:12px}
.example-text{font-size:24px;color:#3b1d6e;font-weight:500;line-height:1.7}
.note{font-size:22px;color:#9d7cb8;line-height:1.8}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="deco-circle" style="width:300px;height:300px;background:#f9a8d4;top:-80px;right:-80px"></div>
  <div class="num">03</div>
  <p class="tag">✦ できること その3</p>
  <h2><span class="pink">自分専用</span>ツールが<br>作れる時代になった！</h2>
  <div class="divider"><span>✦</span></div>
  <p class="body">「こんなのあったらいいな」が<br>すぐ形にできるんだよ✦</p>
  <div class="example">
    <p class="example-label">こんな声が届いてる</p>
    <p class="example-text">「予約管理アプリ作って」→ 当日完成！<br>「請求書を自動で作るツールが欲しい」→ 即解決！</p>
  </div>
  <p class="note">エンジニアに頼む必要がなくなって<br>コストも時間も大幅に削減できたよ♡</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 7: 始め方3ステップ ──────────────────────────────────────────────────
s7() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#fff;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:72px 90px;position:relative;text-align:center;
}
.tag{font-size:20px;color:#a855f7;font-weight:700;letter-spacing:2px;margin-bottom:20px}
h2{font-size:56px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:16px}
.pink{color:#ec4899}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 44px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.25)}
.divider span{color:#a855f7;font-size:18px}
.steps{display:flex;flex-direction:column;gap:0;width:100%}
.step{
  background:linear-gradient(135deg,#fdf4ff,#f5f3ff);
  border-radius:20px;padding:28px 32px;
  display:flex;align-items:center;gap:24px;text-align:left;
  border:1.5px solid rgba(168,85,247,0.15);
}
.snum{
  width:56px;height:56px;border-radius:50%;
  background:linear-gradient(135deg,#a855f7,#ec4899);
  color:#fff;font-weight:900;font-size:22px;
  display:flex;align-items:center;justify-content:center;flex-shrink:0;
  box-shadow:0 4px 12px rgba(168,85,247,0.3);
}
.stitle{font-size:26px;color:#3b1d6e;font-weight:700;margin-bottom:6px}
.ssub{font-size:20px;color:#9d7cb8}
.sarrow{
  font-size:22px;color:rgba(168,85,247,0.4);
  padding:8px 0;text-align:center;
}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#a855f7;letter-spacing:5px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <p class="tag">✦ 始め方はカンタン！</p>
  <h2>たった<span class="pink">3ステップ</span>で<br>すぐ使えるよ</h2>
  <div class="divider"><span>✦</span></div>
  <div class="steps">
    <div class="step">
      <div class="snum">1</div>
      <div>
        <div class="stitle">Proプランに登録する</div>
        <div class="ssub">月額 約3,000円〜でOK！</div>
      </div>
    </div>
    <div class="sarrow">▼</div>
    <div class="step">
      <div class="snum">2</div>
      <div>
        <div class="stitle">アプリ感覚でインストール</div>
        <div class="ssub">公式サイトの手順に沿うだけ◎</div>
      </div>
    </div>
    <div class="sarrow">▼</div>
    <div class="step">
      <div class="snum">3</div>
      <div>
        <div class="stitle">日本語で「作って」と話しかける</div>
        <div class="ssub">あとはAIが全部やってくれる✨</div>
      </div>
    </div>
  </div>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 8: CTA ─────────────────────────────────────────────────────────────
s8() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1350px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(150deg,#fce7f3 0%,#ede9fe 50%,#e0f2fe 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;text-align:center;
}
.deco-circle{position:absolute;border-radius:50%;opacity:.2}
h2{font-size:62px;font-weight:900;color:#3b1d6e;line-height:1.3;margin-bottom:28px}
.pink{color:#ec4899}
.sub{font-size:27px;color:#6b4f9e;line-height:2;margin-bottom:32px}
.divider{
  display:flex;align-items:center;gap:16px;
  margin:0 auto 36px;max-width:300px;
}
.divider::before,.divider::after{content:'';flex:1;height:1.5px;background:rgba(168,85,247,0.3)}
.divider span{color:#a855f7;font-size:18px}
.body{font-size:26px;color:#4b2d7f;line-height:2;margin-bottom:16px}
.note{font-size:21px;color:#9d7cb8;line-height:1.9;margin-bottom:48px}
.brand-wrap{display:flex;flex-direction:column;align-items:center;gap:8px}
.brand{font-size:20px;color:#a855f7;letter-spacing:6px;font-weight:700}
.brand-sub{font-size:17px;color:rgba(168,85,247,0.6);letter-spacing:2px}
.spark{font-size:22px;letter-spacing:10px;color:#ec4899;opacity:.6;margin-top:16px}
</style>
</head>
<body>
  <div class="deco-circle" style="width:400px;height:400px;background:#f9a8d4;top:-150px;right:-120px"></div>
  <div class="deco-circle" style="width:280px;height:280px;background:#c4b5fd;bottom:-100px;left:-80px"></div>

  <h2><span class="pink">「もっと知りたい！」</span><br>そう思ったあなたへ</h2>
  <p class="sub">AI活用のご相談、<br>お気軽にどうぞ♡</p>
  <div class="divider"><span>✦</span></div>
  <p class="body">勝目 麻希のセミナーでは、<br>Claude Codeを実際に体験しながら<br>一緒に学べるよ！</p>
  <p class="note">プロフィールのリンクから<br>詳細をチェックしてみてね✦</p>
  <div class="brand-wrap">
    <div class="brand">勝 目 麻 希</div>
    <div class="brand-sub">AIを、あなたの右腕に。</div>
  </div>
  <p class="spark">✦ ✦ ✦</p>
</body>
</html>
EOF
}

# ── generate HTML + PNG ───────────────────────────────────────────────────────
for i in $(seq 1 8); do
  "s$i" | _save "$i"
done

echo ""
echo "Rendering PNG images..."
node "$SCRIPT_DIR/screenshot.cjs" "$OUT"

echo ""
echo "PNG slides saved to: $OUT/"
ls "$OUT"/*.png
