package com.jme3.effect.influencers;

import com.jme3.effect.Particle;
import com.jme3.effect.shapes.EmitterShape;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.JmeCloneable;

public interface ParticleInfluencer extends Savable, JmeCloneable {
    ParticleInfluencer clone();

    Vector3f getInitialVelocity();

    float getVelocityVariation();

    void influenceParticle(Particle particle, EmitterShape emitterShape);

    void setInitialVelocity(Vector3f vector3f);

    void setVelocityVariation(float f10);
}
