package jn;

import com.itsmagic.engine.Engines.Engine.NavMesh.TilesLimitReachedException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;

public class C13904v {

    public static int f94328l = 16;

    public static int f94329m = 28;

    public static int f94330n = 20;

    public static final int f94331o = 1;

    public static final int f94332p = 32768;

    public static final int f94333q = -1;

    public static final int f94334r = 1;

    public static final int f94335s = 64;

    public static float f94336t = 50.0f;

    public final y f94337a;

    public final float[] f94338b;

    public float f94339c;

    public float f94340d;

    public int f94341e;

    public final int f94342f;

    public final Map<Integer, List<C13901s>> f94343g;

    public final LinkedList<C13901s> f94344h;

    public final C13901s[] f94345i;

    public final int f94346j;

    public int f94347k;

    public C13904v(C13900q data, int maxVertsPerPoly, int flags) {
        this(z(data), maxVertsPerPoly);
        c(data, flags, 0L);
    }

    public static float H(float[] verts, int va2, int side) {
        if (side == 0 || side == 4) {
            return verts[va2];
        }
        if (side == 2 || side == 6) {
            return verts[va2 + 2];
        }
        return 0.0f;
    }

    public static List T(Integer num) {
        return new ArrayList();
    }

    public static void g(float[] verts, int va2, int vb2, float[] bmin, float[] bmax, int side) {
        if (side == 0 || side == 4) {
            int i10 = va2 + 2;
            float f10 = verts[i10];
            int i11 = vb2 + 2;
            float f11 = verts[i11];
            if (f10 < f11) {
                bmin[0] = f10;
                bmin[1] = verts[va2 + 1];
                bmax[0] = verts[i11];
                bmax[1] = verts[vb2 + 1];
                return;
            }
            bmin[0] = f11;
            bmin[1] = verts[vb2 + 1];
            bmax[0] = verts[i10];
            bmax[1] = verts[va2 + 1];
            return;
        }
        if (side == 2 || side == 6) {
            float f12 = verts[va2];
            float f13 = verts[vb2];
            if (f12 < f13) {
                bmin[0] = f12;
                bmin[1] = verts[va2 + 1];
                bmax[0] = verts[vb2];
                bmax[1] = verts[vb2 + 1];
                return;
            }
            bmin[0] = f13;
            bmin[1] = verts[vb2 + 1];
            bmax[0] = verts[va2];
            bmax[1] = verts[va2 + 1];
        }
    }

    public static int k(int x10, int y10, int mask) {
        return ((x10 * (-1918454973)) + (y10 * (-669632447))) & mask;
    }

    public static int[] o(long ref) {
        long j10 = (1 << f94328l) - 1;
        int i10 = f94329m;
        long j11 = (1 << i10) - 1;
        int i11 = f94330n;
        return new int[]{(int) ((ref >> (i10 + i11)) & j10), (int) ((ref >> i11) & j11), (int) (ref & ((1 << i11) - 1))};
    }

    public static int p(long ref) {
        return (int) (ref & ((1 << f94330n) - 1));
    }

    public static int q(long ref) {
        return (int) ((ref >> (f94330n + f94329m)) & ((1 << f94328l) - 1));
    }

    public static int r(long ref) {
        return (int) ((ref >> f94330n) & ((1 << f94329m) - 1));
    }

    public static long s(int salt, int it, int ip) {
        long j10 = salt;
        int i10 = f94330n;
        return (it << i10) | (j10 << (f94329m + i10)) | ip;
    }

    public static int w(int triFlags, int edgeIndex) {
        return (triFlags >> (edgeIndex * 2)) & 3;
    }

    public static y z(C13900q data) {
        y yVar = new y();
        C13890g.w(yVar.f94387a, data.f94282a.f94316s);
        r rVar = data.f94282a;
        float[] fArr = rVar.f94317t;
        float f10 = fArr[0];
        float[] fArr2 = rVar.f94316s;
        yVar.f94388b = f10 - fArr2[0];
        yVar.f94389c = fArr[2] - fArr2[2];
        yVar.f94390d = 1;
        yVar.f94391e = rVar.f94304g;
        return yVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public List<C13901s> A(int x10, int y10, int side) {
        switch (side) {
            case 0:
                x10++;
                break;
            case 1:
                x10++;
                y10++;
                break;
            case 2:
                y10++;
                break;
            case 3:
                x10--;
                y10++;
                break;
            case 4:
                x10--;
                break;
            case 5:
                x10--;
                y10--;
                break;
            case 6:
                y10--;
                break;
            case 7:
                x10++;
                y10--;
                break;
        }
        return R(x10, y10);
    }

    public O<U<float[], float[]>> B(long prevRef, long polyRef) {
        C13900q c13900q;
        r rVar;
        if (polyRef == 0) {
            return O.f("polyRef = 0");
        }
        int[] o10 = o(polyRef);
        char c10 = 0;
        int i10 = o10[0];
        char c11 = 1;
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return O.f("Invalid tile ID > max tiles");
        }
        C13901s c13901s = this.f94345i[i11];
        if (c13901s.f94320b != i10 || (rVar = (c13900q = c13901s.f94321c).f94282a) == null) {
            return O.f("Invalid salt or missing tile header");
        }
        if (i12 >= rVar.f94304g) {
            return O.f("Invalid poly ID > poly count");
        }
        G g10 = c13900q.f94284c[i12];
        if (g10.b() != 1) {
            return O.f("Invalid poly type");
        }
        int i13 = c13901s.f94322d[g10.f94176a];
        while (true) {
            if (i13 == -1) {
                break;
            }
            if (c13901s.f94323e.get(i13).f94278c != 0) {
                i13 = c13901s.f94323e.get(i13).f94277b;
            } else if (c13901s.f94323e.get(i13).f94276a != prevRef) {
                c11 = 0;
                c10 = 1;
            }
        }
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        C13890g.x(fArr, c13901s.f94321c.f94283b, g10.f94177b[c10] * 3);
        C13890g.x(fArr2, c13901s.f94321c.f94283b, g10.f94177b[c11] * 3);
        return O.k(new U(fArr, fArr2));
    }

    public y C() {
        return this.f94337a;
    }

    public O<Integer> D(long ref) {
        C13900q c13900q;
        r rVar;
        if (ref == 0) {
            return O.b();
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return O.e();
        }
        C13901s c13901s = this.f94345i[i11];
        return (c13901s.f94320b != i10 || (c13900q = c13901s.f94321c) == null || (rVar = c13900q.f94282a) == null) ? O.e() : i12 >= rVar.f94304g ? O.e() : O.k(Integer.valueOf(c13900q.f94284c[i12].a()));
    }

    public O<Integer> E(long ref) {
        C13900q c13900q;
        r rVar;
        if (ref == 0) {
            return O.b();
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return O.e();
        }
        C13901s c13901s = this.f94345i[i11];
        return (c13901s.f94320b != i10 || (c13900q = c13901s.f94321c) == null || (rVar = c13900q.f94282a) == null) ? O.e() : i12 >= rVar.f94304g ? O.e() : O.k(Integer.valueOf(c13900q.f94284c[i12].f94179d));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v5 */
    public Optional<Float> F(C13901s c13901s, G g10, float[] fArr) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (g10.b() == 1) {
            return Optional.empty();
        }
        int i10 = g10.f94176a;
        float[] fArr2 = new float[this.f94346j * 3];
        int i11 = g10.f94180e;
        for (int i12 = 0; i12 < i11; i12++) {
            System.arraycopy(c13901s.f94321c.f94283b, g10.f94177b[i12] * 3, fArr2, i12 * 3, 3);
        }
        if (!C13890g.p(fArr, fArr2, i11)) {
            return Optional.empty();
        }
        H[] hArr = c13901s.f94321c.f94285d;
        if (hArr != null) {
            H h10 = hArr[i10];
            int i13 = 0;
            while (i13 < h10.f94185d) {
                int i14 = (h10.f94183b + i13) * 4;
                float[][] fArr3 = new float[3];
                int i15 = z12 ? 1 : 0;
                char c10 = z12;
                while (i15 < 3) {
                    C13900q c13900q = c13901s.f94321c;
                    int i16 = c13900q.f94287f[i14 + i15];
                    int i17 = g10.f94180e;
                    if (i16 < i17) {
                        int i18 = g10.f94177b[i16] * 3;
                        float[] fArr4 = c13900q.f94283b;
                        float f10 = fArr4[i18];
                        float f11 = fArr4[i18 + 1];
                        float f12 = fArr4[i18 + 2];
                        float[] fArr5 = new float[3];
                        fArr5[c10] = f10;
                        fArr5[1] = f11;
                        fArr5[2] = f12;
                        fArr3[i15] = fArr5;
                        z11 = c10;
                    } else {
                        int i19 = (h10.f94182a + (i16 - i17)) * 3;
                        float[] fArr6 = c13900q.f94286e;
                        float f13 = fArr6[i19];
                        float f14 = fArr6[i19 + 1];
                        float f15 = fArr6[i19 + 2];
                        float[] fArr7 = new float[3];
                        z11 = false;
                        fArr7[0] = f13;
                        fArr7[1] = f14;
                        fArr7[2] = f15;
                        fArr3[i15] = fArr7;
                    }
                    i15++;
                    c10 = z11;
                }
                Optional<Float> c11 = C13890g.c(fArr, fArr3[c10], fArr3[1], fArr3[2]);
                if (c11.isPresent()) {
                    return c11;
                }
                i13++;
                z12 = false;
            }
            z10 = z12 ? 1 : 0;
        } else {
            float[][] fArr8 = (float[][]) Array.newInstance(Float.TYPE, 3, 3);
            float[] fArr9 = fArr8[0];
            float[] fArr10 = c13901s.f94321c.f94283b;
            int i20 = g10.f94177b[0];
            fArr9[0] = fArr10[i20 * 3];
            fArr9[1] = fArr10[(i20 * 3) + 1];
            fArr9[2] = fArr10[(i20 * 3) + 2];
            for (int i21 = 1; i21 < g10.f94180e - 1; i21++) {
                int i22 = 0;
                while (i22 < 2) {
                    int i23 = i22 + 1;
                    float[] fArr11 = fArr8[i23];
                    float[] fArr12 = c13901s.f94321c.f94283b;
                    int i24 = g10.f94177b[i22 + i21];
                    fArr11[0] = fArr12[i24 * 3];
                    fArr11[1] = fArr12[(i24 * 3) + 1];
                    fArr11[2] = fArr12[(i24 * 3) + 2];
                    i22 = i23;
                }
                Optional<Float> c12 = C13890g.c(fArr, fArr8[0], fArr8[1], fArr8[2]);
                if (c12.isPresent()) {
                    return c12;
                }
            }
            z10 = false;
        }
        return Optional.of(Float.valueOf(i(c13901s, g10, fArr, z10)[1]));
    }

    public long G(C13901s tile) {
        if (tile == null) {
            return 0L;
        }
        return s(tile.f94320b, tile.f94319a, 0);
    }

    public C13901s I(int i10) {
        return this.f94345i[i10];
    }

    public O<U<C13901s, G>> J(long ref) {
        C13900q c13900q;
        r rVar;
        if (ref == 0) {
            return O.f("ref = 0");
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return O.f("tile > m_maxTiles");
        }
        C13901s c13901s = this.f94345i[i11];
        return (c13901s.f94320b != i10 || (rVar = (c13900q = c13901s.f94321c).f94282a) == null) ? O.f("Invalid salt or header") : i12 >= rVar.f94304g ? O.f("poly > polyCount") : O.k(new U(c13901s, c13900q.f94284c[i12]));
    }

    public U<C13901s, G> K(long ref) {
        int[] o10 = o(ref);
        int i10 = o10[1];
        int i11 = o10[2];
        C13901s c13901s = this.f94345i[i10];
        return new U<>(c13901s, c13901s.f94321c.f94284c[i11]);
    }

    public C13901s L(int x10, int y10, int layer) {
        for (C13901s c13901s : O(x10, y10)) {
            r rVar = c13901s.f94321c.f94282a;
            if (rVar != null && rVar.f94300c == x10 && rVar.f94301d == y10 && rVar.f94302e == layer) {
                return c13901s;
            }
        }
        return null;
    }

    public C13901s M(long ref) {
        if (ref == 0) {
            return null;
        }
        int r10 = r(ref);
        int q10 = q(ref);
        if (r10 >= this.f94341e) {
            return null;
        }
        C13901s c13901s = this.f94345i[r10];
        if (c13901s.f94320b != q10) {
            return null;
        }
        return c13901s;
    }

    public int N() {
        return this.f94347k;
    }

    public final List<C13901s> O(int x10, int z10) {
        return this.f94343g.computeIfAbsent(Integer.valueOf(k(x10, z10, this.f94342f)), new Function() {
            @Override
            public final Object apply(Object obj) {
                List T10;
                T10 = C13904v.T((Integer) obj);
                return T10;
            }
        });
    }

    public long P(C13901s tile) {
        if (tile == null) {
            return 0L;
        }
        return s(tile.f94320b, tile.f94319a, 0);
    }

    public long Q(int x10, int y10, int layer) {
        return P(L(x10, y10, layer));
    }

    public List<C13901s> R(int x10, int y10) {
        ArrayList arrayList = new ArrayList();
        for (C13901s c13901s : O(x10, y10)) {
            r rVar = c13901s.f94321c.f94282a;
            if (rVar != null && rVar.f94300c == x10 && rVar.f94301d == y10) {
                arrayList.add(c13901s);
            }
        }
        return arrayList;
    }

    public boolean S(long ref) {
        C13900q c13900q;
        if (ref == 0) {
            return false;
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return false;
        }
        C13901s c13901s = this.f94345i[i11];
        return c13901s.f94320b == i10 && (c13900q = c13901s.f94321c) != null && i12 < c13900q.f94282a.f94304g;
    }

    public boolean U(float[] amin, float[] amax, float[] bmin, float[] bmax, float px, float py) {
        float max = Math.max(amin[0] + px, bmin[0] + px);
        float min = Math.min(amax[0] - px, bmax[0] - px);
        if (max > min) {
            return false;
        }
        float f10 = amax[1];
        float f11 = amin[1];
        float f12 = amax[0];
        float f13 = amin[0];
        float f14 = (f10 - f11) / (f12 - f13);
        float f15 = f11 - (f13 * f14);
        float f16 = bmax[1];
        float f17 = bmin[1];
        float f18 = bmax[0];
        float f19 = bmin[0];
        float f20 = (f16 - f17) / (f18 - f19);
        float f21 = f17 - (f19 * f20);
        float f22 = (f14 * max) + f15;
        float f23 = ((max * f20) + f21) - f22;
        float f24 = ((f20 * min) + f21) - ((f14 * min) + f15);
        if (f23 * f24 < 0.0f) {
            return true;
        }
        float f25 = py * 2.0f;
        float f26 = f25 * f25;
        return f23 * f23 <= f26 || f24 * f24 <= f26;
    }

    public List<Long> V(C13901s tile, float[] qmin, float[] qmax) {
        ArrayList arrayList = new ArrayList();
        C13900q c13900q = tile.f94321c;
        if (c13900q.f94288g != null) {
            r rVar = c13900q.f94282a;
            float[] fArr = rVar.f94316s;
            float[] fArr2 = rVar.f94317t;
            float f10 = rVar.f94318u;
            int[] iArr = {((int) ((C13890g.a(qmin[0], fArr[0], fArr2[0]) - fArr[0]) * f10)) & 2147483646, ((int) ((C13890g.a(qmin[1], fArr[1], fArr2[1]) - fArr[1]) * f10)) & 2147483646, ((int) ((C13890g.a(qmin[2], fArr[2], fArr2[2]) - fArr[2]) * f10)) & 2147483646};
            int[] iArr2 = {((int) (((C13890g.a(qmax[0], fArr[0], fArr2[0]) - fArr[0]) * f10) + 1.0f)) | 1, ((int) (((C13890g.a(qmax[1], fArr[1], fArr2[1]) - fArr[1]) * f10) + 1.0f)) | 1, ((int) ((f10 * (C13890g.a(qmax[2], fArr[2], fArr2[2]) - fArr[2])) + 1.0f)) | 1};
            long G10 = G(tile);
            int i10 = tile.f94321c.f94282a.f94310m;
            int i11 = 0;
            while (i11 < i10) {
                C13884a c13884a = tile.f94321c.f94288g[i11];
                boolean n10 = C13890g.n(iArr, iArr2, c13884a.f94236a, c13884a.f94237b);
                int i12 = c13884a.f94238c;
                boolean z10 = i12 >= 0;
                if (z10 && n10) {
                    arrayList.add(Long.valueOf(i12 | G10));
                }
                i11 = (n10 || z10) ? i11 + 1 : i11 + (-c13884a.f94238c);
            }
            return arrayList;
        }
        float[] fArr3 = new float[3];
        float[] fArr4 = new float[3];
        long G11 = G(tile);
        int i13 = 0;
        while (true) {
            C13900q c13900q2 = tile.f94321c;
            if (i13 >= c13900q2.f94282a.f94304g) {
                return arrayList;
            }
            G g10 = c13900q2.f94284c[i13];
            if (g10.b() != 1) {
                int i14 = g10.f94177b[0] * 3;
                C13890g.x(fArr3, tile.f94321c.f94283b, i14);
                C13890g.x(fArr4, tile.f94321c.f94283b, i14);
                for (int i15 = 1; i15 < g10.f94180e; i15++) {
                    int i16 = g10.f94177b[i15] * 3;
                    C13890g.Q(fArr3, tile.f94321c.f94283b, i16);
                    C13890g.P(fArr4, tile.f94321c.f94283b, i16);
                }
                if (C13890g.l(qmin, qmax, fArr3, fArr4)) {
                    arrayList.add(Long.valueOf(i13 | G11));
                }
            }
            i13++;
        }
    }

    public long W(long ref) {
        if (ref == 0) {
            return 0L;
        }
        int r10 = r(ref);
        int q10 = q(ref);
        if (r10 >= this.f94341e) {
            throw new RuntimeException("Invalid tile index");
        }
        C13901s c13901s = this.f94345i[r10];
        if (c13901s.f94320b != q10) {
            throw new RuntimeException("Invalid tile salt");
        }
        r rVar = c13901s.f94321c.f94282a;
        O(rVar.f94300c, rVar.f94301d).remove(c13901s);
        r rVar2 = c13901s.f94321c.f94282a;
        for (C13901s c13901s2 : R(rVar2.f94300c, rVar2.f94301d)) {
            if (c13901s2 != c13901s) {
                a0(c13901s2, c13901s);
            }
        }
        for (int i10 = 0; i10 < 8; i10++) {
            r rVar3 = c13901s.f94321c.f94282a;
            Iterator<C13901s> it = A(rVar3.f94300c, rVar3.f94301d, i10).iterator();
            while (it.hasNext()) {
                a0(it.next(), c13901s);
            }
        }
        c13901s.f94321c = null;
        c13901s.f94325g = 0;
        c13901s.f94323e.clear();
        c13901s.f94324f = -1;
        int i11 = (c13901s.f94320b + 1) & ((1 << f94328l) - 1);
        c13901s.f94320b = i11;
        if (i11 == 0) {
            c13901s.f94320b = i11 + 1;
        }
        this.f94344h.addFirst(c13901s);
        this.f94347k--;
        return P(c13901s);
    }

    public long X(C13900q data) {
        r rVar = data.f94282a;
        return W(Q(rVar.f94300c, rVar.f94301d, rVar.f94302e));
    }

    public Q Y(long ref, char area) {
        C13900q c13900q;
        r rVar;
        if (ref == 0) {
            return Q.FAILURE;
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return Q.FAILURE;
        }
        C13901s c13901s = this.f94345i[i11];
        if (c13901s.f94320b != i10 || (c13900q = c13901s.f94321c) == null || (rVar = c13900q.f94282a) == null) {
            return Q.FAILURE_INVALID_PARAM;
        }
        if (i12 >= rVar.f94304g) {
            return Q.FAILURE_INVALID_PARAM;
        }
        c13900q.f94284c[i12].c(area);
        return Q.SUCCSESS;
    }

    public Q Z(long ref, int flags) {
        C13900q c13900q;
        r rVar;
        if (ref == 0) {
            return Q.FAILURE;
        }
        int[] o10 = o(ref);
        int i10 = o10[0];
        int i11 = o10[1];
        int i12 = o10[2];
        if (i11 >= this.f94341e) {
            return Q.FAILURE_INVALID_PARAM;
        }
        C13901s c13901s = this.f94345i[i11];
        if (c13901s.f94320b != i10 || (c13900q = c13901s.f94321c) == null || (rVar = c13900q.f94282a) == null) {
            return Q.FAILURE_INVALID_PARAM;
        }
        if (i12 >= rVar.f94304g) {
            return Q.FAILURE_INVALID_PARAM;
        }
        c13900q.f94284c[i12].f94179d = flags;
        return Q.SUCCSESS;
    }

    public void a0(C13901s tile, C13901s target) {
        if (tile == null || target == null) {
            return;
        }
        int r10 = r(P(target));
        int i10 = 0;
        while (true) {
            C13900q c13900q = tile.f94321c;
            if (i10 >= c13900q.f94282a.f94304g) {
                return;
            }
            G g10 = c13900q.f94284c[i10];
            int i11 = tile.f94322d[g10.f94176a];
            int i12 = -1;
            while (i11 != -1) {
                if (r(tile.f94323e.get(i11).f94276a) == r10) {
                    int i13 = tile.f94323e.get(i11).f94277b;
                    if (i12 == -1) {
                        tile.f94322d[g10.f94176a] = i13;
                    } else {
                        tile.f94323e.get(i12).f94277b = i13;
                    }
                    v(tile, i11);
                    i11 = i13;
                } else {
                    i12 = i11;
                    i11 = tile.f94323e.get(i11).f94277b;
                }
            }
            i10++;
        }
    }

    public long b(C13900q data, int flags) {
        r rVar = data.f94282a;
        return L(rVar.f94300c, rVar.f94301d, rVar.f94302e) != null ? b0(data, flags) : c(data, flags, 0L);
    }

    public long b0(C13900q data, int flags) {
        r rVar = data.f94282a;
        return c(data, flags, W(Q(rVar.f94300c, rVar.f94301d, rVar.f94302e)));
    }

    public long c(C13900q data, int flags, long lastRef) {
        C13901s c13901s;
        r rVar = data.f94282a;
        if (L(rVar.f94300c, rVar.f94301d, rVar.f94302e) != null) {
            throw new RuntimeException("Tile already exists");
        }
        if (lastRef != 0) {
            int r10 = r(lastRef);
            if (r10 >= this.f94341e) {
                throw new RuntimeException("Tile index too high");
            }
            C13901s c13901s2 = this.f94345i[r10];
            if (!this.f94344h.remove(c13901s2)) {
                throw new RuntimeException("Could not find tile with ref:" + lastRef);
            }
            c13901s2.f94320b = q(lastRef);
            c13901s = c13901s2;
        } else {
            if (this.f94344h.isEmpty()) {
                throw new TilesLimitReachedException("Could not allocate a tile max defined tiles:" + this.f94341e + " used slots:" + this.f94347k);
            }
            c13901s = this.f94344h.poll();
            this.f94347k++;
        }
        c13901s.f94321c = data;
        c13901s.f94325g = flags;
        c13901s.f94323e.clear();
        int[] iArr = new int[data.f94284c.length];
        c13901s.f94322d = iArr;
        Arrays.fill(iArr, -1);
        O(rVar.f94300c, rVar.f94301d).add(c13901s);
        C13900q c13900q = c13901s.f94321c;
        C13884a[] c13884aArr = c13900q.f94288g;
        if (c13884aArr != null && c13884aArr.length == 0) {
            c13900q.f94288g = null;
        }
        n(c13901s);
        f(c13901s);
        m(c13901s, c13901s, -1);
        List<C13901s> R10 = R(rVar.f94300c, rVar.f94301d);
        for (int i10 = 0; i10 < R10.size(); i10++) {
            if (R10.get(i10) != c13901s) {
                l(c13901s, R10.get(i10), -1);
                l(R10.get(i10), c13901s, -1);
                m(c13901s, R10.get(i10), -1);
                m(R10.get(i10), c13901s, -1);
            }
        }
        for (int i11 = 0; i11 < 8; i11++) {
            List<C13901s> A10 = A(rVar.f94300c, rVar.f94301d, i11);
            for (int i12 = 0; i12 < A10.size(); i12++) {
                l(c13901s, A10.get(i12), i11);
                l(A10.get(i12), c13901s, C13890g.k(i11));
                m(c13901s, A10.get(i12), i11);
                m(A10.get(i12), c13901s, C13890g.k(i11));
            }
        }
        return P(c13901s);
    }

    public void d(C13900q data, int flags, long lastRef) {
        C13901s c13901s;
        r rVar = data.f94282a;
        if (lastRef != 0) {
            int r10 = r(lastRef);
            if (r10 >= this.f94341e) {
                throw new RuntimeException("Tile index too high");
            }
            C13901s c13901s2 = this.f94345i[r10];
            if (!this.f94344h.remove(c13901s2)) {
                throw new RuntimeException("Could not find tile");
            }
            c13901s2.f94320b = q(lastRef);
            c13901s = c13901s2;
        } else {
            if (this.f94344h.isEmpty()) {
                throw new TilesLimitReachedException("Could not allocate a tile max defined tiles:" + this.f94341e + " used slots:" + this.f94347k);
            }
            c13901s = this.f94344h.poll();
            this.f94347k++;
        }
        c13901s.f94321c = data;
        c13901s.f94325g = flags;
        c13901s.f94323e.clear();
        int[] iArr = new int[data.f94284c.length];
        c13901s.f94322d = iArr;
        Arrays.fill(iArr, -1);
        O(rVar.f94300c, rVar.f94301d).add(c13901s);
        C13900q c13900q = c13901s.f94321c;
        C13884a[] c13884aArr = c13900q.f94288g;
        if (c13884aArr != null && c13884aArr.length == 0) {
            c13900q.f94288g = null;
        }
        n(c13901s);
        f(c13901s);
        m(c13901s, c13901s, -1);
        List<C13901s> R10 = R(rVar.f94300c, rVar.f94301d);
        for (int i10 = 0; i10 < R10.size(); i10++) {
            if (R10.get(i10) != c13901s) {
                l(c13901s, R10.get(i10), -1);
                l(R10.get(i10), c13901s, -1);
                m(c13901s, R10.get(i10), -1);
                m(R10.get(i10), c13901s, -1);
            }
        }
        for (int i11 = 0; i11 < 8; i11++) {
            List<C13901s> A10 = A(rVar.f94300c, rVar.f94301d, i11);
            for (int i12 = 0; i12 < A10.size(); i12++) {
                l(c13901s, A10.get(i12), i11);
                l(A10.get(i12), c13901s, C13890g.k(i11));
                m(c13901s, A10.get(i12), i11);
                m(A10.get(i12), c13901s, C13890g.k(i11));
            }
        }
    }

    public final int e(C13901s tile) {
        int i10 = tile.f94324f;
        if (i10 != -1) {
            tile.f94324f = tile.f94323e.get(i10).f94277b;
            return i10;
        }
        C13899p c13899p = new C13899p();
        c13899p.f94277b = -1;
        tile.f94323e.add(c13899p);
        return tile.f94323e.size() - 1;
    }

    public void f(C13901s tile) {
        int i10 = 2;
        int i11 = 3;
        if (tile == null) {
            return;
        }
        long G10 = G(tile);
        int i12 = 0;
        while (true) {
            C13900q c13900q = tile.f94321c;
            r rVar = c13900q.f94282a;
            if (i12 >= rVar.f94311n) {
                return;
            }
            F f10 = c13900q.f94289h[i12];
            G g10 = c13900q.f94284c[f10.f94170c];
            float f11 = f10.f94169b;
            float f12 = rVar.f94315r;
            float[] fArr = new float[i11];
            fArr[0] = f11;
            fArr[1] = f12;
            fArr[i10] = f11;
            C13894k u10 = u(tile, f10.f94168a, fArr);
            long b10 = u10.b();
            if (b10 != 0) {
                float[] fArr2 = f10.f94168a;
                float[] a10 = u10.a();
                if (C13890g.s(a10[0] - fArr2[0]) + C13890g.s(a10[i10] - fArr2[i10]) <= C13890g.s(f10.f94169b)) {
                    float[] fArr3 = tile.f94321c.f94283b;
                    int i13 = g10.f94177b[0];
                    fArr3[i13 * 3] = a10[0];
                    fArr3[(i13 * 3) + 1] = a10[1];
                    fArr3[(i13 * i11) + i10] = a10[i10];
                    int e10 = e(tile);
                    C13899p c13899p = tile.f94323e.get(e10);
                    c13899p.f94276a = b10;
                    c13899p.f94278c = 0;
                    c13899p.f94279d = 255;
                    c13899p.f94281f = 0;
                    c13899p.f94280e = 0;
                    int[] iArr = tile.f94322d;
                    int i14 = g10.f94176a;
                    c13899p.f94277b = iArr[i14];
                    iArr[i14] = e10;
                    int e11 = e(tile);
                    G g11 = tile.f94321c.f94284c[p(b10)];
                    C13899p c13899p2 = tile.f94323e.get(e11);
                    c13899p2.f94276a = f10.f94170c | G10;
                    c13899p2.f94278c = 255;
                    c13899p2.f94279d = 255;
                    c13899p2.f94281f = 0;
                    c13899p2.f94280e = 0;
                    int[] iArr2 = tile.f94322d;
                    int i15 = g11.f94176a;
                    c13899p2.f94277b = iArr2[i15];
                    iArr2[i15] = e11;
                }
            }
            i12++;
            i10 = 2;
            i11 = 3;
        }
    }

    public int[] h(float[] pos) {
        return new int[]{(int) Math.floor((pos[0] - this.f94338b[0]) / this.f94339c), (int) Math.floor((pos[2] - this.f94338b[2]) / this.f94340d)};
    }

    public float[] i(C13901s tile, G poly, float[] pos, boolean onlyBoundary) {
        float[] fArr;
        char c10;
        int i10;
        int i11;
        int i12;
        int i13 = poly.f94176a;
        H[] hArr = tile.f94321c.f94285d;
        int i14 = 3;
        float f10 = Float.MAX_VALUE;
        float f11 = 0.0f;
        float[] fArr2 = null;
        if (hArr == null) {
            int i15 = 1;
            char c11 = 0;
            float[][] fArr3 = (float[][]) Array.newInstance(Float.TYPE, 2, 3);
            fArr = null;
            int i16 = 0;
            while (true) {
                int i17 = poly.f94180e;
                if (i16 >= i17) {
                    break;
                }
                int i18 = i16 + 1;
                float[] fArr4 = fArr3[c11];
                float[] fArr5 = tile.f94321c.f94283b;
                int[] iArr = poly.f94177b;
                int i19 = iArr[i16];
                fArr4[c11] = fArr5[i19 * 3];
                fArr4[i15] = fArr5[(i19 * 3) + 1];
                fArr4[2] = fArr5[(i19 * 3) + 2];
                float[] fArr6 = fArr3[i15];
                int i20 = iArr[i18 % i17];
                fArr6[0] = fArr5[i20 * 3];
                fArr6[i15] = fArr5[(i20 * 3) + i15];
                fArr6[2] = fArr5[(i20 * 3) + 2];
                U<Float, Float> f12 = C13890g.f(pos, fArr4, fArr6);
                float floatValue = f12.f94229a.floatValue();
                float floatValue2 = f12.f94230b.floatValue();
                if (floatValue < f10) {
                    c10 = 0;
                    i10 = 1;
                    fArr2 = fArr3[0];
                    f11 = floatValue2;
                    fArr = fArr3[1];
                    f10 = floatValue;
                } else {
                    c10 = 0;
                    i10 = 1;
                }
                c11 = c10;
                i16 = i18;
                i15 = i10;
            }
        } else {
            H h10 = hArr[i13];
            fArr = null;
            int i21 = 0;
            while (i21 < h10.f94185d) {
                int i22 = (h10.f94183b + i21) * 4;
                int[] iArr2 = tile.f94321c.f94287f;
                if (onlyBoundary && (iArr2[i22 + 3] & 21) == 0) {
                    i11 = 1;
                } else {
                    float[][] fArr7 = new float[i14];
                    int i23 = 0;
                    while (i23 < i14) {
                        int i24 = iArr2[i22 + i23];
                        int i25 = poly.f94180e;
                        if (i24 < i25) {
                            int i26 = poly.f94177b[i24] * i14;
                            float[] fArr8 = tile.f94321c.f94283b;
                            float f13 = fArr8[i26];
                            float f14 = fArr8[i26 + 1];
                            float f15 = fArr8[i26 + 2];
                            float[] fArr9 = new float[i14];
                            fArr9[0] = f13;
                            fArr9[1] = f14;
                            fArr9[2] = f15;
                            fArr7[i23] = fArr9;
                            i12 = i14;
                        } else {
                            int i27 = h10.f94182a + (i24 - i25);
                            i12 = 3;
                            int i28 = i27 * 3;
                            float[] fArr10 = tile.f94321c.f94286e;
                            float f16 = fArr10[i28];
                            float f17 = fArr10[i28 + 1];
                            float f18 = fArr10[i28 + 2];
                            float[] fArr11 = new float[3];
                            fArr11[0] = f16;
                            fArr11[1] = f17;
                            fArr11[2] = f18;
                            fArr7[i23] = fArr11;
                        }
                        i23++;
                        i14 = i12;
                    }
                    int i29 = i14;
                    int i30 = 1;
                    int i31 = 2;
                    for (int i32 = 0; i32 < i29; i32++) {
                        if ((w(iArr2[i29], i31) & 1) != 0 || (!onlyBoundary && iArr2[i31] >= iArr2[i32])) {
                            U<Float, Float> f19 = C13890g.f(pos, fArr7[i31], fArr7[i32]);
                            float floatValue3 = f19.f94229a.floatValue();
                            float floatValue4 = f19.f94230b.floatValue();
                            if (floatValue3 < f10) {
                                fArr2 = fArr7[i31];
                                f11 = floatValue4;
                                fArr = fArr7[i32];
                                f10 = floatValue3;
                            }
                        }
                        i30 = 1;
                        i29 = 3;
                        i31 = i32;
                    }
                    i11 = i30;
                }
                i21 += i11;
                i14 = 3;
            }
        }
        return C13890g.N(fArr2, fArr, f11);
    }

    public C13885b j(long ref, float[] pos) {
        U<C13901s, G> K10 = K(ref);
        C13901s c13901s = K10.f94229a;
        G g10 = K10.f94230b;
        float[] fArr = new float[3];
        C13890g.w(fArr, pos);
        Optional<Float> F10 = F(c13901s, g10, pos);
        if (F10.isPresent()) {
            fArr[1] = F10.get().floatValue();
            return new C13885b(true, fArr);
        }
        if (g10.b() != 1) {
            return new C13885b(false, i(c13901s, g10, pos, true));
        }
        int[] iArr = g10.f94177b;
        int i10 = iArr[0] * 3;
        float[] fArr2 = c13901s.f94321c.f94283b;
        float[] fArr3 = {fArr2[i10], fArr2[i10 + 1], fArr2[i10 + 2]};
        int i11 = iArr[1] * 3;
        float[] fArr4 = {fArr2[i11], fArr2[i11 + 1], fArr2[i11 + 2]};
        return new C13885b(false, C13890g.N(fArr3, fArr4, C13890g.f(pos, fArr3, fArr4).f94230b.floatValue()));
    }

    public void l(C13901s tile, C13901s target, int side) {
        float f10;
        float f11;
        int i10 = side;
        if (tile == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            C13900q c13900q = tile.f94321c;
            if (i11 >= c13900q.f94282a.f94304g) {
                return;
            }
            G g10 = c13900q.f94284c[i11];
            int i12 = g10.f94180e;
            int i13 = 0;
            while (i13 < i12) {
                int i14 = g10.f94178c[i13];
                if ((32768 & i14) != 0) {
                    int i15 = i14 & 255;
                    if (i10 == -1 || i15 == i10) {
                        int[] iArr = g10.f94177b;
                        int i16 = iArr[i13] * 3;
                        int i17 = iArr[(i13 + 1) % i12] * 3;
                        V<long[], float[], Integer> t10 = t(tile.f94321c.f94283b, i16, i17, target, C13890g.k(i15), 4);
                        long[] jArr = t10.f94231a;
                        float[] fArr = t10.f94232b;
                        int intValue = t10.f94233c.intValue();
                        int i18 = 0;
                        while (i18 < intValue) {
                            int e10 = e(tile);
                            C13899p c13899p = tile.f94323e.get(e10);
                            int i19 = i11;
                            c13899p.f94276a = jArr[i18];
                            c13899p.f94278c = i13;
                            c13899p.f94279d = i15;
                            int[] iArr2 = tile.f94322d;
                            int i20 = g10.f94176a;
                            c13899p.f94277b = iArr2[i20];
                            iArr2[i20] = e10;
                            if (i15 == 0 || i15 == 4) {
                                int i21 = i18 * 2;
                                float f12 = fArr[i21];
                                float[] fArr2 = tile.f94321c.f94283b;
                                float f13 = fArr2[i16 + 2];
                                float f14 = fArr2[i17 + 2];
                                float f15 = (f12 - f13) / (f14 - f13);
                                float f16 = (fArr[i21 + 1] - f13) / (f14 - f13);
                                if (f15 > f16) {
                                    f10 = 1.0f;
                                    f15 = f16;
                                    f16 = f15;
                                } else {
                                    f10 = 1.0f;
                                }
                                c13899p.f94280e = Math.round(C13890g.a(f15, 0.0f, f10) * 255.0f);
                                c13899p.f94281f = Math.round(C13890g.a(f16, 0.0f, f10) * 255.0f);
                            } else if (i15 == 2 || i15 == 6) {
                                int i22 = i18 * 2;
                                float f17 = fArr[i22];
                                float[] fArr3 = tile.f94321c.f94283b;
                                float f18 = fArr3[i16];
                                float f19 = fArr3[i17];
                                float f20 = (f17 - f18) / (f19 - f18);
                                float f21 = (fArr[i22 + 1] - f18) / (f19 - f18);
                                if (f20 > f21) {
                                    f11 = f20;
                                } else {
                                    f11 = f21;
                                    f21 = f20;
                                }
                                c13899p.f94280e = Math.round(C13890g.a(f21, 0.0f, 1.0f) * 255.0f);
                                c13899p.f94281f = Math.round(C13890g.a(f11, 0.0f, 1.0f) * 255.0f);
                            }
                            i18++;
                            i11 = i19;
                        }
                    }
                }
                i13++;
                i10 = side;
                i11 = i11;
            }
            i11++;
            i10 = side;
        }
    }

    public void m(C13901s tile, C13901s target, int side) {
        int i10;
        int i11;
        int i12 = 2;
        int i13 = 1;
        int i14 = 3;
        if (tile == null) {
            return;
        }
        int i15 = -1;
        int k10 = side == -1 ? 255 : C13890g.k(side);
        int i16 = 0;
        while (true) {
            C13900q c13900q = target.f94321c;
            r rVar = c13900q.f94282a;
            if (i16 >= rVar.f94311n) {
                return;
            }
            F f10 = c13900q.f94289h[i16];
            if (f10.f94172e == k10) {
                G g10 = c13900q.f94284c[f10.f94170c];
                if (target.f94322d[g10.f94176a] != i15) {
                    float f11 = f10.f94169b;
                    float f12 = rVar.f94315r;
                    float[] fArr = new float[i14];
                    fArr[0] = f11;
                    fArr[i13] = f12;
                    fArr[i12] = f11;
                    float[] fArr2 = f10.f94168a;
                    float f13 = fArr2[i14];
                    float f14 = fArr2[4];
                    float f15 = fArr2[5];
                    float[] fArr3 = new float[i14];
                    fArr3[0] = f13;
                    fArr3[i13] = f14;
                    fArr3[i12] = f15;
                    C13894k u10 = u(tile, fArr3, fArr);
                    long b10 = u10.b();
                    if (b10 != 0) {
                        float[] a10 = u10.a();
                        if (C13890g.s(a10[0] - fArr3[0]) + C13890g.s(a10[i12] - fArr3[i12]) <= C13890g.s(f10.f94169b)) {
                            float[] fArr4 = target.f94321c.f94283b;
                            int i17 = g10.f94177b[1];
                            i10 = 3;
                            fArr4[i17 * 3] = a10[0];
                            fArr4[(i17 * 3) + 1] = a10[1];
                            fArr4[(i17 * 3) + i12] = a10[i12];
                            int e10 = e(target);
                            C13899p c13899p = target.f94323e.get(e10);
                            c13899p.f94276a = b10;
                            c13899p.f94278c = 1;
                            c13899p.f94279d = k10;
                            c13899p.f94281f = 0;
                            c13899p.f94280e = 0;
                            int[] iArr = target.f94322d;
                            int i18 = g10.f94176a;
                            c13899p.f94277b = iArr[i18];
                            iArr[i18] = e10;
                            if ((f10.f94171d & 1) != 0) {
                                int e11 = e(tile);
                                G g11 = tile.f94321c.f94284c[p(b10)];
                                C13899p c13899p2 = tile.f94323e.get(e11);
                                c13899p2.f94276a = G(target) | f10.f94170c;
                                c13899p2.f94278c = 255;
                                i15 = -1;
                                c13899p2.f94279d = side == -1 ? 255 : side;
                                c13899p2.f94281f = 0;
                                c13899p2.f94280e = 0;
                                int[] iArr2 = tile.f94322d;
                                int i19 = g11.f94176a;
                                c13899p2.f94277b = iArr2[i19];
                                iArr2[i19] = e11;
                            } else {
                                i15 = -1;
                            }
                            i11 = 1;
                            i16 += i11;
                            i13 = i11;
                            i14 = i10;
                            i12 = 2;
                        }
                    }
                    i11 = 1;
                    i15 = -1;
                    i10 = 3;
                    i16 += i11;
                    i13 = i11;
                    i14 = i10;
                    i12 = 2;
                }
            }
            i11 = i13;
            i10 = i14;
            i16 += i11;
            i13 = i11;
            i14 = i10;
            i12 = 2;
        }
    }

    public void n(C13901s tile) {
        if (tile == null) {
            return;
        }
        long G10 = G(tile);
        int i10 = 0;
        while (true) {
            C13900q c13900q = tile.f94321c;
            if (i10 >= c13900q.f94282a.f94304g) {
                return;
            }
            G g10 = c13900q.f94284c[i10];
            tile.f94322d[g10.f94176a] = -1;
            if (g10.b() != 1) {
                for (int i11 = g10.f94180e - 1; i11 >= 0; i11--) {
                    int i12 = g10.f94178c[i11];
                    if (i12 != 0 && (i12 & 32768) == 0) {
                        int e10 = e(tile);
                        C13899p c13899p = tile.f94323e.get(e10);
                        c13899p.f94276a = (g10.f94178c[i11] - 1) | G10;
                        c13899p.f94278c = i11;
                        c13899p.f94279d = 255;
                        c13899p.f94281f = 0;
                        c13899p.f94280e = 0;
                        int[] iArr = tile.f94322d;
                        int i13 = g10.f94176a;
                        c13899p.f94277b = iArr[i13];
                        iArr[i13] = e10;
                    }
                }
            }
            i10++;
        }
    }

    public V<long[], float[], Integer> t(float[] verts, int va2, int vb2, C13901s tile, int side, int maxcon) {
        int i10;
        int i11;
        long[] jArr;
        float[] fArr;
        float[] fArr2;
        int i12;
        int i13;
        float[] fArr3;
        int i14;
        int i15;
        G g10;
        int i16 = side;
        int i17 = 0;
        if (tile == null) {
            return new V<>(null, null, 0);
        }
        long[] jArr2 = new long[maxcon];
        float[] fArr4 = new float[maxcon * 2];
        float[] fArr5 = new float[2];
        float[] fArr6 = new float[2];
        g(verts, va2, vb2, fArr5, fArr6, side);
        float H10 = H(verts, va2, i16);
        float[] fArr7 = new float[2];
        float[] fArr8 = new float[2];
        int i18 = i16 | 32768;
        long G10 = G(tile);
        int i19 = 0;
        int i20 = 0;
        while (true) {
            C13900q c13900q = tile.f94321c;
            if (i20 >= c13900q.f94282a.f94304g) {
                return new V<>(jArr2, fArr4, Integer.valueOf(i19));
            }
            G g11 = c13900q.f94284c[i20];
            int i21 = g11.f94180e;
            while (true) {
                if (i17 >= i21) {
                    i10 = i19;
                    i11 = i18;
                    jArr = jArr2;
                    fArr = fArr7;
                    fArr2 = fArr6;
                    i12 = 0;
                    i13 = i20;
                    fArr3 = fArr5;
                    break;
                }
                int i22 = i19;
                if (g11.f94178c[i17] != i18) {
                    i10 = i22;
                    i15 = i21;
                    g10 = g11;
                    i11 = i18;
                    jArr = jArr2;
                    fArr = fArr7;
                    fArr2 = fArr6;
                } else {
                    int[] iArr = g11.f94177b;
                    G g12 = g11;
                    int i23 = iArr[i17] * 3;
                    int i24 = iArr[(i17 + 1) % i21] * 3;
                    int i25 = i21;
                    if (Math.abs(H10 - H(tile.f94321c.f94283b, i23, i16)) > 0.01f) {
                        i10 = i22;
                        g10 = g12;
                        i11 = i18;
                        jArr = jArr2;
                        fArr = fArr7;
                        fArr2 = fArr6;
                        i15 = i25;
                    } else {
                        i15 = i25;
                        g10 = g12;
                        i10 = i22;
                        jArr = jArr2;
                        i13 = i20;
                        i11 = i18;
                        g(tile.f94321c.f94283b, i23, i24, fArr7, fArr8, side);
                        fArr = fArr7;
                        fArr2 = fArr6;
                        fArr3 = fArr5;
                        if (!U(fArr5, fArr2, fArr, fArr8, 0.01f, tile.f94321c.f94282a.f94315r)) {
                            i17++;
                            fArr7 = fArr;
                            fArr6 = fArr2;
                            fArr5 = fArr3;
                            i19 = i10;
                            i20 = i13;
                            i21 = i15;
                            g11 = g10;
                            jArr2 = jArr;
                            i18 = i11;
                            i16 = side;
                        } else if (i10 < maxcon) {
                            int i26 = i10 * 2;
                            i12 = 0;
                            fArr4[i26] = Math.max(fArr3[0], fArr[0]);
                            fArr4[i26 + 1] = Math.min(fArr2[0], fArr8[0]);
                            jArr[i10] = G10 | i13;
                            i14 = i10 + 1;
                        } else {
                            i12 = 0;
                        }
                    }
                }
                i13 = i20;
                fArr3 = fArr5;
                i17++;
                fArr7 = fArr;
                fArr6 = fArr2;
                fArr5 = fArr3;
                i19 = i10;
                i20 = i13;
                i21 = i15;
                g11 = g10;
                jArr2 = jArr;
                i18 = i11;
                i16 = side;
            }
            i14 = i10;
            i16 = side;
            fArr7 = fArr;
            fArr6 = fArr2;
            fArr5 = fArr3;
            i17 = i12;
            i20 = i13 + 1;
            jArr2 = jArr;
            i18 = i11;
            i19 = i14;
        }
    }

    public C13894k u(C13901s tile, float[] center, float[] extents) {
        float L10;
        List<Long> V10 = V(tile, C13890g.W(center, extents), C13890g.v(center, extents));
        float[] fArr = null;
        float f10 = Float.MAX_VALUE;
        long j10 = 0;
        boolean z10 = false;
        for (int i10 = 0; i10 < V10.size(); i10++) {
            long longValue = V10.get(i10).longValue();
            C13885b j11 = j(longValue, center);
            boolean b10 = j11.b();
            float[] a10 = j11.a();
            float[] W10 = C13890g.W(center, a10);
            if (b10) {
                float abs = Math.abs(W10[1]) - tile.f94321c.f94282a.f94315r;
                L10 = 0.0f;
                if (abs > 0.0f) {
                    L10 = abs * abs;
                }
            } else {
                L10 = C13890g.L(W10);
            }
            if (L10 < f10) {
                j10 = longValue;
                fArr = a10;
                z10 = b10;
                f10 = L10;
            }
        }
        return new C13894k(j10, fArr, z10);
    }

    public final void v(C13901s tile, int link) {
        tile.f94323e.get(link).f94277b = tile.f94324f;
        tile.f94324f = link;
    }

    public int x() {
        return this.f94341e;
    }

    public int y() {
        return this.f94346j;
    }

    public C13904v(y params) {
        this(params, 3);
    }

    public C13904v(y params, int maxVertsPerPoly) {
        this.f94343g = new HashMap();
        this.f94344h = new LinkedList<>();
        this.f94337a = params;
        this.f94338b = params.f94387a;
        this.f94339c = params.f94388b;
        this.f94340d = params.f94389c;
        int i10 = params.f94390d;
        this.f94341e = i10;
        this.f94346j = maxVertsPerPoly;
        this.f94342f = Math.max(1, C13890g.j(i10)) - 1;
        this.f94345i = new C13901s[this.f94341e];
        for (int i11 = 0; i11 < this.f94341e; i11++) {
            this.f94345i[i11] = new C13901s(i11);
            C13901s c13901s = this.f94345i[i11];
            c13901s.f94320b = 1;
            this.f94344h.add(c13901s);
        }
    }
}
