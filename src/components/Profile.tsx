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
                                2018年に未経験からフリーランスライターとしての活動を開始。
                                自宅保育で2児を育てながらも、会社員時代の収入を超えた経験を持つ。
                            </p>
                            <p>
                                その経験から、ライフステージによって働きたくても働けない女性や、収入の柱を増やしたい女性をサポートしたいと考え、ライター育成講師としての活動もスタート。
                            </p>
                            <p>
                                現在は、企業のオウンドメディア記事執筆、SNS運用代行、メルマガ代行、広報活動など、多岐にわたる分野で活躍中。
                                AIを駆使した業務効率化や、起業家・経営者向けのAI活用サポートにも力を入れている。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
};
