#!/usr/bin/env node
// .claude/skills/insta-carousel/scripts/screenshot.js
//
// Converts HTML carousel slides to PNG images using Playwright/Chromium.
// Called automatically by generate-*.sh after HTML generation.
//
// Usage:
//   node screenshot.js <html-dir> [--width 1080] [--height 1350]

'use strict';

const fs   = require('fs');
const path = require('path');

// Locate playwright (global install or local)
let chromium;
for (const p of ['playwright', '/opt/node22/lib/node_modules/playwright']) {
  try { ({ chromium } = require(p)); break; } catch (_) {}
}
if (!chromium) {
  console.error('Error: playwright not found. Run: npm install -g playwright');
  process.exit(1);
}

// ── parse args ────────────────────────────────────────────────────────────────
const args   = process.argv.slice(2);
const dir    = args.find(a => !a.startsWith('--')) || '.';
let width    = 1080;
let height   = 1350;

for (let i = 0; i < args.length; i++) {
  if (args[i] === '--width')  width  = parseInt(args[i + 1], 10);
  if (args[i] === '--height') height = parseInt(args[i + 1], 10);
}

// ── main ──────────────────────────────────────────────────────────────────────
(async () => {
  const htmlFiles = fs.readdirSync(dir)
    .filter(f => f.endsWith('.html'))
    .sort();

  if (htmlFiles.length === 0) {
    console.error(`No .html files found in: ${dir}`);
    process.exit(1);
  }

  console.log(`Converting ${htmlFiles.length} slide(s) to PNG (${width}×${height})...`);

  const browser = await chromium.launch();
  const page    = await browser.newPage();
  await page.setViewportSize({ width, height });

  for (const file of htmlFiles) {
    const absHtml = path.resolve(dir, file);
    const outPng  = path.join(dir, file.replace('.html', '.png'));

    await page.goto(`file://${absHtml}`, { waitUntil: 'domcontentloaded' });
    // Allow time for web fonts to render
    await page.waitForTimeout(900);
    await page.screenshot({ path: outPng, clip: { x: 0, y: 0, width, height } });

    console.log(`  ✓  ${outPng}`);
  }

  await browser.close();
  console.log('\nAll slides saved as PNG.');
})().catch(err => { console.error(err); process.exit(1); });
