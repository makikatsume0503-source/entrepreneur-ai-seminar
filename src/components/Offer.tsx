import { ActionBox } from './ActionBox';
import { Calendar, CheckCircle } from 'lucide-react';

export const Offer: React.FC = () => {
    return (
        <section className="py-20 bg-slate-50 border-t border-slate-200">
            <div className="container mx-auto px-4 max-w-4xl">
                <div className="flex flex-col md:flex-row gap-8 items-start">
                    {/* Event Details Column */}
                    <div className="w-full md:w-1/2 bg-white rounded-3xl shadow-lg overflow-hidden border border-slate-100 h-full">
                        <div className="bg-primary text-white p-6 text-center">
                            <h2 className="text-xl font-bold">開催概要</h2>
                        </div>
                        <div className="p-8 space-y-8">
                            <div className="flex items-start gap-4">
                                <Calendar className="w-6 h-6 text-secondary flex-shrink-0 mt-1" />
                                <div>
                                    <h3 className="font-bold text-slate-900 mb-1">時間・場所</h3>
                                    <p className="text-slate-600">3月12日（木）9：00～11：00（オンラインZoom）</p>
                                </div>
                            </div>
                            <div className="flex items-start gap-4">
                                <CheckCircle className="w-6 h-6 text-secondary flex-shrink-0 mt-1" />
                                <div>
                                    <h3 className="font-bold text-slate-900 mb-1">参加費</h3>
                                    <p className="text-3xl font-bold text-primary">8,800円<span className="text-sm font-normal text-slate-500 ml-1">（税込）</span></p>
                                </div>
                            </div>
                        </div>
                        <div className="px-8 pb-8">
                            {/* Text removed as requested */}
                        </div>
                    </div>

                    {/* Form Column */}
                    <div className="w-full md:w-1/2">
                        <ActionBox />
                    </div>
                </div>


            </div>
        </section>
    );
};
