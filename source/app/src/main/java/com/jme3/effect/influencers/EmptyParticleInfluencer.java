package com.jme3.effect.influencers;

import com.jme3.effect.Particle;
import com.jme3.effect.shapes.EmitterShape;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class EmptyParticleInfluencer implements ParticleInfluencer {
    @Override
    public void cloneFields(Cloner cloner, Object obj) {
    }

    @Override
    public Vector3f getInitialVelocity() {
        return null;
    }

    @Override
    public float getVelocityVariation() {
        return 0.0f;
    }

    @Override
    public void influenceParticle(Particle particle, EmitterShape emitterShape) {
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
    }

    @Override
    public void setInitialVelocity(Vector3f vector3f) {
    }

    @Override
    public void setVelocityVariation(float f10) {
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
    }

    @Override
    public EmptyParticleInfluencer m1266clone() {
        try {
            return (EmptyParticleInfluencer) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
