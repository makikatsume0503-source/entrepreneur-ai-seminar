import { useCurrentFrame, useVideoConfig, spring, interpolate } from 'remotion';

interface Props {
  heading: string;
  body?: string;
}

export const OutroSlide: React.FC<Props> = ({ heading, body }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const scale = spring({ frame, fps, config: { damping: 15, stiffness: 120 }, durationInFrames: 30 });
  const scaleVal = interpolate(scale, [0, 1], [0.8, 1]);
  const opacity = spring({ frame, fps, config: { damping: 20 }, durationInFrames: 30 });

  const bodyOpacity = spring({ frame: frame - 20, fps, config: { damping: 20 }, durationInFrames: 25 });

  return (
    <div style={{
      width: '100%',
      height: '100%',
      background: 'linear-gradient(135deg, #0f2027 0%, #203a43 50%, #2c5364 100%)',
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
      justifyContent: 'center',
      fontFamily: 'Noto Sans JP, sans-serif',
      padding: '60px',
    }}>
      <div style={{
        fontSize: 90,
        marginBottom: 32,
        opacity,
        transform: `scale(${scaleVal})`,
      }}>
        🚀
      </div>
      <div style={{
        fontSize: 64,
        fontWeight: 900,
        color: '#ffffff',
        textAlign: 'center',
        lineHeight: 1.2,
        opacity,
        transform: `scale(${scaleVal})`,
      }}>
        {heading}
      </div>
      {body && (
        <div style={{
          marginTop: 32,
          fontSize: 30,
          color: '#94a3b8',
          textAlign: 'center',
          opacity: bodyOpacity,
        }}>
          {body}
        </div>
      )}
    </div>
  );
};
