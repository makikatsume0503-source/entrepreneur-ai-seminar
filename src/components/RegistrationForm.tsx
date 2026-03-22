import React from 'react';
import { motion } from 'framer-motion';
import { Send, User, Mail, Video } from 'lucide-react';

export const RegistrationForm: React.FC = () => {
    const [status, setStatus] = React.useState<'idle' | 'submitting' | 'success' | 'error'>('idle');

    const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
        e.preventDefault();
        setStatus('submitting');

        const form = e.currentTarget;
        const data = new FormData(form);

        try {
            const response = await fetch("https://formspree.io/f/xbddrbna", {
                method: "POST",
                body: data,
                headers: {
                    'Accept': 'application/json'
                }
            });

            if (response.ok) {
                setStatus('success');
                form.reset();
            } else {
                setStatus('error');
            }
        } catch (error) {
            setStatus('error');
        }
    };

    if (status === 'success') {
        return (
            <div className="w-full max-w-md mx-auto bg-white p-8 rounded-2xl shadow-xl border border-secondary/20 text-center py-16">
                <div className="w-16 h-16 bg-green-100 text-green-600 rounded-full flex items-center justify-center mx-auto mb-6">
                    <Send className="w-8 h-8" />
                </div>
                <h3 className="text-xl font-bold text-slate-800 mb-4">
                    お申込みありがとうございました！<br />
                    送信しました
                </h3>
                <p className="text-slate-600 leading-relaxed">
                    24時間以内に決済に関する<br />
                    ご連絡を差し上げます。
                </p>
            </div>
        );
    }

    return (
        <div className="w-full max-w-md mx-auto bg-white p-8 rounded-2xl shadow-xl border border-slate-100">
            <h3 className="text-xl font-bold text-slate-800 mb-6 text-center">
                お申し込みフォーム
            </h3>

            {/* Formspree Setup */}
            <form
                onSubmit={handleSubmit}
                action="https://formspree.io/f/xbddrbna"
                method="POST"
                className="space-y-5"
            >

                <div className="space-y-2">
                    <label htmlFor="name" className="text-sm font-bold text-slate-700 flex items-center gap-2">
                        <User className="w-4 h-4 text-secondary" /> お名前
                    </label>
                    <input
                        type="text"
                        id="name"
                        name="name"
                        required
                        disabled={status === 'submitting'}
                        className="w-full px-4 py-3 rounded-lg border border-slate-300 focus:border-secondary focus:ring-2 focus:ring-secondary/20 outline-none transition-all placeholder:text-slate-400 disabled:opacity-50"
                        placeholder="山田 花子"
                    />
                </div>

                <div className="space-y-2">
                    <label htmlFor="email" className="text-sm font-bold text-slate-700 flex items-center gap-2">
                        <Mail className="w-4 h-4 text-secondary" /> メールアドレス
                    </label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        required
                        disabled={status === 'submitting'}
                        className="w-full px-4 py-3 rounded-lg border border-slate-300 focus:border-secondary focus:ring-2 focus:ring-secondary/20 outline-none transition-all placeholder:text-slate-400 disabled:opacity-50"
                        placeholder="example@email.com"
                    />
                </div>

                <div className="space-y-3">
                    <label className="text-sm font-bold text-slate-700 flex items-center gap-2">
                        <Video className="w-4 h-4 text-secondary" /> 参加方法
                    </label>
                    <div className="grid grid-cols-1 gap-3">
                        <label className="flex items-center gap-3 p-3 border border-slate-200 rounded-lg cursor-pointer hover:bg-slate-50 transition-colors">
                            <input
                                type="radio"
                                name="attendance_type"
                                value="realtime"
                                defaultChecked
                                disabled={status === 'submitting'}
                                className="w-5 h-5 text-secondary border-slate-300 focus:ring-secondary"
                            />
                            <span className="text-slate-700 font-medium text-sm">リアルタイム参加 (3/4 10:00-12:00)</span>
                        </label>
                    </div>
                </div>

                <motion.button
                    whileHover={{ scale: 1.02 }}
                    whileTap={{ scale: 0.98 }}
                    type="submit"
                    disabled={status === 'submitting'}
                    className="w-full mt-6 py-4 bg-gradient-to-r from-secondary to-yellow-600 text-white font-bold text-lg rounded-xl shadow-lg hover:shadow-xl transition-all flex items-center justify-center gap-2 disabled:opacity-70 disabled:cursor-not-allowed"
                >
                    {status === 'submitting' ? (
                        <span>送信中...</span>
                    ) : (
                        <>
                            <Send className="w-5 h-5" />
                            <span>送信してお申し込み完了</span>
                        </>
                    )}
                </motion.button>

                {status === 'error' && (
                    <p className="text-sm text-center text-red-500 mt-2 font-bold">
                        送信に失敗しました。時間をおいて再度お試しください。
                    </p>
                )}

                <p className="text-xs text-center text-slate-400 mt-4">
                    送信後、自動返信メールにて決済情報をお送りします。
                </p>
            </form>
        </div>
    );
};
