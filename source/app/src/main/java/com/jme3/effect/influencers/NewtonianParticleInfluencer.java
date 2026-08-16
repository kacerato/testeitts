package com.jme3.effect.influencers;

import com.jme3.effect.Particle;
import com.jme3.effect.shapes.EmitterShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import java.io.IOException;

public class NewtonianParticleInfluencer extends DefaultParticleInfluencer {
    protected float normalVelocity;
    protected float surfaceTangentFactor;
    protected float surfaceTangentRotation;
    protected Matrix3f tempMat3 = new Matrix3f();

    public NewtonianParticleInfluencer() {
        this.velocityVariation = 0.0f;
    }

    @Override
    public void applyVelocityVariation(Particle particle) {
        this.temp.set(FastMath.nextRandomFloat() * this.velocityVariation, FastMath.nextRandomFloat() * this.velocityVariation, FastMath.nextRandomFloat() * this.velocityVariation);
        particle.velocity.addLocal(this.temp);
    }

    public float getNormalVelocity() {
        return this.normalVelocity;
    }

    public float getSurfaceTangentFactor() {
        return this.surfaceTangentFactor;
    }

    public float getSurfaceTangentRotation() {
        return this.surfaceTangentRotation;
    }

    @Override
    public void influenceParticle(Particle particle, EmitterShape emitterShape) {
        emitterShape.getRandomPointAndNormal(particle.position, particle.velocity);
        float f10 = this.surfaceTangentFactor;
        if (f10 == 0.0f) {
            particle.velocity.multLocal(this.normalVelocity);
        } else {
            Vector3f vector3f = this.temp;
            Vector3f vector3f2 = particle.velocity;
            vector3f.set(vector3f2.f81613z * f10, vector3f2.f81612y * f10, (-vector3f2.f81611x) * f10);
            float f11 = this.surfaceTangentRotation;
            if (f11 != 0.0f) {
                this.tempMat3.fromAngleNormalAxis(f11 * 3.1415927f, particle.velocity);
                this.temp = this.tempMat3.multLocal(this.temp);
            }
            particle.velocity.multLocal(this.normalVelocity);
            particle.velocity.addLocal(this.temp);
        }
        particle.velocity.addLocal(this.initialVelocity);
        if (this.velocityVariation != 0.0f) {
            applyVelocityVariation(particle);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.normalVelocity = capsule.readFloat("normalVelocity", 0.0f);
        this.surfaceTangentFactor = capsule.readFloat("surfaceTangentFactor", 0.0f);
        this.surfaceTangentRotation = capsule.readFloat("surfaceTangentRotation", 0.0f);
    }

    public void setNormalVelocity(float f10) {
        this.normalVelocity = f10;
    }

    public void setSurfaceTangentFactor(float f10) {
        this.surfaceTangentFactor = f10;
    }

    public void setSurfaceTangentRotation(float f10) {
        this.surfaceTangentRotation = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.normalVelocity, "normalVelocity", 0.0f);
        capsule.write(this.surfaceTangentFactor, "surfaceTangentFactor", 0.0f);
        capsule.write(this.surfaceTangentRotation, "surfaceTangentRotation", 0.0f);
    }
}
