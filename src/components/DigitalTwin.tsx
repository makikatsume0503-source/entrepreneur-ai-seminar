import React from 'react';
import { motion } from 'framer-motion';
import { Sparkles, Brain, PenTool } from 'lucide-react';

export const DigitalTwin: React.FC = () => {
    return (
        <section className="py-20 bg-white">
            <div className="container mx-auto px-4 max-w-5xl">
                <div className="text-center mb-16">
                    <span className="text-primary font-bold tracking-widest text-sm">NotebookLM</span>
                    <h2 className="text-2xl md:text-4xl font-bold mt-2 text-slate-800">
                        NotebookLMで作る<br className="block md:hidden" /><span className="text-primary border-b-4 border-secondary/50">「発信特化のAIアシスタント」</span>
                    </h2>
                    <p className="mt-4 text-slate-600 max-w-2xl mx-auto">
                        あなた自身の思考や過去のメモ、リサーチをAIに記憶させることで、<br />SNSやブログなどの「発信力」が劇的に向上します。
                    </p>
                </div>

                <div className="grid md:grid-cols-2 gap-12 items-center">
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true }}
                        className="space-y-8"
                    >
                        <FeatureItem
                            icon={<Brain className="w-6 h-6 text-secondary" />}
                            title="自分の思考・アイデアをAIにインプット"
                            description="日々のメモ、過去の資料、気になるリサーチ結果。これらをNotebookLMに読み込ませることで、AIがあなたの「思考」や「知識」を学習します。"
                        />
                        <FeatureItem
                            icon={<Sparkles className="w-6 h-6 text-secondary" />}
                            title="圧倒的スピードで情報発信を加速"
                            description="ゼロから文章を考える必要はありません。AIに記憶させたあなたの情報をもとに、SNS投稿や長文記事の原稿を高速で生成します。"
                        />
                        <FeatureItem
                            icon={<PenTool className="w-6 h-6 text-secondary" />}
                            title="一貫性のある「自分らしい」メッセージ"
                            description="汎用的なAIの回答ではなく、あなたの元データのみを参照するため、一貫性があり、あなた自身の言葉のような自然な発信が可能になります。"
                        />
                    </motion.div>

                    <motion.div
                        initial={{ opacity: 0, scale: 0.9 }}
                        whileInView={{ opacity: 1, scale: 1 }}
                        viewport={{ once: true }}
                        className="bg-slate-50 rounded-2xl p-8 border border-slate-200 shadow-xl relative overflow-hidden"
                    >
                        <div className="absolute top-0 right-0 w-32 h-32 bg-secondary/10 rounded-full -mr-16 -mt-16 blur-2xl"></div>
                        <div className="absolute bottom-0 left-0 w-24 h-24 bg-primary/10 rounded-full -ml-12 -mb-12 blur-2xl"></div>

                        <h3 className="text-xl font-bold mb-6 text-center text-primary">AIを右腕にするプロセス</h3>
                        <div className="space-y-4">
                            <div className="bg-white p-4 rounded-lg shadow-sm border border-slate-100 flex items-center gap-3">
                                <div className="w-8 h-8 rounded-full bg-slate-100 flex items-center justify-center font-bold text-slate-500">1</div>
                                <p className="text-sm text-slate-700">過去の発信内容のデータやメモの選定と整理</p>
                            </div>
                            <div className="bg-white p-4 rounded-lg shadow-sm border border-slate-100 flex items-center gap-3">
                                <div className="w-8 h-8 rounded-full bg-slate-100 flex items-center justify-center font-bold text-slate-500">2</div>
                                <p className="text-sm text-slate-700">NotebookLMへのデータインポート</p>
                            </div>
                            <div className="bg-white p-4 rounded-lg shadow-sm border border-slate-100 flex items-center gap-3">
                                <div className="w-8 h-8 rounded-full bg-slate-100 flex items-center justify-center font-bold text-slate-500">3</div>
                                <p className="text-sm text-slate-700">GitHubで発信ワークフローを仕組化</p>
                            </div>
                            <div className="bg-white p-4 rounded-lg shadow-sm border border-secondary/30 flex items-center gap-3 bg-secondary/5">
                                <div className="w-8 h-8 rounded-full bg-secondary text-white flex items-center justify-center font-bold">4</div>
                                <p className="text-sm font-bold text-primary">あなた専用「発信」AIアシスタントの誕生</p>
                            </div>
                        </div>
                    </motion.div>
                </div>
            </div>
        </section>
    );
};

const FeatureItem = ({ icon, title, description }: { icon: React.ReactNode, title: string, description: string }) => (
    <div className="flex gap-4">
        <div className="flex-shrink-0 w-12 h-12 rounded-xl bg-primary/5 flex items-center justify-center border border-primary/10">
            {icon}
        </div>
        <div>
            <h3 className="font-bold text-lg text-slate-800 mb-2">{title}</h3>
            <p className="text-slate-600 leading-relaxed text-sm">{description}</p>
        </div>
    </div>
);
