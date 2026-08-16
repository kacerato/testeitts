package com.jme3.bullet.collision.shapes;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bounding.BoundingSphere;
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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import jf.f;
import jf.h;
import jf.i;
import jf.m;
import p000if.C13702E;

public class MultiSphere extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(MultiSphere.class.getName());
    private static final String tagCenters = "centers";
    private static final String tagRadii = "radii";
    private Vector3f[] centers;
    private float[] radii;

    public MultiSphere() {
    }

    private static native long createShape(Vector3f[] vector3fArr, float[] fArr, int i10);

    private void createShape() {
        float[] fArr = this.radii;
        setNativeId(createShape(this.centers, fArr, fArr.length));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native void recalcAabb(long j10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.radii = (float[]) cloner.clone(this.radii);
        this.centers = (Vector3f[]) cloner.clone(this.centers);
        createShape();
        copyShapeProperties((MultiSphere) obj);
    }

    public Vector3f copyCenter(int i10, Vector3f vector3f) {
        C13702E.i(i10, "sphere index", 0, this.radii.length - 1);
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.centers[i10]);
        return vector3f;
    }

    public int countSpheres() {
        return this.radii.length;
    }

    public float getRadius(int i10) {
        C13702E.i(i10, "sphere index", 0, this.radii.length - 1);
        return this.radii[i10];
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Savable[] readSavableArray = capsule.readSavableArray(tagCenters, new Vector3f[0]);
        int length = readSavableArray.length;
        this.centers = new Vector3f[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.centers[i10] = (Vector3f) readSavableArray[i10];
        }
        this.radii = capsule.readFloatArray(tagRadii, new float[0]);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    @Override
    public float scaledVolume() {
        float f10;
        float f11;
        float[] fArr = this.radii;
        int length = fArr.length;
        if (length != 1) {
            if (length == 2) {
                float f12 = fArr[0];
                if (f12 == fArr[1]) {
                    Vector3f[] vector3fArr = this.centers;
                    float b10 = i.b(f12, vector3fArr[0].distance(vector3fArr[1]));
                    Vector3f vector3f = this.scale;
                    f10 = b10 * vector3f.f81611x * vector3f.f81612y;
                    f11 = vector3f.f81613z;
                }
            }
            return super.scaledVolume();
        }
        float e10 = i.e(fArr[0]);
        Vector3f vector3f2 = this.scale;
        f10 = e10 * vector3f2.f81611x * vector3f2.f81612y;
        f11 = vector3f2.f81613z;
        return f10 * f11;
    }

    @Override
    public HullCollisionShape toHullShape() {
        Vector3f vector3f = this.scale;
        float F10 = f.F(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
        float min = Math.min(CollisionShape.getDefaultMargin(), f.G(this.radii) * F10);
        int length = this.radii.length;
        float[] fArr = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            float f10 = this.radii[i10] - (min / F10);
            if (f10 < 1.0E-6f) {
                f10 = 1.0E-6f;
            }
            fArr[i10] = f10;
        }
        MultiSphere multiSphere = new MultiSphere(this.centers, fArr);
        multiSphere.setScale(this.scale);
        FloatBuffer debugVertices = DebugShapeFactory.debugVertices(multiSphere, 0);
        debugVertices.rewind();
        debugVertices.limit(debugVertices.capacity());
        HullCollisionShape hullCollisionShape = new HullCollisionShape(debugVertices);
        hullCollisionShape.setMargin(min);
        return hullCollisionShape;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.centers, tagCenters, (Savable[]) null);
        capsule.write(this.radii, tagRadii, (float[]) null);
    }

    public MultiSphere(float f10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        this.centers = r1;
        Vector3f[] vector3fArr = {new Vector3f(0.0f, 0.0f, 0.0f)};
        this.radii = new float[]{f10};
        createShape();
    }

    public MultiSphere(float f10, float f11) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.p(f11, "height");
        float f12 = f11 / 2.0f;
        Vector3f[] vector3fArr = new Vector3f[2];
        this.centers = vector3fArr;
        vector3fArr[0] = new Vector3f(0.0f, f12, 0.0f);
        this.centers[1] = new Vector3f(0.0f, -f12, 0.0f);
        this.radii = new float[]{f10, f10};
        createShape();
    }

    public MultiSphere(float f10, float f11, int i10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.p(f11, "height");
        float f12 = f11 / 2.0f;
        Vector3f[] vector3fArr = new Vector3f[2];
        this.centers = vector3fArr;
        if (i10 == 0) {
            vector3fArr[0] = new Vector3f(f12, 0.0f, 0.0f);
            this.centers[1] = new Vector3f(-f12, 0.0f, 0.0f);
        } else if (i10 == 1) {
            vector3fArr[0] = new Vector3f(0.0f, f12, 0.0f);
            this.centers[1] = new Vector3f(0.0f, -f12, 0.0f);
        } else if (i10 == 2) {
            vector3fArr[0] = new Vector3f(0.0f, 0.0f, f12);
            this.centers[1] = new Vector3f(0.0f, 0.0f, -f12);
        } else {
            throw new IllegalArgumentException("axisIndex = " + i10);
        }
        this.radii = new float[]{f10, f10};
        createShape();
    }

    public MultiSphere(BoundingSphere boundingSphere) {
        this.centers = r1;
        Vector3f[] vector3fArr = {boundingSphere.getCenter().m1292clone()};
        this.radii = r0;
        float[] fArr = {boundingSphere.getRadius()};
        createShape();
    }

    public MultiSphere(List<Vector3f> list, List<Float> list2) {
        C13702E.k(list, tagCenters);
        C13702E.k(list2, tagRadii);
        int size = list2.size();
        C13702E.H(list.size() == size, "lists of equal length");
        this.centers = new Vector3f[size];
        this.radii = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            this.centers[i10] = list.get(i10).m1292clone();
            this.radii[i10] = list2.get(i10).floatValue();
        }
        createShape();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultiSphere(m mVar) {
        Vector3f c10 = mVar.c(null);
        float G10 = f.G(c10.f81611x, c10.f81612y, c10.f81613z);
        Vector3f g10 = mVar.g(null);
        g10.subtractLocal(G10, G10, G10);
        Vector3f h10 = mVar.h(null);
        h10.addLocal(G10, G10, G10);
        ArrayList arrayList = new ArrayList(4);
        if (G10 == c10.f81611x) {
            float f10 = g10.f81611x;
            arrayList.add(new Vector3f(f10, g10.f81612y, g10.f81613z));
            arrayList.add(new Vector3f(f10, g10.f81612y, h10.f81613z));
            arrayList.add(new Vector3f(f10, h10.f81612y, g10.f81613z));
            arrayList.add(new Vector3f(f10, h10.f81612y, h10.f81613z));
        } else if (G10 == c10.f81612y) {
            float f11 = g10.f81612y;
            arrayList.add(new Vector3f(g10.f81611x, f11, g10.f81613z));
            arrayList.add(new Vector3f(g10.f81611x, f11, h10.f81613z));
            arrayList.add(new Vector3f(h10.f81611x, f11, g10.f81613z));
            arrayList.add(new Vector3f(h10.f81611x, f11, h10.f81613z));
        } else {
            float f12 = g10.f81613z;
            arrayList.add(new Vector3f(g10.f81611x, g10.f81612y, f12));
            arrayList.add(new Vector3f(g10.f81611x, h10.f81612y, f12));
            arrayList.add(new Vector3f(h10.f81611x, g10.f81612y, f12));
            arrayList.add(new Vector3f(h10.f81611x, h10.f81612y, f12));
        }
        this.centers = new Vector3f[4];
        this.radii = new float[]{G10, G10, G10, G10};
        for (int i10 = 0; i10 < 4; i10++) {
            this.centers[i10] = mVar.f((Vector3f) arrayList.get(i10), null);
        }
        createShape();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultiSphere(m mVar, float f10) {
        Vector3f c10 = mVar.c(null);
        float y10 = f.y(f10, f.G(c10.f81611x, c10.f81612y, c10.f81613z), f.F(c10.f81611x, c10.f81612y, c10.f81613z));
        float B10 = f.B(c10.f81611x, c10.f81612y, c10.f81613z);
        Vector3f g10 = mVar.g(null);
        Vector3f h10 = mVar.h(null);
        Vector3f M10 = h.M(g10, h10, null);
        ArrayList arrayList = new ArrayList(2);
        if (B10 == c10.f81613z) {
            arrayList.add(new Vector3f(M10.f81611x, M10.f81612y, h10.f81613z + y10));
            arrayList.add(new Vector3f(M10.f81611x, M10.f81612y, g10.f81613z - y10));
        } else if (B10 == c10.f81612y) {
            arrayList.add(new Vector3f(M10.f81611x, h10.f81612y + y10, M10.f81613z));
            arrayList.add(new Vector3f(M10.f81611x, g10.f81612y - y10, M10.f81613z));
        } else {
            arrayList.add(new Vector3f(h10.f81611x + y10, M10.f81612y, M10.f81613z));
            arrayList.add(new Vector3f(g10.f81611x - y10, M10.f81612y, M10.f81613z));
        }
        this.centers = new Vector3f[2];
        this.radii = new float[]{y10, y10};
        for (int i10 = 0; i10 < 2; i10++) {
            this.centers[i10] = mVar.f((Vector3f) arrayList.get(i10), null);
        }
        createShape();
    }

    public MultiSphere(Vector3f vector3f, float f10) {
        C13702E.d(vector3f, "center");
        C13702E.p(f10, TestVFXEffect.f77524P);
        this.centers = r1;
        Vector3f[] vector3fArr = {vector3f.m1292clone()};
        this.radii = new float[]{f10};
        createShape();
    }

    public MultiSphere(Vector3f[] vector3fArr, float... fArr) {
        C13702E.n(vector3fArr, tagCenters);
        C13702E.l(fArr, tagRadii);
        int length = fArr.length;
        C13702E.H(vector3fArr.length == length, "arrays of equal length");
        this.centers = new Vector3f[length];
        this.radii = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.centers[i10] = vector3fArr[i10].m1292clone();
            this.radii[i10] = fArr[i10];
        }
        createShape();
    }
}
