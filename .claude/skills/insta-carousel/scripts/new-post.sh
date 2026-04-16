#!/usr/bin/env bash
# .claude/skills/insta-carousel/scripts/new-post.sh
#
# 投稿日フォルダへカルーセルを生成するラッパー
#
# 使い方（リポジトリルートから実行）:
#   bash .claude/skills/insta-carousel/scripts/new-post.sh              # 今日の日付で生成
#   bash .claude/skills/insta-carousel/scripts/new-post.sh 20260419     # 日付を指定して生成

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 日付を引数で指定しなければ今日の日付を使う（形式: YYYYMMDD）
DATE="${1:-$(date +%Y%m%d)}"
OUT="posts/$DATE"

echo "📁 保存先: $OUT/"
echo ""

bash "$SCRIPT_DIR/generate-claude-code.sh" --output "$OUT"

echo ""
echo "✅ 完了！"
echo "   フォルダ: $OUT/"
echo "   スライド: $(ls "$OUT"/*.png 2>/dev/null | wc -l) 枚"
