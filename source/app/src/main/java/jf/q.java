package jf;

import com.bumptech.glide.load.engine.GlideException;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Logger;
import org.apache.commons.math3.linear.ConjugateGradient;
import p000if.C13702E;

public class q implements o {

    public static final int f92961b = 3;

    public static final Logger f92962c = Logger.getLogger(q.class.getName());

    public static final boolean f92963d = false;

    public final Set<Vector3f> f92964a;

    public q(int i10) {
        C13702E.F(i10, "number of vectors");
        this.f92964a = new HashSet(i10);
    }

    @Override
    public void a(Vector3f vector3f) {
        C13702E.t(vector3f, ConjugateGradient.VECTOR);
        this.f92964a.add(vector3f.m1292clone());
    }

    @Override
    public void b(Iterable<Vector3f> iterable) {
        Iterator<Vector3f> it = iterable.iterator();
        while (it.hasNext()) {
            this.f92964a.add(it.next().m1292clone());
        }
    }

    @Override
    public Vector3f[] c() {
        Vector3f[] vector3fArr = new Vector3f[m()];
        Iterator<Vector3f> it = this.f92964a.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            vector3fArr[i10] = it.next().m1292clone();
            i10++;
        }
        return vector3fArr;
    }

    @Override
    public void clear() {
        this.f92964a.clear();
    }

    @Override
    public Vector3f d(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        for (Vector3f vector3f2 : this.f92964a) {
            vector3f.f81611x = Math.max(vector3f.f81611x, Math.abs(vector3f2.f81611x));
            vector3f.f81612y = Math.max(vector3f.f81612y, Math.abs(vector3f2.f81612y));
            vector3f.f81613z = Math.max(vector3f.f81613z, Math.abs(vector3f2.f81613z));
        }
        return vector3f;
    }

    @Override
    public Matrix3f e(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        int m10 = m();
        Vector3f k10 = k(null);
        matrix3f.zero();
        for (Vector3f vector3f : this.f92964a) {
            float[] fArr = {vector3f.f81611x - k10.f81611x, vector3f.f81612y - k10.f81612y, vector3f.f81613z - k10.f81613z};
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = i10; i11 < 3; i11++) {
                    matrix3f.set(i10, i11, matrix3f.get(i10, i11) + (fArr[i10] * fArr[i11]));
                }
            }
        }
        float f10 = m10 - 1;
        for (int i12 = 0; i12 < 3; i12++) {
            for (int i13 = i12; i13 < 3; i13++) {
                float f11 = matrix3f.get(i12, i13) / f10;
                matrix3f.set(i12, i13, f11);
                matrix3f.set(i13, i12, f11);
            }
        }
        return matrix3f;
    }

    @Override
    public void f(float f10, float f11, float f12) {
        this.f92964a.add(new Vector3f(f10, f11, f12));
    }

    @Override
    public void g(Vector3f vector3f, Vector3f vector3f2) {
        vector3f.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        vector3f2.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        for (Vector3f vector3f3 : this.f92964a) {
            h.b(vector3f2, vector3f3);
            h.a(vector3f, vector3f3);
        }
    }

    @Override
    public boolean h(float f10, float f11, float f12) {
        return this.f92964a.contains(new Vector3f(f10, f11, f12));
    }

    @Override
    public boolean i(Vector3f vector3f) {
        return this.f92964a.contains(vector3f);
    }

    @Override
    public FloatBuffer j() {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(this.f92964a.size() * 3);
        for (Vector3f vector3f : this.f92964a) {
            createFloatBuffer.put(vector3f.f81611x);
            createFloatBuffer.put(vector3f.f81612y);
            createFloatBuffer.put(vector3f.f81613z);
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    @Override
    public Vector3f k(Vector3f vector3f) {
        int m10 = m();
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        Iterator<Vector3f> it = this.f92964a.iterator();
        while (it.hasNext()) {
            vector3f.addLocal(it.next());
        }
        vector3f.divideLocal(m10);
        return vector3f;
    }

    @Override
    public float l() {
        Iterator<Vector3f> it = this.f92964a.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            double F10 = h.F(it.next());
            if (F10 > d10) {
                d10 = F10;
            }
        }
        return (float) Math.sqrt(d10);
    }

    @Override
    public int m() {
        return this.f92964a.size();
    }

    @Override
    public float[] n() {
        float[] fArr = new float[m() * 3];
        int i10 = 0;
        for (Vector3f vector3f : this.f92964a) {
            int i11 = i10 * 3;
            fArr[i11] = vector3f.f81611x;
            fArr[i11 + 1] = vector3f.f81612y;
            fArr[i11 + 2] = vector3f.f81613z;
            i10++;
        }
        return fArr;
    }

    public String toString() {
        int m10 = m();
        StringBuilder sb2 = new StringBuilder(m10 * 32);
        sb2.append("VectorSet[ n=");
        sb2.append(m10);
        String lineSeparator = System.lineSeparator();
        sb2.append(lineSeparator);
        for (Vector3f vector3f : this.f92964a) {
            sb2.append(GlideException.a.f59088e);
            sb2.append((Object) vector3f);
            sb2.append(lineSeparator);
        }
        sb2.append("]");
        sb2.append(lineSeparator);
        return sb2.toString();
    }
}
