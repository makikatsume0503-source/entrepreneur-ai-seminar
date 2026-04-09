import React from 'react';
import { motion } from 'framer-motion';
import { MessageSquare, FileText, TrendingUp, ArrowDown, ArrowRight, Sparkles } from 'lucide-react';

export const SnsIncome: React.FC = () => {
    return (
        <section className="py-24 bg-slate-50">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">SNS自動収益化</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        この講座で学べる<br />
                        <span className="text-primary border-b-4 border-secondary/50">「SNS自動収益化の仕組み」</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        本名不要。匿名アカウントでも、<br className="block md:hidden" />
                        AIを使えば個人が再現できる<br />
                        収益化の仕組みがあります。
                    </p>
                </div>

                {/* Niche callout */}
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    whileInView={{ opacity: 1, y: 0 }}
                    viewport={{ once: true }}
                    className="bg-primary text-white rounded-2xl p-6 md:p-8 mb-12 max-w-3xl mx-auto text-center shadow-lg"
                >
                    <Sparkles className="w-7 h-7 text-secondary mx-auto mb-3" />
                    <p className="text-base md:text-lg font-bold leading-relaxed">
                        「AIが苦手な女性」×「女性講師から学べる」<br />
                        <span className="text-secondary">このニッチは競合がほぼゼロ。</span>
                    </p>
                    <p className="text-slate-300 text-sm mt-2">
                        同じ悩みを持つターゲットへの共感コンテンツが、SNSで圧倒的に刺さります。
                    </p>
                </motion.div>

                {/* 3-step flow */}
                <div className="flex flex-col md:flex-row items-center justify-center gap-4 mb-14">
                    <FlowStep
                        step="1"
                        icon={<MessageSquare className="w-7 h-7 text-secondary" />}
                        platform="Threads"
                        title="匿名アカウントで毎日発信"
                        description="AIが自動生成した投稿を毎日スケジュール配信。「AIが苦手な女性」の共感を集める。"
                        delay={0}
                    />
                    <ArrowRight className="hidden md:block w-8 h-8 text-secondary/50 flex-shrink-0" />
                    <ArrowDown className="block md:hidden w-8 h-8 text-secondary/50" />
                    <FlowStep
                        step="2"
                        icon={<FileText className="w-7 h-7 text-secondary" />}
                        platform="note"
                        title="有料記事・マガジンで収益化"
                        description="Threadsから誘導し、AIノウハウをnote有料記事として販売。継続的な収益を生む。"
                        delay={0.2}
                    />
                    <ArrowRight className="hidden md:block w-8 h-8 text-secondary/50 flex-shrink-0" />
                    <ArrowDown className="block md:hidden w-8 h-8 text-secondary/50" />
                    <FlowStep
                        step="3"
                        icon={<TrendingUp className="w-7 h-7 text-secondary" />}
                        platform="セミナー / コンサル"
                        title="高単価商品へ自然に誘導"
                        description="信頼を積み重ね、セミナーや個別コンサルへつなげる。この仕組みで30万円を達成。"
                        delay={0.4}
                    />
                </div>

                {/* Threads post examples */}
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    whileInView={{ opacity: 1, y: 0 }}
                    viewport={{ once: true }}
                    className="bg-white rounded-2xl border border-slate-200 shadow-xl p-8 max-w-3xl mx-auto"
                >
                    <h3 className="text-center font-bold text-slate-800 mb-6 text-lg">
                        AIが自動生成する投稿例
                    </h3>
                    <div className="space-y-4">
                        <PostExample
                            text="「AIって男性向けでしょ」と思ってた私が、女性目線でAIを使い始めたら売上が変わった話。難しいツールは一切使っていません。"
                        />
                        <PostExample
                            text="AIが苦手な女性こそ、今が参入チャンス。競合が少ないニッチで、共感コンテンツを量産する方法をnoteに書きました。"
                        />
                        <PostExample
                            text="3ヶ月前まで「AIって何から始めれば…」と思ってた私。今はAIを右腕にして、セミナー販売で30万円を達成しました。"
                        />
                    </div>
                    <p className="text-center text-slate-400 text-xs mt-6">
                        ※ 投稿文はAIが自動生成。あなたの実体験をもとにカスタマイズできます。
                    </p>
                </motion.div>
            </div>
        </section>
    );
};

const FlowStep = ({
    step,
    icon,
    platform,
    title,
    description,
    delay,
}: {
    step: string;
    icon: React.ReactNode;
    platform: string;
    title: string;
    description: string;
    delay: number;
}) => (
    <motion.div
        initial={{ opacity: 0, y: 20 }}
        whileInView={{ opacity: 1, y: 0 }}
        transition={{ delay, duration: 0.5 }}
        viewport={{ once: true }}
        className="bg-white border border-slate-200 rounded-2xl p-6 flex-1 max-w-xs w-full shadow-md text-center"
    >
        <div className="w-8 h-8 rounded-full bg-primary text-white text-sm font-bold flex items-center justify-center mx-auto mb-4">
            {step}
        </div>
        <div className="w-14 h-14 rounded-xl bg-primary/5 flex items-center justify-center mx-auto mb-4 border border-primary/10">
            {icon}
        </div>
        <span className="text-xs font-bold text-secondary tracking-wider">{platform}</span>
        <h3 className="font-bold text-slate-800 mt-1 mb-2 text-sm">{title}</h3>
        <p className="text-slate-500 text-xs leading-relaxed">{description}</p>
    </motion.div>
);

const PostExample = ({ text }: { text: string }) => (
    <div className="bg-slate-50 rounded-xl p-4 border border-slate-100">
        <div className="flex items-start gap-3">
            <div className="w-8 h-8 rounded-full bg-primary/10 flex-shrink-0 flex items-center justify-center text-primary font-bold text-xs">
                AI
            </div>
            <p className="text-slate-700 text-sm leading-relaxed">{text}</p>
        </div>
    </div>
);
