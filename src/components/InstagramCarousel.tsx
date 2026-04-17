import React, { useState } from 'react';

const PRIMARY = '#1e1b4b';
const SECONDARY = '#d4af37';

const tools = [
  {
    number: '①',
    name: 'ChatGPT',
    emoji: '💬',
    tagline: '万能AIアシスタント',
    description:
      'メッセージを送るだけで\n文章・アイデア・返信文まで\nなんでも手伝ってくれる。\n日本語で話しかけるだけでOK！',
    tip: 'まずここから始めよう',
  },
  {
    number: '②',
    name: 'NotebookLM',
    emoji: '🗂️',
    tagline: '自分専用のAI秘書',
    description:
      '自分のメモやPDFを読み込ませると\nAIが内容を理解して質問に答えてくれる。\nGoogle製で安心◎\n発信コンテンツ作成に最強！',
    tip: '自分の資料を「記憶」させよう',
  },
  {
    number: '③',
    name: 'Gemini',
    emoji: '✨',
    tagline: 'Googleが作ったマルチモーダルAI',
    description:
      'テキストはもちろん画像・音声にも対応。\nGoogle検索と連携しているので\n最新情報にも強い！\nGoogleユーザーなら即使えます◎',
    tip: '画像を見せながら相談しよう',
  },
  {
    number: '④',
    name: 'Perplexity',
    emoji: '🔍',
    tagline: 'AI版Google検索',
    description:
      '調べたいことを話しかけると\n根拠つきでわかりやすくまとめてくれる。\nリサーチ時間が激減！\n情報収集が一気にラクになる',
    tip: '情報収集はここで一気に',
  },
  {
    number: '⑤',
    name: 'Claude',
    emoji: '✍️',
    tagline: '文章力が最強のAI',
    description:
      '長文要約・メール・ブログ執筆など\n「書く仕事」がとにかく得意。\n丁寧で自然な日本語が特徴！\nビジネス文書にぴったり◎',
    tip: '文章を書くならこれ',
  },
];

// ── Slide components ──────────────────────────────────────────

const CoverSlide: React.FC = () => (
  <div
    className="relative w-full aspect-square flex flex-col items-center justify-center overflow-hidden"
    style={{ background: PRIMARY }}
  >
    {/* Background decoration */}
    <div
      className="absolute top-0 right-0 w-64 h-64 rounded-full opacity-10"
      style={{ background: SECONDARY, transform: 'translate(30%, -30%)' }}
    />
    <div
      className="absolute bottom-0 left-0 w-48 h-48 rounded-full opacity-10"
      style={{ background: SECONDARY, transform: 'translate(-30%, 30%)' }}
    />

    {/* Save nudge */}
    <div className="absolute top-6 w-full text-center">
      <span className="text-xs font-bold tracking-widest" style={{ color: SECONDARY }}>
        👆 保存して後で見てね
      </span>
    </div>

    <div className="relative z-10 flex flex-col items-center gap-4 px-8 text-center">
      {/* Badge */}
      <span
        className="text-xs font-bold px-4 py-1 rounded-full border"
        style={{ color: PRIMARY, background: SECONDARY, borderColor: SECONDARY }}
      >
        AI初心者向け
      </span>

      <p className="text-white text-lg font-bold leading-snug">
        「AIって難しそう…」<br />そんな方へ✨
      </p>

      <div>
        <p className="text-4xl font-black leading-tight" style={{ color: SECONDARY }}>
          今すぐ使える
        </p>
        <p className="text-5xl font-black" style={{ color: SECONDARY }}>
          AI 5選
        </p>
      </div>

      <p className="text-white text-sm leading-relaxed opacity-90">
        苦手意識があっても<br />
        <span className="font-bold">日本語で話しかけるだけ</span>で使えます
      </p>
    </div>

    {/* Slide number */}
    <div className="absolute bottom-4 right-5 text-xs opacity-40 text-white">1 / 7</div>
  </div>
);

const ToolSlide: React.FC<{ tool: typeof tools[0]; slideIndex: number }> = ({ tool, slideIndex }) => (
  <div className="relative w-full aspect-square flex flex-col overflow-hidden bg-white">
    {/* Top accent bar */}
    <div className="h-2 w-full" style={{ background: PRIMARY }} />

    <div className="flex-1 flex flex-col justify-between px-8 py-6">
      {/* Header */}
      <div className="flex items-center gap-4">
        <div
          className="w-12 h-12 rounded-full flex items-center justify-center text-xl font-black flex-shrink-0"
          style={{ background: SECONDARY, color: PRIMARY }}
        >
          {tool.number}
        </div>
        <div>
          <p className="text-xs font-bold tracking-widest" style={{ color: SECONDARY }}>
            {tool.tagline}
          </p>
          <h2 className="text-2xl font-black" style={{ color: PRIMARY }}>
            {tool.name}
          </h2>
        </div>
        <span className="ml-auto text-4xl">{tool.emoji}</span>
      </div>

      {/* Divider */}
      <div className="h-px w-full opacity-20" style={{ background: PRIMARY }} />

      {/* Description */}
      <div
        className="rounded-2xl px-6 py-5 text-sm font-medium leading-loose text-center whitespace-pre-line"
        style={{ background: '#f8f7ff', color: PRIMARY }}
      >
        {tool.description}
      </div>

      {/* Tip */}
      <div
        className="flex items-center gap-3 rounded-xl px-5 py-3"
        style={{ background: PRIMARY }}
      >
        <span className="text-lg">👉</span>
        <p className="text-sm font-bold" style={{ color: SECONDARY }}>
          {tool.tip}
        </p>
      </div>
    </div>

    {/* Slide number */}
    <div
      className="absolute bottom-3 right-5 text-xs font-bold opacity-40"
      style={{ color: PRIMARY }}
    >
      {slideIndex} / 7
    </div>
  </div>
);

const CtaSlide: React.FC = () => (
  <div
    className="relative w-full aspect-square flex flex-col items-center justify-center overflow-hidden"
    style={{ background: PRIMARY }}
  >
    {/* Background decoration */}
    <div
      className="absolute top-0 left-0 w-72 h-72 rounded-full opacity-10"
      style={{ background: SECONDARY, transform: 'translate(-30%, -30%)' }}
    />
    <div
      className="absolute bottom-0 right-0 w-56 h-56 rounded-full opacity-10"
      style={{ background: SECONDARY, transform: 'translate(30%, 30%)' }}
    />

    <div className="relative z-10 flex flex-col items-center gap-6 px-8 text-center">
      <p className="text-4xl">🙌</p>

      <p className="text-white text-lg font-bold leading-relaxed">
        まずは<span style={{ color: SECONDARY }}>1つ</span>、<br />
        今日試してみてください！
      </p>

      <div
        className="w-full rounded-2xl px-6 py-5 space-y-3"
        style={{ background: 'rgba(255,255,255,0.08)', border: `1px solid ${SECONDARY}40` }}
      >
        <p className="text-white text-sm font-bold">💬 コメントで教えてね！</p>
        <p className="text-white text-xs opacity-80 leading-relaxed">
          「使ってみたよ！」「これが気になる！」
        </p>
      </div>

      <div className="space-y-2">
        <p className="text-sm font-bold" style={{ color: SECONDARY }}>
          AI活用のコツを定期的に発信中📲
        </p>
        <p className="text-white text-sm font-bold">
          参考になったら<br />
          <span style={{ color: SECONDARY }}>保存 ＆ フォロー</span> してね✨
        </p>
      </div>
    </div>

    {/* Slide number */}
    <div className="absolute bottom-4 right-5 text-xs opacity-40 text-white">7 / 7</div>
  </div>
);

// ── Main component ────────────────────────────────────────────

const slides = [
  { id: 'cover', label: '表紙' },
  ...tools.map((t, i) => ({ id: `tool-${i}`, label: t.name })),
  { id: 'cta', label: 'CTA' },
];

export const InstagramCarousel: React.FC = () => {
  const [current, setCurrent] = useState(0);

  const renderSlide = (index: number) => {
    if (index === 0) return <CoverSlide />;
    if (index === slides.length - 1) return <CtaSlide />;
    return <ToolSlide tool={tools[index - 1]} slideIndex={index + 1} />;
  };

  return (
    <div className="min-h-screen bg-slate-100 py-10 px-4">
      <div className="max-w-sm mx-auto">
        <h1 className="text-xl font-bold text-center mb-2 text-slate-800">
          Instagramカルーセル プレビュー
        </h1>
        <p className="text-xs text-center text-slate-500 mb-6">
          各スライドをスクリーンショットして投稿してください
        </p>

        {/* Slide preview */}
        <div className="rounded-2xl overflow-hidden shadow-2xl">
          {renderSlide(current)}
        </div>

        {/* Navigation dots */}
        <div className="flex justify-center gap-2 mt-4">
          {slides.map((_, i) => (
            <button
              key={i}
              onClick={() => setCurrent(i)}
              className="w-2.5 h-2.5 rounded-full transition-all"
              style={{
                background: i === current ? PRIMARY : '#cbd5e1',
                transform: i === current ? 'scale(1.3)' : 'scale(1)',
              }}
            />
          ))}
        </div>

        {/* Navigation buttons */}
        <div className="flex items-center justify-between mt-4">
          <button
            onClick={() => setCurrent((p) => Math.max(0, p - 1))}
            disabled={current === 0}
            className="px-5 py-2 rounded-xl text-sm font-bold disabled:opacity-30 text-white"
            style={{ background: PRIMARY }}
          >
            ← 前へ
          </button>
          <span className="text-sm font-bold text-slate-500">
            {current + 1} / {slides.length}
          </span>
          <button
            onClick={() => setCurrent((p) => Math.min(slides.length - 1, p + 1))}
            disabled={current === slides.length - 1}
            className="px-5 py-2 rounded-xl text-sm font-bold disabled:opacity-30 text-white"
            style={{ background: PRIMARY }}
          >
            次へ →
          </button>
        </div>

        {/* Slide tabs */}
        <div className="flex flex-wrap gap-2 justify-center mt-6">
          {slides.map((s, i) => (
            <button
              key={s.id}
              onClick={() => setCurrent(i)}
              className="px-3 py-1 rounded-full text-xs font-bold border transition-all"
              style={
                i === current
                  ? { background: PRIMARY, color: '#fff', borderColor: PRIMARY }
                  : { background: '#fff', color: PRIMARY, borderColor: '#cbd5e1' }
              }
            >
              {s.label}
            </button>
          ))}
        </div>
      </div>
    </div>
  );
};
