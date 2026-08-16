package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class SphericalSegment extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SphericalSegment.class.getName());
    private static final String tagUnscaledRadius = "radius";
    private static final String tagUnscaledYMax = "yMax";
    private static final String tagUnscaledYMin = "yMin";
    private float unscaledRadius;
    private float unscaledYMax;
    private float unscaledYMin;

    public SphericalSegment() {
    }

    private void createShape() {
        setNativeId(createShapeNative(this.unscaledRadius, this.unscaledYMax, this.unscaledYMin));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShapeNative(float f10, float f11, float f12);

    private static native float maxRadius(long j10);

    private static native float scaledVolume(long j10);

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && h.D(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((SphericalSegment) obj);
    }

    public float getHeight() {
        return this.unscaledYMax - this.unscaledYMin;
    }

    @Override
    public float maxRadius() {
        return maxRadius(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.unscaledRadius = capsule.readFloat("radius", 1.0f);
        this.unscaledYMax = capsule.readFloat(tagUnscaledYMax, 1.0f);
        this.unscaledYMin = capsule.readFloat(tagUnscaledYMin, 0.0f);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public float scaledVolume() {
        return scaledVolume(nativeId());
    }

    public float sphereRadius() {
        return this.unscaledRadius;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.unscaledRadius, "radius", 1.0f);
        capsule.write(this.unscaledYMax, tagUnscaledYMax, 1.0f);
        capsule.write(this.unscaledYMin, tagUnscaledYMin, 0.0f);
    }

    public float yMax() {
        return this.unscaledYMax;
    }

    public float yMin() {
        return this.unscaledYMin;
    }

    public SphericalSegment(float f10) {
        this(f10, f10, 0.0f);
    }

    public SphericalSegment(float f10, float f11, float f12) {
        C13702E.E(f10, "radius");
        C13702E.h(f11, tagUnscaledYMax, f12, f10);
        C13702E.h(f12, tagUnscaledYMin, -f10, f11);
        this.unscaledRadius = f10;
        this.unscaledYMax = f11;
        this.unscaledYMin = f12;
        createShape();
    }
}
