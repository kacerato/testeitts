package com.jme3.effect.influencers;

import com.jme3.effect.Particle;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class RadialParticleInfluencer extends DefaultParticleInfluencer {
    private float radialVelocity = 0.0f;
    private Vector3f origin = new Vector3f(0.0f, 0.0f, 0.0f);
    private boolean horizontal = false;

    @Override
    public void applyVelocityVariation(Particle particle) {
        particle.velocity.set(this.initialVelocity);
        this.temp.set(particle.position).subtractLocal(this.origin).normalizeLocal().multLocal(this.radialVelocity);
        if (this.horizontal) {
            this.temp.f81612y = 0.0f;
        }
        particle.velocity.addLocal(this.temp);
        this.temp.set(FastMath.nextRandomFloat(), FastMath.nextRandomFloat(), FastMath.nextRandomFloat());
        this.temp.multLocal(2.0f);
        this.temp.subtractLocal(1.0f, 1.0f, 1.0f);
        this.temp.multLocal(this.initialVelocity.length());
        particle.velocity.interpolateLocal(this.temp, this.velocityVariation);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.origin = (Vector3f) cloner.clone(this.origin);
    }

    public Vector3f getOrigin() {
        return this.origin;
    }

    public float getRadialVelocity() {
        return this.radialVelocity;
    }

    public boolean isHorizontal() {
        return this.horizontal;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.radialVelocity = capsule.readFloat("radialVelocity", 0.0f);
        this.origin = (Vector3f) capsule.readSavable("origin", new Vector3f());
        this.horizontal = capsule.readBoolean("horizontal", false);
    }

    public void setHorizontal(boolean z10) {
        this.horizontal = z10;
    }

    public void setOrigin(Vector3f vector3f) {
        this.origin = vector3f;
    }

    public void setRadialVelocity(float f10) {
        this.radialVelocity = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.radialVelocity, "radialVelocity", 0.0f);
        capsule.write(this.origin, "origin", new Vector3f());
        capsule.write(this.horizontal, "horizontal", false);
    }
}
