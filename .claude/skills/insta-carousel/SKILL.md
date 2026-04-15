# insta-carousel

Generate a branded 8-slide Instagram carousel (1080×1080 HTML) from the AI seminar landing page content.

## When to use

User invokes `/insta-carousel` or asks to generate an Instagram carousel for the seminar.

## Steps

1. Run the generation script from the repository root:
   ```
   bash .claude/skills/insta-carousel/scripts/generate.sh
   ```
   Supported options:
   - `--output <dir>` — output directory (default: `carousel-output`)
   - `--slides <n>` — number of slides to generate, 1–8 (default: 8)

2. Confirm the output files were created and list them.

3. Tell the user:
   - Where the slide files are (`<dir>/slide-01.html` … `slide-08.html`)
   - How to preview: open any HTML file in a browser at 1080×1080 viewport, then screenshot it for upload
   - That each file is self-contained — no build step required

## Slide contents

| # | Theme | Key copy (Japanese) |
|---|-------|---------------------|
| 01 | Cover | AIを最強の右腕に。 |
| 02 | Problem | こんなお悩み、ありませんか？ |
| 03 | Solution | NotebookLMで作る「発信特化のAIアシスタント」 |
| 04 | Demo 1 | 圧倒的スピードでの発信コンテンツ作成 |
| 05 | Demo 2 | 集客用LP・セールスレター作成 |
| 06 | Demo 3 | 自社専用の業務効率化アプリ |
| 07 | Urgency | 境界線がなくなる時代の「真の生存戦略」 |
| 08 | CTA | 開催概要 — 3月12日 / ¥11,000 / Zoom |

## Brand tokens (edit in `scripts/generate.sh`)

| Token | Value | Usage |
|-------|-------|-------|
| Primary | `#1e1b4b` | Backgrounds, headings |
| Secondary | `#d4af37` | Accents, CTAs, highlights |
| Font | Noto Sans JP (Google Fonts) | All text |
| Slide size | 1080 × 1080 px | Instagram square format |
