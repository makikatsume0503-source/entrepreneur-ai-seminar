export interface VideoScript {
  title: string;
  topic: string;
  slides: Slide[];
}

export interface Slide {
  type: 'title' | 'content' | 'outro';
  heading: string;
  body?: string;
  emoji?: string;
}
