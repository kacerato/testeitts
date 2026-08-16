package Ib;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.Iterator;
import java.util.Vector;
import t3.C15377a;
import vc.n;
import vc.p;
import vc.q;

public class f {

    public static boolean f8948f = false;

    public final Vertex f8952d;

    public final Vector<d> f8949a = new Vector<>();

    public final Vector<e> f8950b = new Vector<>();

    public final Vector<b> f8951c = new Vector<>();

    public final a f8953e = new a();

    public static class b {

        public int f8955a;

        public int f8956b;

        public b(int tid, int tvertex) {
            this.f8955a = tid;
            this.f8956b = tvertex;
        }
    }

    public static class d {

        public final int[] f8958a;

        public final double[] f8959b = new double[4];

        public boolean f8960c = false;

        public boolean f8961d = false;

        public final a f8962e = new a();

        public d(int a10, int b10, int c10) {
            this.f8958a = r0;
            int[] iArr = {a10, b10, c10};
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f8948f = false;
        }
    }

    public f(Vertex mesh) {
        this.f8952d = mesh;
    }

    public final double a(final int id_v1, final int id_v2, final a p_result) {
        c a10 = this.f8950b.get(id_v1).f8968f.a(this.f8950b.get(id_v2).f8968f);
        boolean z10 = this.f8950b.get(id_v1).f8969g & this.f8950b.get(id_v2).f8969g;
        double c10 = a10.c(0, 1, 2, 1, 4, 5, 2, 5, 7);
        if (c10 != 0.0d && !z10) {
            double d10 = (-1.0d) / c10;
            p_result.h((float) (a10.c(1, 2, 3, 4, 5, 6, 5, 7, 8) * d10), 0);
            p_result.h((float) ((1.0d / c10) * a10.c(0, 2, 3, 1, 5, 6, 2, 7, 8)), 1);
            p_result.h((float) (d10 * a10.c(0, 1, 3, 1, 4, 6, 2, 5, 8)), 2);
            return j(a10, p_result.f(0), p_result.f(1), p_result.f(2));
        }
        a aVar = this.f8950b.get(id_v1).f8963a;
        a aVar2 = this.f8950b.get(id_v2).f8963a;
        a d11 = aVar.b(aVar2).d(2.0f);
        double j10 = j(a10, aVar.f(0), aVar.f(1), aVar.f(2));
        double j11 = j(a10, aVar2.f(0), aVar2.f(1), aVar2.f(2));
        double j12 = j(a10, d11.f(0), d11.f(1), d11.f(2));
        double min = Math.min(j10, Math.min(j11, j12));
        if (j10 == min) {
            p_result.i(aVar);
        }
        if (j11 == min) {
            p_result.i(aVar2);
        }
        if (j12 == min) {
            p_result.i(d11);
        }
        return min;
    }

    public final void b() {
        Iterator<e> it = this.f8950b.iterator();
        while (it.hasNext()) {
            it.next().f8967e = 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f8949a.size(); i11++) {
            if (!this.f8949a.get(i11).f8960c) {
                d dVar = this.f8949a.get(i11);
                int i12 = i10 + 1;
                this.f8949a.set(i10, dVar);
                for (int i13 = 0; i13 < 3; i13++) {
                    this.f8950b.get(dVar.f8958a[i13]).f8967e = 1;
                }
                i10 = i12;
            }
        }
        this.f8949a.setSize(i10);
        Iterator<e> it2 = this.f8950b.iterator();
        int i14 = 0;
        while (it2.hasNext()) {
            e next = it2.next();
            if (next.f8967e != 0) {
                next.f8966d = i14;
                e eVar = this.f8950b.get(i14);
                eVar.f8963a.i(next.f8963a);
                eVar.f8964b.x0(next.f8964b);
                eVar.f8965c.set(next.f8965c);
                i14++;
            }
        }
        Iterator<d> it3 = this.f8949a.iterator();
        while (it3.hasNext()) {
            d next2 = it3.next();
            for (int i15 = 0; i15 < 3; i15++) {
                next2.f8958a[i15] = this.f8950b.get(next2.f8958a[i15]).f8966d;
            }
        }
        this.f8950b.setSize(i14);
    }

    public final Vertex c() {
        q qVar = new q(this.f8950b.size());
        p pVar = new p(this.f8950b.size());
        q qVar2 = new q(this.f8950b.size());
        qVar.r(0);
        pVar.l(0);
        qVar2.r(0);
        Iterator<e> it = this.f8950b.iterator();
        while (it.hasNext()) {
            e next = it.next();
            qVar.u(next.f8963a.f8954a);
            pVar.n(next.f8964b);
            qVar2.u(next.f8965c);
        }
        n nVar = new n(this.f8949a.size());
        nVar.k(0);
        Iterator<d> it2 = this.f8949a.iterator();
        while (it2.hasNext()) {
            d next2 = it2.next();
            nVar.m(new Point3(next2.f8958a[0], next2.f8958a[1], next2.f8958a[2]));
        }
        Vertex vertex = new Vertex();
        vertex.r2(qVar);
        vertex.n2(pVar);
        vertex.j2(nVar);
        vertex.Z1(qVar2);
        vertex.apply();
        vertex.d0();
        return vertex;
    }

    public final boolean d(final a p10, final int i12, final e v02, final Vector<Boolean> deleted) {
        for (int i10 = 0; i10 < v02.f8967e; i10++) {
            b bVar = this.f8951c.get(v02.f8966d + i10);
            d dVar = this.f8949a.get(bVar.f8955a);
            if (!dVar.f8960c) {
                int i11 = bVar.f8956b;
                int i13 = dVar.f8958a[(i11 + 1) % 3];
                int i14 = dVar.f8958a[(i11 + 2) % 3];
                if (i13 == i12 || i14 == i12) {
                    deleted.set(i10, Boolean.TRUE);
                } else {
                    a g10 = this.f8950b.get(i13).f8963a.k(p10).g();
                    a g11 = this.f8950b.get(i14).f8963a.k(p10).g();
                    if (Math.abs(g10.e(g11)) > 0.9999d) {
                        return true;
                    }
                    a g12 = new a(g10).c(g11).g();
                    deleted.set(i10, Boolean.FALSE);
                    if (g12.e(dVar.f8962e) < 0.2d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void e() {
        this.f8949a.clear();
        this.f8950b.clear();
        this.f8951c.clear();
        int j12 = this.f8952d.j1();
        int b12 = this.f8952d.b1();
        int y02 = this.f8952d.y0();
        int i10 = 0;
        while (i10 < j12) {
            this.f8950b.add(new e(this.f8952d.g1(i10), b12 > i10 ? this.f8952d.Y0(i10) : new Vector2(), y02 > i10 ? this.f8952d.v0(i10) : new Vector3()));
            i10++;
        }
        int W02 = this.f8952d.W0();
        int i11 = 0;
        for (int i12 = 0; i12 < W02; i12++) {
            com.itsmagic.engine.Engines.Engine.Vector.h I02 = this.f8952d.I0(i12);
            d dVar = new d(I02.J(), I02.K(), I02.L());
            this.f8949a.add(dVar);
            this.f8951c.add(new b(i11, dVar.f8958a[0]));
            this.f8951c.add(new b(i11, dVar.f8958a[1]));
            this.f8951c.add(new b(i11, dVar.f8958a[2]));
            i11++;
        }
    }

    public Vertex f(float target_percent, double agressiveness) {
        return g((int) (this.f8952d.W0() * target_percent), agressiveness);
    }

    public final Vertex g(int target_count, double agressiveness) {
        boolean z10;
        long j10;
        int i10;
        double d10;
        d dVar;
        int i11 = 3;
        long j11 = 0;
        e();
        if (f8948f) {
            System.out.println(String.format("Simplify Target: %d of %d (%d%%)", Integer.valueOf(target_count), Integer.valueOf(this.f8949a.size()), Integer.valueOf((target_count * 100) / this.f8949a.size())));
            j11 = System.currentTimeMillis();
        }
        Iterator<d> it = this.f8949a.iterator();
        while (true) {
            z10 = false;
            if (!it.hasNext()) {
                break;
            }
            it.next().f8960c = false;
        }
        Vector<Boolean> vector = new Vector<>();
        Vector<Boolean> vector2 = new Vector<>();
        int size = this.f8949a.size();
        this.f8953e.j(new long[]{0, 0, 0});
        int i12 = 0;
        int i13 = 0;
        while (i12 < 1000 && size - i13 > target_count) {
            if (i12 % 5 == 0) {
                h(i12);
            }
            Iterator<d> it2 = this.f8949a.iterator();
            while (it2.hasNext()) {
                it2.next().f8961d = z10;
            }
            double pow = Math.pow(i12 + 3.0d, agressiveness) * 1.0E-9d;
            int size2 = this.f8949a.size() - 1;
            while (true) {
                if (size2 < 0) {
                    j10 = j11;
                    i10 = i11;
                    break;
                }
                d dVar2 = this.f8949a.get(size2);
                if (dVar2.f8959b[i11] > pow || dVar2.f8960c || dVar2.f8961d) {
                    j10 = j11;
                    d10 = pow;
                    i10 = i11;
                } else {
                    int i14 = 0;
                    while (true) {
                        if (i14 >= i11) {
                            j10 = j11;
                            d10 = pow;
                            i10 = i11;
                            break;
                        }
                        if (dVar2.f8959b[i14] < pow) {
                            int i15 = dVar2.f8958a[i14];
                            int i16 = dVar2.f8958a[(i14 + 1) % 3];
                            dVar = dVar2;
                            e eVar = this.f8950b.get(i15);
                            d10 = pow;
                            e eVar2 = this.f8950b.get(i16);
                            if (!eVar.f8969g && !eVar2.f8969g) {
                                j10 = j11;
                                i10 = 3;
                                this.f8953e.j(new long[]{0, 0, 0});
                                a(i15, i16, this.f8953e);
                                vector.setSize(eVar.f8967e);
                                vector2.setSize(eVar2.f8967e);
                                if (!d(this.f8953e, i16, eVar, vector) && !d(this.f8953e, i15, eVar2, vector2)) {
                                    eVar.f8963a.i(this.f8953e);
                                    eVar.f8968f.b(eVar2.f8968f);
                                    int size3 = this.f8951c.size();
                                    i13 = i13 + i(i15, eVar, vector) + i(i15, eVar2, vector2);
                                    int size4 = this.f8951c.size() - size3;
                                    eVar.f8966d = size3;
                                    eVar.f8967e = size4;
                                    break;
                                }
                            } else {
                                j10 = j11;
                                i10 = 3;
                            }
                        } else {
                            j10 = j11;
                            dVar = dVar2;
                            d10 = pow;
                            i10 = i11;
                        }
                        i14++;
                        i11 = i10;
                        dVar2 = dVar;
                        pow = d10;
                        j11 = j10;
                    }
                    if (size - i13 <= target_count) {
                        break;
                    }
                }
                size2--;
                i11 = i10;
                pow = d10;
                j11 = j10;
            }
            i12++;
            i11 = i10;
            j11 = j10;
            z10 = false;
        }
        long j12 = j11;
        b();
        if (f8948f) {
            System.out.println(String.format("Simplify: %d/%d %d%% removed in %d ms", Integer.valueOf(size - i13), Integer.valueOf(size), Integer.valueOf((i13 * 100) / size), Long.valueOf(System.currentTimeMillis() - j12)));
        }
        return c();
    }

    public final void h(final int iteration) {
        int i10 = 3;
        int i11 = 1;
        int i12 = 0;
        if (iteration > 0) {
            int i13 = 0;
            for (int i14 = 0; i14 < this.f8949a.size(); i14++) {
                if (!this.f8949a.get(i14).f8960c) {
                    Vector<d> vector = this.f8949a;
                    vector.set(i13, vector.get(i14));
                    i13++;
                }
            }
            this.f8949a.setSize(i13);
        }
        int i15 = 2;
        if (iteration == 0) {
            Iterator<e> it = this.f8950b.iterator();
            while (it.hasNext()) {
                it.next().f8968f.e(new c(0.0d));
            }
            Iterator<d> it2 = this.f8949a.iterator();
            while (it2.hasNext()) {
                d next = it2.next();
                a[] aVarArr = {this.f8950b.get(next.f8958a[i12]).f8963a, this.f8950b.get(next.f8958a[i11]).f8963a, this.f8950b.get(next.f8958a[i15]).f8963a};
                a g10 = aVarArr[i11].k(aVarArr[i12]).c(aVarArr[i15].k(aVarArr[i12])).g();
                next.f8962e.i(g10);
                int i16 = i12;
                while (i16 < i10) {
                    this.f8950b.get(next.f8958a[i16]).f8968f.e(this.f8950b.get(next.f8958a[i16]).f8968f.a(new c(g10.f(i12), g10.f(i11), g10.f(i15), -g10.e(aVarArr[i12]))));
                    i16++;
                    i11 = 1;
                    it2 = it2;
                    i10 = 3;
                    i12 = 0;
                    i15 = 2;
                }
            }
            int i17 = 3;
            this.f8953e.j(new long[]{0, 0, 0});
            Iterator<d> it3 = this.f8949a.iterator();
            while (it3.hasNext()) {
                d next2 = it3.next();
                int i18 = 0;
                while (i18 < i17) {
                    int i19 = i18 + 1;
                    next2.f8959b[i18] = a(next2.f8958a[i18], next2.f8958a[i19 % 3], this.f8953e);
                    i18 = i19;
                    i17 = 3;
                }
                next2.f8959b[3] = Math.min(next2.f8959b[0], Math.min(next2.f8959b[1], next2.f8959b[2]));
                i17 = 3;
            }
        }
        Iterator<e> it4 = this.f8950b.iterator();
        while (it4.hasNext()) {
            e next3 = it4.next();
            next3.f8966d = 0;
            next3.f8967e = 0;
        }
        char c10 = 0;
        Iterator<d> it5 = this.f8949a.iterator();
        while (it5.hasNext()) {
            d next4 = it5.next();
            e.g(this.f8950b.get(next4.f8958a[c10]));
            e.g(this.f8950b.get(next4.f8958a[1]));
            e.g(this.f8950b.get(next4.f8958a[2]));
            c10 = 0;
        }
        Iterator<e> it6 = this.f8950b.iterator();
        int i20 = 0;
        while (it6.hasNext()) {
            e next5 = it6.next();
            next5.f8966d = i20;
            i20 += next5.f8967e;
            next5.f8967e = 0;
        }
        int i21 = 3;
        this.f8951c.setSize(this.f8949a.size() * 3);
        int i22 = 0;
        while (i22 < this.f8949a.size()) {
            d dVar = this.f8949a.get(i22);
            int i23 = 0;
            while (i23 < i21) {
                e eVar = this.f8950b.get(dVar.f8958a[i23]);
                this.f8951c.get(eVar.f8966d + eVar.f8967e).f8955a = i22;
                this.f8951c.get(eVar.f8966d + eVar.f8967e).f8956b = i23;
                e.g(eVar);
                i23++;
                i21 = 3;
            }
            i22++;
            i21 = 3;
        }
        if (iteration == 0) {
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            Iterator<e> it7 = this.f8950b.iterator();
            while (it7.hasNext()) {
                it7.next().f8969g = false;
            }
            Iterator<e> it8 = this.f8950b.iterator();
            while (it8.hasNext()) {
                e next6 = it8.next();
                vector2.clear();
                vector3.clear();
                for (int i24 = 0; i24 < next6.f8967e; i24++) {
                    d dVar2 = this.f8949a.get(this.f8951c.get(next6.f8966d + i24).f8955a);
                    for (int i25 = 0; i25 < 3; i25++) {
                        int i26 = dVar2.f8958a[i25];
                        int i27 = 0;
                        while (i27 < vector2.size() && ((Integer) vector3.get(i27)).intValue() != i26) {
                            i27++;
                        }
                        if (i27 == vector2.size()) {
                            vector2.add(1);
                            vector3.add(Integer.valueOf(i26));
                        } else {
                            vector2.set(i27, Integer.valueOf(((Integer) vector2.get(i27)).intValue() + 1));
                        }
                    }
                }
                for (int i28 = 0; i28 < vector2.size(); i28++) {
                    if (((Integer) vector2.get(i28)).intValue() == 1) {
                        this.f8950b.get(((Integer) vector3.get(i28)).intValue()).f8969g = true;
                    }
                }
            }
        }
    }

    public final int i(final int i02, final e v10, final Vector<Boolean> deleted) {
        char c10;
        char c11 = 3;
        this.f8953e.j(new long[]{0, 0, 0});
        char c12 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10.f8967e) {
            b bVar = this.f8951c.get(v10.f8966d + i10);
            d dVar = this.f8949a.get(bVar.f8955a);
            if (!dVar.f8960c) {
                if (deleted.get(i10).booleanValue()) {
                    dVar.f8960c = true;
                    i11++;
                } else {
                    dVar.f8958a[bVar.f8956b] = i02;
                    dVar.f8961d = true;
                    dVar.f8959b[c12] = a(dVar.f8958a[c12], dVar.f8958a[1], this.f8953e);
                    dVar.f8959b[1] = a(dVar.f8958a[1], dVar.f8958a[2], this.f8953e);
                    dVar.f8959b[2] = a(dVar.f8958a[2], dVar.f8958a[c12], this.f8953e);
                    double[] dArr = dVar.f8959b;
                    double min = Math.min(dVar.f8959b[c12], Math.min(dVar.f8959b[1], dVar.f8959b[2]));
                    c10 = 3;
                    dArr[3] = min;
                    this.f8951c.add(bVar);
                    i10++;
                    c11 = c10;
                    c12 = 0;
                }
            }
            c10 = c11;
            i10++;
            c11 = c10;
            c12 = 0;
        }
        return i11;
    }

    public final double j(final c q10, final double x10, final double y10, final double z10) {
        return (q10.d(0) * x10 * x10) + (q10.d(1) * 2.0d * x10 * y10) + (q10.d(2) * 2.0d * x10 * z10) + (q10.d(3) * 2.0d * x10) + (q10.d(4) * y10 * y10) + (q10.d(5) * 2.0d * y10 * z10) + (q10.d(6) * 2.0d * y10) + (q10.d(7) * z10 * z10) + (q10.d(8) * 2.0d * z10) + q10.d(9);
    }

    public static class a {

        public Vector3 f8954a;

        public a() {
            this.f8954a = new Vector3();
        }

        public a b(a p10) {
            return new a(this.f8954a.add(p10.f8954a));
        }

        public a c(a p10) {
            Vector3 vector3 = this.f8954a;
            vector3.set(vector3.cross(p10.f8954a));
            return this;
        }

        public a d(float v10) {
            return new a(this.f8954a.div(v10));
        }

        public double e(a p10) {
            return this.f8954a.dot(p10.f8954a);
        }

        public float f(int i10) {
            return this.f8954a.get(i10);
        }

        public a g() {
            this.f8954a.normalizeLocal();
            return this;
        }

        public void h(float v10, int i10) {
            if (i10 == 0) {
                this.f8954a.setX(v10);
            } else if (i10 == 1) {
                this.f8954a.setY(v10);
            } else {
                if (i10 != 2) {
                    throw new IndexOutOfBoundsException();
                }
                this.f8954a.setZ(v10);
            }
        }

        public void i(a p12) {
            this.f8954a.set(p12.f8954a);
        }

        public void j(long[] longs) {
            this.f8954a.setX((float) longs[0]);
            this.f8954a.setY((float) longs[1]);
            this.f8954a.setZ((float) longs[2]);
        }

        public a k(a p10) {
            return new a(this.f8954a.sub(p10.f8954a));
        }

        public a(a d12) {
            this.f8954a = new Vector3(d12.f8954a);
        }

        public a(Vector3 d12) {
            this.f8954a = new Vector3(d12);
        }
    }

    public static class c {

        public final double[] f8957a;

        public c(double c10) {
            this.f8957a = new double[10];
            for (int i10 = 0; i10 < 10; i10++) {
                this.f8957a[i10] = c10;
            }
        }

        public final c a(final c n10) {
            return new c(n10.d(0) + this.f8957a[0], n10.d(1) + this.f8957a[1], n10.d(2) + this.f8957a[2], n10.d(3) + this.f8957a[3], n10.d(4) + this.f8957a[4], n10.d(5) + this.f8957a[5], this.f8957a[6] + n10.d(6), this.f8957a[7] + n10.d(7), this.f8957a[8] + n10.d(8), this.f8957a[9] + n10.d(9));
        }

        public void b(final c n10) {
            double[] dArr = this.f8957a;
            dArr[0] = dArr[0] + n10.d(0);
            double[] dArr2 = this.f8957a;
            dArr2[1] = dArr2[1] + n10.d(1);
            double[] dArr3 = this.f8957a;
            dArr3[2] = dArr3[2] + n10.d(2);
            double[] dArr4 = this.f8957a;
            dArr4[3] = dArr4[3] + n10.d(3);
            double[] dArr5 = this.f8957a;
            dArr5[4] = dArr5[4] + n10.d(4);
            double[] dArr6 = this.f8957a;
            dArr6[5] = dArr6[5] + n10.d(5);
            double[] dArr7 = this.f8957a;
            dArr7[6] = dArr7[6] + n10.d(6);
            double[] dArr8 = this.f8957a;
            dArr8[7] = dArr8[7] + n10.d(7);
            double[] dArr9 = this.f8957a;
            dArr9[8] = dArr9[8] + n10.d(8);
            double[] dArr10 = this.f8957a;
            dArr10[9] = dArr10[9] + n10.d(9);
        }

        public final double c(int a11, int a12, int a13, int a21, int a22, int a23, int a31, int a32, int a33) {
            double[] dArr = this.f8957a;
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

        public final double d(int c10) {
            return this.f8957a[c10];
        }

        public void e(c s10) {
            double[] dArr = s10.f8957a;
            double[] dArr2 = this.f8957a;
            System.arraycopy(dArr, 0, dArr2, 0, dArr2.length);
        }

        public c(double m11, double m12, double m13, double m14, double m22, double m23, double m24, double m33, double m34, double m44) {
            this.f8957a = r0;
            double[] dArr = {m11, m12, m13, m14, m22, m23, m24, m33, m34, m44};
        }

        public c(double a10, double b10, double c10, double d10) {
            this.f8957a = r0;
            double[] dArr = {a10 * a10, a10 * b10, a10 * c10, a10 * d10, b10 * b10, b10 * c10, b10 * d10, c10 * c10, c10 * d10, d10 * d10};
        }
    }

    public static class e {

        public final a f8963a;

        public final Vector2 f8964b;

        public final Vector3 f8965c;

        public int f8966d;

        public int f8967e;

        public final c f8968f = new c(0.0d);

        public boolean f8969g;

        public e(a p10, Vector2 uv, Vector3 normal) {
            this.f8963a = new a(p10);
            this.f8964b = uv;
            this.f8965c = normal;
        }

        public static int g(e eVar) {
            int i10 = eVar.f8967e;
            eVar.f8967e = i10 + 1;
            return i10;
        }

        public e(Vector3 vector3, Vector2 uv, Vector3 normal) {
            this.f8963a = new a(vector3);
            this.f8964b = uv;
            this.f8965c = normal;
        }
    }
}
