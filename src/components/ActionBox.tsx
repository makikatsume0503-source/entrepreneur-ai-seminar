import React from 'react';
import { motion } from 'framer-motion';
import { ArrowRight, Smartphone } from 'lucide-react';

export const ActionBox: React.FC = () => {
    return (
        <div className="bg-white p-8 rounded-2xl shadow-xl border border-secondary/20 text-center">
            <div className="mb-6">
                <h3 className="text-xl font-bold text-slate-800 mb-2">
                    参加スタイルを選択して<br />申し込む
                </h3>
                <p className="text-slate-500 text-sm">
                    お支払い完了後、すぐに詳細をお届けします。
                </p>
            </div>

            <div className="flex flex-col gap-4">
                {/* Real-time Participation */}
                <motion.a
                    href="https://buy.stripe.com/28EeVfdCm8k09DTauJbV609"
                    target="_blank"
                    rel="noopener noreferrer"
                    whileHover={{ scale: 1.05 }}
                    whileTap={{ scale: 0.98 }}
                    className="block w-full py-4 bg-gradient-to-br from-[#FFECC0] via-[#D4AF37] to-[#B8860B] text-white font-bold text-lg rounded-xl shadow-lg shadow-yellow-500/40 relative overflow-hidden group border border-yellow-200/50"
                >
                    {/* Gloss Effect */}
                    <div className="absolute inset-0 bg-gradient-to-b from-white/40 to-transparent opacity-50 pointer-events-none" />
                    <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white/40 to-transparent translate-x-[-100%] group-hover:translate-x-[100%] transition-transform duration-700 ease-in-out" />

                    <div className="relative flex items-center justify-center gap-2 z-10 drop-shadow-md">
                        <Smartphone className="w-6 h-6" />
                        <span className="flex flex-col leading-tight items-start">
                            <span className="text-xl">リアルタイム参加</span>
                        </span>
                        <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform ml-auto" />
                    </div>
                </motion.a>


            </div>

            <p className="text-xs text-slate-400 mt-6 leading-relaxed">
                ※決済はStripeの安全なシステムを使用しています。<br />
            </p>
        </div>
    );
};
