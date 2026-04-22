import React from 'react';
import { motion } from 'framer-motion';
import { ArrowRight, Smartphone } from 'lucide-react';

export const Hero: React.FC = () => {
    return (
        <section className="relative w-full bg-slate-900 pb-12">
            <div className="w-full relative">
                {/* PC/Tablet Image */}
                <img
                    src="/assets/hero-pc.png"
                    alt="起業家・経営者向け AI活用実践講座 AIを最強の右腕に。"
                    className="w-full h-auto hidden md:block"
                />
                {/* Smartphone Image */}
                <img
                    src="/assets/hero-sp.png"
                    alt="起業家・経営者向け AI活用実践講座 AIを最強の右腕に。"
                    className="w-full h-auto block md:hidden"
                />
            </div>
            
            {/* CTA Button placed below the hero image */}
            <div className="container mx-auto px-4 mt-8 md:mt-12 text-center relative z-10">
                <div className="flex flex-col sm:flex-row gap-4 justify-center items-center w-full max-w-2xl mx-auto">
                    <motion.a
                        href="https://buy.stripe.com/3cIcN7dCmeIocQ5gT7bV60e"
                        target="_blank"
                        rel="noopener noreferrer"
                        whileHover={{ scale: 1.05 }}
                        whileTap={{ scale: 0.98 }}
                        className="bg-gradient-to-br from-[#FFECC0] via-[#D4AF37] to-[#B8860B] text-white font-bold rounded-xl shadow-lg shadow-yellow-500/40 relative overflow-hidden group border border-yellow-200/50 flex-1 w-full py-5 flex items-center justify-center gap-3"
                    >
                        {/* Gloss Effect */}
                        <div className="absolute inset-0 bg-gradient-to-b from-white/40 to-transparent opacity-50 pointer-events-none" />
                        <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white/40 to-transparent translate-x-[-100%] group-hover:translate-x-[100%] transition-transform duration-700 ease-in-out" />
                        
                        <div className="relative flex items-center justify-center gap-3 z-10 drop-shadow-md">
                            <Smartphone className="w-7 h-7" />
                            <span className="flex flex-col leading-tight items-start">
                                <span className="text-xl md:text-2xl">リアルタイム参加</span>
                            </span>
                            <ArrowRight className="w-6 h-6 group-hover:translate-x-1 transition-transform ml-auto" />
                        </div>
                    </motion.a>
                </div>
            </div>
        </section>
    );
};
