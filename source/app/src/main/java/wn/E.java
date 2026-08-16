package wn;

import java.util.Arrays;

public class E {

    public static final int f127625a = 65535;

    public static int f127626b = 4096;

    public static class b {

        public int[] f127627a;

        public int[] f127628b;

        public int[] f127629c;

        public b() {
            this.f127627a = new int[2];
            this.f127628b = new int[2];
            this.f127629c = new int[2];
        }
    }

    public static int A(int v10, int[] arr, int an2) {
        int i10 = an2 + 1;
        while (an2 > 0) {
            arr[an2] = arr[an2 - 1];
            an2--;
        }
        arr[0] = v10;
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void B(N ctx, C16033k mesh, int rem, int maxTris) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z10;
        int i16;
        int i17;
        int i18;
        int i19 = mesh.f127739g;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            i10 = 2;
            if (i20 >= mesh.f127738f) {
                break;
            }
            int i22 = i20 * i19 * 2;
            int j10 = j(mesh.f127734b, i22, i19);
            for (int i23 = 0; i23 < j10; i23++) {
                if (mesh.f127734b[i22 + i23] == rem) {
                    i21++;
                }
            }
            i20++;
        }
        int i24 = i21 * i19;
        int[] iArr = new int[i24 * 4];
        int[] iArr2 = new int[i24];
        int[] iArr3 = new int[i24];
        int[] iArr4 = new int[i24];
        int i25 = 0;
        int i26 = 0;
        while (i25 < mesh.f127738f) {
            int i27 = i25 * i19 * i10;
            int j11 = j(mesh.f127734b, i27, i19);
            boolean z11 = false;
            for (int i28 = 0; i28 < j11; i28++) {
                if (mesh.f127734b[i27 + i28] == rem) {
                    z11 = true;
                }
            }
            if (z11) {
                int i29 = j11 - 1;
                int i30 = 0;
                while (i30 < j11) {
                    int[] iArr5 = mesh.f127734b;
                    int i31 = i27 + i30;
                    if (iArr5[i31] != rem && (i18 = iArr5[i29 + i27]) != rem) {
                        int i32 = i26 * 4;
                        iArr[i32] = i18;
                        iArr[i32 + 1] = iArr5[i31];
                        iArr[i32 + 2] = mesh.f127735c[i25];
                        iArr[i32 + 3] = mesh.f127736d[i25];
                        i26++;
                    }
                    int i33 = i30;
                    i30++;
                    i29 = i33;
                }
                int i34 = (mesh.f127738f - 1) * i19 * 2;
                if (i27 != i34) {
                    int[] iArr6 = mesh.f127734b;
                    System.arraycopy(iArr6, i34, iArr6, i27, i19);
                }
                int i35 = i27 + i19;
                Arrays.fill(mesh.f127734b, i35, i35 + i19, u.f127822j);
                int[] iArr7 = mesh.f127735c;
                int i36 = mesh.f127738f;
                iArr7[i25] = iArr7[i36 - 1];
                int[] iArr8 = mesh.f127736d;
                iArr8[i25] = iArr8[i36 - 1];
                i17 = 1;
                mesh.f127738f = i36 - 1;
                i25--;
            } else {
                i17 = 1;
            }
            i25 += i17;
            i10 = 2;
        }
        int i37 = rem;
        while (true) {
            i11 = mesh.f127737e;
            if (i37 >= i11 - 1) {
                break;
            }
            int[] iArr9 = mesh.f127733a;
            int i38 = i37 * 3;
            i37++;
            int i39 = i37 * 3;
            iArr9[i38] = iArr9[i39];
            iArr9[i38 + 1] = iArr9[i39 + 1];
            iArr9[i38 + 2] = iArr9[i39 + 2];
        }
        int i40 = 2;
        mesh.f127737e = i11 - 1;
        int i41 = 0;
        while (i41 < mesh.f127738f) {
            int i42 = i41 * i19 * i40;
            int j12 = j(mesh.f127734b, i42, i19);
            for (int i43 = 0; i43 < j12; i43++) {
                int[] iArr10 = mesh.f127734b;
                int i44 = i42 + i43;
                int i45 = iArr10[i44];
                if (i45 > rem) {
                    iArr10[i44] = i45 - 1;
                }
            }
            i41++;
            i40 = 2;
        }
        for (int i46 = 0; i46 < i26; i46++) {
            int i47 = i46 * 4;
            int i48 = iArr[i47];
            if (i48 > rem) {
                iArr[i47] = i48 - 1;
            }
            int i49 = i47 + 1;
            int i50 = iArr[i49];
            if (i50 > rem) {
                iArr[i49] = i50 - 1;
            }
        }
        if (i26 == 0) {
            return;
        }
        z(iArr[0], iArr2, 0);
        z(iArr[2], iArr3, 0);
        z(iArr[3], iArr4, 0);
        int i51 = 0;
        int i52 = 0;
        int i53 = 0;
        while (true) {
            if (i26 == 0) {
                i12 = i19;
                break;
            }
            int i54 = 0;
            boolean z12 = false;
            while (i54 < i26) {
                int i55 = i54 * 4;
                int i56 = iArr[i55];
                int i57 = i55 + 1;
                int i58 = iArr[i57];
                int i59 = i55 + 2;
                int i60 = i19;
                int i61 = iArr[i59];
                int i62 = i55 + 3;
                int i63 = iArr[i62];
                boolean z13 = z12;
                if (iArr2[0] == i58) {
                    A(i56, iArr2, i51);
                    A(i61, iArr3, i52);
                    A(i63, iArr4, i53);
                } else if (iArr2[i51 - 1] == i56) {
                    i51 = z(i58, iArr2, i51);
                    int z14 = z(i61, iArr3, i52);
                    i53 = z(i63, iArr4, i53);
                    i52 = z14;
                } else {
                    z10 = false;
                    if (z10) {
                        z12 = z13;
                        i16 = 1;
                    } else {
                        int i64 = (i26 - 1) * 4;
                        iArr[i55] = iArr[i64];
                        iArr[i57] = iArr[i64 + 1];
                        iArr[i59] = iArr[i64 + 2];
                        iArr[i62] = iArr[i64 + 3];
                        i26--;
                        i54--;
                        i16 = 1;
                        z12 = true;
                    }
                    i54 += i16;
                    i19 = i60;
                }
                z10 = true;
                if (z10) {
                }
                i54 += i16;
                i19 = i60;
            }
            i12 = i19;
            if (!z12) {
                break;
            } else {
                i19 = i12;
            }
        }
        int[] iArr11 = new int[i51 * 3];
        int[] iArr12 = new int[i51 * 4];
        int[] iArr13 = new int[i51];
        for (int i65 = 0; i65 < i51; i65++) {
            int i66 = iArr2[i65];
            int i67 = i65 * 4;
            int[] iArr14 = mesh.f127733a;
            int i68 = i66 * 3;
            iArr12[i67] = iArr14[i68];
            iArr12[i67 + 1] = iArr14[i68 + 1];
            iArr12[i67 + 2] = iArr14[i68 + 2];
            iArr12[i67 + 3] = 0;
            iArr13[i65] = i65;
        }
        C16033k c16033k = mesh;
        int C10 = C(i51, iArr12, iArr13, iArr11);
        if (C10 < 0) {
            C10 = -C10;
            ctx.h("removeVertex: triangulate() returned bad results.");
        }
        int[] iArr15 = new int[(C10 + 1) * i12];
        int[] iArr16 = new int[C10];
        int[] iArr17 = new int[C10];
        int i69 = C10 * i12;
        Arrays.fill(iArr15, 0, i69, u.f127822j);
        int i70 = 0;
        int i71 = 0;
        while (i70 < C10) {
            int i72 = i70 * 3;
            int i73 = iArr11[i72];
            int i74 = i72 + 1;
            int i75 = iArr11[i74];
            if (i73 != i75) {
                int i76 = i72 + 2;
                i15 = C10;
                int i77 = iArr11[i76];
                if (i73 != i77 && i75 != i77) {
                    int i78 = i71 * i12;
                    iArr15[i78] = iArr2[i73];
                    iArr15[i78 + 1] = iArr2[iArr11[i74]];
                    iArr15[i78 + 2] = iArr2[iArr11[i76]];
                    int i79 = iArr3[iArr11[i72]];
                    int i80 = iArr3[iArr11[i74]];
                    if (i79 == i80 && i80 == iArr3[iArr11[i76]]) {
                        iArr16[i71] = i79;
                    } else {
                        iArr16[i71] = u.f127818f;
                    }
                    iArr17[i71] = iArr4[iArr11[i72]];
                    i71++;
                }
            } else {
                i15 = C10;
            }
            i70++;
            C10 = i15;
        }
        if (i71 == 0) {
            return;
        }
        int i81 = i12;
        if (i81 > 3) {
            int i82 = i71;
            while (true) {
                int i83 = 0;
                int i84 = 0;
                int i85 = 0;
                int i86 = 0;
                int i87 = 0;
                int i88 = 0;
                while (true) {
                    i14 = i82 - 1;
                    if (i83 >= i14) {
                        break;
                    }
                    int i89 = i83 * i81;
                    int i90 = i83 + 1;
                    int i91 = i90;
                    while (i91 < i82) {
                        int i92 = i83;
                        int i93 = i85;
                        int[] o10 = o(iArr15, i89, i91 * i81, c16033k.f127733a, i81);
                        int i94 = o10[0];
                        int i95 = o10[1];
                        int i96 = o10[2];
                        if (i94 > i84) {
                            i86 = i96;
                            i84 = i94;
                            i88 = i91;
                            i87 = i92;
                            i85 = i95;
                        } else {
                            i85 = i93;
                        }
                        i91++;
                        i83 = i92;
                    }
                    i83 = i90;
                }
                i13 = 0;
                if (i84 <= 0) {
                    break;
                }
                int i97 = i88 * i81;
                w(iArr15, i87 * i81, i97, i85, i86, i69, i81);
                if (iArr16[i87] != iArr16[i88]) {
                    iArr16[i87] = u.f127818f;
                }
                int i98 = i14 * i81;
                if (i97 != i98) {
                    System.arraycopy(iArr15, i98, iArr15, i97, i81);
                }
                iArr16[i88] = iArr16[i14];
                iArr17[i88] = iArr17[i14];
                i82--;
                c16033k = mesh;
            }
            i71 = i82;
        } else {
            i13 = 0;
        }
        for (int i99 = i13; i99 < i71; i99++) {
            int i100 = mesh.f127738f;
            if (i100 >= maxTris) {
                return;
            }
            int i101 = i100 * i81 * 2;
            Arrays.fill(mesh.f127734b, i101, (i81 * 2) + i101, u.f127822j);
            for (int i102 = i13; i102 < i81; i102++) {
                mesh.f127734b[i101 + i102] = iArr15[(i99 * i81) + i102];
            }
            int[] iArr18 = mesh.f127735c;
            int i103 = mesh.f127738f;
            iArr18[i103] = iArr16[i99];
            mesh.f127736d[i103] = iArr17[i99];
            int i104 = i103 + 1;
            mesh.f127738f = i104;
            if (i104 > maxTris) {
                throw new RuntimeException("removeVertex: Too many polygons " + mesh.f127738f + " (max:" + maxTris + ".");
            }
        }
    }

    public static int C(int n10, int[] verts, int[] indices, int[] tris) {
        int i10 = n10;
        for (int i11 = 0; i11 < i10; i11++) {
            int x10 = x(i11, i10);
            if (k(i11, x(x10, i10), i10, verts, indices)) {
                indices[x10] = Integer.MIN_VALUE | indices[x10];
            }
        }
        int i12 = 0;
        while (i10 > 3) {
            int i13 = -1;
            int i14 = -1;
            for (int i15 = 0; i15 < i10; i15++) {
                int x11 = x(i15, i10);
                if ((indices[x11] & Integer.MIN_VALUE) != 0) {
                    int i16 = (indices[i15] & ok.d.f99088b) * 4;
                    int i17 = (indices[x(x11, i10)] & ok.d.f99088b) * 4;
                    int i18 = verts[i17] - verts[i16];
                    int i19 = verts[i17 + 2] - verts[i16 + 2];
                    int i20 = (i18 * i18) + (i19 * i19);
                    if (i14 < 0 || i20 < i14) {
                        i13 = i15;
                        i14 = i20;
                    }
                }
            }
            if (i13 == -1) {
                i13 = -1;
                int i21 = -1;
                for (int i22 = 0; i22 < i10; i22++) {
                    int x12 = x(x(i22, i10), i10);
                    if (l(i22, x12, i10, verts, indices)) {
                        int i23 = (indices[i22] & ok.d.f99088b) * 4;
                        int i24 = (indices[x(x12, i10)] & ok.d.f99088b) * 4;
                        int i25 = verts[i24] - verts[i23];
                        int i26 = verts[i24 + 2] - verts[i23 + 2];
                        int i27 = (i25 * i25) + (i26 * i26);
                        if (i21 < 0 || i27 < i21) {
                            i13 = i22;
                            i21 = i27;
                        }
                    }
                }
                if (i13 == -1) {
                    return -i12;
                }
            }
            int x13 = x(i13, i10);
            int x14 = x(x13, i10);
            int i28 = i12 * 3;
            tris[i28] = indices[i13] & ok.d.f99088b;
            tris[i28 + 1] = indices[x13] & ok.d.f99088b;
            tris[i28 + 2] = indices[x14] & ok.d.f99088b;
            i12++;
            i10--;
            int i29 = x13;
            while (i29 < i10) {
                int i30 = i29 + 1;
                indices[i29] = indices[i30];
                i29 = i30;
            }
            if (x13 >= i10) {
                x13 = 0;
            }
            int y10 = y(x13, i10);
            if (k(y(y10, i10), x13, i10, verts, indices)) {
                indices[y10] = indices[y10] | Integer.MIN_VALUE;
            } else {
                indices[y10] = indices[y10] & ok.d.f99088b;
            }
            if (k(y10, x(x13, i10), i10, verts, indices)) {
                indices[x13] = indices[x13] | Integer.MIN_VALUE;
            } else {
                indices[x13] = indices[x13] & ok.d.f99088b;
            }
        }
        int i31 = i12 * 3;
        tris[i31] = indices[0] & ok.d.f99088b;
        tris[i31 + 1] = indices[1] & ok.d.f99088b;
        tris[i31 + 2] = indices[2] & ok.d.f99088b;
        return i12 + 1;
    }

    public static boolean D(int[] verts, int a10, int b10, int c10) {
        int i10 = verts[b10];
        int i11 = verts[a10];
        int i12 = verts[c10 + 2];
        int i13 = verts[a10 + 2];
        return ((i10 - i11) * (i12 - i13)) - ((verts[c10] - i11) * (verts[b10 + 2] - i13)) < 0;
    }

    public static boolean E(int[] verts, int a10, int b10) {
        return verts[a10] == verts[b10] && verts[a10 + 2] == verts[b10 + 2];
    }

    public static int[] a(int x10, int y10, int z10, int[] verts, int[] firstVert, int[] nextVert, int nv) {
        int h10 = h(x10, 0, z10);
        int i10 = firstVert[h10];
        while (i10 != -1) {
            int i11 = i10 * 3;
            if (verts[i11] == x10 && Math.abs(verts[i11 + 1] - y10) <= 2 && verts[i11 + 2] == z10) {
                return new int[]{i10, nv};
            }
            i10 = nextVert[i10];
        }
        int i12 = nv * 3;
        verts[i12] = x10;
        verts[i12 + 1] = y10;
        verts[i12 + 2] = z10;
        nextVert[nv] = firstVert[h10];
        firstVert[h10] = nv;
        return new int[]{nv, nv + 1};
    }

    public static int b(int[] verts, int a10, int b10, int c10) {
        int i10 = verts[b10];
        int i11 = verts[a10];
        int i12 = verts[c10 + 2];
        int i13 = verts[a10 + 2];
        return ((i10 - i11) * (i12 - i13)) - ((verts[c10] - i11) * (verts[b10 + 2] - i13));
    }

    public static boolean c(int[] verts, int a10, int b10, int c10) {
        if (!g(verts, a10, b10, c10)) {
            return false;
        }
        int i10 = verts[a10];
        int i11 = verts[b10];
        if (i10 != i11) {
            int i12 = verts[c10];
            return (i10 <= i12 && i12 <= i11) || (i10 >= i12 && i12 >= i11);
        }
        int i13 = verts[a10 + 2];
        int i14 = verts[c10 + 2];
        return (i13 <= i14 && i14 <= verts[b10 + 2]) || (i13 >= i14 && i14 >= verts[b10 + 2]);
    }

    public static void d(int[] polys, int npolys, int nverts, int vertsPerPoly) {
        int i10;
        int i11;
        int i12 = npolys;
        int i13 = i12 * vertsPerPoly;
        int[] iArr = new int[nverts + i13];
        b[] bVarArr = new b[i13];
        int i14 = 0;
        for (int i15 = 0; i15 < nverts; i15++) {
            iArr[i15] = u.f127822j;
        }
        int i16 = 0;
        for (int i17 = 0; i17 < i12; i17++) {
            int i18 = i17 * vertsPerPoly * 2;
            int i19 = 0;
            while (i19 < vertsPerPoly) {
                int i20 = i18 + i19;
                int i21 = polys[i20];
                int i22 = u.f127822j;
                if (i21 == i22) {
                    break;
                }
                int i23 = i19 + 1;
                if (i23 >= vertsPerPoly || (i11 = polys[i20 + 1]) == i22) {
                    i11 = polys[i18];
                }
                if (i21 < i11) {
                    b bVar = new b();
                    bVarArr[i16] = bVar;
                    int[] iArr2 = bVar.f127627a;
                    iArr2[0] = i21;
                    iArr2[1] = i11;
                    int[] iArr3 = bVar.f127629c;
                    iArr3[0] = i17;
                    int[] iArr4 = bVar.f127628b;
                    iArr4[0] = i19;
                    iArr3[1] = i17;
                    iArr4[1] = 0;
                    iArr[nverts + i16] = iArr[i21];
                    iArr[i21] = i16;
                    i16++;
                }
                i19 = i23;
            }
        }
        int i24 = 0;
        while (i24 < i12) {
            int i25 = i24 * vertsPerPoly * 2;
            int i26 = i14;
            while (i26 < vertsPerPoly) {
                int i27 = i25 + i26;
                int i28 = polys[i27];
                int i29 = u.f127822j;
                if (i28 == i29) {
                    break;
                }
                int i30 = i26 + 1;
                if (i30 >= vertsPerPoly || (i10 = polys[i27 + 1]) == i29) {
                    i10 = polys[i25];
                }
                if (i28 > i10) {
                    int i31 = iArr[i10];
                    while (true) {
                        if (i31 != u.f127822j) {
                            b bVar2 = bVarArr[i31];
                            if (bVar2.f127627a[1] == i28) {
                                int[] iArr5 = bVar2.f127629c;
                                if (iArr5[i14] == iArr5[1]) {
                                    iArr5[1] = i24;
                                    bVar2.f127628b[1] = i26;
                                    break;
                                }
                            }
                            i31 = iArr[nverts + i31];
                            i14 = 0;
                        }
                    }
                }
                i26 = i30;
                i14 = 0;
            }
            i24++;
            i12 = npolys;
            i14 = 0;
        }
        for (int i32 = 0; i32 < i16; i32++) {
            b bVar3 = bVarArr[i32];
            int[] iArr6 = bVar3.f127629c;
            int i33 = iArr6[0];
            int i34 = iArr6[1];
            if (i33 != i34) {
                int[] iArr7 = bVar3.f127628b;
                polys[(i33 * vertsPerPoly * 2) + vertsPerPoly + iArr7[0]] = i34;
                polys[(i34 * vertsPerPoly * 2) + vertsPerPoly + iArr7[1]] = iArr6[0];
            }
        }
    }

    public static C16033k e(N ctx, C16028f cset, int nvp) {
        int i10;
        int i11;
        int i12;
        String str;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        int i13;
        int i14;
        int[] iArr6;
        int i15;
        int[] iArr7;
        int[] iArr8;
        int[] iArr9;
        N n10 = ctx;
        C16028f c16028f = cset;
        String str2 = "POLYMESH";
        n10.f("POLYMESH");
        C16033k c16033k = new C16033k();
        int i16 = 0;
        I.f(c16033k.f127742j, c16028f.f127697b, 0);
        I.f(c16033k.f127743k, c16028f.f127698c, 0);
        c16033k.f127744l = c16028f.f127699d;
        c16033k.f127745m = c16028f.f127700e;
        c16033k.f127746n = c16028f.f127703h;
        c16033k.f127747o = c16028f.f127704i;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i10 = 3;
            if (i17 >= c16028f.f127696a.size()) {
                break;
            }
            if (c16028f.f127696a.get(i17).f127691b >= 3) {
                i18 += c16028f.f127696a.get(i17).f127691b;
                i20 += c16028f.f127696a.get(i17).f127691b - 2;
                i19 = Math.max(i19, c16028f.f127696a.get(i17).f127691b);
            }
            i17++;
        }
        if (i18 >= 65534) {
            throw new RuntimeException("rcBuildPolyMesh: Too many vertices " + i18);
        }
        int[] iArr10 = new int[i18];
        c16033k.f127733a = new int[i18 * 3];
        int[] iArr11 = new int[i20 * nvp * 2];
        c16033k.f127734b = iArr11;
        Arrays.fill(iArr11, u.f127822j);
        c16033k.f127735c = new int[i20];
        c16033k.f127736d = new int[i20];
        c16033k.f127737e = 0;
        c16033k.f127738f = 0;
        c16033k.f127739g = nvp;
        c16033k.f127740h = i20;
        int[] iArr12 = new int[i18];
        int[] iArr13 = new int[f127626b];
        for (int i21 = 0; i21 < f127626b; i21++) {
            iArr13[i21] = -1;
        }
        int[] iArr14 = new int[i19];
        int[] iArr15 = new int[i19 * 3];
        int[] iArr16 = new int[(i19 + 1) * nvp];
        int i22 = i19 * nvp;
        int i23 = 0;
        while (i23 < c16028f.f127696a.size()) {
            C16027e c16027e = c16028f.f127696a.get(i23);
            if (c16027e.f127691b < i10) {
                iArr2 = iArr16;
                iArr3 = iArr15;
                i13 = i23;
                iArr4 = iArr14;
                iArr = iArr13;
                iArr5 = iArr12;
                iArr6 = iArr10;
                str = str2;
                i14 = 0;
            } else {
                int i24 = 0;
                while (true) {
                    i12 = c16027e.f127691b;
                    if (i24 >= i12) {
                        break;
                    }
                    iArr14[i24] = i24;
                    i24++;
                }
                int C10 = C(i12, c16027e.f127690a, iArr14, iArr15);
                if (C10 <= 0) {
                    StringBuilder sb2 = new StringBuilder();
                    str = str2;
                    sb2.append("buildPolyMesh: Bad triangulation Contour ");
                    sb2.append(i23);
                    sb2.append(".");
                    n10.h(sb2.toString());
                    C10 = -C10;
                } else {
                    str = str2;
                }
                int i25 = 0;
                while (i25 < c16027e.f127691b) {
                    int i26 = i25 * 4;
                    int i27 = i23;
                    int[] iArr17 = c16027e.f127690a;
                    int[] a10 = a(iArr17[i26], iArr17[i26 + 1], iArr17[i26 + 2], c16033k.f127733a, iArr13, iArr12, c16033k.f127737e);
                    int i28 = a10[0];
                    iArr14[i25] = i28;
                    c16033k.f127737e = a10[1];
                    if ((c16027e.f127690a[i26 + 3] & u.f127819g) != 0) {
                        iArr10[i28] = 1;
                    }
                    i25++;
                    i23 = i27;
                }
                int i29 = i23;
                Arrays.fill(iArr16, u.f127822j);
                int i30 = 0;
                int i31 = 0;
                while (i31 < C10) {
                    int i32 = i31 * 3;
                    int i33 = iArr15[i32];
                    int i34 = i32 + 1;
                    int[] iArr18 = iArr13;
                    int i35 = iArr15[i34];
                    if (i33 != i35) {
                        int i36 = i32 + 2;
                        iArr9 = iArr12;
                        int i37 = iArr15[i36];
                        if (i33 != i37 && i35 != i37) {
                            int i38 = i30 * nvp;
                            iArr16[i38] = iArr14[i33];
                            iArr16[i38 + 1] = iArr14[iArr15[i34]];
                            iArr16[i38 + 2] = iArr14[iArr15[i36]];
                            i30++;
                        }
                    } else {
                        iArr9 = iArr12;
                    }
                    i31++;
                    iArr13 = iArr18;
                    iArr12 = iArr9;
                }
                iArr = iArr13;
                int[] iArr19 = iArr12;
                if (i30 == 0) {
                    iArr2 = iArr16;
                    iArr3 = iArr15;
                    iArr4 = iArr14;
                    iArr5 = iArr19;
                    i13 = i29;
                    i14 = 0;
                    iArr6 = iArr10;
                } else {
                    if (nvp > 3) {
                        while (true) {
                            int i39 = 0;
                            int i40 = 0;
                            int i41 = 0;
                            int i42 = 0;
                            int i43 = 0;
                            int i44 = 0;
                            while (true) {
                                i15 = i30 - 1;
                                if (i39 >= i15) {
                                    break;
                                }
                                int i45 = i39 * nvp;
                                int i46 = i39 + 1;
                                int[] iArr20 = iArr15;
                                int i47 = i46;
                                while (i47 < i30) {
                                    int i48 = i39;
                                    int[] iArr21 = iArr14;
                                    int[] o10 = o(iArr16, i45, i47 * nvp, c16033k.f127733a, nvp);
                                    int i49 = o10[0];
                                    int i50 = o10[1];
                                    int i51 = o10[2];
                                    if (i49 > i40) {
                                        i42 = i47;
                                        i44 = i51;
                                        i40 = i49;
                                        i41 = i48;
                                        i43 = i50;
                                    }
                                    i47++;
                                    i39 = i48;
                                    iArr14 = iArr21;
                                }
                                i39 = i46;
                                iArr15 = iArr20;
                            }
                            iArr7 = iArr15;
                            iArr8 = iArr14;
                            i14 = 0;
                            if (i40 <= 0) {
                                break;
                            }
                            int i52 = i41 * nvp;
                            int i53 = i42 * nvp;
                            int[] iArr22 = iArr16;
                            int i54 = i29;
                            int i55 = i44;
                            int[] iArr23 = iArr19;
                            int[] iArr24 = iArr10;
                            w(iArr16, i52, i53, i43, i55, i22, nvp);
                            int i56 = i15 * nvp;
                            if (i53 != i56) {
                                System.arraycopy(iArr22, i56, iArr22, i53, nvp);
                            }
                            i30--;
                            iArr16 = iArr22;
                            iArr15 = iArr7;
                            iArr10 = iArr24;
                            i29 = i54;
                            iArr14 = iArr8;
                            iArr19 = iArr23;
                        }
                        iArr2 = iArr16;
                        iArr5 = iArr19;
                        iArr3 = iArr7;
                        iArr4 = iArr8;
                        i13 = i29;
                    } else {
                        iArr2 = iArr16;
                        iArr3 = iArr15;
                        iArr4 = iArr14;
                        iArr5 = iArr19;
                        i13 = i29;
                        i14 = 0;
                    }
                    iArr6 = iArr10;
                    for (int i57 = i14; i57 < i30; i57++) {
                        int i58 = c16033k.f127738f * nvp * 2;
                        int i59 = i57 * nvp;
                        for (int i60 = i14; i60 < nvp; i60++) {
                            c16033k.f127734b[i58 + i60] = iArr2[i59 + i60];
                        }
                        int[] iArr25 = c16033k.f127735c;
                        int i61 = c16033k.f127738f;
                        iArr25[i61] = c16027e.f127695f;
                        c16033k.f127736d[i61] = c16027e.f127694e;
                        int i62 = i61 + 1;
                        c16033k.f127738f = i62;
                        if (i62 > i20) {
                            throw new RuntimeException("rcBuildPolyMesh: Too many polygons " + c16033k.f127738f + " (max:" + i20 + ").");
                        }
                    }
                }
            }
            i23 = i13 + 1;
            n10 = ctx;
            c16028f = cset;
            iArr16 = iArr2;
            iArr12 = iArr5;
            iArr15 = iArr3;
            iArr13 = iArr;
            iArr10 = iArr6;
            iArr14 = iArr4;
            i16 = i14;
            str2 = str;
            i10 = 3;
        }
        int[] iArr26 = iArr10;
        String str3 = str2;
        int i63 = i16;
        int i64 = i63;
        while (true) {
            i11 = c16033k.f127737e;
            if (i64 >= i11) {
                break;
            }
            if (iArr26[i64] != 0 && f(ctx, c16033k, i64)) {
                B(ctx, c16033k, i64, i20);
                int i65 = i64;
                while (i65 < c16033k.f127737e) {
                    int i66 = i65 + 1;
                    iArr26[i65] = iArr26[i66];
                    i65 = i66;
                }
                i64--;
            }
            i64++;
        }
        d(c16033k.f127734b, c16033k.f127738f, i11, nvp);
        if (c16033k.f127746n > 0) {
            int i67 = cset.f127701f;
            int i68 = cset.f127702g;
            for (int i69 = i63; i69 < c16033k.f127738f; i69++) {
                int i70 = i69 * 2 * nvp;
                for (int i71 = i63; i71 < nvp; i71++) {
                    int[] iArr27 = c16033k.f127734b;
                    int i72 = iArr27[i70 + i71];
                    int i73 = u.f127822j;
                    if (i72 == i73) {
                        break;
                    }
                    int i74 = i70 + nvp + i71;
                    if (iArr27[i74] == i73) {
                        int i75 = i71 + 1;
                        if (i75 >= nvp || iArr27[i70 + i75] == i73) {
                            i75 = i63;
                        }
                        int i76 = i72 * 3;
                        int i77 = iArr27[i75 + i70] * 3;
                        int[] iArr28 = c16033k.f127733a;
                        int i78 = iArr28[i76];
                        if (i78 == 0 && iArr28[i77] == 0) {
                            iArr27[i74] = 32768;
                        } else {
                            int i79 = iArr28[i76 + 2];
                            if (i79 == i68 && iArr28[i77 + 2] == i68) {
                                iArr27[i74] = 32769;
                            } else if (i78 == i67 && iArr28[i77] == i67) {
                                iArr27[i74] = 32770;
                            } else if (i79 == 0 && iArr28[i77 + 2] == 0) {
                                iArr27[i74] = 32771;
                            }
                        }
                    }
                }
            }
        }
        int i80 = c16033k.f127738f;
        c16033k.f127741i = new int[i80];
        if (c16033k.f127737e > 65535) {
            throw new RuntimeException("rcBuildPolyMesh: The resulting mesh has too many vertices " + c16033k.f127737e + " (max 65535). Data can be corrupted.");
        }
        if (i80 <= 65535) {
            ctx.g(str3);
            return c16033k;
        }
        throw new RuntimeException("rcBuildPolyMesh: The resulting mesh has too many polygons " + c16033k.f127738f + " (max 65535). Data can be corrupted.");
    }

    public static boolean f(N ctx, C16033k mesh, int rem) {
        int i10 = mesh.f127739g;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < mesh.f127738f; i14++) {
            int i15 = i14 * i10 * 2;
            int j10 = j(mesh.f127734b, i15, i10);
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < j10; i18++) {
                if (mesh.f127734b[i15 + i18] == rem) {
                    i13++;
                    i16++;
                }
                i17++;
            }
            if (i16 != 0) {
                i12 += i17 - (i16 + 1);
            }
        }
        if (i12 <= 2) {
            return false;
        }
        int[] iArr = new int[i13 * 6];
        int i19 = 0;
        int i20 = 0;
        while (i19 < mesh.f127738f) {
            int i21 = i19 * i10 * 2;
            int j11 = j(mesh.f127734b, i21, i10);
            int i22 = j11 - 1;
            int i23 = i11;
            while (i23 < j11) {
                int[] iArr2 = mesh.f127734b;
                int i24 = iArr2[i21 + i23];
                if (i24 == rem || iArr2[i21 + i22] == rem) {
                    int i25 = iArr2[i22 + i21];
                    if (i25 == rem) {
                        i24 = i25;
                        i25 = i24;
                    }
                    int i26 = i11;
                    int i27 = i26;
                    while (i26 < i20) {
                        int i28 = i26 * 3;
                        if (iArr[i28 + 1] == i25) {
                            int i29 = i28 + 2;
                            iArr[i29] = iArr[i29] + 1;
                            i27 = 1;
                        }
                        i26++;
                    }
                    if (i27 == 0) {
                        int i30 = i20 * 3;
                        iArr[i30] = i24;
                        iArr[i30 + 1] = i25;
                        iArr[i30 + 2] = 1;
                        i20++;
                    }
                }
                i22 = i23;
                i23++;
                i11 = 0;
            }
            i19++;
            i11 = 0;
        }
        int i31 = 0;
        for (int i32 = 0; i32 < i20; i32++) {
            if (iArr[(i32 * 3) + 2] < 2) {
                i31++;
            }
        }
        return i31 <= 2;
    }

    public static boolean g(int[] verts, int a10, int b10, int c10) {
        return b(verts, a10, b10, c10) == 0;
    }

    public static int h(int x10, int y10, int z10) {
        return ((x10 * (-1918454973)) + (y10 * (-669632447)) + (z10 * (-887442657))) & (f127626b - 1);
    }

    public static C16033k i(N ctx, C16033k src) {
        C16033k c16033k = new C16033k();
        c16033k.f127737e = src.f127737e;
        c16033k.f127738f = src.f127738f;
        c16033k.f127740h = src.f127738f;
        c16033k.f127739g = src.f127739g;
        I.f(c16033k.f127742j, src.f127742j, 0);
        I.f(c16033k.f127743k, src.f127743k, 0);
        c16033k.f127744l = src.f127744l;
        c16033k.f127745m = src.f127745m;
        c16033k.f127746n = src.f127746n;
        c16033k.f127747o = src.f127747o;
        int[] iArr = new int[src.f127737e * 3];
        c16033k.f127733a = iArr;
        System.arraycopy(src.f127733a, 0, iArr, 0, iArr.length);
        int[] iArr2 = new int[src.f127738f * 2 * src.f127739g];
        c16033k.f127734b = iArr2;
        System.arraycopy(src.f127734b, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = new int[src.f127738f];
        c16033k.f127735c = iArr3;
        System.arraycopy(src.f127735c, 0, iArr3, 0, iArr3.length);
        int[] iArr4 = new int[src.f127738f];
        c16033k.f127736d = iArr4;
        System.arraycopy(src.f127736d, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = new int[src.f127738f];
        c16033k.f127741i = iArr5;
        System.arraycopy(src.f127741i, 0, iArr5, 0, iArr5.length);
        return c16033k;
    }

    public static int j(int[] p10, int j10, int nvp) {
        for (int i10 = 0; i10 < nvp; i10++) {
            if (p10[i10 + j10] == u.f127822j) {
                return i10;
            }
        }
        return nvp;
    }

    public static boolean k(int i10, int j10, int n10, int[] verts, int[] indices) {
        return p(i10, j10, n10, verts, indices) && m(i10, j10, n10, verts, indices);
    }

    public static boolean l(int i10, int j10, int n10, int[] verts, int[] indices) {
        return q(i10, j10, n10, verts, indices) && n(i10, j10, n10, verts, indices);
    }

    public static boolean m(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & ok.d.f99088b) * 4;
        int i12 = (indices[j10] & ok.d.f99088b) * 4;
        for (int i13 = 0; i13 < n10; i13++) {
            int x10 = x(i13, n10);
            if (i13 != i10 && x10 != i10 && i13 != j10 && x10 != j10) {
                int i14 = (indices[i13] & ok.d.f99088b) * 4;
                int i15 = (indices[x10] & ok.d.f99088b) * 4;
                if (!E(verts, i11, i14) && !E(verts, i12, i14) && !E(verts, i11, i15) && !E(verts, i12, i15) && r(verts, i11, i12, i14, i15)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean n(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & ok.d.f99088b) * 4;
        int i12 = (indices[j10] & ok.d.f99088b) * 4;
        for (int i13 = 0; i13 < n10; i13++) {
            int x10 = x(i13, n10);
            if (i13 != i10 && x10 != i10 && i13 != j10 && x10 != j10) {
                int i14 = (indices[i13] & ok.d.f99088b) * 4;
                int i15 = (indices[x10] & ok.d.f99088b) * 4;
                if (!E(verts, i11, i14) && !E(verts, i12, i14) && !E(verts, i11, i15) && !E(verts, i12, i15) && s(verts, i11, i12, i14, i15)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int[] o(int[] polys, int pa2, int pb2, int[] verts, int nvp) {
        int j10 = j(polys, pa2, nvp);
        int j11 = j(polys, pb2, nvp);
        if ((j10 + j11) - 2 > nvp) {
            return new int[]{-1, -1, -1};
        }
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        while (i12 < j10) {
            int i13 = polys[pa2 + i12];
            int i14 = i12 + 1;
            int i15 = polys[(i14 % j10) + pa2];
            if (i13 > i15) {
                i15 = i13;
                i13 = i15;
            }
            int i16 = 0;
            while (true) {
                if (i16 < j11) {
                    int i17 = polys[pb2 + i16];
                    int i18 = i16 + 1;
                    int i19 = polys[pb2 + (i18 % j11)];
                    if (i17 > i19) {
                        i17 = i19;
                        i19 = i17;
                    }
                    if (i13 == i17 && i15 == i19) {
                        i10 = i12;
                        i11 = i16;
                        break;
                    }
                    i16 = i18;
                }
            }
            i12 = i14;
        }
        if (i10 == -1 || i11 == -1) {
            return new int[]{-1, i10, i11};
        }
        int i20 = pa2 + i10;
        if (!D(verts, polys[(((i10 + j10) - 1) % j10) + pa2] * 3, polys[i20] * 3, polys[((i11 + 2) % j11) + pb2] * 3)) {
            return new int[]{-1, i10, i11};
        }
        if (!D(verts, polys[(((i11 + j11) - 1) % j11) + pb2] * 3, polys[pb2 + i11] * 3, polys[((i10 + 2) % j10) + pa2] * 3)) {
            return new int[]{-1, i10, i11};
        }
        int i21 = polys[i20] * 3;
        int i22 = polys[pa2 + ((i10 + 1) % j10)] * 3;
        int i23 = verts[i21] - verts[i22];
        int i24 = verts[i21 + 2] - verts[i22 + 2];
        return new int[]{(i23 * i23) + (i24 * i24), i10, i11};
    }

    public static boolean p(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & ok.d.f99088b) * 4;
        int i12 = (indices[j10] & ok.d.f99088b) * 4;
        int i13 = (indices[x(i10, n10)] & ok.d.f99088b) * 4;
        int i14 = (indices[y(i10, n10)] & ok.d.f99088b) * 4;
        return u(verts, i14, i11, i13) ? t(verts, i11, i12, i14) && t(verts, i12, i11, i13) : (u(verts, i11, i12, i13) && u(verts, i12, i11, i14)) ? false : true;
    }

    public static boolean q(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & ok.d.f99088b) * 4;
        int i12 = (indices[j10] & ok.d.f99088b) * 4;
        int i13 = (indices[x(i10, n10)] & ok.d.f99088b) * 4;
        int i14 = (indices[y(i10, n10)] & ok.d.f99088b) * 4;
        return u(verts, i14, i11, i13) ? u(verts, i11, i12, i14) && u(verts, i12, i11, i13) : (u(verts, i11, i12, i13) && u(verts, i12, i11, i14)) ? false : true;
    }

    public static boolean r(int[] verts, int a10, int b10, int c10, int d10) {
        return s(verts, a10, b10, c10, d10) || c(verts, a10, b10, c10) || c(verts, a10, b10, d10) || c(verts, c10, d10, a10) || c(verts, c10, d10, b10);
    }

    public static boolean s(int[] verts, int a10, int b10, int c10, int d10) {
        if (g(verts, a10, b10, c10) || g(verts, a10, b10, d10) || g(verts, c10, d10, a10) || g(verts, c10, d10, b10) || !(t(verts, a10, b10, c10) ^ t(verts, a10, b10, d10))) {
            return false;
        }
        return t(verts, c10, d10, b10) ^ t(verts, c10, d10, a10);
    }

    public static boolean t(int[] verts, int a10, int b10, int c10) {
        return b(verts, a10, b10, c10) < 0;
    }

    public static boolean u(int[] verts, int a10, int b10, int c10) {
        return b(verts, a10, b10, c10) <= 0;
    }

    public static C16033k v(N ctx, C16033k[] meshes, int nmeshes) {
        int i10;
        int i11;
        int i12 = nmeshes;
        if (i12 == 0 || meshes == null) {
            return null;
        }
        ctx.f("MERGE_POLYMESH");
        C16033k c16033k = new C16033k();
        int i13 = 0;
        C16033k c16033k2 = meshes[0];
        c16033k.f127739g = c16033k2.f127739g;
        c16033k.f127744l = c16033k2.f127744l;
        c16033k.f127745m = c16033k2.f127745m;
        I.f(c16033k.f127742j, c16033k2.f127742j, 0);
        I.f(c16033k.f127743k, meshes[0].f127743k, 0);
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < i12; i17++) {
            I.l(c16033k.f127742j, meshes[i17].f127742j, 0);
            I.j(c16033k.f127743k, meshes[i17].f127743k, 0);
            i16 = Math.max(i16, meshes[i17].f127737e);
            C16033k c16033k3 = meshes[i17];
            i14 += c16033k3.f127737e;
            i15 += c16033k3.f127738f;
        }
        c16033k.f127737e = 0;
        c16033k.f127733a = new int[i14 * 3];
        c16033k.f127738f = 0;
        int[] iArr = new int[i15 * 2 * c16033k.f127739g];
        c16033k.f127734b = iArr;
        Arrays.fill(iArr, 0, iArr.length, u.f127822j);
        c16033k.f127735c = new int[i15];
        c16033k.f127736d = new int[i15];
        c16033k.f127741i = new int[i15];
        int[] iArr2 = new int[i14];
        int[] iArr3 = new int[f127626b];
        for (int i18 = 0; i18 < f127626b; i18++) {
            iArr3[i18] = -1;
        }
        int[] iArr4 = new int[i16];
        int i19 = 0;
        while (i19 < i12) {
            C16033k c16033k4 = meshes[i19];
            int floor = (int) Math.floor(((c16033k4.f127742j[i13] - c16033k.f127742j[i13]) / c16033k.f127744l) + 0.5f);
            int i20 = 2;
            int floor2 = (int) Math.floor(((c16033k4.f127742j[2] - c16033k.f127742j[2]) / c16033k.f127744l) + 0.5f);
            int i21 = floor == 0 ? 1 : i13;
            int i22 = floor2 == 0 ? 1 : i13;
            int i23 = Math.floor((double) (((c16033k.f127743k[i13] - c16033k4.f127743k[i13]) / c16033k.f127744l) + 0.5f)) == 0.0d ? 1 : i13;
            int i24 = Math.floor((double) (((c16033k.f127743k[2] - c16033k4.f127743k[2]) / c16033k.f127744l) + 0.5f)) == 0.0d ? 1 : i13;
            int i25 = (i21 == 0 && i22 == 0 && i23 == 0 && i24 == 0) ? i13 : 1;
            int i26 = i13;
            while (i26 < c16033k4.f127737e) {
                int i27 = i26 * 3;
                int[] iArr5 = c16033k4.f127733a;
                int i28 = i26;
                int[] a10 = a(iArr5[i27] + floor, iArr5[i27 + 1], iArr5[i27 + i20] + floor2, c16033k.f127733a, iArr3, iArr2, c16033k.f127737e);
                iArr4[i28] = a10[0];
                c16033k.f127737e = a10[1];
                i26 = i28 + 1;
                i13 = 0;
                floor2 = floor2;
                floor = floor;
                c16033k4 = c16033k4;
                i20 = 2;
            }
            int i29 = i13;
            int i30 = 1;
            int i31 = i29;
            C16033k c16033k5 = c16033k4;
            while (i31 < c16033k5.f127738f) {
                int i32 = c16033k.f127738f;
                int i33 = c16033k.f127739g;
                int i34 = i32 * 2 * i33;
                int i35 = i31 * 2 * i33;
                c16033k.f127735c[i32] = c16033k5.f127735c[i31];
                c16033k.f127736d[i32] = c16033k5.f127736d[i31];
                c16033k.f127741i[i32] = c16033k5.f127741i[i31];
                c16033k.f127738f = i32 + i30;
                int i36 = i29;
                while (true) {
                    i10 = c16033k.f127739g;
                    if (i36 >= i10 || (i11 = c16033k5.f127734b[i35 + i36]) == u.f127822j) {
                        break;
                    }
                    c16033k.f127734b[i34 + i36] = iArr4[i11];
                    i36++;
                }
                if (i25 != 0) {
                    while (i10 < c16033k.f127739g * 2) {
                        int i37 = c16033k5.f127734b[i35 + i10];
                        if ((32768 & i37) != 0 && i37 != 65535) {
                            int i38 = i37 & 15;
                            if (i38 != 0) {
                                if (i38 != i30) {
                                    if (i38 != 2) {
                                        if (i38 == 3 && i22 != 0) {
                                            c16033k.f127734b[i34 + i10] = i37;
                                        }
                                    } else if (i23 != 0) {
                                        c16033k.f127734b[i34 + i10] = i37;
                                    }
                                } else if (i24 != 0) {
                                    c16033k.f127734b[i34 + i10] = i37;
                                }
                            } else if (i21 != 0) {
                                c16033k.f127734b[i34 + i10] = i37;
                            }
                        }
                        i10++;
                        i30 = 1;
                    }
                }
                i31++;
                i30 = 1;
                i29 = 0;
            }
            i19++;
            i12 = nmeshes;
            i13 = 0;
        }
        d(c16033k.f127734b, c16033k.f127738f, c16033k.f127737e, c16033k.f127739g);
        if (c16033k.f127737e > 65535) {
            throw new RuntimeException("rcBuildPolyMesh: The resulting mesh has too many vertices " + c16033k.f127737e + " (max 65535). Data can be corrupted.");
        }
        if (c16033k.f127738f <= 65535) {
            ctx.g("MERGE_POLYMESH");
            return c16033k;
        }
        throw new RuntimeException("rcBuildPolyMesh: The resulting mesh has too many polygons " + c16033k.f127738f + " (max 65535). Data can be corrupted.");
    }

    public static void w(int[] polys, int pa2, int pb2, int ea2, int eb2, int tmp, int nvp) {
        int j10 = j(polys, pa2, nvp);
        int j11 = j(polys, pb2, nvp);
        Arrays.fill(polys, tmp, tmp + nvp, u.f127822j);
        int i10 = 0;
        for (int i11 = 0; i11 < j10 - 1; i11++) {
            polys[tmp + i10] = polys[(((ea2 + 1) + i11) % j10) + pa2];
            i10++;
        }
        for (int i12 = 0; i12 < j11 - 1; i12++) {
            polys[tmp + i10] = polys[(((eb2 + 1) + i12) % j11) + pb2];
            i10++;
        }
        System.arraycopy(polys, tmp, polys, pa2, nvp);
    }

    public static int x(int i10, int n10) {
        int i11 = i10 + 1;
        if (i11 < n10) {
            return i11;
        }
        return 0;
    }

    public static int y(int i10, int n10) {
        int i11 = i10 - 1;
        return i11 >= 0 ? i11 : n10 - 1;
    }

    public static int z(int v10, int[] arr, int an2) {
        arr[an2] = v10;
        return an2 + 1;
    }
}
