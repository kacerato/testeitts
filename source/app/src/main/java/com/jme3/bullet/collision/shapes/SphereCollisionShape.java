package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.d;
import jf.h;
import jf.i;
import p000if.C13702E;

public class SphereCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SphereCollisionShape.class.getName());
    private static final String tagRadius = "radius";
    private float radius;

    public SphereCollisionShape() {
    }

    private static native long createShape(float f10);

    private void createShape() {
        setNativeId(createShape(this.radius));
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
        copyShapeProperties((SphereCollisionShape) obj);
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
        return this.scale.f81611x * this.radius;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.radius = capsule.readFloat("radius", 0.5f);
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
        logger2.log(Level.WARNING, "Cannot alter the margin of a SphereCollisionShape.");
    }

    @Override
    public HullCollisionShape toHullShape() {
        float defaultMargin = CollisionShape.getDefaultMargin();
        float f10 = this.scale.f81611x * this.radius;
        if (f10 > defaultMargin) {
            FloatBuffer debugVertices = DebugShapeFactory.debugVertices(new SphereCollisionShape(f10 - defaultMargin), 0);
            debugVertices.rewind();
            debugVertices.limit(debugVertices.capacity());
            return new HullCollisionShape(debugVertices);
        }
        HullCollisionShape hullCollisionShape = new HullCollisionShape(0.0f, 0.0f, 0.0f);
        if (f10 <= 1.0E-9f) {
            hullCollisionShape.setMargin(1.0E-9f);
        } else {
            hullCollisionShape.setMargin(f10);
        }
        return hullCollisionShape;
    }

    public float unscaledVolume() {
        return i.e(this.radius);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.radius, "radius", 0.5f);
    }

    public SphereCollisionShape(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        this.radius = d.l(floatBuffer, i10, i11);
        createShape();
    }

    public SphereCollisionShape(float f10) {
        C13702E.p(f10, "radius");
        this.radius = f10;
        createShape();
    }
}
