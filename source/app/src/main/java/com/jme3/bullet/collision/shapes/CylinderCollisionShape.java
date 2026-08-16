package com.jme3.bullet.collision.shapes;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.h;
import jf.i;
import p000if.C13702E;

public class CylinderCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(CylinderCollisionShape.class.getName());
    private static final String tagAxis = "axis";
    private static final String tagHalfExtents = "halfExtents";
    private int axis;
    private Vector3f halfExtents = new Vector3f(0.5f, 0.5f, 0.5f);

    public CylinderCollisionShape() {
    }

    private static native long createShape(int i10, Vector3f vector3f);

    private void createShape() {
        setNativeId(createShape(this.axis, this.halfExtents));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    @Override
    public boolean canScale(Vector3f vector3f) {
        boolean canScale = super.canScale(vector3f);
        if (!canScale) {
            return canScale;
        }
        int i10 = this.axis;
        if ((i10 != 0 || vector3f.f81612y == vector3f.f81613z) && ((i10 != 1 || vector3f.f81611x == vector3f.f81613z) && (i10 != 2 || vector3f.f81611x == vector3f.f81612y))) {
            return canScale;
        }
        return false;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.halfExtents = (Vector3f) cloner.clone(this.halfExtents);
        createShape();
        copyShapeProperties((CylinderCollisionShape) obj);
    }

    public int getAxis() {
        return this.axis;
    }

    public Vector3f getHalfExtents(Vector3f vector3f) {
        return vector3f == null ? this.halfExtents.m1292clone() : vector3f.set(this.halfExtents);
    }

    public float getHeight() {
        return this.halfExtents.get(this.axis) * 2.0f;
    }

    @Override
    public float maxRadius() {
        double d10;
        Vector3f vector3f = this.scale;
        float f10 = vector3f.f81611x;
        Vector3f vector3f2 = this.halfExtents;
        double d11 = f10 * vector3f2.f81611x;
        double d12 = vector3f.f81612y * vector3f2.f81612y;
        double d13 = vector3f.f81613z * vector3f2.f81613z;
        int i10 = this.axis;
        if (i10 == 0) {
            double max = Math.max(d12, d13);
            d13 = d11;
            d10 = max;
        } else if (i10 == 1) {
            d10 = Math.max(d11, d13);
            d13 = d12;
        } else {
            if (i10 != 2) {
                throw new IllegalStateException("axis = " + this.axis);
            }
            d10 = Math.max(d11, d12);
        }
        return (float) Math.hypot(d13, d10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.halfExtents.set((Vector3f) capsule.readSavable(tagHalfExtents, new Vector3f(0.5f, 0.5f, 0.5f)));
        this.axis = capsule.readInt(tagAxis, 1);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public HullCollisionShape toHullShape() {
        Vector3f mult = this.halfExtents.mult(this.scale);
        float min = Math.min(CollisionShape.getDefaultMargin(), f.G(mult.f81611x, mult.f81612y, mult.f81613z));
        mult.subtractLocal(min, min, min);
        h.a(mult, new Vector3f(1.0E-6f, 1.0E-6f, 1.0E-6f));
        FloatBuffer debugVertices = DebugShapeFactory.debugVertices(new CylinderCollisionShape(mult, this.axis), 0);
        debugVertices.rewind();
        debugVertices.limit(debugVertices.capacity());
        HullCollisionShape hullCollisionShape = new HullCollisionShape(debugVertices);
        hullCollisionShape.setMargin(min);
        return hullCollisionShape;
    }

    public float unscaledVolume() {
        return i.d(this.halfExtents);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.halfExtents, tagHalfExtents, (Savable) null);
        capsule.write(this.axis, tagAxis, 1);
    }

    public CylinderCollisionShape(float f10, float f11, int i10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.p(f11, "height");
        C13702E.a(i10, "axis index");
        this.axis = i10;
        this.halfExtents.set(f10, f10, f10);
        this.halfExtents.set(i10, f11 / 2.0f);
        createShape();
    }

    public CylinderCollisionShape(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11);
        C13702E.i(i11, "end position", i10, floatBuffer.capacity());
        C13702E.a(i12, "axis index");
        this.axis = i12;
        d.k(floatBuffer, i10, i11, this.halfExtents);
        float f10 = this.halfExtents.get(i12);
        float b10 = d.b(floatBuffer, i10, i11, i12);
        this.halfExtents.set(b10, b10, b10);
        this.halfExtents.set(i12, f10);
        createShape();
    }

    public CylinderCollisionShape(Vector3f vector3f) {
        C13702E.s(vector3f, "half extents");
        this.halfExtents.set(vector3f);
        this.axis = 2;
        createShape();
    }

    public CylinderCollisionShape(Vector3f vector3f, int i10) {
        C13702E.s(vector3f, "half extents");
        C13702E.a(i10, "axis index");
        this.halfExtents.set(vector3f);
        this.axis = i10;
        createShape();
    }
}
