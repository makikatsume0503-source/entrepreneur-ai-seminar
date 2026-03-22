import React from 'react';
import { Link } from 'react-router-dom';

export const Footer: React.FC = () => {
    return (
        <footer className="bg-slate-50 border-t border-slate-200 py-8">
            <div className="container mx-auto px-4 max-w-4xl text-center">
                <div className="flex justify-center space-x-6 mb-4 text-sm text-slate-500">
                    <Link to="/legal" className="hover:text-primary transition-colors">特定商取引法に基づく表記</Link>
                    <span>|</span>
                    <Link to="/privacy" className="hover:text-primary transition-colors">プライバシーポリシー</Link>
                </div>
                <p className="text-slate-400 text-sm">
                    &copy; 2026 FinEdit 勝目麻希 All Rights Reserved.
                </p>
            </div>
        </footer>
    );
};
