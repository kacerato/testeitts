package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class ConicalFrustum extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(ConicalFrustum.class.getName());
    private static final String tagUnscaledA = "a";
    private static final String tagUnscaledB = "b";
    private static final String tagUnscaledHeight = "height";
    private float unscaledA;
    private float unscaledB;
    private float unscaledHeight;

    public ConicalFrustum() {
    }

    private void createShape() {
        setNativeId(createShapeNative(this.unscaledA, this.unscaledB, this.unscaledHeight));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShapeNative(float f10, float f11, float f12);

    private static native float maxRadius(long j10);

    private static native float scaledVolume(long j10);

    public float aRadius() {
        return this.unscaledA;
    }

    public float bRadius() {
        return this.unscaledB;
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && vector3f.f81611x == vector3f.f81613z;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((ConicalFrustum) obj);
    }

    public float height() {
        return this.unscaledHeight;
    }

    @Override
    public float maxRadius() {
        return maxRadius(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.unscaledA = capsule.readFloat(tagUnscaledA, 1.0f);
        this.unscaledB = capsule.readFloat("b", 1.0f);
        this.unscaledHeight = capsule.readFloat("height", 1.0f);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public float scaledVolume() {
        return scaledVolume(nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.unscaledA, tagUnscaledA, 1.0f);
        capsule.write(this.unscaledB, "b", 1.0f);
        capsule.write(this.unscaledHeight, "height", 1.0f);
    }

    public ConicalFrustum(float f10, float f11, float f12) {
        C13702E.E(f10, "A radius");
        C13702E.E(f11, "B radius");
        C13702E.E(f12, "height");
        this.unscaledA = f10;
        this.unscaledB = f11;
        this.unscaledHeight = f12;
        createShape();
    }
}
