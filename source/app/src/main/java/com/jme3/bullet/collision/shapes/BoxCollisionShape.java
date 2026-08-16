package com.jme3.bullet.collision.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.i;
import jf.m;
import p000if.C13702E;

public class BoxCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(BoxCollisionShape.class.getName());
    private static final String tagHalfExtents = "halfExtents";
    private Vector3f halfExtents = new Vector3f(1.0f, 1.0f, 1.0f);

    public BoxCollisionShape() {
    }

    private static native long createShape(Vector3f vector3f);

    private void createShape() {
        setNativeId(createShape(this.halfExtents));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.halfExtents = (Vector3f) cloner.clone(this.halfExtents);
        createShape();
        copyShapeProperties((BoxCollisionShape) obj);
    }

    public Vector3f getHalfExtents(Vector3f vector3f) {
        return vector3f == null ? this.halfExtents.m1292clone() : vector3f.set(this.halfExtents);
    }

    @Override
    public float maxRadius() {
        float f10 = this.scale.f81611x;
        Vector3f vector3f = this.halfExtents;
        return (float) f.s(f10 * vector3f.f81611x, r0.f81612y * vector3f.f81612y, r0.f81613z * vector3f.f81613z);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.halfExtents.set((Vector3f) capsule.readSavable(tagHalfExtents, new Vector3f(1.0f, 1.0f, 1.0f)));
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
    public HullCollisionShape toHullShape() {
        Vector3f mult = this.scale.mult(this.halfExtents);
        float min = Math.min(f.G(mult.f81611x, mult.f81612y, mult.f81613z), CollisionShape.getDefaultMargin());
        if (min <= 1.0E-9f) {
            min = 1.0E-9f;
        }
        mult.subtractLocal(min, min, min);
        HullCollisionShape hullCollisionShape = new HullCollisionShape(new m(mult));
        hullCollisionShape.setMargin(min);
        return hullCollisionShape;
    }

    public float unscaledVolume() {
        return i.a(this.halfExtents);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.halfExtents, tagHalfExtents, (Savable) null);
    }

    public BoxCollisionShape(float f10) {
        C13702E.p(f10, "half extent");
        this.halfExtents.set(f10, f10, f10);
        createShape();
    }

    public BoxCollisionShape(float f10, float f11, float f12) {
        C13702E.p(f10, "half extent on X");
        C13702E.p(f11, "half extent on Y");
        C13702E.p(f12, "half extent on Z");
        this.halfExtents.set(f10, f11, f12);
        createShape();
    }

    public BoxCollisionShape(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        d.k(floatBuffer, i10, i11, this.halfExtents);
        createShape();
    }

    public BoxCollisionShape(Vector3f vector3f) {
        C13702E.s(vector3f, "half extents");
        this.halfExtents.set(vector3f);
        createShape();
    }
}
