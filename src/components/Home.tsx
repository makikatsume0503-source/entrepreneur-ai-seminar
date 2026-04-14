import React from 'react';
import { Hero } from './Hero';
import { DigitalTwin } from './DigitalTwin';
import { Demonstrations } from './Demonstrations';
import { Skills } from './Skills';
import { Profile } from './Profile';
import { Conclusion } from './Conclusion';
import { Offer } from './Offer';

export const Home: React.FC = () => {
    return (
        <>
            <Hero />
            <DigitalTwin />
            <Demonstrations />
            <Skills />
            <Profile />
            <Conclusion />
            <Offer />
        </>
    );
};
