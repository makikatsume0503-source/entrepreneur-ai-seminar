import React from 'react';
import { motion } from 'framer-motion';
import { Image, Palette, PenLine, Share2, Search, Layout, Smartphone, Presentation } from 'lucide-react';

const skills = [
    {
        icon: <Search className="w-8 h-8 text-secondary" />,
        label: 'Research AI',
        title: 'トレンドリサーチを自動化',
        description:
            'PerplexityやChatGPTで市場・競合・読者の悩みをリアルタイム調査。ネタ切れゼロで常に旬のテーマで発信できます。',
    },
    {
        icon: <PenLine className="w-8 h-8 text-secondary" />,
        label: 'Writing AI',
        title: '共感を呼ぶコンテンツを量産',
        description:
            'あなたの実体験をAIにインプットするだけで、読者の心に刺さるブログ・SNS投稿・メルマガ原稿を高速生成できます。',
    },
    {
        icon: <Presentation className="w-8 h-8 text-secondary" />,
        label: 'Slide AI',
        title: 'セミナー資料をAIが自動デザイン',
        description:
            'GammaやBeautiful.aiにテキストを入力するだけで、説得力あるセミナー資料・提案書が数分で完成。外注費ゼロを実現。',
    },
    {
        icon: <Share2 className="w-8 h-8 text-secondary" />,
        label: 'SNS AI',
        title: 'SNS集客を自動化',
        description:
            'X・Instagram・TikTok向けの投稿をAIで量産。フォロワーを顧客に変え、売上につながる集客サイクルを構築します。',
    },
    {
        icon: <Layout className="w-8 h-8 text-secondary" />,
        label: 'LP AI',
        title: '集客LPをAIで高速作成',
        description:
            '商品の強みを言語化してAIに渡すだけで、売れるLP構成・コピーを自動生成。外注費と制作時間を大幅に削減できます。',
    },
    {
        icon: <Image className="w-8 h-8 text-secondary" />,
        label: 'Image AI',
        title: 'プロ品質の画像を一瞬で生成',
        description:
            'Midjourney・DALL-Eで、バナー・アイキャッチ・SNS画像をデザイナー不要で作成。集客ビジュアルを低コストで量産できます。',
    },
    {
        icon: <Palette className="w-8 h-8 text-secondary" />,
        label: 'Brand AI',
        title: 'ブランドデザインを自動構築',
        description:
            'AIにブランドコンセプトを入力するだけで、カラーパレット・フォント・ロゴ案を自動提案。一貫したブランドを低コストで確立。',
    },
    {
        icon: <Smartphone className="w-8 h-8 text-secondary" />,
        label: 'App AI',
        title: '業務効率化アプリを即作成',
        description:
            'プログラミング不要。Claude Codeで日報管理・シフト作成など自社専用アプリを構築。バックオフィスを自動化して本業に集中。',
    },
];

export const Skills: React.FC = () => {
    return (
        <section className="py-24 bg-white">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">AI SKILLS</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        起業家が身につける<br />
                        <span className="text-primary border-b-4 border-secondary/50">8つのAIスキル</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        リサーチ・発信・集客・デザイン・業務効率化まで、AIを活用することで<br />
                        一人でもビジネス全体をプロ並みに動かせます。
                    </p>
                </div>

                <div className="grid sm:grid-cols-2 gap-8">
                    {skills.map((skill, index) => (
                        <motion.div
                            key={skill.label}
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            transition={{ delay: (index % 4) * 0.15, duration: 0.6 }}
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
