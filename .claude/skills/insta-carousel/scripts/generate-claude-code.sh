#!/usr/bin/env bash
# .claude/skills/insta-carousel/scripts/generate-claude-code.sh
#
# Generates 8 Instagram carousel slides as PNG images (1080×1350)
# Topic: "2026年注目度NO.1 Claude Code活用術"
# Style: dark navy + gold luxury (◇ dividers, bg slide numbers, corner accents)
#
# Usage (run from repository root):
#   bash .claude/skills/insta-carousel/scripts/generate-claude-code.sh [--output DIR]
#
# Output: <dir>/slide-01.png … slide-08.png

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
.no1-badge{
  display:inline-block;padding:12px 44px;border-radius:4px;
  background:linear-gradient(135deg,#c9a84c,#a07830);
  color:#fff;font-weight:700;font-size:24px;letter-spacing:3px;margin-bottom:44px;
}
h1{font-size:88px;font-weight:900;line-height:1.2;color:#fff;margin-bottom:40px;letter-spacing:-1px}
.gold{color:#c9a84c}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.sub{font-size:26px;color:rgba(255,255,255,0.75);line-height:2;margin-bottom:44px}
.tag{
  display:inline-block;border:1px solid rgba(201,168,76,0.4);
  border-radius:4px;padding:10px 36px;font-size:20px;color:rgba(201,168,76,0.85);
  letter-spacing:2px;
}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">01</div>
  <div class="no1-badge">2026年 注目度 NO.1</div>
  <h1><span class="gold">Claude Code</span><br>活用術</h1>
  <div class="divider"><span>◇</span></div>
  <p class="sub">プログラミング不要で<br>AIに仕事をさせる新時代</p>
  <div class="tag">起業家・経営者向け 実践ガイド</div>
  <div class="brand">勝 目 麻 希</div>
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
h2{font-size:58px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.note{font-size:21px;color:rgba(255,255,255,0.45);line-height:1.9;margin-top:8px}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">02</div>
  <h2>Claude Codeって<br>何？</h2>
  <div class="divider"><span>◇</span></div>
  <p class="body">Anthropic社が開発した<br>AIコーディングアシスタント。</p>
  <p class="body"><span class="accent">日本語で指示するだけで</span></p>
  <p class="body">コードを書き・実行し・改善まで<br>AIがすべて自律的に行います。</p>
  <p class="note">プログラミングの知識は<br>一切必要ありません</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 3: LPが自分で作れます ───────────────────────────────────────────────
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
h2{font-size:56px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.large{font-size:32px;color:rgba(255,255,255,0.95);font-weight:500;line-height:1.7;margin-bottom:28px}
.note{font-size:21px;color:rgba(255,255,255,0.45);line-height:1.9}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">03</div>
  <h2>たとえば、<br>LPを自分で作れます</h2>
  <div class="divider"><span>◇</span></div>
  <p class="body">「こんなサービスの<br>ランディングページを作って」<br>と伝えるだけ。</p>
  <p class="large"><span class="accent">デザイン・構成・コード</span>まで</p>
  <p class="large">AIが一気に仕上げてくれます。</p>
  <p class="note">外注費を抑えて、自分のペースで<br>何度でも修正できるのが魅力です</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 4: 業務ツールだって作れます ────────────────────────────────────────
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
h2{font-size:56px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.note{font-size:21px;color:rgba(255,255,255,0.45);line-height:1.9;margin-top:8px}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">04</div>
  <h2>業務ツールだって<br>作れます</h2>
  <div class="divider"><span>◇</span></div>
  <p class="body"><span class="accent">予約管理・顧客リストや<br>請求書の自動生成</span>など、</p>
  <p class="body">いままで外注していたツールを<br>自分の手で作れるようになります。</p>
  <p class="body">「こんなのあったらいいな」を<br>形にできる時代です。</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 5: Skillsで繰り返し作業を自動化 ────────────────────────────────────
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
/* Corner diamond decorations */
.cdiamond{
  position:absolute;width:38px;height:38px;
  border:1.5px solid rgba(201,168,76,0.35);transform:rotate(45deg);
}
h2{font-size:56px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">05</div>
  <div class="cdiamond" style="top:52px;right:52px"></div>
  <div class="cdiamond" style="bottom:120px;left:52px"></div>
  <h2>「Skills」で<br>繰り返し作業を自動化</h2>
  <div class="divider"><span>◇</span></div>
  <p class="body">毎回同じ指示を出すのは<br>面倒ですよね。</p>
  <p class="body"><span class="accent">Skills機能を使えば、</span></p>
  <p class="body">自分だけの「指示書」を保存して<br>ワンコマンドで呼び出せます。</p>
  <p class="body">SNS投稿もLP制作も、<br>あなた仕様に自動化できます。</p>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 6: 始め方はたったの3ステップ ───────────────────────────────────────
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
h2{font-size:56px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 44px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.steps{display:flex;flex-direction:column;gap:0;width:100%}
.step-card{
  background:rgba(255,255,255,0.05);border:1px solid rgba(255,255,255,0.1);
  border-radius:12px;padding:24px 32px;
  display:flex;align-items:center;gap:24px;text-align:left;
}
.snum{
  width:52px;height:52px;border-radius:50%;
  background:#c9a84c;color:#0b1629;
  font-weight:900;font-size:22px;
  display:flex;align-items:center;justify-content:center;flex-shrink:0;
}
.stitle{font-size:26px;color:#fff;font-weight:700;margin-bottom:6px}
.ssub{font-size:19px;color:rgba(255,255,255,0.45)}
.sarrow{
  font-size:20px;color:rgba(201,168,76,0.45);
  padding:10px 0;text-align:center;
}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">06</div>
  <h2>始め方は<br>たったの3ステップ</h2>
  <div class="divider"><span>◇</span></div>
  <div class="steps">
    <div class="step-card">
      <div class="snum">1</div>
      <div>
        <div class="stitle">Proプランに登録する</div>
        <div class="ssub">月額 約3,000円〜で利用できます</div>
      </div>
    </div>
    <div class="sarrow">▼</div>
    <div class="step-card">
      <div class="snum">2</div>
      <div>
        <div class="stitle">アプリ感覚でインストール</div>
        <div class="ssub">公式サイトの手順に沿うだけでOK</div>
      </div>
    </div>
    <div class="sarrow">▼</div>
    <div class="step-card">
      <div class="snum">3</div>
      <div>
        <div class="stitle">日本語で「作って」と伝える</div>
        <div class="ssub">あとはAIが形にしてくれます</div>
      </div>
    </div>
  </div>
  <div class="brand">勝 目 麻 希</div>
</body>
</html>
EOF
}

# ── SLIDE 7: なぜ今、起業家が使うべきか ──────────────────────────────────────
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
.bg-num{
  position:absolute;top:60px;left:50%;transform:translateX(-50%);
  font-size:220px;font-weight:900;color:rgba(255,255,255,0.05);
  line-height:1;pointer-events:none;white-space:nowrap;letter-spacing:-8px;
}
h2{font-size:56px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 40px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:24px}
.accent{color:#c9a84c;font-weight:700}
.bold-white{font-size:30px;font-weight:700;color:#fff;line-height:1.8;margin-bottom:24px}
.note{font-size:21px;color:rgba(255,255,255,0.45);line-height:1.9;margin-top:8px}
.brand{
  position:absolute;bottom:64px;left:50%;transform:translateX(-50%);
  font-size:18px;color:#c9a84c;letter-spacing:8px;font-weight:500;white-space:nowrap;
}
</style>
</head>
<body>
  <div class="bg-num">07</div>
  <h2>なぜ今、<br>起業家が使うべきか</h2>
  <div class="divider"><span>◇</span></div>
  <p class="body"><span class="accent">2026年、AIの進化は加速しています。</span></p>
  <p class="body">「AIを使いこなす人」と<br>「そうでない人」の差は</p>
  <p class="bold-white">今この瞬間にも<br>開き続けています。</p>
  <p class="note">この波に乗るなら、今が絶好の<br>タイミングです</p>
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
  background:radial-gradient(ellipse 80% 60% at 50% 45%,#162040 0%,#0b1629 65%);
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  padding:80px 90px;position:relative;color:#fff;text-align:center;
}
/* Corner brackets */
.cb{position:absolute;width:60px;height:60px;border-color:rgba(201,168,76,0.4);border-style:solid}
.cb.tl{top:44px;left:44px;border-width:2px 0 0 2px}
.cb.tr{top:44px;right:44px;border-width:2px 2px 0 0}
.cb.bl{bottom:44px;left:44px;border-width:0 0 2px 2px}
.cb.br{bottom:44px;right:44px;border-width:0 2px 2px 0}
h2{font-size:60px;font-weight:900;color:#c9a84c;line-height:1.3;margin-bottom:28px}
.sub-white{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:28px}
.divider{display:flex;align-items:center;gap:14px;margin:0 auto 36px;max-width:280px}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(201,168,76,0.4)}
.divider span{color:rgba(201,168,76,0.7);font-size:13px}
.body{font-size:28px;color:rgba(255,255,255,0.88);line-height:2;margin-bottom:16px}
.note{font-size:20px;color:rgba(255,255,255,0.4);line-height:1.9;margin-bottom:48px}
.brand-wrap{display:flex;flex-direction:column;align-items:center;gap:8px}
.brand{font-size:20px;color:#c9a84c;letter-spacing:8px;font-weight:500}
.brand-sub{font-size:16px;color:rgba(201,168,76,0.5);letter-spacing:2px}
</style>
</head>
<body>
  <div class="cb tl"></div>
  <div class="cb tr"></div>
  <div class="cb bl"></div>
  <div class="cb br"></div>
  <h2>AIを活用して<br>「できること」を<br>一緒に広げませんか？</h2>
  <p class="sub-white">AI活用のご相談、<br>お気軽にどうぞ。</p>
  <div class="divider"><span>◇</span></div>
  <p class="body">勝目 麻希のセミナーでは、<br>Claude Codeの実践活用を<br>一緒に体験できます。</p>
  <p class="note">詳しくはプロフィールから<br>ご覧ください</p>
  <div class="brand-wrap">
    <div class="brand">勝 目 麻 希</div>
    <div class="brand-sub">A I を、あなたの右腕に。</div>
  </div>
</body>
</html>
EOF
}

# ── generate HTML ─────────────────────────────────────────────────────────────
for i in $(seq 1 8); do
  "s$i" | _save "$i"
done

# ── convert HTML → PNG ────────────────────────────────────────────────────────
echo ""
echo "Rendering PNG images..."
node "$SCRIPT_DIR/screenshot.cjs" "$OUT"

echo ""
echo "PNG slides saved to: $OUT/"

# ── generate gallery page ─────────────────────────────────────────────────────
{
cat << 'HEADER'
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Claude Code活用術 カルーセル</title>
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{background:#0b1629;font-family:'Noto Sans JP',sans-serif;padding:48px 40px}
h1{color:#c9a84c;text-align:center;font-size:32px;margin-bottom:8px;letter-spacing:2px}
.sub{color:rgba(255,255,255,0.4);text-align:center;font-size:14px;margin-bottom:40px;letter-spacing:1px}
.dl-all{text-align:center;margin-bottom:48px}
.dl-all button{
  background:linear-gradient(135deg,#c9a84c,#a07830);
  color:#fff;border:none;padding:16px 56px;border-radius:10px;
  font-size:20px;font-weight:bold;cursor:pointer;letter-spacing:2px;
  box-shadow:0 6px 24px rgba(201,168,76,0.3);
}
.dl-all button:hover{opacity:.88}
.grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px;max-width:1400px;margin:0 auto}
.card{background:#162040;border-radius:14px;overflow:hidden;border:1px solid rgba(201,168,76,0.15);transition:.2s}
.card:hover{border-color:rgba(201,168,76,0.5);transform:translateY(-2px)}
.card img{width:100%;display:block;cursor:pointer}
.info{padding:14px 18px;display:flex;justify-content:space-between;align-items:center}
.name{color:#fff;font-size:14px;font-weight:500}
.sub2{color:rgba(255,255,255,0.35);font-size:12px}
.dl-btn{
  background:#c9a84c;color:#0b1629;padding:7px 18px;border-radius:7px;
  text-decoration:none;font-weight:700;font-size:13px;white-space:nowrap;
}
.dl-btn:hover{opacity:.85}
</style>
</head>
<body>
<h1>Claude Code 活用術</h1>
<p class="sub">全8枚 · 1080×1350px · Instagram縦型</p>
<div class="dl-all">
  <button onclick="downloadAll()">⬇ すべてダウンロード</button>
</div>
<div class="grid">
HEADER

for i in $(seq 1 8); do
  f="$(printf 'slide-%02d.png' "$i")"
  label="Slide $(printf '%02d' "$i")"
  echo "  <div class=\"card\">"
  echo "    <img src=\"$f\" alt=\"$label\" onclick=\"window.open('$f')\">"
  echo "    <div class=\"info\"><div><div class=\"name\">$label</div><div class=\"sub2\">画像 · PNG</div></div>"
  echo "    <a class=\"dl-btn\" href=\"$f\" download=\"$f\">ダウンロード</a></div>"
  echo "  </div>"
done

cat << 'FOOTER'
</div>
<script>
function downloadAll(){
  document.querySelectorAll('.dl-btn').forEach((a,i)=>setTimeout(()=>a.click(),i*500));
}
</script>
</body>
</html>
FOOTER
} > "$OUT/index.html"

echo "  ✓  $OUT/index.html (ギャラリーページ)"
echo ""
echo "ブラウザで開く → open $OUT/index.html"
