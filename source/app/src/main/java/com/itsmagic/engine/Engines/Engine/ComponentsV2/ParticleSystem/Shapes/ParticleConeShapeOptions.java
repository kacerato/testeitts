package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes;

import Nc.b;
import com.google.gson.annotations.Expose;
import eb.f;
import s8.InterfaceC15237a;

public class ParticleConeShapeOptions {

    public JAVARuntime.ParticleConeShapeOptions f74128a;

    @Expose
    @f
    public float maxAngle = 25.0f;

    @Expose
    @f
    public float minAngle = 15.0f;

    @Expose
    @f
    public float radius = 0.5f;

    public ParticleConeShapeOptions a() {
        ParticleConeShapeOptions particleConeShapeOptions = new ParticleConeShapeOptions();
        particleConeShapeOptions.maxAngle = this.maxAngle;
        particleConeShapeOptions.minAngle = this.minAngle;
        particleConeShapeOptions.radius = this.radius;
        return particleConeShapeOptions;
    }

    @InterfaceC15237a
    public float b() {
        return this.maxAngle;
    }

    @InterfaceC15237a
    public float c() {
        return this.minAngle;
    }

    @InterfaceC15237a
    public float d() {
        return this.radius;
    }

    @InterfaceC15237a
    public void e(float maxAngle) {
        float E10 = b.E(0.0f, maxAngle, 90.0f);
        this.maxAngle = E10;
        if (this.minAngle > E10) {
            this.minAngle = E10;
        }
    }

    @InterfaceC15237a
    public void f(float minAngle) {
        this.maxAngle = b.E(0.0f, this.maxAngle, 90.0f);
        this.minAngle = minAngle;
    }

    @InterfaceC15237a
    public void g(float radius) {
        this.radius = radius;
    }

    public void h(JAVARuntime.ParticleConeShapeOptions run) {
        this.f74128a = run;
    }

    public JAVARuntime.ParticleConeShapeOptions i() {
        JAVARuntime.ParticleConeShapeOptions particleConeShapeOptions = this.f74128a;
        if (particleConeShapeOptions != null) {
            return particleConeShapeOptions;
        }
        JAVARuntime.ParticleConeShapeOptions particleConeShapeOptions2 = new JAVARuntime.ParticleConeShapeOptions(this);
        this.f74128a = particleConeShapeOptions2;
        return particleConeShapeOptions2;
    }
}
