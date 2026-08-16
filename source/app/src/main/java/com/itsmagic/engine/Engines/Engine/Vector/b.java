package com.itsmagic.engine.Engines.Engine.Vector;

import android.opengl.Matrix;
import org.eclipse.jdt.internal.core.JavaElement;

public class b extends K8.f {

    public static final float[] f79848j;

    public final String f79849b;

    public final float[] f79850c;

    public final float[] f79851d;

    public final float[] f79852e;

    public final float[] f79853g;

    public final float[] f79854i;

    static {
        float[] fArr = new float[16];
        f79848j = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    public b(String id2, float xMin, float xMax, float yMin, float yMax, float zMin, float zMax) {
        this(id2, new float[]{xMin, yMin, zMin, 1.0f}, new float[]{xMax, yMax, zMax, 1.0f}, f79848j);
    }

    public static b d(String id2, d d10, float[] modelMatrix) {
        return new b(id2, d10.o(), d10.n(), modelMatrix);
    }

    public float[] e() {
        return this.f79854i;
    }

    public float[] f() {
        return this.f79853g;
    }

    public float h() {
        return this.f79854i[0];
    }

    public float i() {
        return this.f79853g[0];
    }

    public float j() {
        return this.f79854i[1];
    }

    public float k() {
        return this.f79853g[1];
    }

    public float l() {
        return this.f79854i[2];
    }

    public float m() {
        return this.f79853g[2];
    }

    public boolean n(float x10, float y10, float z10) {
        return !o(x10, y10, z10);
    }

    public boolean o(float x10, float y10, float z10) {
        return x10 > h() || x10 < i() || y10 < k() || y10 > j() || z10 < m() || z10 > l();
    }

    public final void p() {
        float[] fArr = this.f79852e;
        if (fArr != null) {
            Matrix.multiplyMV(this.f79853g, 0, fArr, 0, this.f79850c, 0);
            Matrix.multiplyMV(this.f79854i, 0, this.f79852e, 0, this.f79851d, 0);
        }
    }

    public String toString() {
        return "BoundingBox{id='" + this.f79849b + JavaElement.JEM_MODULAR_CLASSFILE + ", xMin=" + i() + ", xMax=" + h() + ", yMin=" + k() + ", yMax=" + j() + ", zMin=" + m() + ", zMax=" + l() + JavaElement.JEM_ANNOTATION;
    }

    public b(String id2, float[] min, float[] max, float[] modelMatrix) {
        this.f79849b = id2;
        this.f79850c = new float[]{min[0], min[1], min[2], 1.0f};
        this.f79851d = new float[]{max[0], max[1], max[2], 1.0f};
        this.f79852e = modelMatrix;
        this.f79853g = new float[4];
        this.f79854i = new float[4];
        p();
    }
}
