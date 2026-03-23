import React from 'react';
import { motion } from 'framer-motion';
import { ArrowRight, Smartphone } from 'lucide-react';

export const Hero: React.FC = () => {
    return (
        <section className="relative w-full min-h-screen flex items-center justify-center overflow-hidden bg-slate-50">
            {/* Background Image with Overlay */}
            <div className="absolute inset-0 z-0">
                <img
                    src="/assets/hero-workspace.png"
                    alt="Sophisticated writer's desk with MacBook"
                    className="w-full h-full object-cover"
                />
                {/* Darker overlay for readability */}
                <div className="absolute inset-0 bg-slate-900/60 mix-blend-multiply" />
                <div className="absolute inset-0 bg-gradient-to-t from-slate-900 via-slate-900/50 to-transparent" />
            </div>

            <div className="relative z-10 container mx-auto px-4 text-center text-white max-w-4xl">
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.8 }}
                >
                    <span className="inline-block py-2 px-6 rounded-full bg-secondary/90 text-primary font-bold text-lg md:text-2xl mb-8 tracking-wider shadow-lg border-2 border-primary/20">
                        起業家・経営者向け AI活用実践講座
                    </span>
                    <h1 className="text-3xl sm:text-4xl md:text-6xl font-black leading-tight mb-6 drop-shadow-lg tracking-tight">
                        <span className="text-secondary">AIを最強の右腕に。</span><br />
                    </h1>
                    <div className="text-sm sm:text-base md:text-xl font-medium mb-8 leading-relaxed max-w-3xl mx-auto drop-shadow-md text-slate-100 space-y-4 md:space-y-2">
                        <p>
                            自社のノウハウや課題をAIに読み込ませ、<br />
                            スライド資料・LP・自社専用アプリまで生み出す2時間。
                        </p>
                        <p>
                            AIは単なるツールから<br className="block md:hidden" />
                            「最強の右腕」へと進化します。
                        </p>

                    </div>

                    <div className="flex flex-col sm:flex-row gap-4 justify-center items-center w-full max-w-lg mx-auto">
                        {/* Real-time Participation */}
                        <motion.a
                            href="https://buy.stripe.com/3cIcN7dCmeIocQ5gT7bV60e"
                            target="_blank"
                            rel="noopener noreferrer"
                            whileHover={{ scale: 1.05 }}
                            whileTap={{ scale: 0.98 }}
                            className="bg-gradient-to-br from-[#FFECC0] via-[#D4AF37] to-[#B8860B] text-white font-bold rounded-xl shadow-lg shadow-yellow-500/40 relative overflow-hidden group border border-yellow-200/50 flex-1 w-full py-4 flex items-center justify-center gap-2"
                        >
                            {/* Gloss Effect */}
                            <div className="absolute inset-0 bg-gradient-to-b from-white/40 to-transparent opacity-50 pointer-events-none" />
                            <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white/40 to-transparent translate-x-[-100%] group-hover:translate-x-[100%] transition-transform duration-700 ease-in-out" />

                            <div className="relative flex items-center justify-center gap-2 z-10 drop-shadow-md">
                                <Smartphone className="w-6 h-6" />
                                <span className="flex flex-col leading-tight items-start">
                                    <span className="text-lg">リアルタイム参加</span>
                                </span>
                                <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform ml-auto" />
                            </div>
                        </motion.a>
                    </div>


                </motion.div>
            </div>
        </section>
    );
};
