package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.h;
import jf.i;
import p000if.C13702E;

public class CapsuleCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(CapsuleCollisionShape.class.getName());
    private static final String tagAxis = "axis";
    private static final String tagHeight = "height";
    private static final String tagRadius = "radius";
    private int axis;
    private float height;
    private float radius;

    public CapsuleCollisionShape() {
    }

    private static native long createShape(int i10, float f10, float f11);

    private void createShape() {
        setNativeId(createShape(this.axis, this.radius, this.height));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        this.margin = 0.0f;
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && h.D(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((CapsuleCollisionShape) obj);
    }

    public int getAxis() {
        return this.axis;
    }

    public float getHeight() {
        return this.height;
    }

    @Override
    public float getMargin() {
        return 0.0f;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public float maxRadius() {
        return this.scale.f81611x * (this.radius + (this.height / 2.0f));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.radius = capsule.readFloat("radius", 0.5f);
        this.height = capsule.readFloat("height", 1.0f);
        this.axis = capsule.readInt(tagAxis, 1);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public float scaledVolume() {
        float unscaledVolume = unscaledVolume();
        Vector3f vector3f = this.scale;
        return unscaledVolume * vector3f.f81611x * vector3f.f81612y * vector3f.f81613z;
    }

    @Override
    public void setMargin(float f10) {
        logger2.log(Level.WARNING, "Cannot alter the margin of a CapsuleCollisionShape.");
    }

    @Override
    public HullCollisionShape toHullShape() {
        float defaultMargin = CollisionShape.getDefaultMargin();
        float f10 = this.scale.f81611x * this.radius;
        if (f10 > defaultMargin) {
            FloatBuffer debugVertices = DebugShapeFactory.debugVertices(new CapsuleCollisionShape(f10 - defaultMargin, this.height, this.axis), 0);
            debugVertices.rewind();
            debugVertices.limit(debugVertices.capacity());
            return new HullCollisionShape(debugVertices);
        }
        Vector3f vector3f = new Vector3f();
        vector3f.set(this.axis, this.height / 2.0f);
        HullCollisionShape hullCollisionShape = new HullCollisionShape(vector3f, vector3f.negate());
        if (f10 <= 1.0E-9f) {
            hullCollisionShape.setMargin(1.0E-9f);
        } else {
            hullCollisionShape.setMargin(f10);
        }
        return hullCollisionShape;
    }

    public float unscaledVolume() {
        return i.b(this.radius, this.height);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.radius, "radius", 0.5f);
        capsule.write(this.height, "height", 1.0f);
        capsule.write(this.axis, tagAxis, 1);
    }

    public CapsuleCollisionShape(float f10, float f11) {
        C13702E.p(f10, "radius");
        C13702E.p(f11, "height");
        this.radius = f10;
        this.height = f11;
        this.axis = 1;
        createShape();
    }

    public CapsuleCollisionShape(float f10, float f11, int i10) {
        C13702E.p(f10, "radius");
        C13702E.p(f11, "height");
        C13702E.a(i10, "axis index");
        this.radius = f10;
        this.height = f11;
        this.axis = i10;
        createShape();
    }
}
