import React from 'react';
import { motion } from 'framer-motion';
import { Workflow, Smartphone, Layout } from 'lucide-react';

export const Demonstrations: React.FC = () => {
    return (
        <section className="py-24 bg-slate-900 text-white relative overflow-hidden">
            {/* Background decoration */}
            <div className="absolute top-0 left-0 w-full h-full overflow-hidden z-0">
                <div className="absolute -top-24 -right-24 w-96 h-96 bg-secondary/10 rounded-full blur-3xl"></div>
                <div className="absolute top-1/2 -left-24 w-64 h-64 bg-primary/30 rounded-full blur-3xl"></div>
            </div>

            <div className="container mx-auto px-4 relative z-10">
                <div className="text-center mb-16">
                    <h2 className="text-3xl md:text-4xl font-bold mb-4">
                        3つの衝撃デモンストレーション
                    </h2>

                </div>

                <div className="grid md:grid-cols-3 gap-8">
                    <DemoCard
                        icon={<Workflow className="w-10 h-10 text-secondary" />}
                        title="発信ワークフローの仕組み化"
                        description="SNS投稿やブログのアイデア管理から公開まで、一連の流れを自動化。コンテンツを資産として蓄積・再利用できる仕組みをつくることで、発信が「作業」から「仕組み」に変わります。"
                        delay={0}
                    />
                    <DemoCard
                        icon={<Layout className="w-10 h-10 text-secondary" />}
                        title="AIで集客LPをゼロから作成"
                        description="AIと壁打ちしながら構成・コピーを作り、ファーストビュー画像を生成し、そのままコーディングまで完結。外注なしで本格的なLPが完成します。"
                        delay={0.2}
                    />
                    <DemoCard
                        icon={<Smartphone className="w-10 h-10 text-secondary" />}
                        title="自社専用の業務効率化アプリ"
                        description="プログラミング不要。日報管理やシフト作成など、自社のニッチな課題を解決する専用アプリがすぐ作れます。"
                        delay={0.4}
                    />
                </div>
            </div>
        </section>
    );
};

const DemoCard = ({ icon, title, description, delay }: { icon: React.ReactNode, title: string, description: string, delay: number }) => (
    <motion.div
        initial={{ opacity: 0, y: 30 }}
        whileInView={{ opacity: 1, y: 0 }}
        transition={{ delay, duration: 0.6 }}
        viewport={{ once: true }}
        className="bg-slate-800/50 backdrop-blur-sm border border-slate-700 p-8 rounded-2xl hover:bg-slate-800 transition-colors duration-300"
    >
        <div className="mb-6 bg-slate-900 w-20 h-20 rounded-2xl flex items-center justify-center border border-slate-700 shadow-lg mx-auto">
            {icon}
        </div>
        <h3 className="text-lg font-bold mb-4 text-center text-secondary">{title}</h3>
        <p className="text-slate-400 text-sm leading-relaxed text-center">
            {description}
        </p>
    </motion.div>
);
