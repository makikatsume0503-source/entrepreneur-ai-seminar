import React from 'react';
import { motion } from 'framer-motion';
import { Bot, Mail, Presentation, Instagram, FileText, Sparkles } from 'lucide-react';

const aiTools = [
    {
        name: 'ChatGPT',
        role: '幅広い仕事を任せやすい万能型AI',
        description: '資料作成、SNS投稿、LP構成、アイデア出し、文章作成、画像生成など、まず最初に使いやすいAIです。',
    },
    {
        name: 'Gemini',
        role: 'Google連携に強い実務型AI',
        description: 'Gmail、Googleドキュメント、スプレッドシートなど、Google環境で仕事をしている方と相性が良いAIです。',
    },
    {
        name: 'Claude',
        role: '長文整理と丁寧な文章に強いAI',
        description: '長い資料の要約、企画書のレビュー、自然な文章づくり、慎重な内容確認に向いているAIです。',
    },
];

const useCases = [
    {
        icon: <Mail className="w-5 h-5" />,
        title: 'メール対応',
        text: 'Gmailの内容を確認し、返信メールのたたき台を作る',
    },
    {
        icon: <Presentation className="w-5 h-5" />,
        title: '資料作成',
        text: 'セミナー資料や提案資料の構成を作る',
    },
    {
        icon: <Instagram className="w-5 h-5" />,
        title: 'SNS発信',
        text: 'Instagramのカルーセル投稿やキャプションを作る',
    },
    {
        icon: <FileText className="w-5 h-5" />,
        title: 'LP改善',
        text: 'キャッチコピー、CTA、導線をブラッシュアップする',
    },
];

export const AIIntroduction: React.FC = () => {
    return (
        <section className="py-20 bg-gradient-to-b from-white to-slate-50">
            <div className="container mx-auto px-4 max-w-6xl">
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    whileInView={{ opacity: 1, y: 0 }}
                    viewport={{ once: true }}
                    transition={{ duration: 0.6 }}
                    className="text-center mb-14"
                >
                    <span className="inline-flex items-center gap-2 text-secondary font-bold tracking-widest text-sm mb-4">
                        <Sparkles className="w-4 h-4" />
                        AI BEGINNER GUIDE
                    </span>
                    <h2 className="text-2xl md:text-4xl font-bold text-slate-800 leading-tight">
                        AIは難しい専門技術ではなく、<br className="hidden md:block" />
                        経営者の<span className="text-primary border-b-4 border-secondary/40">「考える時間」を増やす右腕</span>です。
                    </h2>
                    <p className="mt-6 text-slate-600 max-w-3xl mx-auto leading-relaxed">
                        AIは、文章を書くだけのツールではありません。メール対応、資料作成、SNS発信、LP改善、業務効率化まで、
                        起業家・経営者の仕事を幅広く支えてくれる存在です。この講座では、専門用語をできるだけ使わず、
                        「自分の仕事にどう使えるか」から実践的に学びます。
                    </p>
                </motion.div>

                <div className="grid lg:grid-cols-3 gap-6 mb-16">
                    {aiTools.map((tool, index) => (
                        <motion.div
                            key={tool.name}
                            initial={{ opacity: 0, y: 20 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ duration: 0.5, delay: index * 0.1 }}
                            className="bg-white rounded-3xl p-7 border border-slate-100 shadow-lg hover:shadow-xl transition-shadow"
                        >
                            <div className="w-12 h-12 rounded-2xl bg-primary/5 border border-primary/10 flex items-center justify-center mb-5">
                                <Bot className="w-6 h-6 text-primary" />
                            </div>
                            <h3 className="text-xl font-bold text-slate-900 mb-2">{tool.name}</h3>
                            <p className="text-secondary font-bold text-sm mb-3">{tool.role}</p>
                            <p className="text-slate-600 text-sm leading-relaxed">{tool.description}</p>
                        </motion.div>
                    ))}
                </div>

                <div className="bg-white rounded-3xl shadow-xl border border-slate-100 overflow-hidden">
                    <div className="bg-primary text-white p-8 text-center">
                        <h3 className="text-2xl md:text-3xl font-bold mb-3">
                            たとえば、こんな仕事がAIでラクになります
                        </h3>
                        <p className="text-slate-200 text-sm md:text-base">
                            「AIの機能」ではなく、「経営者の仕事がどう変わるか」から体験します。
                        </p>
                    </div>
                    <div className="grid md:grid-cols-2 gap-0">
                        {useCases.map((item, index) => (
                            <div
                                key={item.title}
                                className={`p-6 md:p-8 border-slate-100 ${index % 2 === 0 ? 'md:border-r' : ''} ${index < 2 ? 'border-b' : ''}`}
                            >
                                <div className="flex items-start gap-4">
                                    <div className="w-11 h-11 rounded-xl bg-secondary/10 text-secondary flex items-center justify-center flex-shrink-0">
                                        {item.icon}
                                    </div>
                                    <div>
                                        <h4 className="font-bold text-slate-900 mb-2">{item.title}</h4>
                                        <p className="text-slate-600 text-sm leading-relaxed">{item.text}</p>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>
                    <div className="bg-slate-50 p-6 text-center border-t border-slate-100">
                        <p className="text-slate-700 font-bold leading-relaxed">
                            どれが一番すごいかではなく、<br className="block md:hidden" />
                            <span className="text-primary">自分の仕事に合ったAIを選び、使い分けること</span>が大切です。
                        </p>
                    </div>
                </div>
            </div>
        </section>
    );
};
