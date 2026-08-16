package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.util.logging.Logger;

public abstract class Light implements Savable, Cloneable {
    protected ColorRGBA color;
    protected boolean enabled;
    boolean frustumCheckNeeded;
    protected boolean global;
    boolean intersectsFrustum;
    protected transient float lastDistance;
    protected String name;

    public enum Type {
        Directional(0),
        Point(1),
        Spot(2),
        Ambient(3),
        Probe(4);

        private final int typeId;

        Type(int i10) {
            this.typeId = i10;
        }

        public int getId() {
            return this.typeId;
        }
    }

    public Light() {
        this.color = new ColorRGBA(ColorRGBA.White);
        this.lastDistance = -1.0f;
        this.enabled = true;
        this.global = false;
        this.frustumCheckNeeded = true;
        this.intersectsFrustum = false;
    }

    public abstract void computeLastDistance(Spatial spatial);

    public ColorRGBA getColor() {
        return this.color;
    }

    public String getName() {
        return this.name;
    }

    public abstract Type getType();

    public abstract boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars);

    public abstract boolean intersectsFrustum(Camera camera, TempVars tempVars);

    public abstract boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars);

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isFrustumCheckNeeded() {
        return this.frustumCheckNeeded;
    }

    public boolean isGlobal() {
        return this.global;
    }

    public boolean isIntersectsFrustum() {
        return this.intersectsFrustum;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.color = (ColorRGBA) capsule.readSavable("color", null);
        this.enabled = capsule.readBoolean("enabled", true);
        this.name = capsule.readString("name", null);
        this.global = capsule.readBoolean(Logger.GLOBAL_LOGGER_NAME, false);
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.color.set(colorRGBA);
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setFrustumCheckNeeded(boolean z10) {
        this.frustumCheckNeeded = z10;
    }

    public void setIntersectsFrustum(boolean z10) {
        this.intersectsFrustum = z10;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.color, "color", (Savable) null);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.global, Logger.GLOBAL_LOGGER_NAME, false);
    }

    @Override
    public Light mo1270clone() {
        try {
            Light light = (Light) super.clone();
            light.color = this.color.m1279clone();
            return light;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Light(boolean z10) {
        this.color = new ColorRGBA(ColorRGBA.White);
        this.lastDistance = -1.0f;
        this.enabled = true;
        this.frustumCheckNeeded = true;
        this.intersectsFrustum = false;
        this.global = z10;
    }

    public Light(ColorRGBA colorRGBA, boolean z10) {
        this.color = new ColorRGBA(ColorRGBA.White);
        this.lastDistance = -1.0f;
        this.enabled = true;
        this.global = false;
        this.frustumCheckNeeded = true;
        this.intersectsFrustum = false;
        setColor(colorRGBA);
        this.global = z10;
    }

    public Light(ColorRGBA colorRGBA) {
        this.color = new ColorRGBA(ColorRGBA.White);
        this.lastDistance = -1.0f;
        this.enabled = true;
        this.global = false;
        this.frustumCheckNeeded = true;
        this.intersectsFrustum = false;
        setColor(colorRGBA);
    }
}
