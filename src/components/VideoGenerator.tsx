import { useState } from 'react';
import { Player } from '@remotion/player';
import { ShortVideo } from '../video/ShortVideoComposition';
import { generateScript } from '../video/generateScript';
import type { VideoScript } from '../video/types';

const SLIDE_DURATION_FRAMES = 90;

const defaultScript: VideoScript = {
  title: 'AIで起業を加速する',
  topic: '起業家AIセミナー',
  slides: [
    { type: 'content', heading: 'AIが変える起業の常識', body: '今やAIツールで1人でも大企業と戦える時代', emoji: '⚡' },
    { type: 'content', heading: '自動化で時間を取り戻す', body: '反復作業をAIに任せ、戦略に集中する', emoji: '🤖' },
    { type: 'content', heading: '圧倒的なスピード', body: 'アイデアから実行まで、10倍速く動く', emoji: '🚀' },
    { type: 'outro', heading: '今すぐ始めよう', body: 'プロフィールから詳細をチェック' },
  ],
};

export const VideoGenerator: React.FC = () => {
  const [topic, setTopic] = useState('');
  const [apiKey, setApiKey] = useState('');
  const [script, setScript] = useState<VideoScript>(defaultScript);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [showApiKey, setShowApiKey] = useState(false);

  const totalFrames = SLIDE_DURATION_FRAMES * (1 + script.slides.length);

  const handleGenerate = async () => {
    if (!topic.trim()) { setError('トピックを入力してください'); return; }
    if (!apiKey.trim()) { setError('Anthropic APIキーを入力してください'); return; }
    setError('');
    setLoading(true);
    try {
      const generated = await generateScript(topic, apiKey);
      setScript(generated);
    } catch (e) {
      setError(e instanceof Error ? e.message : 'エラーが発生しました');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-slate-900 text-white">
      <div className="max-w-6xl mx-auto px-6 py-12">
        <div className="mb-10">
          <h1 className="text-4xl font-black mb-2">🎬 ショート動画ジェネレーター</h1>
          <p className="text-slate-400">AIがトピックから自動でショート動画スクリプトを生成します</p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
          {/* Left: Controls */}
          <div className="space-y-6">
            <div className="bg-slate-800 rounded-2xl p-6 space-y-4">
              <h2 className="text-xl font-bold text-slate-100">設定</h2>

              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  動画のトピック
                </label>
                <input
                  type="text"
                  value={topic}
                  onChange={e => setTopic(e.target.value)}
                  placeholder="例: ChatGPTで営業を自動化する方法"
                  className="w-full bg-slate-700 border border-slate-600 rounded-lg px-4 py-3 text-white placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-indigo-500"
                  onKeyDown={e => e.key === 'Enter' && handleGenerate()}
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-slate-300 mb-2">
                  Anthropic APIキー
                </label>
                <div className="relative">
                  <input
                    type={showApiKey ? 'text' : 'password'}
                    value={apiKey}
                    onChange={e => setApiKey(e.target.value)}
                    placeholder="sk-ant-..."
                    className="w-full bg-slate-700 border border-slate-600 rounded-lg px-4 py-3 pr-12 text-white placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-indigo-500"
                  />
                  <button
                    onClick={() => setShowApiKey(!showApiKey)}
                    className="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-white text-sm"
                  >
                    {showApiKey ? '隠す' : '表示'}
                  </button>
                </div>
                <p className="text-xs text-slate-500 mt-1">
                  キーはブラウザ外に送信されません
                </p>
              </div>

              {error && (
                <div className="bg-red-900/40 border border-red-700 rounded-lg px-4 py-3 text-red-300 text-sm">
                  {error}
                </div>
              )}

              <button
                onClick={handleGenerate}
                disabled={loading}
                className="w-full bg-indigo-600 hover:bg-indigo-500 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-bold py-3 px-6 rounded-lg transition-colors"
              >
                {loading ? '生成中...' : '✨ スクリプトを生成'}
              </button>
            </div>

            {/* Script Preview */}
            <div className="bg-slate-800 rounded-2xl p-6">
              <h2 className="text-xl font-bold text-slate-100 mb-4">生成されたスクリプト</h2>
              <div className="space-y-3">
                <div className="bg-slate-700 rounded-lg p-3">
                  <span className="text-xs text-indigo-400 font-bold uppercase">タイトル</span>
                  <p className="text-white font-bold mt-1">{script.title}</p>
                </div>
                {script.slides.map((slide, i) => (
                  <div key={i} className="bg-slate-700 rounded-lg p-3">
                    <span className="text-xs text-slate-400 font-bold uppercase">
                      {slide.type === 'outro' ? 'アウトロ' : `スライド ${i + 1}`}
                    </span>
                    <p className="text-white font-semibold mt-1">
                      {slide.emoji} {slide.heading}
                    </p>
                    {slide.body && <p className="text-slate-400 text-sm mt-1">{slide.body}</p>}
                  </div>
                ))}
              </div>
            </div>
          </div>

          {/* Right: Video Preview */}
          <div>
            <div className="bg-slate-800 rounded-2xl p-6">
              <h2 className="text-xl font-bold text-slate-100 mb-4">プレビュー</h2>
              <div className="flex justify-center">
                <div style={{ width: 270, height: 480 }}>
                  <Player
                    component={ShortVideo}
                    inputProps={{ script }}
                    durationInFrames={totalFrames}
                    fps={30}
                    compositionWidth={1080}
                    compositionHeight={1920}
                    style={{ width: '100%', height: '100%', borderRadius: 16 }}
                    controls
                    loop
                  />
                </div>
              </div>
              <p className="text-center text-slate-500 text-sm mt-4">
                1080 × 1920 • {(totalFrames / 30).toFixed(0)}秒 • 縦型ショート動画
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
