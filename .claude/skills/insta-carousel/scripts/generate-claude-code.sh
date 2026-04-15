#!/usr/bin/env bash
# .claude/skills/insta-carousel/scripts/generate-claude-code.sh
#
# Generates 8 Instagram carousel slides (1080×1350 px HTML)
# Topic: "2026年注目度NO.1 Claude Code活用術"
#
# Usage (run from repository root):
#   bash .claude/skills/insta-carousel/scripts/generate-claude-code.sh [--output DIR]

set -euo pipefail

OUT="carousel-output-claude-code"
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
  background:linear-gradient(145deg,#0f0e2e 0%,#1e1b4b 45%,#16144a 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  color:#fff;text-align:center;padding:80px;position:relative;
}
.no1{
  display:inline-block;padding:12px 40px;border-radius:50px;
  background:linear-gradient(135deg,#FFECC0,#d4af37,#B8860B);
  color:#1e1b4b;font-weight:900;font-size:28px;letter-spacing:3px;margin-bottom:48px;
}
.year{font-size:26px;font-weight:500;color:#a5b4fc;letter-spacing:4px;margin-bottom:20px}
h1{font-size:88px;font-weight:900;line-height:1.15;margin-bottom:48px;letter-spacing:-1px}
.gold{color:#d4af37}
.line{width:80px;height:5px;background:#d4af37;margin:0 auto 44px;border-radius:3px}
.sub{font-size:28px;font-weight:400;color:#c7d2fe;line-height:2;margin-bottom:52px}
.tag{
  display:inline-block;border:2px solid rgba(165,180,252,0.4);
  border-radius:50px;padding:10px 32px;font-size:20px;color:#a5b4fc;letter-spacing:2px;
}
.deco{position:absolute;border-radius:50%;border:1px solid rgba(255,255,255,0.06)}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <div class="deco" style="width:800px;height:800px;top:-300px;right:-300px"></div>
  <div class="deco" style="width:500px;height:500px;bottom:-200px;left:-150px"></div>
  <p class="year">2026年</p>
  <div class="no1">注目度 NO.1</div>
  <h1><span class="gold">Claude Code</span><br>活用術</h1>
  <div class="line"></div>
  <p class="sub">プログラミング不要で<br>AIに仕事をさせる新時代</p>
  <div class="tag">起業家・経営者向け 実践ガイド</div>
  <span class="num">1 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 2: Claude Codeとは？ ────────────────────────────────────────────────
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
  background:#fff;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;position:relative;
}
.eyebrow{font-size:21px;color:#d4af37;font-weight:700;letter-spacing:3px;margin-bottom:20px;text-align:center}
h2{font-size:58px;font-weight:900;color:#1e1b4b;text-align:center;line-height:1.25;margin-bottom:16px}
.gold{color:#d4af37}
.desc{font-size:25px;color:#64748b;text-align:center;line-height:1.9;margin-bottom:52px;max-width:860px}
.features{display:flex;flex-direction:column;gap:20px;width:100%}
.feat{
  background:#f8f8fc;border-radius:18px;padding:28px 36px;
  display:flex;align-items:center;gap:24px;
}
.feat-icon{
  width:64px;height:64px;border-radius:16px;
  background:linear-gradient(135deg,#1e1b4b,#2d2870);
  display:flex;align-items:center;justify-content:center;font-size:30px;flex-shrink:0;
}
.feat-text h3{font-size:24px;font-weight:700;color:#1e1b4b;margin-bottom:6px}
.feat-text p{font-size:20px;color:#64748b;line-height:1.6}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="eyebrow">WHAT IS CLAUDE CODE</p>
  <h2><span class="gold">Claude Code</span>って<br>何？</h2>
  <p class="desc">Anthropic社が開発した、AIが直接コードを書き・実行し・改善する<br>革命的なAIコーディングアシスタント。</p>
  <div class="features">
    <div class="feat">
      <div class="feat-icon">💬</div>
      <div class="feat-text">
        <h3>日本語で指示するだけ</h3>
        <p>「〇〇を作って」と伝えれば、AIが自動でコードを生成・実行</p>
      </div>
    </div>
    <div class="feat">
      <div class="feat-icon">⚡</div>
      <div class="feat-text">
        <h3>プログラミング知識は不要</h3>
        <p>技術的な知識がなくても、ビジネス課題をAIが解決</p>
      </div>
    </div>
    <div class="feat">
      <div class="feat-icon">🔄</div>
      <div class="feat-text">
        <h3>試行錯誤もAIにお任せ</h3>
        <p>エラーが出ても自分で直す。完成まで自律的に動き続ける</p>
      </div>
    </div>
  </div>
  <span class="num">2 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 3: なぜ今、必要なのか ───────────────────────────────────────────────
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
  background:#f8f8fc;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;position:relative;
}
.eyebrow{font-size:21px;color:#d4af37;font-weight:700;letter-spacing:3px;margin-bottom:20px;text-align:center}
h2{font-size:52px;font-weight:900;color:#1e1b4b;text-align:center;line-height:1.35;margin-bottom:52px}
.reasons{display:flex;flex-direction:column;gap:24px;width:100%}
.reason{
  background:#fff;border-radius:20px;padding:32px 40px;
  box-shadow:0 4px 24px rgba(30,27,75,0.07);
  display:flex;align-items:flex-start;gap:24px;
}
.reason-num{
  font-size:48px;font-weight:900;color:#d4af37;line-height:1;
  flex-shrink:0;width:56px;
}
.reason h3{font-size:26px;font-weight:700;color:#1e1b4b;margin-bottom:8px}
.reason p{font-size:21px;color:#64748b;line-height:1.7}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="eyebrow">WHY NOW</p>
  <h2>なぜ今、起業家が<br>学ぶべきなのか？</h2>
  <div class="reasons">
    <div class="reason">
      <div class="reason-num">01</div>
      <div>
        <h3>エンジニア不要の時代が来た</h3>
        <p>外注していた開発作業を、自分で・すぐに・ゼロコストで実現できるようになった</p>
      </div>
    </div>
    <div class="reason">
      <div class="reason-num">02</div>
      <div>
        <h3>競合との差が開き続ける</h3>
        <p>導入した企業はすでに業務速度が数倍に。知らないままでは取り残される</p>
      </div>
    </div>
    <div class="reason">
      <div class="reason-num">03</div>
      <div>
        <h3>今が一番カンタンに始められる</h3>
        <p>日本語対応・GUI不要・無料枠あり。参入障壁は過去最低水準</p>
      </div>
    </div>
  </div>
  <span class="num">3 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 4: 活用術① ノーコードアプリ ────────────────────────────────────────
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
  background:#0f172a;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;color:#fff;text-align:center;position:relative;
}
.badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:20px;font-weight:700;
  letter-spacing:2px;margin-bottom:44px;
}
.icon-wrap{
  width:140px;height:140px;border-radius:28px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:64px;margin:0 auto 44px;
}
h2{font-size:58px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:36px}
.desc{font-size:26px;color:#94a3b8;line-height:1.9;max-width:820px;margin:0 auto 52px}
.example{
  background:#1e293b;border:1px solid #334155;border-radius:16px;
  padding:28px 40px;width:100%;text-align:left;
}
.example-label{font-size:17px;color:#64748b;letter-spacing:2px;margin-bottom:12px}
.example-text{font-size:23px;color:#e2e8f0;font-weight:500;line-height:1.7}
.glow{position:absolute;width:500px;height:500px;border-radius:50%;filter:blur(100px);opacity:.12;pointer-events:none}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
</style>
</head>
<body>
  <div class="glow" style="background:#d4af37;top:-150px;right:-150px"></div>
  <div class="glow" style="background:#6366f1;bottom:-150px;left:-150px"></div>
  <div class="badge">活用術 ① / 3</div>
  <div class="icon-wrap">🛠️</div>
  <h2>ノーコードで<br>専用ツールを即作成</h2>
  <p class="desc">「〇〇が欲しい」と日本語で伝えるだけで、<br>あなたのビジネス専用アプリが完成します。</p>
  <div class="example">
    <p class="example-label">EXAMPLE</p>
    <p class="example-text">「顧客ごとに提案書を自動生成するツールを作って」<br>→ 数分で動くアプリが完成</p>
  </div>
  <span class="num">4 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 5: 活用術② 業務自動化 ──────────────────────────────────────────────
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
  background:#0f172a;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;color:#fff;text-align:center;position:relative;
}
.badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:20px;font-weight:700;
  letter-spacing:2px;margin-bottom:44px;
}
.icon-wrap{
  width:140px;height:140px;border-radius:28px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:64px;margin:0 auto 44px;
}
h2{font-size:58px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:36px}
.desc{font-size:26px;color:#94a3b8;line-height:1.9;max-width:820px;margin:0 auto 52px}
.example{
  background:#1e293b;border:1px solid #334155;border-radius:16px;
  padding:28px 40px;width:100%;text-align:left;
}
.example-label{font-size:17px;color:#64748b;letter-spacing:2px;margin-bottom:12px}
.example-text{font-size:23px;color:#e2e8f0;font-weight:500;line-height:1.7}
.glow{position:absolute;width:500px;height:500px;border-radius:50%;filter:blur(100px);opacity:.12;pointer-events:none}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
</style>
</head>
<body>
  <div class="glow" style="background:#a78bfa;top:-150px;left:-100px"></div>
  <div class="glow" style="background:#d4af37;bottom:-150px;right:-100px"></div>
  <div class="badge">活用術 ② / 3</div>
  <div class="icon-wrap">⚡</div>
  <h2>繰り返し業務を<br>丸ごと自動化</h2>
  <p class="desc">毎日の定型作業をスクリプト化して、<br>あなたは戦略だけに集中できる。</p>
  <div class="example">
    <p class="example-label">EXAMPLE</p>
    <p class="example-text">「売上データをまとめて週次レポートをメールで送るスクリプトを作って」<br>→ 毎週3時間の作業がゼロに</p>
  </div>
  <span class="num">5 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 6: 活用術③ コンテンツ自動生成 ─────────────────────────────────────
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
  background:#0f172a;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:80px;color:#fff;text-align:center;position:relative;
}
.badge{
  display:inline-block;padding:10px 32px;border-radius:50px;
  border:2px solid #d4af37;color:#d4af37;font-size:20px;font-weight:700;
  letter-spacing:2px;margin-bottom:44px;
}
.icon-wrap{
  width:140px;height:140px;border-radius:28px;background:#1e293b;
  border:2px solid #334155;display:flex;align-items:center;justify-content:center;
  font-size:64px;margin:0 auto 44px;
}
h2{font-size:58px;font-weight:900;color:#d4af37;line-height:1.3;margin-bottom:36px}
.desc{font-size:26px;color:#94a3b8;line-height:1.9;max-width:820px;margin:0 auto 52px}
.example{
  background:#1e293b;border:1px solid #334155;border-radius:16px;
  padding:28px 40px;width:100%;text-align:left;
}
.example-label{font-size:17px;color:#64748b;letter-spacing:2px;margin-bottom:12px}
.example-text{font-size:23px;color:#e2e8f0;font-weight:500;line-height:1.7}
.glow{position:absolute;width:500px;height:500px;border-radius:50%;filter:blur(100px);opacity:.12;pointer-events:none}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.25);letter-spacing:1px}
</style>
</head>
<body>
  <div class="glow" style="background:#10b981;top:-100px;right:-50px"></div>
  <div class="glow" style="background:#6366f1;bottom:-150px;left:-100px"></div>
  <div class="badge">活用術 ③ / 3</div>
  <div class="icon-wrap">✍️</div>
  <h2>LP・コンテンツを<br>一括で自動構築</h2>
  <p class="desc">商品情報を渡すだけで、LP・SNS投稿・<br>スライドをまるごと生成。外注コストを大幅削減。</p>
  <div class="example">
    <p class="example-label">EXAMPLE</p>
    <p class="example-text">「この商品情報でLP・Instagram投稿10本・提案資料を全部作って」<br>→ 外注費ゼロで即日完成</p>
  </div>
  <span class="num">6 / 8</span>
</body>
</html>
EOF
}

# ── SLIDE 7: Before / After ───────────────────────────────────────────────────
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
  background:#fff;display:flex;flex-direction:column;align-items:center;
  justify-content:center;padding:72px 80px;position:relative;
}
.eyebrow{font-size:21px;color:#d4af37;font-weight:700;letter-spacing:3px;margin-bottom:20px;text-align:center}
h2{font-size:52px;font-weight:900;color:#1e1b4b;text-align:center;line-height:1.3;margin-bottom:52px}
.cols{display:flex;gap:28px;width:100%}
.col{flex:1;border-radius:24px;padding:36px;display:flex;flex-direction:column;gap:20px}
.col.before{background:#fff5f5;border:2px solid #fecaca}
.col.after{background:#fffbeb;border:2px solid #d4af37}
.col-title{
  font-size:24px;font-weight:900;letter-spacing:2px;text-align:center;
  padding-bottom:16px;border-bottom:2px solid;margin-bottom:4px;
}
.before .col-title{color:#ef4444;border-color:#fecaca}
.after .col-title{color:#d4af37;border-color:#d4af37}
.item{display:flex;align-items:flex-start;gap:12px}
.dot{width:10px;height:10px;border-radius:50%;flex-shrink:0;margin-top:9px}
.before .dot{background:#ef4444}
.after .dot{background:#d4af37}
.item p{font-size:21px;color:#1e1b4b;font-weight:500;line-height:1.6}
.arrow{
  font-size:52px;color:#d4af37;display:flex;align-items:center;
  justify-content:center;flex-shrink:0;padding-top:40px;
}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(30,27,75,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <p class="eyebrow">BEFORE / AFTER</p>
  <h2>Claude Code導入の<br>前後比較</h2>
  <div class="cols">
    <div class="col before">
      <div class="col-title">BEFORE</div>
      <div class="item"><div class="dot"></div><p>ツール開発に数週間＋外注費数十万円</p></div>
      <div class="item"><div class="dot"></div><p>定型業務に毎日2〜3時間を消費</p></div>
      <div class="item"><div class="dot"></div><p>コンテンツ作成を外部に依頼・待ち時間あり</p></div>
      <div class="item"><div class="dot"></div><p>技術者がいないと何もできない</p></div>
    </div>
    <div class="arrow">→</div>
    <div class="col after">
      <div class="col-title">AFTER</div>
      <div class="item"><div class="dot"></div><p>日本語で指示するだけで数分で完成</p></div>
      <div class="item"><div class="dot"></div><p>自動化スクリプトが代わりに処理</p></div>
      <div class="item"><div class="dot"></div><p>LP・投稿・資料を即日・ゼロ円で生成</p></div>
      <div class="item"><div class="dot"></div><p>自分だけで完結。スピードが何倍にも</p></div>
    </div>
  </div>
  <span class="num">7 / 8</span>
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
  background:linear-gradient(145deg,#0f0e2e 0%,#1e1b4b 45%,#16144a 100%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px;color:#fff;text-align:center;position:relative;
}
.eyebrow{font-size:21px;color:#a5b4fc;font-weight:500;letter-spacing:3px;margin-bottom:32px}
h2{font-size:56px;font-weight:900;line-height:1.35;margin-bottom:48px}
.gold{color:#d4af37}
.details{
  background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.12);
  border-radius:24px;padding:44px 60px;width:100%;
  display:flex;flex-direction:column;gap:24px;margin-bottom:48px;
}
.row{display:flex;align-items:center;gap:24px}
.label{font-size:19px;color:#94a3b8;font-weight:500;width:120px;flex-shrink:0}
.value{font-size:27px;color:#fff;font-weight:700}
.price{font-size:48px;color:#d4af37;font-weight:900}
.price-note{font-size:18px;color:#94a3b8;font-weight:400;margin-left:8px}
.cta{
  display:inline-block;padding:26px 80px;border-radius:16px;
  background:linear-gradient(135deg,#FFECC0,#d4af37,#B8860B);
  color:#1e1b4b;font-weight:900;font-size:30px;letter-spacing:1px;
  box-shadow:0 8px 40px rgba(212,175,55,0.35);
}
.deco{position:absolute;border-radius:50%;border:1px solid rgba(255,255,255,0.05)}
.num{position:absolute;bottom:44px;right:60px;font-size:19px;color:rgba(255,255,255,0.3);letter-spacing:1px}
</style>
</head>
<body>
  <div class="deco" style="width:600px;height:600px;top:-200px;right:-200px"></div>
  <div class="deco" style="width:400px;height:400px;bottom:-160px;left:-120px"></div>
  <p class="eyebrow">SEMINAR</p>
  <h2><span class="gold">Claude Code</span>を<br>実際に体験しませんか？</h2>
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

# ── generate ──────────────────────────────────────────────────────────────────
for i in $(seq 1 8); do
  "s$i" | _save "$i"
done

echo ""
echo "Done. Open any .html file in a browser and screenshot at 1080×1350 px."
