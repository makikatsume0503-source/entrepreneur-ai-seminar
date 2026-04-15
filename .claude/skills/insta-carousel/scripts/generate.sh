#!/usr/bin/env bash
# .claude/skills/insta-carousel/scripts/generate.sh
#
# Generates 8 branded Instagram carousel slides (1080×1080 HTML)
# from the AI seminar landing page content.
#
# Usage (run from repository root):
#   bash .claude/skills/insta-carousel/scripts/generate.sh [OPTIONS]
#
# Options:
#   --output <dir>    Output directory          (default: carousel-output)
#   --slides <n>      Slides to generate, 1–8   (default: 8)
#
# Preview: open any output .html file in a browser.
# Screenshot at 1080×1080 px for Instagram-ready images.

set -euo pipefail

# ── defaults ──────────────────────────────────────────────────────────────────
OUT="carousel-output"
N=8

while [[ $# -gt 0 ]]; do
  case "$1" in
    --output) OUT="$2"; shift 2 ;;
    --slides) N="$2"; shift 2 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

N=$(( N < 1 ? 1 : N > 8 ? 8 : N ))
mkdir -p "$OUT"
echo "Generating $N slide(s) → $OUT/"

# ── helper ────────────────────────────────────────────────────────────────────
_save() {   # _save <n>  —  pipe HTML into this; writes slide-NN.html
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
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(145deg,#1e1b4b 0%,#2d2870 50%,#1e1b4b 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  color:#fff;text-align:center;padding:80px;position:relative;
}
.badge{
  display:inline-block;padding:14px 40px;border-radius:50px;
  background:linear-gradient(135deg,#FFECC0,#d4af37,#B8860B);
  color:#1e1b4b;font-weight:700;font-size:24px;letter-spacing:2px;margin-bottom:52px;
}
h1{font-size:96px;font-weight:900;line-height:1.1;margin-bottom:40px;letter-spacing:-2px}
.line{width:80px;height:5px;background:#d4af37;margin:0 auto 44px;border-radius:3px}
.sub{font-size:27px;font-weight:400;color:#c7d2fe;line-height:2;margin-bottom:52px}
.inst{font-size:22px;color:#a5b4fc;letter-spacing:2px}
.deco{position:absolute;border-radius:50%;border:1px solid rgba(255,255,255,0.07)}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.35);letter-spacing:1px}
</style>
</head>
<body>
  <div class="deco" style="width:720px;height:720px;top:-240px;right:-240px"></div>
  <div class="deco" style="width:440px;height:440px;bottom:-170px;left:-130px"></div>
  <div class="badge">起業家・経営者向け AI活用実践講座</div>
  <h1>AIを最強の<br>右腕に。</h1>
  <div class="line"></div>
  <p class="sub">自社のノウハウや課題をAIに読み込ませ、<br>スライド・LP・専用アプリまで生み出す2時間。</p>
  <p class="inst">講師&ensp;勝目 麻希 <span style="opacity:.4;margin:0 8px">|</span> Maki Katsume</p>
  <span class="num">1 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 2: Problem / Hook ───────────────────────────────────────────────────
s2() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#f8f8fc;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:72px 80px;position:relative;
}
.eyebrow{font-size:21px;color:#d4af37;font-weight:700;letter-spacing:3px;margin-bottom:20px;text-align:center}
h2{font-size:52px;font-weight:900;color:#1e1b4b;line-height:1.3;text-align:center;margin-bottom:56px}
.cards{display:flex;flex-direction:column;gap:24px;width:100%}
.card{
  background:#fff;border-radius:20px;padding:30px 40px;
  border-left:6px solid #d4af37;
  box-shadow:0 4px 24px rgba(30,27,75,0.08);
  display:flex;align-items:center;gap:20px;
}
.icon{font-size:36px;flex-shrink:0}
.card p{font-size:27px;color:#1e1b4b;font-weight:500;line-height:1.5}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="eyebrow">こんなお悩み、ありませんか？</p>
  <h2>AIを活用したい<br>起業家・経営者へ</h2>
  <div class="cards">
    <div class="card"><span class="icon">😔</span><p>AIに興味はあるけど、何から始めればいいかわからない</p></div>
    <div class="card"><span class="icon">⏰</span><p>発信・資料作成・業務に追われ、戦略に集中できない</p></div>
    <div class="card"><span class="icon">💭</span><p>競合との差を広げる「AI活用の実践法」が知りたい</p></div>
  </div>
  <span class="num">2 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 3: Solution — NotebookLM ────────────────────────────────────────────
s3() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#fff;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:72px 80px;position:relative;
}
.tag{font-size:20px;font-weight:700;color:#d4af37;letter-spacing:3px;margin-bottom:16px;text-align:center}
h2{font-size:48px;font-weight:900;color:#1e1b4b;text-align:center;line-height:1.4;margin-bottom:16px}
.gold{color:#d4af37}
.sub{font-size:22px;color:#64748b;text-align:center;line-height:1.8;margin-bottom:44px}
.steps{display:flex;flex-direction:column;gap:16px;width:100%}
.step{
  background:#f8f8fc;border-radius:16px;padding:24px 32px;
  display:flex;align-items:center;gap:20px;
}
.step-n{
  width:44px;height:44px;border-radius:50%;background:#e2e8f0;
  display:flex;align-items:center;justify-content:center;
  font-weight:700;font-size:18px;color:#64748b;flex-shrink:0;
}
.step.last .step-n{background:#d4af37;color:#1e1b4b}
.step.last{background:#fffbeb;border:2px solid #d4af37}
.step p{font-size:23px;color:#1e1b4b;font-weight:500}
.step.last p{font-weight:700}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="tag">NotebookLM</p>
  <h2>作る<span class="gold">「発信特化の</span><br><span class="gold">AIアシスタント」</span></h2>
  <p class="sub">あなたの思考・メモ・リサーチをAIに記憶させ、<br>発信力を劇的に向上させる4ステップ</p>
  <div class="steps">
    <div class="step"><div class="step-n">1</div><p>過去の発信内容・メモ・資料の選定と整理</p></div>
    <div class="step"><div class="step-n">2</div><p>NotebookLMへのデータインポート</p></div>
    <div class="step"><div class="step-n">3</div><p>発信用プロンプトのチューニング</p></div>
    <div class="step last"><div class="step-n">4</div><p>あなた専用「発信」AIアシスタントの誕生</p></div>
  </div>
  <span class="num">3 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 4: Demo 1 — Content creation ───────────────────────────────────────
s4() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#0f172a;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px;position:relative;color:#fff;text-align:center;
}
.demo-badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:19px;font-weight:700;
  letter-spacing:2px;margin-bottom:40px;
}
.icon-wrap{
  width:120px;height:120px;border-radius:24px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:56px;margin:0 auto 40px;
}
h2{font-size:54px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:32px}
p{font-size:26px;color:#94a3b8;line-height:1.9;max-width:800px;margin:0 auto}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
.glow{position:absolute;width:400px;height:400px;border-radius:50%;filter:blur(80px);opacity:.15;pointer-events:none}
</style>
</head>
<body>
  <div class="glow" style="background:#d4af37;top:-100px;right:-100px"></div>
  <div class="glow" style="background:#6366f1;bottom:-100px;left:-100px"></div>
  <div class="demo-badge">デモ ① / 3</div>
  <div class="icon-wrap">📊</div>
  <h2>圧倒的スピードでの<br>発信コンテンツ作成</h2>
  <p>メモやリサーチをNotebookLMに読み込ませるだけで、<br>SNS投稿・ブログ・スライドが一瞬で完成。</p>
  <span class="num">4 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 5: Demo 2 — LP creation ────────────────────────────────────────────
s5() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#0f172a;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px;position:relative;color:#fff;text-align:center;
}
.demo-badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:19px;font-weight:700;
  letter-spacing:2px;margin-bottom:40px;
}
.icon-wrap{
  width:120px;height:120px;border-radius:24px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:56px;margin:0 auto 40px;
}
h2{font-size:54px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:32px}
p{font-size:26px;color:#94a3b8;line-height:1.9;max-width:800px;margin:0 auto}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
.glow{position:absolute;width:400px;height:400px;border-radius:50%;filter:blur(80px);opacity:.15;pointer-events:none}
</style>
</head>
<body>
  <div class="glow" style="background:#a78bfa;top:-100px;left:-100px"></div>
  <div class="glow" style="background:#d4af37;bottom:-100px;right:-100px"></div>
  <div class="demo-badge">デモ ② / 3</div>
  <div class="icon-wrap">🖥️</div>
  <h2>集客用LP・<br>セールスレター作成</h2>
  <p>自社商品の強みを言語化し、売れるLPの構成・コピーを構築。<br>外注費と時間を大幅にカットします。</p>
  <span class="num">5 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 6: Demo 3 — Custom app ─────────────────────────────────────────────
s6() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#0f172a;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px;position:relative;color:#fff;text-align:center;
}
.demo-badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:19px;font-weight:700;
  letter-spacing:2px;margin-bottom:40px;
}
.icon-wrap{
  width:120px;height:120px;border-radius:24px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:56px;margin:0 auto 40px;
}
h2{font-size:54px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:32px}
p{font-size:26px;color:#94a3b8;line-height:1.9;max-width:800px;margin:0 auto}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
.glow{position:absolute;width:400px;height:400px;border-radius:50%;filter:blur(80px);opacity:.15;pointer-events:none}
</style>
</head>
<body>
  <div class="glow" style="background:#10b981;top:-100px;right:0"></div>
  <div class="glow" style="background:#6366f1;bottom:-100px;left:-50px"></div>
  <div class="demo-badge">デモ ③ / 3</div>
  <div class="icon-wrap">📱</div>
  <h2>自社専用の<br>業務効率化アプリ</h2>
  <p>プログラミング不要。日報管理・シフト作成など、<br>自社のニッチな課題を解決する専用アプリがすぐ作れます。</p>
  <span class="num">6 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 7: Urgency — Survival strategy ─────────────────────────────────────
s7() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:linear-gradient(145deg,#1e1b4b 0%,#2d2870 50%,#1e1b4b 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px;position:relative;color:#fff;text-align:center;
}
h2{font-size:52px;font-weight:900;line-height:1.4;margin-bottom:40px}
.gold{color:#d4af37;border-bottom:3px solid #d4af37;padding-bottom:4px}
.body-text{
  font-size:25px;font-weight:300;color:#c7d2fe;line-height:2;
  margin-bottom:44px;max-width:820px;
}
.bold-line{
  font-size:26px;font-weight:700;color:#fff;line-height:1.9;
  border-left:5px solid #d4af37;padding:20px 36px;
  background:rgba(255,255,255,0.05);border-radius:0 16px 16px 0;
  text-align:left;width:100%;
}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.3);letter-spacing:1px}
.deco{position:absolute;border-radius:50%;border:1px solid rgba(255,255,255,0.06)}
</style>
</head>
<body>
  <div class="deco" style="width:600px;height:600px;top:-200px;left:-200px"></div>
  <div class="deco" style="width:400px;height:400px;bottom:-150px;right:-120px"></div>
  <h2>境界線がなくなる時代の<br><span class="gold">「真の生存戦略」</span></h2>
  <p class="body-text">
    2026年以降、AIの進化は加速し続けます。<br>
    「AIを右腕にできる人」と「そうでない人」の差は<br>
    取り返しのつかない格差になっていきます。
  </p>
  <div class="bold-line">
    最後に選ばれ続けるのは、自社の強みという本質を理解し、<br>
    人間にしかできない「クリエイティブな思考」と「決断」に<br>
    集中できる次世代の経営者・リーダーです。
  </div>
  <span class="num">7 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 8: CTA — Event details ─────────────────────────────────────────────
s8() { cat << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
html,body{width:1080px;height:1080px;overflow:hidden;font-family:'Noto Sans JP',sans-serif}
body{
  background:#fff;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;position:relative;
}
.top{font-size:21px;color:#d4af37;font-weight:700;letter-spacing:3px;margin-bottom:24px;text-align:center}
h2{font-size:50px;font-weight:900;color:#1e1b4b;text-align:center;margin-bottom:48px;line-height:1.3}
.details{
  background:#f8f8fc;border-radius:24px;padding:44px 60px;width:100%;
  display:flex;flex-direction:column;gap:28px;margin-bottom:44px;
}
.row{display:flex;align-items:center;gap:24px}
.label{font-size:19px;color:#64748b;font-weight:500;width:120px;flex-shrink:0}
.value{font-size:28px;color:#1e1b4b;font-weight:700}
.price{font-size:52px;color:#1e1b4b;font-weight:900}
.price-note{font-size:18px;color:#94a3b8;font-weight:400;margin-left:8px}
.cta{
  display:inline-block;padding:24px 80px;border-radius:16px;
  background:linear-gradient(135deg,#FFECC0,#d4af37,#B8860B);
  color:#1e1b4b;font-weight:900;font-size:30px;letter-spacing:1px;
  box-shadow:0 8px 32px rgba(212,175,55,0.4);
}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="top">開催概要</p>
  <h2>今すぐ参加を<br>申し込む</h2>
  <div class="details">
    <div class="row">
      <span class="label">📅 日時</span>
      <span class="value">3月12日（木）9:00〜11:00</span>
    </div>
    <div class="row">
      <span class="label">💻 形式</span>
      <span class="value">オンライン Zoom</span>
    </div>
    <div class="row">
      <span class="label">💰 参加費</span>
      <span class="price">¥11,000<span class="price-note">（税込）</span></span>
    </div>
  </div>
  <div class="cta">リアルタイム参加はこちら →</div>
  <span class="num">8 / 8</span>
</body>
</html>
EOF
}

# ── generate requested slides ─────────────────────────────────────────────────
for i in $(seq 1 "$N"); do
  "s$i" | _save "$i"
done

echo ""
echo "Done. Open any .html file in a browser and screenshot at 1080×1080 px."
