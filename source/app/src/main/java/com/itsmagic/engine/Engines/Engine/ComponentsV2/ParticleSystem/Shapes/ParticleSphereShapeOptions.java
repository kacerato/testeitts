package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes;

import Nc.b;
import com.google.gson.annotations.Expose;
import eb.f;
import s8.InterfaceC15237a;

public class ParticleSphereShapeOptions {

    public JAVARuntime.ParticleSphereShapeOptions f74130a;

    @Expose
    @f
    public float radius = 0.5f;

    @Expose
    @f
    public float spherizeRotation = 1.0f;

    @Expose
    @f
    public float randomizeRotation = 0.0f;

    @Expose
    @f
    public float volume = 1.0f;

    public ParticleSphereShapeOptions a() {
        ParticleSphereShapeOptions particleSphereShapeOptions = new ParticleSphereShapeOptions();
        particleSphereShapeOptions.radius = this.radius;
        particleSphereShapeOptions.spherizeRotation = this.spherizeRotation;
        particleSphereShapeOptions.randomizeRotation = this.randomizeRotation;
        particleSphereShapeOptions.volume = this.volume;
        return particleSphereShapeOptions;
    }

    @InterfaceC15237a
    public float b() {
        return this.radius;
    }

    @InterfaceC15237a
    public float c() {
        return this.randomizeRotation;
    }

    @InterfaceC15237a
    public float d() {
        return this.spherizeRotation;
    }

    @InterfaceC15237a
    public float e() {
        return this.volume;
    }

    @InterfaceC15237a
    public void f(float radius) {
        this.radius = radius;
    }

    @InterfaceC15237a
    public void g(float randomizeRotation) {
        this.randomizeRotation = b.I(randomizeRotation);
    }

    public void h(JAVARuntime.ParticleSphereShapeOptions run) {
        this.f74130a = run;
    }

    @InterfaceC15237a
    public void i(float spherizeRotation) {
        this.spherizeRotation = b.I(spherizeRotation);
    }

    @InterfaceC15237a
    public void j(float volume) {
        this.volume = b.I(volume);
    }

    public JAVARuntime.ParticleSphereShapeOptions k() {
        JAVARuntime.ParticleSphereShapeOptions particleSphereShapeOptions = this.f74130a;
        if (particleSphereShapeOptions != null) {
            return particleSphereShapeOptions;
        }
        JAVARuntime.ParticleSphereShapeOptions particleSphereShapeOptions2 = new JAVARuntime.ParticleSphereShapeOptions(this);
        this.f74130a = particleSphereShapeOptions2;
        return particleSphereShapeOptions2;
    }
}
