import React from 'react';
import { Hero } from './Hero';
import { DigitalTwin } from './DigitalTwin';
import { Demonstrations } from './Demonstrations';
import { SnsIncome } from './SnsIncome';
import { Profile } from './Profile';
import { Conclusion } from './Conclusion';
import { Offer } from './Offer';

export const Home: React.FC = () => {
    return (
        <>
            <Hero />
            <DigitalTwin />
            <Demonstrations />
            <SnsIncome />
            <Profile />
            <Conclusion />
            <Offer />
        </>
    );
};
