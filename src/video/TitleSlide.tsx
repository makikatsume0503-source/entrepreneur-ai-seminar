import { useCurrentFrame, useVideoConfig, spring, interpolate } from 'remotion';

interface Props {
  title: string;
  topic: string;
}

export const TitleSlide: React.FC<Props> = ({ title, topic }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const titleOpacity = spring({ frame, fps, config: { damping: 20 }, durationInFrames: 30 });
  const titleY = interpolate(titleOpacity, [0, 1], [40, 0]);

  const subOpacity = spring({ frame: frame - 15, fps, config: { damping: 20 }, durationInFrames: 30 });
  const subY = interpolate(subOpacity, [0, 1], [30, 0]);

  return (
    <div style={{
      width: '100%',
      height: '100%',
      background: 'linear-gradient(135deg, #1e1b4b 0%, #312e81 50%, #4c1d95 100%)',
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
      justifyContent: 'center',
      fontFamily: 'Noto Sans JP, sans-serif',
      padding: '60px',
    }}>
      <div style={{
        fontSize: 28,
        color: '#a5b4fc',
        marginBottom: 24,
        opacity: subOpacity,
        transform: `translateY(${subY}px)`,
        letterSpacing: '0.15em',
        textTransform: 'uppercase',
      }}>
        {topic}
      </div>
      <div style={{
        fontSize: 72,
        fontWeight: 900,
        color: '#ffffff',
        textAlign: 'center',
        lineHeight: 1.2,
        opacity: titleOpacity,
        transform: `translateY(${titleY}px)`,
      }}>
        {title}
      </div>
      <div style={{
        marginTop: 48,
        width: 80,
        height: 4,
        background: 'linear-gradient(90deg, #818cf8, #c084fc)',
        borderRadius: 2,
        opacity: titleOpacity,
      }} />
    </div>
  );
};
