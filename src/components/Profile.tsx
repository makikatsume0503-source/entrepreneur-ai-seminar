import React from 'react';

export const Profile: React.FC = () => {
    return (
        <section className="py-20 bg-slate-50">
            <div className="container mx-auto px-4 max-w-4xl">
                <div className="bg-white rounded-3xl p-8 md:p-12 shadow-xl flex flex-col md:flex-row gap-10 items-center">
                    <div className="w-full md:w-1/3 flex-shrink-0">
                        <div className="aspect-[3/4] rounded-2xl overflow-hidden shadow-lg border-4 border-slate-100 relative">
                            <img
                                src="/assets/maki-profile.jpg"
                                alt="勝目 麻希"
                                className="w-full h-full object-cover"
                                style={{ aspectRatio: '3/4' }}
                            />
                        </div>
                    </div>

                    <div className="w-full md:w-2/3">
                        <span className="text-secondary font-bold tracking-wider text-sm">講師</span>
                        <h2 className="text-2xl md:text-3xl font-bold mb-6 text-slate-800 mt-2">
                            勝目 麻希 <span className="text-base text-slate-500 font-normal ml-2">Maki Katsume</span>
                        </h2>

                        <div className="space-y-4 text-slate-600 leading-relaxed text-sm md:text-base">
                            <p>
                                2018年に未経験からフリーランスライターとして活動を開始。
                                自宅保育で2児を育てながらも会社員時代の収入を超え、順風満帆なキャリアを築いていた。
                            </p>
                            <p>
                                しかし<strong className="text-slate-800">2025年秋、状況が一変</strong>。AIの台頭により、ライター業の仕事が急速に失われはじめた。「このままでは終わる」という危機感から、1ヶ月・5万円を投じて猛勉強を決意。
                            </p>
                            <p>
                                AI活用を徹底的に学んだ結果、デザイン・ホームページ制作・アプリ開発・NotebookLM活用など、<strong className="text-slate-800">これまでできなかった仕事領域が次々と開拓</strong>。その実践ノウハウをセミナーで教えはじめたことで、新たな収入源として<strong className="text-primary">月30万円を達成</strong>。
                            </p>
                            <p>
                                現在は、同じ不安を抱える個人事業主・フリーランス女性に向け、AI・DXをやさしく教える講師として活動中。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
};
