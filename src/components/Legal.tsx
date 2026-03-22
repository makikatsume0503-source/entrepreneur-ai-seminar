import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';

export const Legal: React.FC = () => {
    return (
        <div className="min-h-screen bg-slate-50 py-12 px-4 sm:px-6 lg:px-8">
            <div className="max-w-3xl mx-auto bg-white shadow-lg rounded-2xl overflow-hidden border border-slate-100">
                <div className="bg-primary px-6 py-4">
                    <h1 className="text-2xl font-bold text-white">特定商取引法に基づく表記</h1>
                </div>

                <div className="p-6 md:p-10">
                    <table className="w-full text-left border-collapse">
                        <tbody>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">販売事業者名</th>
                                <td className="py-4 text-slate-600">勝目麻希</td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">所在地</th>
                                <td className="py-4 text-slate-600">
                                    〒450-0002<br />
                                    愛知県名古屋市中村区名駅4-24-5第二森ビル401
                                </td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">連絡先電話番号</th>
                                <td className="py-4 text-slate-600">請求があった場合に遅滞なく開示します。</td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">連絡先メールアドレス</th>
                                <td className="py-4 text-slate-600">maki.katsume.0503@gmail.com</td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">販売価格</th>
                                <td className="py-4 text-slate-600">各商品・サービス詳細ページに表示</td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">商品代金以外の必要料金</th>
                                <td className="py-4 text-slate-600">
                                    ・インターネット接続料金、通信料金<br />
                                    ・消費税（表示価格は税込）
                                </td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">お支払い方法</th>
                                <td className="py-4 text-slate-600">銀行振込</td>
                            </tr>
                            <tr className="border-b border-slate-200">
                                <th className="py-4 pr-4 font-bold text-slate-700 w-1/3 align-top">キャンセル・返品・交換</th>
                                <td className="py-4 text-slate-600">
                                    【セミナー・イベント】<br />
                                    お申し込み後のキャンセルは原則としてお受けいたしかねます。
                                    ただし、主催者側の都合による中止の場合は全額返金いたします。
                                </td>
                            </tr>

                        </tbody>
                    </table>

                    <div className="mt-10 text-center">
                        <Link to="/" className="inline-flex items-center text-primary font-bold hover:text-primary/80 transition-colors">
                            <ArrowLeft className="w-5 h-5 mr-2" />
                            トップページに戻る
                        </Link>
                    </div>
                </div>
            </div>
        </div>
    );
};
