package jn;

import java.util.Arrays;
import java.util.Comparator;

public class C13905w {

    public static final int f94348a = 65535;

    public static final int f94349b = 1;

    public static final int f94350c = 2;

    public static final int f94351d = 4;

    public static final int f94352e = 8;

    public static class b {

        public final int[] f94353a = new int[3];

        public final int[] f94354b = new int[3];

        public int f94355c;
    }

    public static class c implements Comparator<b> {
        public c() {
        }

        @Override
        public int compare(b a10, b b10) {
            int i10 = a10.f94353a[0];
            int i11 = b10.f94353a[0];
            if (i10 < i11) {
                return -1;
            }
            return i10 > i11 ? 1 : 0;
        }
    }

    public static class d implements Comparator<b> {
        public d() {
        }

        @Override
        public int compare(b a10, b b10) {
            int i10 = a10.f94353a[1];
            int i11 = b10.f94353a[1];
            if (i10 < i11) {
                return -1;
            }
            return i10 > i11 ? 1 : 0;
        }
    }

    public static class e implements Comparator<b> {
        public e() {
        }

        @Override
        public int compare(b a10, b b10) {
            int i10 = a10.f94353a[2];
            int i11 = b10.f94353a[2];
            if (i10 < i11) {
                return -1;
            }
            return i10 > i11 ? 1 : 0;
        }
    }

    public static int[][] a(b[] items, int nitems, int imin, int imax) {
        b bVar = items[imin];
        int[] iArr = bVar.f94353a;
        int[] iArr2 = {iArr[0], iArr[1], iArr[2]};
        int[] iArr3 = bVar.f94354b;
        int[] iArr4 = {iArr3[0], iArr3[1], iArr3[2]};
        for (int i10 = imin + 1; i10 < imax; i10++) {
            b bVar2 = items[i10];
            int[] iArr5 = bVar2.f94353a;
            int i11 = iArr5[0];
            if (i11 < iArr2[0]) {
                iArr2[0] = i11;
            }
            int i12 = iArr5[1];
            if (i12 < iArr2[1]) {
                iArr2[1] = i12;
            }
            int i13 = iArr5[2];
            if (i13 < iArr2[2]) {
                iArr2[2] = i13;
            }
            int[] iArr6 = bVar2.f94354b;
            int i14 = iArr6[0];
            if (i14 > iArr4[0]) {
                iArr4[0] = i14;
            }
            int i15 = iArr6[1];
            if (i15 > iArr4[1]) {
                iArr4[1] = i15;
            }
            int i16 = iArr6[2];
            if (i16 > iArr4[2]) {
                iArr4[2] = i16;
            }
        }
        return new int[][]{iArr2, iArr4};
    }

    public static int b(W pt, float[] bmin, float[] bmax) {
        int i10 = (pt.a(2) < bmin[2] ? 8 : 0) | (pt.a(2) >= bmax[2] ? (char) 2 : (char) 0) | (pt.a(0) >= bmax[0] ? (char) 1 : (char) 0) | (pt.a(0) < bmin[0] ? 4 : 0);
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 2;
        }
        if (i10 == 3) {
            return 1;
        }
        if (i10 == 4) {
            return 4;
        }
        if (i10 == 6) {
            return 3;
        }
        if (i10 == 12) {
            return 5;
        }
        if (i10 != 8) {
            return i10 != 9 ? 255 : 7;
        }
        return 6;
    }

    public static int c(x params, C13884a[] nodes) {
        int i10;
        float f10 = 1.0f / params.f94358C;
        b[] bVarArr = new b[params.f94366f];
        int i11 = 0;
        while (true) {
            int i12 = params.f94366f;
            if (i11 >= i12) {
                return f(bVarArr, i12, 0, i12, 0, nodes);
            }
            b bVar = new b();
            bVarArr[i11] = bVar;
            bVar.f94355c = i11;
            int[] iArr = params.f94368h;
            if (iArr != null) {
                int i13 = i11 * 4;
                int i14 = iArr[i13];
                int i15 = iArr[i13 + 1];
                float[] fArr = new float[3];
                float[] fArr2 = new float[3];
                int i16 = i14 * 3;
                C13890g.x(fArr, params.f94369i, i16);
                C13890g.x(fArr2, params.f94369i, i16);
                for (int i17 = 1; i17 < i15; i17++) {
                    int i18 = (i17 * 3) + i16;
                    C13890g.Q(fArr, params.f94369i, i18);
                    C13890g.P(fArr2, params.f94369i, i18);
                }
                bVar.f94353a[0] = C13890g.b((int) ((fArr[0] - params.f94384x[0]) * f10), 0, Integer.MAX_VALUE);
                bVar.f94353a[1] = C13890g.b((int) ((fArr[1] - params.f94384x[1]) * f10), 0, Integer.MAX_VALUE);
                bVar.f94353a[2] = C13890g.b((int) ((fArr[2] - params.f94384x[2]) * f10), 0, Integer.MAX_VALUE);
                bVar.f94354b[0] = C13890g.b((int) ((fArr2[0] - params.f94384x[0]) * f10), 0, Integer.MAX_VALUE);
                bVar.f94354b[1] = C13890g.b((int) ((fArr2[1] - params.f94384x[1]) * f10), 0, Integer.MAX_VALUE);
                bVar.f94354b[2] = C13890g.b((int) ((fArr2[2] - params.f94384x[2]) * f10), 0, Integer.MAX_VALUE);
            } else {
                int i19 = params.f94367g * i11 * 2;
                int[] iArr2 = bVar.f94353a;
                int[] iArr3 = bVar.f94354b;
                int[] iArr4 = params.f94361a;
                int[] iArr5 = params.f94363c;
                int i20 = iArr4[iArr5[i19] * 3];
                iArr3[0] = i20;
                iArr2[0] = i20;
                int i21 = iArr4[(iArr5[i19] * 3) + 1];
                iArr3[1] = i21;
                iArr2[1] = i21;
                int i22 = iArr4[(iArr5[i19] * 3) + 2];
                iArr3[2] = i22;
                iArr2[2] = i22;
                for (int i23 = 1; i23 < params.f94367g && (i10 = params.f94363c[i19 + i23]) != 65535; i23++) {
                    int[] iArr6 = params.f94361a;
                    int i24 = iArr6[i10 * 3];
                    int i25 = iArr6[(i10 * 3) + 1];
                    int i26 = iArr6[(i10 * 3) + 2];
                    int[] iArr7 = bVar.f94353a;
                    if (i24 < iArr7[0]) {
                        iArr7[0] = i24;
                    }
                    if (i25 < iArr7[1]) {
                        iArr7[1] = i25;
                    }
                    if (i26 < iArr7[2]) {
                        iArr7[2] = i26;
                    }
                    int[] iArr8 = bVar.f94354b;
                    if (i24 > iArr8[0]) {
                        iArr8[0] = i24;
                    }
                    if (i25 > iArr8[1]) {
                        iArr8[1] = i25;
                    }
                    if (i26 > iArr8[2]) {
                        iArr8[2] = i26;
                    }
                }
                bVar.f94353a[1] = (int) Math.floor(r5[1] * params.f94359D * f10);
                bVar.f94354b[1] = (int) Math.ceil(r4[1] * params.f94359D * f10);
            }
            i11++;
        }
    }

    public static C13900q d(x params) {
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr;
        float[] fArr;
        C13884a[] c13884aArr;
        r rVar;
        C13884a[] c13884aArr2;
        int i14;
        int[] iArr2;
        float[] fArr2;
        int i15 = params.f94362b;
        int[] iArr3 = null;
        if (i15 >= 65535 || i15 == 0 || params.f94361a == null || params.f94366f == 0 || params.f94363c == null) {
            return null;
        }
        int i16 = params.f94367g;
        int i17 = params.f94379s;
        int i18 = 0;
        if (i17 > 0) {
            iArr3 = new int[i17 * 2];
            float f10 = Float.MAX_VALUE;
            float f11 = -3.4028235E38f;
            if (params.f94369i == null || params.f94370j == 0) {
                for (int i19 = 0; i19 < params.f94362b; i19++) {
                    float f12 = params.f94384x[1] + (params.f94361a[(i19 * 3) + 1] * params.f94359D);
                    f10 = Math.min(f10, f12);
                    f11 = Math.max(f11, f12);
                }
            } else {
                for (int i20 = 0; i20 < params.f94370j; i20++) {
                    float f13 = params.f94369i[(i20 * 3) + 1];
                    f10 = Math.min(f10, f13);
                    f11 = Math.max(f11, f13);
                }
            }
            float f14 = params.f94357B;
            float f15 = f11 + f14;
            C13890g.w(r4, params.f94384x);
            C13890g.w(r12, params.f94385y);
            float[] fArr3 = {0.0f, f10 - f14};
            float[] fArr4 = {0.0f, f15};
            i10 = 0;
            i11 = 0;
            for (int i21 = 0; i21 < params.f94379s; i21++) {
                int i22 = i21 * 2;
                W w10 = new W(params.f94373m, i21 * 6);
                int i23 = i22 + 1;
                W w11 = new W(params.f94373m, i23 * 3);
                iArr3[i22] = b(w10, fArr3, fArr4);
                iArr3[i23] = b(w11, fArr3, fArr4);
                if (iArr3[i22] == 255 && (w10.a(1) < fArr3[1] || w10.a(1) > fArr4[1])) {
                    iArr3[i22] = 0;
                }
                int i24 = iArr3[i22];
                if (i24 == 255) {
                    i11++;
                }
                if (iArr3[i23] == 255) {
                    i11++;
                }
                if (i24 == 255) {
                    i10++;
                }
            }
        } else {
            i10 = 0;
            i11 = 0;
        }
        int i25 = params.f94366f + i10;
        int i26 = params.f94362b + (i10 * 2);
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        while (i27 < params.f94366f) {
            int i30 = i27 * 2 * i16;
            while (i18 < i16) {
                int[] iArr4 = params.f94363c;
                if (iArr4[i30 + i18] == 65535) {
                    break;
                }
                i28++;
                int i31 = iArr4[i30 + i16 + i18];
                if ((i31 & 32768) != 0 && (i31 & 15) != 15) {
                    i29++;
                }
                i18++;
            }
            i27++;
            i18 = 0;
        }
        int i32 = 2;
        int i33 = i28 + (i29 * 2) + (i11 * 2);
        if (params.f94368h != null) {
            i12 = params.f94372l;
            int i34 = 0;
            i13 = 0;
            while (i34 < params.f94366f) {
                int i35 = i34 * i16 * i32;
                int i36 = params.f94368h[(i34 * 4) + 1];
                int i37 = 0;
                for (int i38 = 0; i38 < i16 && params.f94363c[i35 + i38] != 65535; i38++) {
                    i37++;
                }
                i13 += i36 - i37;
                i34++;
                i32 = 2;
            }
        } else {
            i12 = 0;
            for (int i39 = 0; i39 < params.f94366f; i39++) {
                int i40 = i39 * i16 * 2;
                int i41 = 0;
                for (int i42 = 0; i42 < i16 && params.f94363c[i40 + i42] != 65535; i42++) {
                    i41++;
                }
                i12 += i41 - 2;
            }
            i13 = 0;
        }
        int i43 = params.f94360E ? params.f94366f * 2 : 0;
        r rVar2 = new r();
        float[] fArr5 = new float[i26 * 3];
        G[] gArr = new G[i25];
        H[] hArr = new H[params.f94366f];
        float[] fArr6 = new float[i13 * 3];
        int[] iArr5 = new int[i12 * 4];
        C13884a[] c13884aArr3 = new C13884a[i43];
        F[] fArr7 = new F[i10];
        rVar2.f94298a = r.f94293v;
        rVar2.f94299b = 7;
        rVar2.f94300c = params.f94381u;
        rVar2.f94301d = params.f94382v;
        rVar2.f94302e = params.f94383w;
        rVar2.f94303f = params.f94380t;
        rVar2.f94304g = i25;
        rVar2.f94305h = i26;
        rVar2.f94306i = i33;
        C13890g.w(rVar2.f94316s, params.f94384x);
        C13890g.w(rVar2.f94317t, params.f94385y);
        int i44 = params.f94366f;
        rVar2.f94307j = i44;
        rVar2.f94308k = i13;
        rVar2.f94309l = i12;
        rVar2.f94318u = 1.0f / params.f94358C;
        rVar2.f94312o = i44;
        rVar2.f94313p = params.f94386z;
        rVar2.f94314q = params.f94356A;
        rVar2.f94315r = params.f94357B;
        rVar2.f94311n = i10;
        rVar2.f94310m = i43;
        int i45 = params.f94362b;
        int i46 = 0;
        while (i46 < params.f94362b) {
            int i47 = i46 * 3;
            float[] fArr8 = params.f94384x;
            float f16 = fArr8[0];
            float f17 = params.f94361a[i47];
            r rVar3 = rVar2;
            float f18 = params.f94358C;
            fArr5[i47] = f16 + (f17 * f18);
            fArr5[i47 + 1] = fArr8[1] + (r9[r10] * params.f94359D);
            fArr5[i47 + 2] = fArr8[2] + (r9[r6] * f18);
            i46++;
            rVar2 = rVar3;
            fArr6 = fArr6;
        }
        r rVar4 = rVar2;
        float[] fArr9 = fArr6;
        int i48 = 0;
        for (int i49 = 0; i49 < params.f94379s; i49++) {
            if (iArr3[i49 * 2] == 255) {
                System.arraycopy(params.f94373m, i49 * 6, fArr5, ((i48 * 2) + i45) * 3, 6);
                i48++;
            }
        }
        int i50 = 0;
        for (int i51 = 0; i51 < params.f94366f; i51++) {
            G g10 = new G(i51, i16);
            gArr[i51] = g10;
            g10.f94180e = 0;
            g10.f94179d = params.f94364d[i51];
            g10.c(params.f94365e[i51]);
            g10.d(0);
            for (int i52 = 0; i52 < i16; i52++) {
                int[] iArr6 = params.f94363c;
                int i53 = iArr6[i50 + i52];
                if (i53 == 65535) {
                    break;
                }
                g10.f94177b[i52] = i53;
                int i54 = iArr6[i50 + i16 + i52];
                if ((i54 & 32768) != 0) {
                    int i55 = i54 & 15;
                    if (i55 == 15) {
                        g10.f94178c[i52] = 0;
                    } else if (i55 == 0) {
                        g10.f94178c[i52] = 32772;
                    } else if (i55 == 1) {
                        g10.f94178c[i52] = 32770;
                    } else if (i55 == 2) {
                        g10.f94178c[i52] = 32768;
                    } else if (i55 == 3) {
                        g10.f94178c[i52] = 32774;
                    }
                } else {
                    g10.f94178c[i52] = i54 + 1;
                }
                g10.f94180e++;
            }
            i50 += i16 * 2;
        }
        int i56 = 0;
        for (int i57 = 0; i57 < params.f94379s; i57++) {
            if (iArr3[i57 * 2] == 255) {
                int i58 = i44 + i56;
                G g11 = new G(i58, i16);
                gArr[i58] = g11;
                g11.f94180e = 2;
                int[] iArr7 = g11.f94177b;
                int i59 = (i56 * 2) + i45;
                iArr7[0] = i59;
                iArr7[1] = i59 + 1;
                g11.f94179d = params.f94375o[i57];
                g11.c(params.f94376p[i57]);
                g11.d(1);
                i56++;
            }
        }
        int i60 = 4;
        if (params.f94368h != null) {
            int i61 = 0;
            int i62 = 0;
            while (i61 < params.f94366f) {
                H h10 = new H();
                hArr[i61] = h10;
                int[] iArr8 = params.f94368h;
                int i63 = i61 * 4;
                int i64 = iArr8[i63];
                int i65 = iArr8[i63 + 1];
                int i66 = gArr[i61].f94180e;
                h10.f94182a = i62;
                int i67 = i65 - i66;
                h10.f94184c = i67;
                h10.f94183b = iArr8[i63 + 2];
                h10.f94185d = iArr8[i63 + 3];
                if (i67 != 0) {
                    fArr2 = fArr9;
                    System.arraycopy(params.f94369i, (i64 + i66) * 3, fArr2, i62 * 3, i67 * 3);
                    i62 += i67;
                } else {
                    fArr2 = fArr9;
                }
                i61++;
                fArr9 = fArr2;
            }
            fArr = fArr9;
            iArr = iArr5;
            System.arraycopy(params.f94371k, 0, iArr, 0, params.f94372l * 4);
        } else {
            iArr = iArr5;
            fArr = fArr9;
            int i68 = 0;
            int i69 = 0;
            int i70 = 0;
            while (i69 < params.f94366f) {
                H h11 = new H();
                hArr[i69] = h11;
                int i71 = gArr[i69].f94180e;
                h11.f94182a = i68;
                h11.f94184c = i68;
                h11.f94183b = i70;
                h11.f94185d = i71 - 2;
                int i72 = i70;
                int i73 = 2;
                while (i73 < i71) {
                    int i74 = i72 * 4;
                    iArr[i74] = i68;
                    iArr[i74 + 1] = i73 - 1;
                    iArr[i74 + 2] = i73;
                    int i75 = i74 + 3;
                    iArr[i75] = i60;
                    if (i73 == 2) {
                        iArr[i75] = 4 | 1;
                    }
                    if (i73 == i71 - 1) {
                        iArr[i75] = iArr[i75] | 16;
                    }
                    i72++;
                    i73++;
                    i60 = 4;
                    i68 = 0;
                }
                i69++;
                i70 = i72;
                i60 = 4;
                i68 = 0;
            }
        }
        if (params.f94360E) {
            c13884aArr = c13884aArr3;
            rVar = rVar4;
            rVar.f94310m = c(params, c13884aArr);
        } else {
            c13884aArr = c13884aArr3;
            rVar = rVar4;
        }
        int i76 = 0;
        int i77 = 0;
        while (i76 < params.f94379s) {
            int i78 = i76 * 2;
            if (iArr3[i78] == 255) {
                F f19 = new F();
                fArr7[i77] = f19;
                f19.f94170c = i44 + i77;
                i14 = i44;
                c13884aArr2 = c13884aArr;
                iArr2 = iArr;
                System.arraycopy(params.f94373m, i76 * 6, f19.f94168a, 0, 6);
                f19.f94169b = params.f94374n[i76];
                f19.f94171d = params.f94377q[i76] != 0 ? 1 : 0;
                f19.f94172e = iArr3[i78 + 1];
                int[] iArr9 = params.f94378r;
                if (iArr9 != null) {
                    f19.f94173f = iArr9[i76];
                }
                i77++;
            } else {
                c13884aArr2 = c13884aArr;
                i14 = i44;
                iArr2 = iArr;
            }
            i76++;
            i44 = i14;
            iArr = iArr2;
            c13884aArr = c13884aArr2;
        }
        C13900q c13900q = new C13900q();
        c13900q.f94282a = rVar;
        c13900q.f94283b = fArr5;
        c13900q.f94284c = gArr;
        c13900q.f94285d = hArr;
        c13900q.f94286e = fArr;
        c13900q.f94287f = iArr;
        c13900q.f94288g = c13884aArr;
        c13900q.f94289h = fArr7;
        return c13900q;
    }

    public static int e(int x10, int y10, int z10) {
        int i10;
        if (y10 > x10) {
            i10 = 1;
            x10 = y10;
        } else {
            i10 = 0;
        }
        if (z10 > x10) {
            return 2;
        }
        return i10;
    }

    public static int f(b[] items, int nitems, int imin, int imax, int curNode, C13884a[] nodes) {
        int i10 = imax - imin;
        C13884a c13884a = new C13884a();
        int i11 = curNode + 1;
        nodes[curNode] = c13884a;
        if (i10 == 1) {
            int[] iArr = c13884a.f94236a;
            b bVar = items[imin];
            int[] iArr2 = bVar.f94353a;
            iArr[0] = iArr2[0];
            iArr[1] = iArr2[1];
            iArr[2] = iArr2[2];
            int[] iArr3 = c13884a.f94237b;
            int[] iArr4 = bVar.f94354b;
            iArr3[0] = iArr4[0];
            iArr3[1] = iArr4[1];
            iArr3[2] = iArr4[2];
            c13884a.f94238c = bVar.f94355c;
            return i11;
        }
        int[][] a10 = a(items, nitems, imin, imax);
        int[] iArr5 = a10[0];
        c13884a.f94236a = iArr5;
        int[] iArr6 = a10[1];
        c13884a.f94237b = iArr6;
        int e10 = e(iArr6[0] - iArr5[0], iArr6[1] - iArr5[1], iArr6[2] - iArr5[2]);
        if (e10 == 0) {
            Arrays.sort(items, imin, imin + i10, new c());
        } else if (e10 == 1) {
            Arrays.sort(items, imin, imin + i10, new d());
        } else {
            Arrays.sort(items, imin, imin + i10, new e());
        }
        int i12 = imin + (i10 / 2);
        int f10 = f(items, nitems, i12, imax, f(items, nitems, imin, i12, i11, nodes), nodes);
        c13884a.f94238c = -(f10 - curNode);
        return f10;
    }
}
