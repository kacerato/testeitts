package Ib;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.Arrays;
import t3.C15377a;
import vc.n;
import vc.p;
import vc.q;

public class g {

    public static boolean f8970F = false;

    public int[] f8972B;

    public int[] f8973C;

    public boolean[] f8974D;

    public boolean[] f8975E;

    public final Vertex f8976a;

    public int f8977b;

    public int f8978c;

    public FloatBuffer f8979d;

    public FloatBuffer f8980e;

    public FloatBuffer f8981f;

    public DoubleBuffer f8982g;

    public IntBuffer f8983h;

    public IntBuffer f8984i;

    public ByteBuffer f8985j;

    public IntBuffer f8986k;

    public DoubleBuffer f8987l;

    public ByteBuffer f8988m;

    public ByteBuffer f8989n;

    public FloatBuffer f8990o;

    public IntBuffer f8991p;

    public IntBuffer f8992q;

    public int f8993r;

    public final a f8994s = new a();

    public final a f8995t = new a();

    public final a f8996u = new a();

    public final a f8997v = new a();

    public final a f8998w = new a();

    public final a f8999x = new a();

    public final a f9000y = new a();

    public final a f9001z = new a();

    public final double[] f8971A = new double[10];

    static {
        if (C15377a.f109719g.booleanValue()) {
            f8970F = false;
        }
    }

    public g(Vertex mesh) {
        this.f8976a = mesh;
    }

    public static double i(a a10, a b10) {
        return a10.d(b10);
    }

    public final void A(int vid, float x10, float y10, float z10) {
        int i10 = vid * 3;
        this.f8979d.put(i10, x10);
        this.f8979d.put(i10 + 1, y10);
        this.f8979d.put(i10 + 2, z10);
    }

    public final void B(int vid, a p10) {
        A(vid, p10.e(0), p10.e(1), p10.e(2));
    }

    public final void C(int vid, float u10, float v10) {
        int i10 = vid * 2;
        this.f8980e.put(i10, u10);
        this.f8980e.put(i10 + 1, v10);
    }

    public Vertex D(float targetPercent, double aggressiveness) {
        return E((int) (this.f8976a.W0() * targetPercent), aggressiveness);
    }

    public Vertex E(int targetCount, double aggressiveness) {
        long j10;
        int i10;
        int i11;
        int i12;
        char c10;
        double d10;
        u();
        if (f8970F) {
            System.out.println(String.format("SimplifyNative Target: %d of %d (%d%%)", Integer.valueOf(targetCount), Integer.valueOf(this.f8978c), Integer.valueOf((targetCount * 100) / this.f8978c)));
            j10 = System.currentTimeMillis();
        } else {
            j10 = 0;
        }
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i10 = this.f8978c;
            if (i14 >= i10) {
                break;
            }
            this.f8988m.put(i14, (byte) 0);
            this.f8989n.put(i14, (byte) 0);
            i14++;
        }
        k(16);
        this.f8994s.g(0.0f, 0);
        int i15 = 1;
        this.f8994s.g(0.0f, 1);
        char c11 = 2;
        this.f8994s.g(0.0f, 2);
        int i16 = 0;
        int i17 = 0;
        while (i16 < 1000 && i10 - i17 > targetCount) {
            F(i16);
            if (i16 % 5 == 0) {
                g();
                i10 = this.f8978c;
            }
            double pow = Math.pow(i16 + 3.0d, aggressiveness) * 1.0E-9d;
            int i18 = this.f8978c - i15;
            while (true) {
                if (i18 < 0) {
                    i11 = i13;
                    i12 = i15;
                    c10 = c11;
                    break;
                }
                if (n(i18) == 0) {
                    int i19 = i18 * 4;
                    if (this.f8987l.get(i19 + 3) <= pow) {
                        int i20 = i13;
                        while (true) {
                            if (i20 >= 3) {
                                i11 = i13;
                                d10 = pow;
                                i12 = 1;
                                c10 = 2;
                                break;
                            }
                            if (this.f8987l.get(i19 + i20) >= pow) {
                                d10 = pow;
                            } else {
                                int p10 = p(i18, i20);
                                int p11 = p(i18, (i20 + 1) % 3);
                                int i21 = this.f8984i.get(p10);
                                d10 = pow;
                                int i22 = this.f8984i.get(p11);
                                boolean z10 = this.f8985j.get(p10) != 0;
                                boolean z11 = this.f8985j.get(p11) != 0;
                                if (!z10 && !z11) {
                                    k(Math.max(i21, i22));
                                    i11 = 0;
                                    Arrays.fill(this.f8974D, 0, i21, false);
                                    Arrays.fill(this.f8975E, 0, i22, false);
                                    this.f8994s.g(0.0f, 0);
                                    i12 = 1;
                                    this.f8994s.g(0.0f, 1);
                                    c10 = 2;
                                    this.f8994s.g(0.0f, 2);
                                    e(p10, p11, this.f8994s);
                                    if (!m(this.f8994s, p11, p10, this.f8974D) && !m(this.f8994s, p10, p11, this.f8975E)) {
                                        B(p10, this.f8994s);
                                        b(p10, p11);
                                        i17 = i17 + G(p10, p10, this.f8974D) + G(p10, p11, this.f8975E);
                                        break;
                                    }
                                    i20++;
                                    i13 = i11;
                                    pow = d10;
                                }
                            }
                            i11 = 0;
                            i20++;
                            i13 = i11;
                            pow = d10;
                        }
                        if (i10 - i17 <= targetCount) {
                            break;
                        }
                        i18--;
                        i15 = i12;
                        i13 = i11;
                        c11 = c10;
                        pow = d10;
                    }
                }
                i11 = i13;
                d10 = pow;
                i12 = 1;
                c10 = 2;
                i18--;
                i15 = i12;
                i13 = i11;
                c11 = c10;
                pow = d10;
            }
            i16++;
            i15 = i12;
            i13 = i11;
            c11 = c10;
        }
        g();
        Vertex d11 = d();
        if (f8970F) {
            long currentTimeMillis = System.currentTimeMillis();
            int i23 = this.f8978c;
            System.out.println(String.format("SimplifyNative: %d/%d %d%% removed in %d ms", Integer.valueOf(i23), Integer.valueOf(this.f8976a.W0()), Integer.valueOf(((this.f8976a.W0() - i23) * 100) / this.f8976a.W0()), Long.valueOf(currentTimeMillis - j10)));
        }
        return d11;
    }

    public final void F(final int iteration) {
        if (iteration == 0) {
            for (int i10 = 0; i10 < this.f8977b; i10++) {
                f(i10);
            }
        }
        for (int i11 = 0; i11 < this.f8978c; i11++) {
            if (n(i11) == 0) {
                int p10 = p(i11, 0);
                int p11 = p(i11, 1);
                int p12 = p(i11, 2);
                r(p10, this.f8995t);
                r(p11, this.f8996u);
                r(p12, this.f8997v);
                this.f8998w.h(this.f8996u);
                this.f8998w.j(this.f8995t);
                this.f8999x.h(this.f8997v);
                this.f8999x.j(this.f8995t);
                this.f9000y.h(this.f8998w);
                this.f9000y.b(this.f8999x).f();
                x(i11, this.f9000y);
                if (iteration == 0) {
                    double e10 = this.f9000y.e(0);
                    double e11 = this.f9000y.e(1);
                    double e12 = this.f9000y.e(2);
                    double d10 = -i(this.f9000y, this.f8995t);
                    a(p10, e10, e11, e12, d10);
                    a(p11, e10, e11, e12, d10);
                    a(p12, e10, e11, e12, d10);
                }
            }
        }
        if (iteration == 0) {
            for (int i12 = 0; i12 < this.f8978c; i12++) {
                if (n(i12) == 0) {
                    int i13 = 0;
                    while (i13 < 3) {
                        int i14 = i13 + 1;
                        this.f8987l.put((i12 * 4) + i13, e(p(i12, i13), p(i12, i14 % 3), this.f8994s));
                        i13 = i14;
                    }
                    int i15 = i12 * 4;
                    this.f8987l.put(i15 + 3, Math.min(this.f8987l.get(i15), Math.min(this.f8987l.get(i15 + 1), this.f8987l.get(i15 + 2))));
                }
            }
        }
        for (int i16 = 0; i16 < this.f8977b; i16++) {
            this.f8983h.put(i16, 0);
            this.f8984i.put(i16, 0);
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.f8978c; i18++) {
            if (n(i18) == 0) {
                int p13 = p(i18, 0);
                int p14 = p(i18, 1);
                int p15 = p(i18, 2);
                IntBuffer intBuffer = this.f8984i;
                intBuffer.put(p13, intBuffer.get(p13) + 1);
                IntBuffer intBuffer2 = this.f8984i;
                intBuffer2.put(p14, intBuffer2.get(p14) + 1);
                IntBuffer intBuffer3 = this.f8984i;
                intBuffer3.put(p15, intBuffer3.get(p15) + 1);
                i17 += 3;
            }
        }
        l(i17);
        int i19 = 0;
        for (int i20 = 0; i20 < this.f8977b; i20++) {
            this.f8983h.put(i20, i19);
            i19 += this.f8984i.get(i20);
            this.f8984i.put(i20, 0);
        }
        for (int i21 = 0; i21 < this.f8978c; i21++) {
            if (n(i21) == 0) {
                for (int i22 = 0; i22 < 3; i22++) {
                    int p16 = p(i21, i22);
                    int i23 = this.f8983h.get(p16);
                    int i24 = this.f8984i.get(p16);
                    int i25 = i23 + i24;
                    this.f8991p.put(i25, i21);
                    this.f8992q.put(i25, i22);
                    this.f8984i.put(p16, i24 + 1);
                }
            }
        }
        if (iteration == 0) {
            h();
        }
    }

    public final int G(final int i02, final int vIndex, final boolean[] deleted) {
        int i10 = this.f8983h.get(vIndex);
        int i11 = this.f8984i.get(vIndex);
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i10 + i13;
            int i15 = this.f8991p.get(i14);
            if (n(i15) == 0) {
                if (deleted[i13]) {
                    v(i15, (byte) 1);
                    i12++;
                } else {
                    int i16 = i15 * 3;
                    this.f8986k.put(this.f8992q.get(i14) + i16, i02);
                    this.f8989n.put(i15, (byte) 1);
                    int i17 = this.f8986k.get(i16);
                    int i18 = this.f8986k.get(i16 + 1);
                    int i19 = this.f8986k.get(i16 + 2);
                    double e10 = e(i17, i18, this.f8994s);
                    double e11 = e(i18, i19, this.f8994s);
                    double e12 = e(i19, i17, this.f8994s);
                    int i20 = i15 * 4;
                    this.f8987l.put(i20, e10);
                    this.f8987l.put(i20 + 1, e11);
                    this.f8987l.put(i20 + 2, e12);
                    this.f8987l.put(i20 + 3, Math.min(e10, Math.min(e11, e12)));
                }
            }
        }
        return i12;
    }

    public final double H(double x10, double y10, double z10) {
        double[] dArr = this.f8971A;
        return (dArr[0] * x10 * x10) + (dArr[1] * 2.0d * x10 * y10) + (dArr[2] * 2.0d * x10 * z10) + (dArr[3] * 2.0d * x10) + (dArr[4] * y10 * y10) + (dArr[5] * 2.0d * y10 * z10) + (dArr[6] * 2.0d * y10) + (dArr[7] * z10 * z10) + (dArr[8] * 2.0d * z10) + dArr[9];
    }

    public final void a(int vid, double a10, double b10, double c10, double d10) {
        int i10 = vid * 10;
        DoubleBuffer doubleBuffer = this.f8982g;
        doubleBuffer.put(i10, doubleBuffer.get(i10) + (a10 * a10));
        DoubleBuffer doubleBuffer2 = this.f8982g;
        int i11 = i10 + 1;
        doubleBuffer2.put(i11, doubleBuffer2.get(i11) + (a10 * b10));
        DoubleBuffer doubleBuffer3 = this.f8982g;
        int i12 = i10 + 2;
        doubleBuffer3.put(i12, doubleBuffer3.get(i12) + (a10 * c10));
        DoubleBuffer doubleBuffer4 = this.f8982g;
        int i13 = i10 + 3;
        doubleBuffer4.put(i13, doubleBuffer4.get(i13) + (a10 * d10));
        DoubleBuffer doubleBuffer5 = this.f8982g;
        int i14 = i10 + 4;
        doubleBuffer5.put(i14, doubleBuffer5.get(i14) + (b10 * b10));
        DoubleBuffer doubleBuffer6 = this.f8982g;
        int i15 = i10 + 5;
        doubleBuffer6.put(i15, doubleBuffer6.get(i15) + (b10 * c10));
        DoubleBuffer doubleBuffer7 = this.f8982g;
        int i16 = i10 + 6;
        doubleBuffer7.put(i16, doubleBuffer7.get(i16) + (b10 * d10));
        DoubleBuffer doubleBuffer8 = this.f8982g;
        int i17 = i10 + 7;
        doubleBuffer8.put(i17, doubleBuffer8.get(i17) + (c10 * c10));
        DoubleBuffer doubleBuffer9 = this.f8982g;
        int i18 = i10 + 8;
        doubleBuffer9.put(i18, doubleBuffer9.get(i18) + (c10 * d10));
        DoubleBuffer doubleBuffer10 = this.f8982g;
        int i19 = i10 + 9;
        doubleBuffer10.put(i19, doubleBuffer10.get(i19) + (d10 * d10));
    }

    public final void b(int destVid, int srcVid) {
        int i10 = destVid * 10;
        int i11 = srcVid * 10;
        for (int i12 = 0; i12 < 10; i12++) {
            DoubleBuffer doubleBuffer = this.f8982g;
            int i13 = i10 + i12;
            doubleBuffer.put(i13, doubleBuffer.get(i13) + this.f8982g.get(i11 + i12));
        }
    }

    public final void c(int v12, int v22) {
        int i10 = v12 * 10;
        int i11 = v22 * 10;
        for (int i12 = 0; i12 < 10; i12++) {
            this.f8971A[i12] = this.f8982g.get(i10 + i12) + this.f8982g.get(i11 + i12);
        }
    }

    public final Vertex d() {
        int[] iArr;
        int[] iArr2 = new int[this.f8977b];
        Arrays.fill(iArr2, 0);
        for (int i10 = 0; i10 < this.f8978c; i10++) {
            int p10 = p(i10, 0);
            int p11 = p(i10, 1);
            int p12 = p(i10, 2);
            iArr2[p10] = 1;
            iArr2[p11] = 1;
            iArr2[p12] = 1;
        }
        int[] iArr3 = new int[this.f8977b];
        int i11 = 0;
        for (int i12 = 0; i12 < this.f8977b; i12++) {
            if (iArr2[i12] != 0) {
                iArr3[i12] = i11;
                i11++;
            } else {
                iArr3[i12] = -1;
            }
        }
        q qVar = new q(i11);
        p pVar = new p(i11);
        q qVar2 = new q(i11);
        NativeFloatBuffer m02 = this.f8976a.m0();
        NativeFloatBuffer l12 = this.f8976a.l1();
        boolean z10 = m02 != null && l12 != null && m02.capacity() >= this.f8977b * 3 && l12.capacity() >= this.f8977b * 3;
        NativeFloatBuffer nativeFloatBuffer = z10 ? new NativeFloatBuffer(i11 * 3) : null;
        NativeFloatBuffer nativeFloatBuffer2 = z10 ? new NativeFloatBuffer(i11 * 3) : null;
        qVar.r(0);
        pVar.l(0);
        qVar2.r(0);
        if (nativeFloatBuffer != null) {
            nativeFloatBuffer.position(0);
        }
        if (nativeFloatBuffer2 != null) {
            nativeFloatBuffer2.position(0);
        }
        Vector3 vector3 = new Vector3();
        Vector2 vector2 = new Vector2();
        a aVar = new a();
        int i13 = 0;
        while (i13 < this.f8977b) {
            int i14 = iArr3[i13];
            if (i14 < 0) {
                iArr = iArr3;
            } else {
                r(i13, this.f8995t);
                iArr = iArr3;
                vector3.setX(this.f8995t.e(0));
                vector3.setY(this.f8995t.e(1));
                vector3.setZ(this.f8995t.e(2));
                s(i13, vector2);
                q(i13, aVar);
                qVar.u(vector3);
                pVar.n(vector2);
                vector3.setX(aVar.e(0));
                vector3.setY(aVar.e(1));
                vector3.setZ(aVar.e(2));
                qVar2.u(vector3);
                if (z10) {
                    int i15 = i13 * 3;
                    int i16 = i14 * 3;
                    nativeFloatBuffer.set(i16, m02, i15, 3);
                    nativeFloatBuffer2.set(i16, l12, i15, 3);
                    i13++;
                    iArr3 = iArr;
                }
            }
            i13++;
            iArr3 = iArr;
        }
        int[] iArr4 = iArr3;
        n nVar = new n(this.f8978c);
        nVar.k(0);
        for (int i17 = 0; i17 < this.f8978c; i17++) {
            nVar.m(new Point3(iArr4[p(i17, 0)], iArr4[p(i17, 1)], iArr4[p(i17, 2)]));
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.n2(pVar);
        vertex.j2(nVar);
        vertex.Z1(qVar2);
        if (z10) {
            vertex.S1(nativeFloatBuffer);
            vertex.s2(nativeFloatBuffer2);
        }
        vertex.apply();
        vertex.d0();
        return vertex;
    }

    public final double e(final int v12, final int v22, final a pResult) {
        c(v12, v22);
        boolean z10 = (this.f8985j.get(v12) != 0) & (this.f8985j.get(v22) != 0);
        double t10 = t(0, 1, 2, 1, 4, 5, 2, 5, 7);
        if (t10 != 0.0d && !z10) {
            double d10 = (-1.0d) / t10;
            float t11 = (float) (t(1, 2, 3, 4, 5, 6, 5, 7, 8) * d10);
            float t12 = (float) (t(0, 2, 3, 1, 5, 6, 2, 7, 8) * (1.0d / t10));
            float t13 = (float) (d10 * t(0, 1, 3, 1, 4, 6, 2, 5, 8));
            pResult.g(t11, 0);
            pResult.g(t12, 1);
            pResult.g(t13, 2);
            return H(t11, t12, t13);
        }
        r(v12, this.f8995t);
        r(v22, this.f8996u);
        this.f8997v.h(this.f8995t);
        this.f8997v.a(this.f8996u).c(2.0f);
        double H10 = H(this.f8995t.e(0), this.f8995t.e(1), this.f8995t.e(2));
        double H11 = H(this.f8996u.e(0), this.f8996u.e(1), this.f8996u.e(2));
        double min = Math.min(H10, Math.min(H11, H(this.f8997v.e(0), this.f8997v.e(1), this.f8997v.e(2))));
        if (min == H10) {
            pResult.h(this.f8995t);
            return min;
        }
        if (min == H11) {
            pResult.h(this.f8996u);
            return min;
        }
        pResult.h(this.f8997v);
        return min;
    }

    public final void f(int vid) {
        int i10 = vid * 10;
        for (int i11 = 0; i11 < 10; i11++) {
            this.f8982g.put(i10 + i11, 0.0d);
        }
    }

    public final void g() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f8978c; i11++) {
            if (n(i11) == 0) {
                if (i10 != i11) {
                    int i12 = i11 * 3;
                    int i13 = i10 * 3;
                    IntBuffer intBuffer = this.f8986k;
                    intBuffer.put(i13, intBuffer.get(i12));
                    IntBuffer intBuffer2 = this.f8986k;
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    intBuffer2.put(i14, intBuffer2.get(i15));
                    IntBuffer intBuffer3 = this.f8986k;
                    int i16 = i13 + 2;
                    int i17 = i12 + 2;
                    intBuffer3.put(i16, intBuffer3.get(i17));
                    int i18 = i11 * 4;
                    int i19 = i10 * 4;
                    DoubleBuffer doubleBuffer = this.f8987l;
                    doubleBuffer.put(i19, doubleBuffer.get(i18));
                    DoubleBuffer doubleBuffer2 = this.f8987l;
                    doubleBuffer2.put(i19 + 1, doubleBuffer2.get(i18 + 1));
                    DoubleBuffer doubleBuffer3 = this.f8987l;
                    doubleBuffer3.put(i19 + 2, doubleBuffer3.get(i18 + 2));
                    DoubleBuffer doubleBuffer4 = this.f8987l;
                    doubleBuffer4.put(i19 + 3, doubleBuffer4.get(i18 + 3));
                    FloatBuffer floatBuffer = this.f8990o;
                    floatBuffer.put(i13, floatBuffer.get(i12));
                    FloatBuffer floatBuffer2 = this.f8990o;
                    floatBuffer2.put(i14, floatBuffer2.get(i15));
                    FloatBuffer floatBuffer3 = this.f8990o;
                    floatBuffer3.put(i16, floatBuffer3.get(i17));
                    ByteBuffer byteBuffer = this.f8988m;
                    byteBuffer.put(i10, byteBuffer.get(i11));
                    ByteBuffer byteBuffer2 = this.f8989n;
                    byteBuffer2.put(i10, byteBuffer2.get(i11));
                }
                i10++;
            }
        }
        this.f8978c = i10;
    }

    public final void h() {
        j();
        for (int i10 = 0; i10 < this.f8977b; i10++) {
            this.f8985j.put(i10, (byte) 0);
        }
        for (int i11 = 0; i11 < this.f8977b; i11++) {
            int i12 = this.f8983h.get(i11);
            int i13 = this.f8984i.get(i11);
            for (int i14 = 0; i14 < i13; i14++) {
                this.f8972B[i14] = -1;
                this.f8973C[i14] = 0;
            }
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = this.f8991p.get(i12 + i16) * 3;
                for (int i18 = 0; i18 < 3; i18++) {
                    int i19 = this.f8986k.get(i17 + i18);
                    int i20 = 0;
                    while (i20 < i15 && this.f8972B[i20] != i19) {
                        i20++;
                    }
                    if (i20 == i15) {
                        this.f8972B[i20] = i19;
                        this.f8973C[i20] = 1;
                        i15++;
                    } else {
                        int[] iArr = this.f8973C;
                        iArr[i20] = iArr[i20] + 1;
                    }
                }
            }
            for (int i21 = 0; i21 < i15; i21++) {
                if (this.f8973C[i21] == 1) {
                    this.f8985j.put(this.f8972B[i21], (byte) 1);
                }
            }
        }
    }

    public final void j() {
        int[] iArr = this.f8972B;
        if (iArr == null || iArr.length < this.f8977b) {
            int i10 = this.f8977b;
            this.f8972B = new int[i10];
            this.f8973C = new int[i10];
        }
    }

    public final void k(int maxTcount) {
        boolean[] zArr = this.f8974D;
        if (zArr == null || zArr.length < maxTcount) {
            this.f8974D = new boolean[maxTcount];
            this.f8975E = new boolean[maxTcount];
        }
    }

    public final void l(int needed) {
        int i10 = this.f8993r;
        if (needed <= i10) {
            return;
        }
        int max = Math.max(needed, i10 * 2);
        int i11 = max * 4;
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder()).asIntBuffer();
        IntBuffer asIntBuffer2 = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder()).asIntBuffer();
        for (int i12 = 0; i12 < this.f8993r; i12++) {
            asIntBuffer.put(i12, this.f8991p.get(i12));
            asIntBuffer2.put(i12, this.f8992q.get(i12));
        }
        this.f8991p = asIntBuffer;
        this.f8992q = asIntBuffer2;
        this.f8993r = max;
    }

    public final boolean m(final a p10, final int i12, final int vIndex, final boolean[] deleted) {
        int i10 = this.f8983h.get(vIndex);
        int i11 = this.f8984i.get(vIndex);
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i10 + i13;
            int i15 = this.f8991p.get(i14);
            int i16 = this.f8992q.get(i14);
            if (n(i15) == 0) {
                int i17 = i15 * 3;
                int i18 = this.f8986k.get(((i16 + 1) % 3) + i17);
                int i19 = this.f8986k.get(i17 + ((i16 + 2) % 3));
                if (i18 == i12 || i19 == i12) {
                    deleted[i13] = true;
                } else {
                    r(i18, this.f8998w);
                    this.f8998w.j(p10).f();
                    r(i19, this.f8999x);
                    this.f8999x.j(p10).f();
                    if (Math.abs(this.f8998w.d(this.f8999x)) > 0.9999d) {
                        return true;
                    }
                    this.f9000y.h(this.f8998w);
                    this.f9000y.b(this.f8999x).f();
                    deleted[i13] = false;
                    o(i15, this.f9001z);
                    if (this.f9000y.d(this.f9001z) < 0.2d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final byte n(int tid) {
        return this.f8988m.get(tid);
    }

    public final void o(int tid, a out) {
        int i10 = tid * 3;
        out.g(this.f8990o.get(i10), 0);
        out.g(this.f8990o.get(i10 + 1), 1);
        out.g(this.f8990o.get(i10 + 2), 2);
    }

    public final int p(int tid, int corner) {
        return this.f8986k.get((tid * 3) + corner);
    }

    public final void q(int vid, a out) {
        int i10 = vid * 3;
        out.g(this.f8981f.get(i10), 0);
        out.g(this.f8981f.get(i10 + 1), 1);
        out.g(this.f8981f.get(i10 + 2), 2);
    }

    public final void r(int vid, a out) {
        int i10 = vid * 3;
        out.g(this.f8979d.get(i10), 0);
        out.g(this.f8979d.get(i10 + 1), 1);
        out.g(this.f8979d.get(i10 + 2), 2);
    }

    public final void s(int vid, Vector2 out) {
        int i10 = vid * 2;
        out.B0(this.f8980e.get(i10));
        out.C0(this.f8980e.get(i10 + 1));
    }

    public final double t(int a11, int a12, int a13, int a21, int a22, int a23, int a31, int a32, int a33) {
        double[] dArr = this.f8971A;
        double d10 = dArr[a11];
        double d11 = dArr[a22];
        double d12 = dArr[a33];
        double d13 = dArr[a13];
        double d14 = dArr[a21];
        double d15 = dArr[a32];
        double d16 = (d10 * d11 * d12) + (d13 * d14 * d15);
        double d17 = dArr[a12];
        double d18 = dArr[a23];
        double d19 = dArr[a31];
        return (((d16 + ((d17 * d18) * d19)) - ((d13 * d11) * d19)) - ((d10 * d18) * d15)) - ((d17 * d14) * d12);
    }

    public final void u() {
        this.f8977b = this.f8976a.j1();
        this.f8978c = this.f8976a.W0();
        int b12 = this.f8976a.b1();
        int y02 = this.f8976a.y0();
        this.f8979d = ByteBuffer.allocateDirect(this.f8977b * 12).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f8980e = ByteBuffer.allocateDirect(this.f8977b * 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f8981f = ByteBuffer.allocateDirect(this.f8977b * 12).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f8982g = ByteBuffer.allocateDirect(this.f8977b * 80).order(ByteOrder.nativeOrder()).asDoubleBuffer();
        this.f8983h = ByteBuffer.allocateDirect(this.f8977b * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.f8984i = ByteBuffer.allocateDirect(this.f8977b * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.f8985j = ByteBuffer.allocateDirect(this.f8977b).order(ByteOrder.nativeOrder());
        this.f8986k = ByteBuffer.allocateDirect(this.f8978c * 12).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.f8987l = ByteBuffer.allocateDirect(this.f8978c * 32).order(ByteOrder.nativeOrder()).asDoubleBuffer();
        this.f8988m = ByteBuffer.allocateDirect(this.f8978c).order(ByteOrder.nativeOrder());
        this.f8989n = ByteBuffer.allocateDirect(this.f8978c).order(ByteOrder.nativeOrder());
        this.f8990o = ByteBuffer.allocateDirect(this.f8978c * 12).order(ByteOrder.nativeOrder()).asFloatBuffer();
        int i10 = this.f8978c;
        this.f8993r = i10 * 3;
        this.f8991p = ByteBuffer.allocateDirect(i10 * 12).order(ByteOrder.nativeOrder()).asIntBuffer();
        this.f8992q = ByteBuffer.allocateDirect(this.f8993r * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        int i11 = 0;
        while (i11 < this.f8977b) {
            Vector3 g12 = this.f8976a.g1(i11);
            Vector2 Y02 = b12 > i11 ? this.f8976a.Y0(i11) : new Vector2();
            Vector3 v02 = y02 > i11 ? this.f8976a.v0(i11) : new Vector3();
            A(i11, g12.getX(), g12.getY(), g12.getZ());
            C(i11, Y02.getX(), Y02.getY());
            z(i11, v02.getX(), v02.getY(), v02.getZ());
            f(i11);
            this.f8983h.put(i11, 0);
            this.f8984i.put(i11, 0);
            this.f8985j.put(i11, (byte) 0);
            i11++;
        }
        for (int i12 = 0; i12 < this.f8978c; i12++) {
            com.itsmagic.engine.Engines.Engine.Vector.h I02 = this.f8976a.I0(i12);
            int J10 = I02.J();
            int K10 = I02.K();
            int L10 = I02.L();
            y(i12, 0, J10);
            y(i12, 1, K10);
            y(i12, 2, L10);
            int i13 = i12 * 4;
            this.f8987l.put(i13, 0.0d);
            this.f8987l.put(i13 + 1, 0.0d);
            this.f8987l.put(i13 + 2, 0.0d);
            this.f8987l.put(i13 + 3, 0.0d);
            this.f8988m.put(i12, (byte) 0);
            this.f8989n.put(i12, (byte) 0);
            w(i12, 0.0f, 0.0f, 0.0f);
        }
    }

    public final void v(int tid, byte val) {
        this.f8988m.put(tid, val);
    }

    public final void w(int tid, float nx, float ny, float nz) {
        int i10 = tid * 3;
        this.f8990o.put(i10, nx);
        this.f8990o.put(i10 + 1, ny);
        this.f8990o.put(i10 + 2, nz);
    }

    public final void x(int tid, a n10) {
        w(tid, n10.e(0), n10.e(1), n10.e(2));
    }

    public final void y(int tid, int corner, int vid) {
        this.f8986k.put((tid * 3) + corner, vid);
    }

    public final void z(int vid, float nx, float ny, float nz) {
        int i10 = vid * 3;
        this.f8981f.put(i10, nx);
        this.f8981f.put(i10 + 1, ny);
        this.f8981f.put(i10 + 2, nz);
    }

    public static class a {

        public final Vector3 f9002a;

        public a() {
            this.f9002a = new Vector3();
        }

        public a a(a p10) {
            this.f9002a.addLocal(p10.f9002a);
            return this;
        }

        public a b(a p10) {
            Vector3 vector3 = this.f9002a;
            vector3.set(vector3.cross(p10.f9002a));
            return this;
        }

        public a c(float s10) {
            this.f9002a.divLocal(s10);
            return this;
        }

        public double d(a p10) {
            return this.f9002a.dot(p10.f9002a);
        }

        public float e(int i10) {
            return this.f9002a.get(i10);
        }

        public a f() {
            this.f9002a.normalizeLocal();
            return this;
        }

        public void g(float value, int i10) {
            if (i10 == 0) {
                this.f9002a.setX(value);
            } else if (i10 == 1) {
                this.f9002a.setY(value);
            } else {
                if (i10 != 2) {
                    throw new IndexOutOfBoundsException();
                }
                this.f9002a.setZ(value);
            }
        }

        public void h(a p10) {
            this.f9002a.set(p10.f9002a);
        }

        public void i(long[] longs) {
            this.f9002a.setX((float) longs[0]);
            this.f9002a.setY((float) longs[1]);
            this.f9002a.setZ((float) longs[2]);
        }

        public a j(a p10) {
            this.f9002a.subLocal(p10.f9002a);
            return this;
        }

        public a(a other) {
            this.f9002a = new Vector3(other.f9002a);
        }

        public a(Vector3 src) {
            this.f9002a = new Vector3(src);
        }
    }
}
