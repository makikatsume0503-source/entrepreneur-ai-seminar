import React from 'react';
import { motion } from 'framer-motion';
import { Search, Lightbulb, PenLine, Share2 } from 'lucide-react';

const skills = [
    {
        icon: <Search className="w-8 h-8 text-secondary" />,
        label: 'Research AI',
        title: '恋愛トレンドのリサーチ',
        description:
            'PerplexityやChatGPTを使い、今バズっている恋愛テーマや読者の悩みをリアルタイムでリサーチ。ネタ切れゼロで執筆を続けられます。',
    },
    {
        icon: <Lightbulb className="w-8 h-8 text-secondary" />,
        label: 'Planning AI',
        title: 'バズるnote企画の立案',
        description:
            'AIに読者ペルソナと悩みを入力するだけで、共感を呼ぶタイトル案・記事構成を瞬時に生成。売れる企画を量産できます。',
    },
    {
        icon: <PenLine className="w-8 h-8 text-secondary" />,
        label: 'Writing AI',
        title: '共感を呼ぶ文章の生成',
        description:
            'あなたの実体験や感情をAIにインプットし、読者の心に刺さる恋愛コンテンツを高速で執筆。自分らしい言葉で発信できます。',
    },
    {
        icon: <Share2 className="w-8 h-8 text-secondary" />,
        label: 'SNS AI',
        title: 'X（旧Twitter）での集客',
        description:
            'note記事への導線となるX投稿をAIで量産。フォロワーを読者に変え、売上につながる集客サイクルを自動化します。',
    },
];

export const Skills: React.FC = () => {
    return (
        <section className="py-24 bg-white">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">AI SKILLS</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        恋愛系noteを書くための<br />
                        <span className="text-primary border-b-4 border-secondary/50">4つのAIスキル</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        リサーチから企画・執筆・集客まで、AIを活用することで<br />
                        一人でもプロ並みのコンテンツビジネスが実現できます。
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
