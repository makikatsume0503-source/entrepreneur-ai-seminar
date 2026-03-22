import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';

export const PrivacyPolicy: React.FC = () => {
    return (
        <div className="min-h-screen bg-slate-50 py-12 px-4 sm:px-6 lg:px-8">
            <div className="max-w-3xl mx-auto bg-white shadow-lg rounded-2xl overflow-hidden border border-slate-100">
                <div className="bg-primary px-6 py-4">
                    <h1 className="text-2xl font-bold text-white">プライバシーポリシー</h1>
                </div>

                <div className="p-6 md:p-10 text-slate-600 leading-relaxed space-y-6">
                    <section>
                        <h2 className="text-lg font-bold text-slate-800 mb-3">1. 個人情報の取得について</h2>
                        <p>
                            当方は、適法かつ公正な手段によって、個人情報を取得致します。お客様が当サービスの各種サービスをご利用される際に、氏名、住所、電話番号、メールアドレスなどをお尋ねすることがあります。
                        </p>
                    </section>

                    <section>
                        <h2 className="text-lg font-bold text-slate-800 mb-3">2. 個人情報の利用目的</h2>
                        <p>
                            当方は、個人情報を以下の目的で利用します。
                        </p>
                        <ul className="list-disc list-inside ml-4 mt-2 space-y-1">
                            <li>サービスの提供・運営のため</li>
                            <li>お客様からのお問い合わせに回答するため</li>
                            <li>メンテナンス情報、重要なお知らせなど必要に応じたご連絡のため</li>
                            <li>利用規約に違反したユーザーや、不正・不当な目的でサービスを利用しようとするユーザーの特定をし、ご利用をお断りするため</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-lg font-bold text-slate-800 mb-3">3. 個人情報の第三者提供</h2>
                        <p>
                            当方は、個人情報保護法その他の法令で認められる場合を除き、あらかじめご本人の同意を得ることなく、第三者に個人情報を提供することはありません。
                        </p>
                    </section>

                    <section>
                        <h2 className="text-lg font-bold text-slate-800 mb-3">4. 個人情報の管理</h2>
                        <p>
                            当方は、保有する個人情報の漏洩、滅失またはき損の防止その他の個人情報の安全管理のために必要かつ適切な措置を講じます。
                        </p>
                    </section>

                    <section>
                        <h2 className="text-lg font-bold text-slate-800 mb-3">5. お問い合わせ窓口</h2>
                        <p>
                            本ポリシーに関するお問い合わせは、下記のメールアドレスまでお願いいたします。<br />
                            <a href="mailto:maki.katsume.0503@gmail.com" className="text-secondary hover:underline">maki.katsume.0503@gmail.com</a>
                        </p>
                    </section>

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
