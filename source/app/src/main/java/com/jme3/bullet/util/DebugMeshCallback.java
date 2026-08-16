package com.jme3.bullet.util;

import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.h;
import jf.i;
import jf.m;
import jf.p;

@Deprecated
class DebugMeshCallback {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(DebugMeshCallback.class.getName());
    private static final int numAxes = 3;
    private static final int vpt = 3;
    private final ArrayList<Vector3f> list = new ArrayList<>(250);

    private void addVector(float f10, float f11, float f12, int i10, int i11) {
        this.list.add(new Vector3f(f10, f11, f12));
    }

    public Vector3f[] footprint(Transform transform) {
        p pVar = new p(this.list.size(), false);
        pVar.b(this.list);
        FloatBuffer j10 = pVar.j();
        int limit = j10.limit();
        d.x(j10, 0, limit, transform);
        int i10 = limit / 3;
        float f10 = Float.POSITIVE_INFINITY;
        for (int i11 = 0; i11 < i10; i11++) {
            float f11 = j10.get((i11 * 3) + 1);
            if (f11 < f10) {
                f10 = f11;
            }
        }
        for (int i12 = 0; i12 < i10; i12++) {
            j10.put((i12 * 3) + 1, f10);
        }
        m mVar = new m(j10, 0, limit);
        Vector3f g10 = mVar.g(null);
        Vector3f h10 = mVar.h(null);
        float f12 = (h10.f81611x + g10.f81611x) / 2.0f;
        Vector3f[] vector3fArr = {new Vector3f(f12, g10.f81612y, g10.f81613z), new Vector3f(f12, h10.f81612y, g10.f81613z), new Vector3f(f12, g10.f81612y, h10.f81613z), new Vector3f(f12, h10.f81612y, h10.f81613z)};
        for (int i13 = 0; i13 < 4; i13++) {
            Vector3f vector3f = vector3fArr[i13];
            mVar.f(vector3f, vector3f);
        }
        return vector3fArr;
    }

    public FloatBuffer getFaceNormals() {
        int size = this.list.size();
        int i10 = size / 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(size * 3);
        Triangle triangle = new Triangle();
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 3;
            triangle.set(this.list.get(i12), this.list.get(i12 + 1), this.list.get(i12 + 2));
            Vector3f normal = triangle.getNormal();
            for (int i13 = 0; i13 < 3; i13++) {
                createFloatBuffer.put(normal.f81611x);
                createFloatBuffer.put(normal.f81612y);
                createFloatBuffer.put(normal.f81613z);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public FloatBuffer getVertices() {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(this.list.size() * 3);
        Iterator<Vector3f> it = this.list.iterator();
        while (it.hasNext()) {
            Vector3f next = it.next();
            createFloatBuffer.put(next.f81611x);
            createFloatBuffer.put(next.f81612y);
            createFloatBuffer.put(next.f81613z);
        }
        return createFloatBuffer;
    }

    public float maxDistance(Transform transform) {
        Vector3f vector3f = new Vector3f();
        Iterator<Vector3f> it = this.list.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            f.S(transform, it.next(), vector3f);
            double F10 = h.F(vector3f);
            if (F10 > d10) {
                d10 = F10;
            }
        }
        return (float) Math.sqrt(d10);
    }

    public float volumeConvex() {
        int size = this.list.size() / 3;
        double d10 = 0.0d;
        if (size > 0) {
            Vector3f vector3f = this.list.get(0);
            for (int i10 = 0; i10 < size; i10++) {
                int i11 = i10 * 3;
                d10 += i.f(this.list.get(i11), this.list.get(i11 + 1), this.list.get(i11 + 2), vector3f);
            }
        }
        return (float) d10;
    }
}
