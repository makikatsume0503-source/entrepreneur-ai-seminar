import { useCurrentFrame, useVideoConfig, spring, interpolate } from 'remotion';

interface Props {
  heading: string;
  body: string;
  emoji: string;
  index: number;
}

export const ContentSlide: React.FC<Props> = ({ heading, body, emoji, index }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const bgColors = [
    'linear-gradient(135deg, #0f172a 0%, #1e293b 100%)',
    'linear-gradient(135deg, #0c1a2e 0%, #1e3a5f 100%)',
    'linear-gradient(135deg, #1a0a2e 0%, #3b1f6e 100%)',
  ];

  const accentColors = ['#38bdf8', '#34d399', '#f472b6'];

  const slideIn = spring({ frame, fps, config: { damping: 18 }, durationInFrames: 25 });
  const slideX = interpolate(slideIn, [0, 1], [-60, 0]);

  const bodyOpacity = spring({ frame: frame - 10, fps, config: { damping: 20 }, durationInFrames: 25 });

  return (
    <div style={{
      width: '100%',
      height: '100%',
      background: bgColors[index % bgColors.length],
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      padding: '80px',
      fontFamily: 'Noto Sans JP, sans-serif',
    }}>
      <div style={{
        fontSize: 80,
        marginBottom: 32,
        opacity: slideIn,
        transform: `translateX(${slideX}px)`,
      }}>
        {emoji}
      </div>
      <div style={{
        fontSize: 56,
        fontWeight: 800,
        color: accentColors[index % accentColors.length],
        marginBottom: 32,
        lineHeight: 1.3,
        opacity: slideIn,
        transform: `translateX(${slideX}px)`,
      }}>
        {heading}
      </div>
      <div style={{
        fontSize: 32,
        color: '#e2e8f0',
        lineHeight: 1.7,
        opacity: bodyOpacity,
        maxWidth: '85%',
      }}>
        {body}
      </div>
    </div>
  );
};
