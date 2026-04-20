import Anthropic from '@anthropic-ai/sdk';
import type { VideoScript } from './types';

export async function generateScript(topic: string, apiKey: string): Promise<VideoScript> {
  const client = new Anthropic({ apiKey, dangerouslyAllowBrowser: true });

  const message = await client.messages.create({
    model: 'claude-sonnet-4-6',
    max_tokens: 1024,
    messages: [
      {
        role: 'user',
        content: `あなたはSNSショート動画のスクリプトライターです。
以下のトピックで、縦型ショート動画（TikTok/Reels/Shorts）用のスクリプトをJSONで生成してください。

トピック: ${topic}

要件:
- タイトルスライド1枚（キャッチーで短い）
- コンテンツスライド3枚（各スライドに見出し・本文・絵文字）
- アウトロスライド1枚（CTA）
- 日本語で、起業家・ビジネスパーソン向け

以下のJSON形式で返してください（JSON以外のテキストは不要）:
{
  "title": "キャッチーなタイトル",
  "topic": "${topic}",
  "slides": [
    { "type": "content", "heading": "見出し", "body": "本文（50字以内）", "emoji": "絵文字" },
    { "type": "content", "heading": "見出し", "body": "本文（50字以内）", "emoji": "絵文字" },
    { "type": "content", "heading": "見出し", "body": "本文（50字以内）", "emoji": "絵文字" },
    { "type": "outro", "heading": "CTA見出し", "body": "サブテキスト" }
  ]
}`,
      },
    ],
  });

  const text = message.content[0].type === 'text' ? message.content[0].text : '';
  const jsonMatch = text.match(/\{[\s\S]*\}/);
  if (!jsonMatch) throw new Error('スクリプトの生成に失敗しました');

  return JSON.parse(jsonMatch[0]) as VideoScript;
}
