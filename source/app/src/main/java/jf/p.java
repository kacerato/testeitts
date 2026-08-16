package jf;

import com.bumptech.glide.load.engine.GlideException;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class p implements o {

    public static final int f92950e = 3;

    public static final Logger f92951f = Logger.getLogger(p.class.getName());

    public static int f92952g = 0;

    public static int f92953h = 0;

    public static int f92954i = 0;

    public static long f92955j = 0;

    public static final boolean f92956k = false;

    public final boolean f92957a;

    public FloatBuffer f92958b;

    public int[] f92959c;

    public int[] f92960d;

    public p(int i10, boolean z10) {
        C13702E.F(i10, "number of vectors");
        this.f92957a = z10;
        p(i10);
        u();
    }

    public static void q() {
        f92952g = 0;
        f92953h = 0;
        f92954i = 0;
        f92955j = System.currentTimeMillis();
    }

    public static void s(String str) {
        long currentTimeMillis = System.currentTimeMillis() - f92955j;
        System.out.println(String.format("%s %d enlargement%s, %d search%s, and %d read%s in %d msec", str, Integer.valueOf(f92952g), f92952g == 1 ? "" : "s", Integer.valueOf(f92954i), f92954i == 1 ? "" : "es", Integer.valueOf(f92953h), f92953h == 1 ? "" : "s", Long.valueOf(currentTimeMillis)));
    }

    public static int v(float f10, float f11, float f12) {
        int floatToIntBits = Float.floatToIntBits(f10) + 1406;
        int floatToIntBits2 = floatToIntBits + (floatToIntBits * 37) + Float.floatToIntBits(f11);
        return floatToIntBits2 + (floatToIntBits2 * 37) + Float.floatToIntBits(f12);
    }

    @Override
    public void a(Vector3f vector3f) {
        if (this.f92960d == null) {
            throw new IllegalStateException("toBuffer() has been invoked.");
        }
        f(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    @Override
    public void b(Iterable<Vector3f> iterable) {
        for (Vector3f vector3f : iterable) {
            f(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
        }
    }

    @Override
    public Vector3f[] c() {
        int m10 = m();
        Vector3f[] vector3fArr = new Vector3f[m10];
        for (int i10 = 0; i10 < m10; i10++) {
            Vector3f vector3f = new Vector3f();
            vector3fArr[i10] = vector3f;
            d.g(this.f92958b, i10 * 3, vector3f);
        }
        return vector3fArr;
    }

    @Override
    public void clear() {
        int capacity = this.f92958b.capacity();
        if (this.f92960d == null) {
            p((capacity - 1) / 3);
        } else {
            for (int i10 = 0; i10 < capacity; i10++) {
                this.f92960d[i10] = 0;
            }
        }
        this.f92958b.rewind();
        this.f92958b.limit(0);
    }

    @Override
    public Vector3f d(Vector3f vector3f) {
        FloatBuffer floatBuffer = this.f92958b;
        return d.k(floatBuffer, 0, floatBuffer.limit(), vector3f);
    }

    @Override
    public Matrix3f e(Matrix3f matrix3f) {
        FloatBuffer floatBuffer = this.f92958b;
        return d.a(floatBuffer, 0, floatBuffer.limit(), matrix3f);
    }

    @Override
    public void f(float f10, float f11, float f12) {
        if (this.f92960d == null) {
            throw new IllegalStateException("toBuffer() has been invoked.");
        }
        int v10 = v(f10, f11, f12);
        if (r(f10, f11, f12, v10)) {
            return;
        }
        x();
        if (this.f92958b.remaining() < 3) {
            t();
        }
        o(f10, f11, f12, v10);
        u();
    }

    @Override
    public void g(Vector3f vector3f, Vector3f vector3f2) {
        C13702E.t(vector3f, "store maxima");
        C13702E.t(vector3f2, "store minima");
        FloatBuffer floatBuffer = this.f92958b;
        d.m(floatBuffer, 0, floatBuffer.limit(), vector3f, vector3f2);
    }

    @Override
    public boolean h(float f10, float f11, float f12) {
        return r(f10, f11, f12, v(f10, f11, f12));
    }

    @Override
    public boolean i(Vector3f vector3f) {
        return h(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    @Override
    public FloatBuffer j() {
        this.f92960d = null;
        this.f92959c = null;
        return this.f92958b;
    }

    @Override
    public Vector3f k(Vector3f vector3f) {
        FloatBuffer floatBuffer = this.f92958b;
        return d.n(floatBuffer, 0, floatBuffer.limit(), vector3f);
    }

    @Override
    public float l() {
        FloatBuffer floatBuffer = this.f92958b;
        return d.l(floatBuffer, 0, floatBuffer.limit());
    }

    @Override
    public int m() {
        int limit = this.f92958b.limit();
        if (limit >= this.f92958b.capacity()) {
            limit = this.f92958b.position();
        }
        return limit / 3;
    }

    @Override
    public float[] n() {
        int m10 = m() * 3;
        float[] fArr = new float[m10];
        for (int i10 = 0; i10 < m10; i10++) {
            fArr[i10] = this.f92958b.get(i10);
        }
        return fArr;
    }

    public final void o(float f10, float f11, float f12, int i10) {
        int position = this.f92958b.position();
        int K10 = f.K(i10, this.f92960d.length);
        int[] iArr = this.f92960d;
        if (iArr[K10] == 0) {
            iArr[K10] = position + 1;
        }
        this.f92959c[K10] = position;
        this.f92958b.put(f10);
        this.f92958b.put(f11);
        this.f92958b.put(f12);
    }

    public final void p(int i10) {
        int i11 = (i10 * 3) + 1;
        if (this.f92957a) {
            this.f92958b = BufferUtils.createFloatBuffer(i11);
        } else {
            this.f92958b = FloatBuffer.wrap(new float[i11]);
        }
        this.f92960d = new int[i11];
        this.f92959c = new int[i11];
    }

    public final boolean r(float f10, float f11, float f12, int i10) {
        int K10 = f.K(i10, this.f92960d.length);
        int i11 = this.f92960d[K10];
        boolean z10 = false;
        if (i11 != 0) {
            int i12 = this.f92959c[K10];
            this.f92958b.position(i11 - 1);
            while (true) {
                if (this.f92958b.position() > i12) {
                    break;
                }
                float f13 = this.f92958b.get();
                float f14 = this.f92958b.get();
                float f15 = this.f92958b.get();
                if (Float.compare(f13, f10) == 0 && Float.compare(f14, f11) == 0 && Float.compare(f15, f12) == 0) {
                    z10 = true;
                    break;
                }
            }
            f92954i++;
            f92953h += ((i12 - i11) + 1) / 3;
        }
        return z10;
    }

    public final void t() {
        int m10 = m();
        FloatBuffer j10 = j();
        p(m10 * 4);
        j10.flip();
        while (j10.hasRemaining()) {
            float f10 = j10.get();
            float f11 = j10.get();
            float f12 = j10.get();
            o(f10, f11, f12, v(f10, f11, f12));
        }
        f92952g++;
    }

    public String toString() {
        int m10 = m();
        StringBuilder sb2 = new StringBuilder(m10 * 32);
        sb2.append("VectorSet[ n=");
        sb2.append(m10);
        String lineSeparator = System.lineSeparator();
        sb2.append(lineSeparator);
        Vector3f vector3f = new Vector3f();
        for (int i10 = 0; i10 < m10; i10++) {
            d.g(this.f92958b, i10 * 3, vector3f);
            sb2.append(GlideException.a.f59088e);
            sb2.append((Object) vector3f);
            sb2.append(lineSeparator);
        }
        sb2.append("]");
        sb2.append(lineSeparator);
        return sb2.toString();
    }

    public final void u() {
        FloatBuffer floatBuffer = this.f92958b;
        floatBuffer.limit(floatBuffer.position());
    }

    public final boolean w() {
        return this.f92958b.limit() != this.f92958b.capacity();
    }

    public final void x() {
        FloatBuffer floatBuffer = this.f92958b;
        floatBuffer.position(floatBuffer.limit());
        FloatBuffer floatBuffer2 = this.f92958b;
        floatBuffer2.limit(floatBuffer2.capacity());
    }
}
