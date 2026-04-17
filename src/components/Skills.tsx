import React from 'react';
import { motion } from 'framer-motion';
import { Palette, Image, Layers, Monitor } from 'lucide-react';

const skills = [
    {
        icon: <Image className="w-8 h-8 text-secondary" />,
        label: 'Image AI',
        title: 'AIで画像を一瞬で生成',
        description:
            'Midjourney・DALL-EなどのAIで、プロクオリティのバナー・アイキャッチ・SNS画像を数秒で作成。デザイナー不要で集客コンテンツを量産できます。',
    },
    {
        icon: <Palette className="w-8 h-8 text-secondary" />,
        label: 'Brand AI',
        title: 'ブランドデザインの自動化',
        description:
            'AIにブランドコンセプトを入力するだけで、カラーパレット・フォント・ロゴ案を自動提案。一貫したブランドイメージを低コストで構築できます。',
    },
    {
        icon: <Layers className="w-8 h-8 text-secondary" />,
        label: 'Canva AI',
        title: 'SNS・LP素材を爆速で作成',
        description:
            'Canva AIのMagic Designで、テンプレートから高品質なInstagram投稿・サムネ・チラシを瞬時に量産。デザインの知識ゼロでもプロ並みに仕上がります。',
    },
    {
        icon: <Monitor className="w-8 h-8 text-secondary" />,
        label: 'Slide AI',
        title: 'スライド資料を自動デザイン',
        description:
            'GammaやBeautiful.aiを使えば、テキストを入力するだけでセミナー資料・提案書のデザインが完成。見栄えよい資料で説得力が飛躍的に上がります。',
    },
];

export const Skills: React.FC = () => {
    return (
        <section className="py-24 bg-white">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">DESIGN SKILLS</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        デザインを加速する<br />
                        <span className="text-primary border-b-4 border-secondary/50">4つのAIスキル</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        画像生成からブランド設計・資料作成まで、AIを使えば<br />
                        デザイン経験ゼロでもプロクオリティのビジュアルが実現できます。
                    </p>
                </div>

                <div className="grid sm:grid-cols-2 gap-8">
                    {skills.map((skill, index) => (
                        <motion.div
                            key={skill.label}
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            transition={{ delay: index * 0.15, duration: 0.6 }}
                            viewport={{ once: true }}
                            className="flex gap-5 p-6 rounded-2xl border border-slate-200 hover:border-primary/30 hover:shadow-md transition-all duration-300 bg-slate-50"
                        >
                            <div className="flex-shrink-0 w-14 h-14 rounded-xl bg-primary/5 border border-primary/10 flex items-center justify-center">
                                {skill.icon}
                            </div>
                            <div>
                                <span className="text-xs font-bold text-secondary tracking-widest uppercase">
                                    {skill.label}
                                </span>
                                <h3 className="font-bold text-lg text-slate-800 mt-1 mb-2">{skill.title}</h3>
                                <p className="text-slate-600 text-sm leading-relaxed">{skill.description}</p>
                            </div>
                        </motion.div>
                    ))}
                </div>
            </div>
        </section>
    );
};
