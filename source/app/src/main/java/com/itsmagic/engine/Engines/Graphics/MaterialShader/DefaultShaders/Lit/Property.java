package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit;

import com.google.gson.annotations.Expose;

public class Property {

    @Expose
    private String environment;

    @Expose
    private float floatValue;

    @Expose
    private float maxSliderValue;

    @Expose
    private float minSliderValue;

    @Expose
    private String preset;

    @Expose
    private String textureFile;

    @Expose
    private a type;

    public enum a {
        Texture,
        Float,
        Slider,
        Preset,
        Environment
    }

    public Property() {
        this.type = null;
    }

    public String a() {
        return this.environment;
    }

    public float b() {
        return this.floatValue;
    }

    public float c() {
        return this.maxSliderValue;
    }

    public float d() {
        return this.minSliderValue;
    }

    public String e() {
        return this.preset;
    }

    public String f() {
        return this.textureFile;
    }

    public a g() {
        return this.type;
    }

    public void h(String environment) {
        this.environment = environment;
    }

    public void i(float floatValue) {
        this.floatValue = floatValue;
    }

    public void j(float maxSliderValue) {
        this.maxSliderValue = maxSliderValue;
    }

    public void k(float minSliderValue) {
        this.minSliderValue = minSliderValue;
    }

    public void l(String preset) {
        this.preset = preset;
    }

    public void m(String textureFile) {
        this.textureFile = textureFile;
    }

    public void n(a pType) {
        this.type = pType;
    }

    public Property(a type) {
        this.type = type;
    }
}
