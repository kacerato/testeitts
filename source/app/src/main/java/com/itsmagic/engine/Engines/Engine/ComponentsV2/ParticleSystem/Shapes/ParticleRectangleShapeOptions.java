package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes;

import Nc.b;
import com.google.gson.annotations.Expose;
import eb.f;
import s8.InterfaceC15237a;

public class ParticleRectangleShapeOptions {

    public JAVARuntime.ParticleRectangleShapeOptions f74129a;

    @Expose
    @f
    public float width = 1.0f;

    @Expose
    @f
    public float height = 0.5f;

    @Expose
    @f
    public float length = 2.0f;

    @Expose
    @f
    public float spherizeRotation = 1.0f;

    @Expose
    @f
    public float randomizeRotation = 0.0f;

    public ParticleRectangleShapeOptions a() {
        ParticleRectangleShapeOptions particleRectangleShapeOptions = new ParticleRectangleShapeOptions();
        particleRectangleShapeOptions.width = this.width;
        particleRectangleShapeOptions.height = this.height;
        particleRectangleShapeOptions.length = this.length;
        particleRectangleShapeOptions.spherizeRotation = this.spherizeRotation;
        particleRectangleShapeOptions.randomizeRotation = this.randomizeRotation;
        return particleRectangleShapeOptions;
    }

    @InterfaceC15237a
    public float b() {
        return this.height;
    }

    @InterfaceC15237a
    public float c() {
        return this.length;
    }

    @InterfaceC15237a
    public float d() {
        return this.randomizeRotation;
    }

    @InterfaceC15237a
    public float e() {
        return this.spherizeRotation;
    }

    @InterfaceC15237a
    public float f() {
        return this.width;
    }

    @InterfaceC15237a
    public void g(float height) {
        this.height = height;
    }

    @InterfaceC15237a
    public void h(float length) {
        this.length = length;
    }

    @InterfaceC15237a
    public void i(float randomizeRotation) {
        this.randomizeRotation = b.I(randomizeRotation);
    }

    public void j(JAVARuntime.ParticleRectangleShapeOptions run) {
        this.f74129a = run;
    }

    @InterfaceC15237a
    public void k(float spherizeRotation) {
        this.spherizeRotation = b.I(spherizeRotation);
    }

    @InterfaceC15237a
    public void l(float width) {
        this.width = width;
    }

    public JAVARuntime.ParticleRectangleShapeOptions m() {
        JAVARuntime.ParticleRectangleShapeOptions particleRectangleShapeOptions = this.f74129a;
        if (particleRectangleShapeOptions != null) {
            return particleRectangleShapeOptions;
        }
        JAVARuntime.ParticleRectangleShapeOptions particleRectangleShapeOptions2 = new JAVARuntime.ParticleRectangleShapeOptions(this);
        this.f74129a = particleRectangleShapeOptions2;
        return particleRectangleShapeOptions2;
    }
}
