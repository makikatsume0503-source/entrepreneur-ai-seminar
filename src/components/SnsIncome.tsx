import React from 'react';
import { motion } from 'framer-motion';
import { Brain, Users, TrendingUp, ArrowRight, ArrowDown, CheckCircle } from 'lucide-react';

export const SnsIncome: React.FC = () => {
    return (
        <section className="py-24 bg-white">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">受講後のキャリアパス</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        AIに強くなれば、<br />
                        <span className="text-primary border-b-4 border-secondary/50">教える側で稼げるようになる</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        「AIが苦手」な人がまだ多い今こそ、<br />
                        一歩先を学んだ人が<span className="font-bold text-slate-800">セミナー・コンサルで収益を得るチャンス</span>です。
                    </p>
                </div>

                {/* 3-step path */}
                <div className="flex flex-col md:flex-row items-center justify-center gap-4 mb-16">
                    <PathStep
                        step="1"
                        icon={<Brain className="w-7 h-7 text-secondary" />}
                        label="STEP 1"
                        title="AIスキルを習得"
                        description="このセミナーでAIの実践的な使い方をゼロから体験。苦手意識をなくし、自分のビジネスに使える武器を手に入れる。"
                        delay={0}
                    />
                    <ArrowRight className="hidden md:block w-8 h-8 text-secondary/50 flex-shrink-0" />
                    <ArrowDown className="block md:hidden w-8 h-8 text-secondary/50" />
                    <PathStep
                        step="2"
                        icon={<Users className="w-7 h-7 text-secondary" />}
                        label="STEP 2"
                        title="SNSで発信・信頼を積む"
                        description="Threads × noteで「AIを学んだ私」を発信。同じ悩みを持つ女性・個人事業主からの共感と信頼を集める。"
                        delay={0.2}
                    />
                    <ArrowRight className="hidden md:block w-8 h-8 text-secondary/50 flex-shrink-0" />
                    <ArrowDown className="block md:hidden w-8 h-8 text-secondary/50" />
                    <PathStep
                        step="3"
                        icon={<TrendingUp className="w-7 h-7 text-secondary" />}
                        label="STEP 3"
                        title="セミナー・コンサルで収益化"
                        description="「AIを教えられる人」として、個人事業主・フリーランス向けにセミナー販売やコンサルを展開。"
                        delay={0.4}
                    />
                </div>

                {/* Proof + points */}
                <div className="grid md:grid-cols-2 gap-8 items-start">
                    {/* Social proof */}
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true }}
                        className="bg-primary rounded-2xl p-8 text-white shadow-lg"
                    >
                        <p className="text-secondary font-bold text-sm tracking-wider mb-4">講師の実績</p>
                        <p className="text-lg font-bold leading-relaxed mb-4">
                            「AIが苦手な女性」向けに<br />
                            セミナー販売とコンサルを実施。<br />
                            <span className="text-secondary text-4xl font-black">30万円</span>を達成。
                        </p>
                        <p className="text-slate-300 text-sm leading-relaxed">
                            特別なバックグラウンドは不要。<br />
                            「一歩先を学んだ」だけで、教える側になれます。
                        </p>
                    </motion.div>

                    {/* Why it works */}
                    <motion.div
                        initial={{ opacity: 0, x: 20 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true }}
                        className="space-y-4"
                    >
                        <p className="font-bold text-slate-800 text-lg mb-2">このモデルが機能する理由</p>
                        <ReasonItem text="AIが苦手な人はまだ多く、需要が大きい" />
                        <ReasonItem text="女性目線で教えられる講師は希少。競合が少ない" />
                        <ReasonItem text="DX・AI知識はセミナー・コンサルの単価が高い" />
                        <ReasonItem text="SNS発信で集客できれば、広告費ゼロで運用可能" />
                        <ReasonItem text="自分の学習過程そのものがコンテンツになる" />
                    </motion.div>
                </div>
            </div>
        </section>
    );
};

const PathStep = ({
    step,
    icon,
    label,
    title,
    description,
    delay,
}: {
    step: string;
    icon: React.ReactNode;
    label: string;
    title: string;
    description: string;
    delay: number;
}) => (
    <motion.div
        initial={{ opacity: 0, y: 20 }}
        whileInView={{ opacity: 1, y: 0 }}
        transition={{ delay, duration: 0.5 }}
        viewport={{ once: true }}
        className="bg-slate-50 border border-slate-200 rounded-2xl p-6 flex-1 max-w-xs w-full text-center shadow-md"
    >
        <div className="w-8 h-8 rounded-full bg-primary text-white text-sm font-bold flex items-center justify-center mx-auto mb-3">
            {step}
        </div>
        <div className="w-14 h-14 rounded-xl bg-primary/5 flex items-center justify-center mx-auto mb-4 border border-primary/10">
            {icon}
        </div>
        <span className="text-xs font-bold text-secondary tracking-wider">{label}</span>
        <h3 className="font-bold text-slate-800 mt-1 mb-2">{title}</h3>
        <p className="text-slate-500 text-xs leading-relaxed">{description}</p>
    </motion.div>
);

const ReasonItem = ({ text }: { text: string }) => (
    <div className="flex items-start gap-3">
        <CheckCircle className="w-5 h-5 text-secondary flex-shrink-0 mt-0.5" />
        <p className="text-slate-700 text-sm leading-relaxed">{text}</p>
    </div>
);
