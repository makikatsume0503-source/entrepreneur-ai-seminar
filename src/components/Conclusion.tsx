import React from 'react';

export const Conclusion: React.FC = () => {
    return (
        <section className="py-24 bg-primary text-white text-center relative overflow-hidden">
            <div className="absolute inset-0 z-0 opacity-10 flex items-center justify-center">
                <div className="w-[800px] h-[800px] border border-white/20 rounded-full animate-[spin_60s_linear_infinite]"></div>
                <div className="w-[600px] h-[600px] border border-white/20 rounded-full animate-[spin_40s_linear_infinite_reverse] absolute"></div>
            </div>

            <div className="container mx-auto px-4 max-w-3xl relative z-10">
                <h2 className="text-2xl md:text-4xl font-bold mb-10 leading-tight">
                    境界線がなくなる時代の<br />
                    <span className="text-secondary">「真の生存戦略」</span>
                </h2>

                <div className="space-y-6 text-base md:text-lg font-light leading-relaxed text-slate-200">
                    <p>
                        2026年以降、AIの進化は加速し続けます。<br />
                        発信・集客・業務効率化——あらゆる領域で、<br />
                        「AIを右腕にできる人」と「そうでない人」の差は<br />
                        取り返しのつかない格差になっていきます。
                    </p>
                    <p>
                        その時、最後に選ばれ続けるのは誰か。
                    </p>
                    <p className="font-bold text-white text-lg md:text-xl py-4">
                        それは、<span className="border-b-2 border-secondary">『自社の強み』という本質を理解し、</span><br className="hidden md:block" />
                        AIに任せることは任せながら、<br className="hidden md:block" />
                        人間にしかできない「クリエイティブな思考」や「決断」だけに<br className="hidden md:block" />
                        集中できる<br className="hidden md:block" />
                        『次世代の経営者・リーダー』です。
                    </p>
                    <p>
                        外注費を削り、作業時間を圧縮し、<br className="hidden md:block" />
                        事業の成長スピードを何倍にも高める——<br className="hidden md:block" />
                        この2時間で、その「武器の使い方」を実際に体験してください。
                    </p>
                </div>

                <div className="mt-12 text-secondary font-bold text-lg md:text-xl leading-relaxed">
                    この講座で学ぶことが、<br className="block md:hidden" />
                    あなたのビジネスを変える<br className="block md:hidden" />
                    最初の一歩になります。
                </div>
            </div>
        </section>
    );
};
