import { Composition, Series } from 'remotion';
import { TitleSlide } from './TitleSlide';
import { ContentSlide } from './ContentSlide';
import { OutroSlide } from './OutroSlide';
import type { VideoScript } from './types';

const SLIDE_DURATION_FRAMES = 90; // 3 seconds at 30fps

interface CompositionProps {
  script: VideoScript;
}

export const ShortVideo: React.FC<CompositionProps> = ({ script }) => {
  return (
    <Series>
      <Series.Sequence durationInFrames={SLIDE_DURATION_FRAMES}>
        <TitleSlide title={script.title} topic={script.topic} />
      </Series.Sequence>
      {script.slides
        .filter(s => s.type === 'content')
        .map((slide, i) => (
          <Series.Sequence key={i} durationInFrames={SLIDE_DURATION_FRAMES}>
            <ContentSlide
              heading={slide.heading}
              body={slide.body ?? ''}
              emoji={slide.emoji ?? '💡'}
              index={i}
            />
          </Series.Sequence>
        ))}
      {script.slides
        .filter(s => s.type === 'outro')
        .map((slide, i) => (
          <Series.Sequence key={`outro-${i}`} durationInFrames={SLIDE_DURATION_FRAMES}>
            <OutroSlide heading={slide.heading} body={slide.body} />
          </Series.Sequence>
        ))}
    </Series>
  );
};

export const RemotionRoot: React.FC = () => {
  const defaultScript: VideoScript = {
    title: 'AIで起業を加速する',
    topic: '起業家AIセミナー',
    slides: [
      { type: 'content', heading: 'AIが変える起業の常識', body: '今やAIツールで1人でも大企業と戦える時代になった', emoji: '⚡' },
      { type: 'content', heading: '自動化で時間を取り戻す', body: '反復作業をAIに任せ、あなたは戦略に集中する', emoji: '🤖' },
      { type: 'content', heading: '圧倒的なスピード', body: 'アイデアから実行まで、AIで10倍速く動く', emoji: '🚀' },
      { type: 'outro', heading: '今すぐ始めよう', body: '起業家AIセミナー詳細はプロフィールから' },
    ],
  };

  const totalFrames = SLIDE_DURATION_FRAMES * (1 + defaultScript.slides.length);

  return (
    <Composition
      id="ShortVideo"
      component={ShortVideo}
      durationInFrames={totalFrames}
      fps={30}
      width={1080}
      height={1920}
      defaultProps={{ script: defaultScript }}
    />
  );
};
