package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Vector4;

public class LightRecord extends StateRecord {
    private boolean attenuate;
    public ColorRGBA ambient = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA diffuse = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA specular = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    private float constant = -1.0f;
    private float linear = -1.0f;
    private float quadratic = -1.0f;
    private float spotExponent = -1.0f;
    private float spotCutoff = -1.0f;
    private boolean enabled = false;
    public Vector4 position = new Vector4();
    public Matrix4 modelViewMatrix = new Matrix4();

    public float getConstant() {
        return this.constant;
    }

    public float getLinear() {
        return this.linear;
    }

    public float getQuadratic() {
        return this.quadratic;
    }

    public float getSpotCutoff() {
        return this.spotCutoff;
    }

    public float getSpotExponent() {
        return this.spotExponent;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.ambient.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.diffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.specular.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.constant = -1.0f;
        this.linear = -1.0f;
        this.quadratic = -1.0f;
        this.spotExponent = -1.0f;
        this.spotCutoff = -1.0f;
        this.enabled = false;
        this.position.set(-1.0d, -1.0d, -1.0d, -1.0d);
        this.modelViewMatrix.setIdentity();
    }

    public boolean isAttenuate() {
        return this.attenuate;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setAttenuate(boolean z10) {
        this.attenuate = z10;
    }

    public void setConstant(float f10) {
        this.constant = f10;
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setLinear(float f10) {
        this.linear = f10;
    }

    public void setQuadratic(float f10) {
        this.quadratic = f10;
    }

    public void setSpotCutoff(float f10) {
        this.spotCutoff = f10;
    }

    public void setSpotExponent(float f10) {
        this.spotExponent = f10;
    }
}
