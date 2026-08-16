package com.ardor3d.light;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.io.Serializable;

public abstract class Light implements Serializable, Savable {
    public static final ReadOnlyColorRGBA DEFAULT_AMBIENT = new ColorRGBA(0.4f, 0.4f, 0.4f, 1.0f);
    public static final ReadOnlyColorRGBA DEFAULT_DIFFUSE = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    public static final ReadOnlyColorRGBA DEFAULT_SPECULAR = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
    private static final long serialVersionUID = 1;
    private boolean _attenuate;
    private boolean _enabled;
    private float _linear;
    private float _quadratic;
    protected boolean _shadowCaster;
    private String name;
    private final ColorRGBA ambient = new ColorRGBA(DEFAULT_AMBIENT);
    private final ColorRGBA diffuse = new ColorRGBA(DEFAULT_DIFFUSE);
    private final ColorRGBA specular = new ColorRGBA(DEFAULT_SPECULAR);
    private float _constant = 1.0f;
    private int _lightMask = 0;
    private int _backLightMask = 0;

    public enum Type {
        Directional,
        Point,
        Spot
    }

    public void copyFrom(Light light) {
        this.ambient.set(light.ambient);
        this._attenuate = light._attenuate;
        this._constant = light._constant;
        this.diffuse.set(light.diffuse);
        this._enabled = light._enabled;
        this._linear = light._linear;
        this._quadratic = light._quadratic;
        this._shadowCaster = light._shadowCaster;
        this.specular.set(light.specular);
    }

    public ReadOnlyColorRGBA getAmbient() {
        return this.ambient;
    }

    @Override
    public Class<? extends Light> getClassTag() {
        return getClass();
    }

    public float getConstant() {
        return this._constant;
    }

    public ReadOnlyColorRGBA getDiffuse() {
        return this.diffuse;
    }

    public int getLightMask() {
        return this._lightMask;
    }

    public float getLinear() {
        return this._linear;
    }

    public String getName() {
        return this.name;
    }

    public float getQuadratic() {
        return this._quadratic;
    }

    public ReadOnlyColorRGBA getSpecular() {
        return this.specular;
    }

    public abstract Type getType();

    public boolean isAttenuate() {
        return this._attenuate;
    }

    public boolean isEnabled() {
        return this._enabled;
    }

    public boolean isShadowCaster() {
        return this._shadowCaster;
    }

    public void popLightMask() {
        this._lightMask = this._backLightMask;
    }

    public void pushLightMask() {
        this._backLightMask = this._lightMask;
    }

    public void read(InputCapsule inputCapsule) throws IOException {
        this.ambient.set((ColorRGBA) inputCapsule.readSavable("ambient", new ColorRGBA(DEFAULT_AMBIENT)));
        this.diffuse.set((ColorRGBA) inputCapsule.readSavable("diffuse", new ColorRGBA(DEFAULT_DIFFUSE)));
        this.specular.set((ColorRGBA) inputCapsule.readSavable("specular", new ColorRGBA(DEFAULT_SPECULAR)));
        this._attenuate = inputCapsule.readBoolean("attenuate", false);
        this._constant = inputCapsule.readFloat("constant", 1.0f);
        this._linear = inputCapsule.readFloat("linear", 0.0f);
        this._quadratic = inputCapsule.readFloat("quadratic", 0.0f);
        this._lightMask = inputCapsule.readInt("lightMask", 0);
        this._backLightMask = inputCapsule.readInt("backLightMask", 0);
        this._enabled = inputCapsule.readBoolean("enabled", false);
        this._shadowCaster = inputCapsule.readBoolean("shadowCaster", false);
    }

    public void setAmbient(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this.ambient.set(readOnlyColorRGBA);
    }

    public void setAttenuate(boolean z10) {
        this._attenuate = z10;
    }

    public void setConstant(float f10) {
        this._constant = f10;
    }

    public void setDiffuse(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this.diffuse.set(readOnlyColorRGBA);
    }

    public void setEnabled(boolean z10) {
        this._enabled = z10;
    }

    public void setLightMask(int i10) {
        this._lightMask = i10;
    }

    public void setLinear(float f10) {
        this._linear = f10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setQuadratic(float f10) {
        this._quadratic = f10;
    }

    public void setShadowCaster(boolean z10) {
        this._shadowCaster = z10;
    }

    public void setSpecular(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this.specular.set(readOnlyColorRGBA);
    }

    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this.ambient, "ambient", new ColorRGBA(DEFAULT_AMBIENT));
        outputCapsule.write(this.diffuse, "diffuse", new ColorRGBA(DEFAULT_DIFFUSE));
        outputCapsule.write(this.specular, "specular", new ColorRGBA(DEFAULT_SPECULAR));
        outputCapsule.write(this._attenuate, "attenuate", false);
        outputCapsule.write(this._constant, "constant", 1.0f);
        outputCapsule.write(this._linear, "linear", 0.0f);
        outputCapsule.write(this._quadratic, "quadratic", 0.0f);
        outputCapsule.write(this._lightMask, "lightMask", 0);
        outputCapsule.write(this._backLightMask, "backLightMask", 0);
        outputCapsule.write(this._enabled, "enabled", false);
        outputCapsule.write(this._shadowCaster, "shadowCaster", false);
    }
}
