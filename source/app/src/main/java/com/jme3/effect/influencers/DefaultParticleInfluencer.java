package com.jme3.effect.influencers;

import com.jme3.effect.Particle;
import com.jme3.effect.shapes.EmitterShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class DefaultParticleInfluencer implements ParticleInfluencer {
    public static final int SAVABLE_VERSION = 1;
    protected transient Vector3f temp = new Vector3f();
    protected Vector3f initialVelocity = new Vector3f();
    protected float velocityVariation = 0.2f;

    public void applyVelocityVariation(Particle particle) {
        particle.velocity.set(this.initialVelocity);
        this.temp.set(FastMath.nextRandomFloat(), FastMath.nextRandomFloat(), FastMath.nextRandomFloat());
        this.temp.multLocal(2.0f);
        this.temp.subtractLocal(1.0f, 1.0f, 1.0f);
        this.temp.multLocal(this.initialVelocity.length());
        particle.velocity.interpolateLocal(this.temp, this.velocityVariation);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.initialVelocity = (Vector3f) cloner.clone(this.initialVelocity);
        this.temp = (Vector3f) cloner.clone(this.temp);
    }

    @Override
    public Vector3f getInitialVelocity() {
        return this.initialVelocity;
    }

    @Override
    public float getVelocityVariation() {
        return this.velocityVariation;
    }

    @Override
    public void influenceParticle(Particle particle, EmitterShape emitterShape) {
        emitterShape.getRandomPoint(particle.position);
        applyVelocityVariation(particle);
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
        InputCapsule capsule = jmeImporter.getCapsule(this);
        if (capsule.getSavableVersion(DefaultParticleInfluencer.class) == 0) {
            this.initialVelocity = (Vector3f) capsule.readSavable("startVelocity", Vector3f.ZERO.m1292clone());
        } else {
            this.initialVelocity = (Vector3f) capsule.readSavable("initialVelocity", Vector3f.ZERO.m1292clone());
        }
        this.velocityVariation = capsule.readFloat("variation", 0.2f);
    }

    @Override
    public void setInitialVelocity(Vector3f vector3f) {
        this.initialVelocity.set(vector3f);
    }

    @Override
    public void setVelocityVariation(float f10) {
        this.velocityVariation = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.initialVelocity, "initialVelocity", Vector3f.ZERO);
        capsule.write(this.velocityVariation, "variation", 0.2f);
    }

    @Override
    public DefaultParticleInfluencer m1265clone() {
        return (DefaultParticleInfluencer) new Cloner().clone(this);
    }
}
