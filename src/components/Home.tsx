import React from 'react';
import { Hero } from './Hero';
import { AIIntroduction } from './AIIntroduction';
import { DigitalTwin } from './DigitalTwin';
import { Demonstrations } from './Demonstrations';
import { Profile } from './Profile';
import { Conclusion } from './Conclusion';
import { Offer } from './Offer';

export const Home: React.FC = () => {
    return (
        <>
            <Hero />
            <AIIntroduction />
            <DigitalTwin />
            <Demonstrations />
            <Profile />
            <Conclusion />
            <Offer />
        </>
    );
};
