package com.jme3.effect;

import com.jme3.math.Matrix3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Mesh;

public abstract class ParticleMesh extends Mesh {

    public enum Type {
        Point,
        Triangle
    }

    public abstract void initParticleData(ParticleEmitter particleEmitter, int i10);

    public abstract void setImagesXY(int i10, int i11);

    public abstract void updateParticleData(Particle[] particleArr, Camera camera, Matrix3f matrix3f);
}
