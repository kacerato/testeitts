package wn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class H {

    public static final int f127642a = 65535;

    public static class a {

        public int f127643a;

        public int f127644b;

        public int f127645c;

        public boolean f127646d;

        public boolean f127647e;

        public boolean f127648f;

        public boolean f127649g;

        public int f127651i;

        public int f127650h = 65535;

        public List<Integer> f127652j = new ArrayList();

        public List<Integer> f127653k = new ArrayList();

        public a(int i10) {
            this.f127644b = i10;
        }
    }

    public static class b {

        public int f127654a;

        public int f127655b;

        public int f127656c;

        public int f127657d;
    }

    public static void a(a reg, int n10) {
        if (reg.f127652j.contains(Integer.valueOf(n10))) {
            return;
        }
        reg.f127652j.add(Integer.valueOf(n10));
    }

    public static void b(a reg, int n10) {
        if (reg.f127653k.contains(Integer.valueOf(n10))) {
            return;
        }
        reg.f127653k.add(Integer.valueOf(n10));
    }

    public static void c(List<Integer> srcStack, List<Integer> dstStack, int[] srcReg) {
        for (int i10 = 0; i10 < srcStack.size(); i10 += 3) {
            int i11 = i10 + 2;
            int intValue = srcStack.get(i11).intValue();
            if (intValue >= 0 && srcReg[intValue] == 0) {
                dstStack.add(srcStack.get(i10));
                dstStack.add(srcStack.get(i10 + 1));
                dstStack.add(srcStack.get(i11));
            }
        }
    }

    public static int[] d(C16025c chf, int thr, int[] src) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = chf.f127670a;
        int i16 = chf.f127671b;
        int[] iArr = new int[chf.f127672c];
        int i17 = thr * 2;
        for (int i18 = 0; i18 < i16; i18++) {
            for (int i19 = 0; i19 < i15; i19++) {
                C16024b c16024b = chf.f127682m[(i18 * i15) + i19];
                int i20 = c16024b.f127668a;
                int i21 = c16024b.f127669b + i20;
                while (i20 < i21) {
                    C16026d c16026d = chf.f127683n[i20];
                    int i22 = src[i20];
                    if (i22 <= i17) {
                        iArr[i20] = i22;
                        i10 = i16;
                        i11 = i17;
                    } else {
                        int i23 = i22;
                        int i24 = 0;
                        while (i24 < 4) {
                            if (r.a(c16026d, i24) != 63) {
                                int b10 = r.b(i24) + i19;
                                int c10 = i18 + r.c(i24);
                                int a10 = chf.f127682m[b10 + (c10 * i15)].f127668a + r.a(c16026d, i24);
                                i23 += src[a10];
                                C16026d c16026d2 = chf.f127683n[a10];
                                int i25 = (i24 + 1) & 3;
                                i12 = i16;
                                i13 = i17;
                                if (r.a(c16026d2, i25) != 63) {
                                    i14 = src[chf.f127682m[b10 + r.b(i25) + ((c10 + r.c(i25)) * i15)].f127668a + r.a(c16026d2, i25)];
                                } else {
                                    i23 += i22;
                                    i24++;
                                    i16 = i12;
                                    i17 = i13;
                                }
                            } else {
                                i12 = i16;
                                i13 = i17;
                                i14 = i22 * 2;
                            }
                            i23 += i14;
                            i24++;
                            i16 = i12;
                            i17 = i13;
                        }
                        i10 = i16;
                        i11 = i17;
                        iArr[i20] = (i23 + 5) / 9;
                    }
                    i20++;
                    i16 = i10;
                    i17 = i11;
                }
            }
        }
        return iArr;
    }

    public static void e(N ctx, C16025c chf) {
        ctx.f("DISTANCEFIELD");
        int[] iArr = new int[chf.f127672c];
        ctx.f("DISTANCEFIELD_DIST");
        chf.f127676g = i(chf, iArr);
        ctx.g("DISTANCEFIELD_DIST");
        ctx.f("DISTANCEFIELD_BLUR");
        chf.f127684o = d(chf, 1, iArr);
        ctx.g("DISTANCEFIELD_BLUR");
        ctx.g("DISTANCEFIELD");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(N ctx, C16025c chf, int minRegionArea) {
        int i10;
        boolean z10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z11;
        int i15;
        ctx.f("REGIONS");
        int i16 = chf.f127670a;
        int i17 = chf.f127671b;
        int i18 = chf.f127675f;
        int[] iArr = new int[chf.f127672c];
        int max = Math.max(i16, i17);
        b[] bVarArr = new b[max];
        for (int i19 = 0; i19 < max; i19++) {
            bVarArr[i19] = new b();
        }
        if (i18 > 0) {
            int min = Math.min(i16, i18);
            int min2 = Math.min(i17, i18);
            r(0, min, 0, i17, u.f127817e | 1, chf, iArr);
            r(i16 - min, i16, 0, i17, 2 | u.f127817e, chf, iArr);
            r(0, i16, 0, min2, 3 | u.f127817e, chf, iArr);
            r(0, i16, i17 - min2, i17, 4 | u.f127817e, chf, iArr);
            i10 = 5;
        } else {
            i10 = 1;
        }
        int[] iArr2 = new int[1024];
        int i20 = i18;
        while (i20 < i17 - i18) {
            int i21 = i10 * 2;
            if (iArr2.length <= i21) {
                iArr2 = new int[i21];
                z10 = false;
            } else {
                z10 = false;
                Arrays.fill(iArr2, 0, i10, 0);
            }
            int i22 = i18;
            int i23 = 1;
            while (true) {
                i11 = i16 - i18;
                if (i22 >= i11) {
                    break;
                }
                C16024b c16024b = chf.f127682m[i22 + (i20 * i16)];
                int i24 = c16024b.f127668a;
                int i25 = c16024b.f127669b + i24;
                while (i24 < i25) {
                    C16026d c16026d = chf.f127683n[i24];
                    int i26 = i17;
                    if (chf.f127685p[i24] == 0) {
                        i12 = i18;
                        i13 = i25;
                        z11 = false;
                    } else {
                        i12 = i18;
                        i13 = i25;
                        if (r.a(c16026d, 0) != 63) {
                            int a10 = chf.f127682m[r.b(0) + i22 + ((i20 + r.c(0)) * i16)].f127668a + r.a(c16026d, 0);
                            int i27 = iArr[a10];
                            if ((u.f127817e & i27) == 0) {
                                int[] iArr3 = chf.f127685p;
                                if (iArr3[i24] == iArr3[a10]) {
                                    i14 = i27;
                                    if (i14 != 0) {
                                        i15 = i23 + 1;
                                        b bVar = bVarArr[i23];
                                        bVar.f127654a = i23;
                                        bVar.f127656c = 0;
                                        bVar.f127657d = 0;
                                        z11 = false;
                                    } else {
                                        z11 = false;
                                        i15 = i23;
                                        i23 = i14;
                                    }
                                    int i28 = i15;
                                    if (r.a(c16026d, 3) != 63) {
                                        int a11 = chf.f127682m[r.b(3) + i22 + ((r.c(3) + i20) * i16)].f127668a + r.a(c16026d, 3);
                                        int i29 = iArr[a11];
                                        if (i29 != 0 && (u.f127817e & i29) == 0) {
                                            int[] iArr4 = chf.f127685p;
                                            if (iArr4[i24] == iArr4[a11]) {
                                                b bVar2 = bVarArr[i23];
                                                int i30 = bVar2.f127657d;
                                                if (i30 == 0 || i30 == i29) {
                                                    bVar2.f127657d = i29;
                                                    bVar2.f127656c++;
                                                    if (iArr2.length <= i29) {
                                                        iArr2 = Arrays.copyOf(iArr2, iArr2.length * 2);
                                                    }
                                                    iArr2[i29] = iArr2[i29] + 1;
                                                    iArr[i24] = i23;
                                                    i23 = i28;
                                                } else {
                                                    bVar2.f127657d = 65535;
                                                }
                                            }
                                        }
                                    }
                                    iArr[i24] = i23;
                                    i23 = i28;
                                }
                            }
                        }
                        i14 = 0;
                        if (i14 != 0) {
                        }
                        int i282 = i15;
                        if (r.a(c16026d, 3) != 63) {
                        }
                        iArr[i24] = i23;
                        i23 = i282;
                    }
                    i24++;
                    z10 = z11;
                    i17 = i26;
                    i18 = i12;
                    i25 = i13;
                }
                i22++;
                i18 = i18;
            }
            int i31 = i17;
            int i32 = i18;
            for (int i33 = 1; i33 < i23; i33++) {
                b bVar3 = bVarArr[i33];
                int i34 = bVar3.f127657d;
                if (i34 == 65535 || i34 == 0 || iArr2[i34] != bVar3.f127656c) {
                    bVar3.f127655b = i10;
                    i10++;
                } else {
                    bVar3.f127655b = i34;
                }
            }
            for (int i35 = i32; i35 < i11; i35++) {
                C16024b c16024b2 = chf.f127682m[(i20 * i16) + i35];
                int i36 = c16024b2.f127668a;
                int i37 = c16024b2.f127669b + i36;
                while (i36 < i37) {
                    int i38 = iArr[i36];
                    if (i38 > 0 && i38 < i23) {
                        iArr[i36] = bVarArr[i38].f127655b;
                    }
                    i36++;
                }
            }
            i20++;
            i17 = i31;
            i18 = i32;
        }
        ctx.f("REGIONS_FILTER");
        chf.f127677h = o(ctx, minRegionArea, i10, chf, iArr, new ArrayList());
        ctx.g("REGIONS_FILTER");
        for (int i39 = 0; i39 < chf.f127672c; i39++) {
            chf.f127683n[i39].f127687b = iArr[i39];
        }
        ctx.g("REGIONS");
    }

    public static void g(N ctx, C16025c chf, int minRegionArea, int mergeRegionArea) {
        int i10;
        int[] iArr;
        int[] iArr2;
        ArrayList arrayList;
        int i11;
        char c10;
        int[] iArr3;
        int[] iArr4;
        int i12;
        ArrayList arrayList2;
        String str;
        String str2;
        char c11;
        String str3 = "REGIONS";
        ctx.f("REGIONS");
        int i13 = chf.f127670a;
        int i14 = chf.f127671b;
        int i15 = chf.f127675f;
        String str4 = "REGIONS_WATERSHED";
        ctx.f("REGIONS_WATERSHED");
        ArrayList arrayList3 = new ArrayList();
        for (int i16 = 0; i16 < 8; i16++) {
            arrayList3.add(new ArrayList(1024));
        }
        ArrayList arrayList4 = new ArrayList(1024);
        int i17 = chf.f127672c;
        int[] iArr5 = new int[i17];
        int[] iArr6 = new int[i17];
        int i18 = (chf.f127676g + 1) & (-2);
        if (i15 > 0) {
            int min = Math.min(i13, i15);
            int min2 = Math.min(i14, i15);
            i10 = 2;
            iArr = iArr6;
            iArr2 = iArr5;
            arrayList = arrayList4;
            r(0, min, 0, i14, u.f127817e | 1, chf, iArr2);
            r(i13 - min, i13, 0, i14, 2 | u.f127817e, chf, iArr2);
            r(0, i13, 0, min2, 3 | u.f127817e, chf, iArr2);
            r(0, i13, i14 - min2, i14, 4 | u.f127817e, chf, iArr2);
            i11 = 5;
        } else {
            i10 = 2;
            iArr = iArr6;
            iArr2 = iArr5;
            arrayList = arrayList4;
            i11 = 1;
        }
        chf.f127675f = i15;
        int i19 = -1;
        int i20 = i11;
        int i21 = i18;
        while (i21 > 0) {
            int i22 = i21 >= i10 ? i21 - 2 : 0;
            int i23 = (i19 + 1) & 7;
            if (i23 == 0) {
                c10 = '\b';
                u(i22, chf, iArr2, 8, arrayList3, 1);
                iArr3 = iArr2;
            } else {
                c10 = '\b';
                iArr3 = iArr2;
                c((List) arrayList3.get(i23 - 1), (List) arrayList3.get(i23), iArr3);
            }
            ctx.f("REGIONS_EXPAND");
            k(8, i22, chf, iArr3, iArr, (List) arrayList3.get(i23), false);
            ctx.g("REGIONS_EXPAND");
            ctx.f("REGIONS_FLOOD");
            int i24 = i20;
            int i25 = 0;
            while (i25 < ((List) arrayList3.get(i23)).size()) {
                int intValue = ((Integer) ((List) arrayList3.get(i23)).get(i25)).intValue();
                int intValue2 = ((Integer) ((List) arrayList3.get(i23)).get(i25 + 1)).intValue();
                int intValue3 = ((Integer) ((List) arrayList3.get(i23)).get(i25 + 2)).intValue();
                if (intValue3 < 0 || iArr3[intValue3] != 0) {
                    iArr4 = iArr3;
                    i12 = i23;
                    arrayList2 = arrayList3;
                    str = str4;
                    str2 = str3;
                    c11 = c10;
                } else {
                    iArr4 = iArr3;
                    i12 = i23;
                    c11 = c10;
                    arrayList2 = arrayList3;
                    str = str4;
                    str2 = str3;
                    if (l(intValue, intValue2, intValue3, i22, i24, chf, iArr4, iArr, arrayList)) {
                        i24++;
                    }
                }
                i25 += 3;
                i23 = i12;
                c10 = c11;
                arrayList3 = arrayList2;
                iArr3 = iArr4;
                str4 = str;
                str3 = str2;
            }
            ctx.g("REGIONS_FLOOD");
            i20 = i24;
            i19 = i23;
            i10 = 2;
            i21 = i22;
            iArr2 = iArr3;
        }
        String str5 = str3;
        int[] iArr7 = iArr2;
        k(64, 0, chf, iArr7, iArr, arrayList, true);
        ctx.g(str4);
        ctx.f("REGIONS_FILTER");
        ArrayList arrayList5 = new ArrayList();
        chf.f127677h = p(ctx, minRegionArea, mergeRegionArea, i20, chf, iArr7, arrayList5);
        if (arrayList5.size() > 0) {
            ctx.h("rcBuildRegions: " + arrayList5.size() + " overlapping regions.");
        }
        ctx.g("REGIONS_FILTER");
        for (int i26 = 0; i26 < chf.f127672c; i26++) {
            chf.f127683n[i26].f127687b = iArr7[i26];
        }
        ctx.g(str5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00df, code lost:
    
        if (r12[r6] == r12[r11]) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h(N ctx, C16025c chf, int minRegionArea, int mergeRegionArea) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        ctx.f("REGIONS");
        int i16 = chf.f127670a;
        int i17 = chf.f127671b;
        int i18 = chf.f127675f;
        int[] iArr = new int[chf.f127672c];
        int max = Math.max(i16, i17);
        b[] bVarArr = new b[max];
        for (int i19 = 0; i19 < max; i19++) {
            bVarArr[i19] = new b();
        }
        if (i18 > 0) {
            int min = Math.min(i16, i18);
            int min2 = Math.min(i17, i18);
            r(0, min, 0, i17, u.f127817e | 1, chf, iArr);
            r(i16 - min, i16, 0, i17, 2 | u.f127817e, chf, iArr);
            r(0, i16, 0, min2, 3 | u.f127817e, chf, iArr);
            r(0, i16, i17 - min2, i17, 4 | u.f127817e, chf, iArr);
            i10 = 5;
        } else {
            i10 = 1;
        }
        int[] iArr2 = new int[1024];
        int i20 = i10;
        int i21 = i18;
        while (i21 < i17 - i18) {
            int i22 = i20 * 2;
            if (iArr2.length < i22) {
                iArr2 = new int[i22];
            } else {
                Arrays.fill(iArr2, 0, i20, 0);
            }
            int i23 = i18;
            int i24 = 1;
            while (true) {
                i11 = i16 - i18;
                if (i23 >= i11) {
                    break;
                }
                C16024b c16024b = chf.f127682m[i23 + (i21 * i16)];
                int i25 = c16024b.f127668a;
                int i26 = c16024b.f127669b + i25;
                while (i25 < i26) {
                    C16026d c16026d = chf.f127683n[i25];
                    int i27 = i26;
                    if (chf.f127685p[i25] == 0) {
                        i12 = i17;
                        i13 = i18;
                    } else {
                        i12 = i17;
                        i13 = i18;
                        if (r.a(c16026d, 0) != 63) {
                            int a10 = chf.f127682m[r.b(0) + i23 + ((i21 + r.c(0)) * i16)].f127668a + r.a(c16026d, 0);
                            int i28 = iArr[a10];
                            if ((u.f127817e & i28) == 0) {
                                int[] iArr3 = chf.f127685p;
                                i14 = i28;
                            }
                        }
                        i14 = 0;
                        if (i14 == 0) {
                            i15 = i24 + 1;
                            b bVar = bVarArr[i24];
                            bVar.f127654a = i24;
                            bVar.f127656c = 0;
                            bVar.f127657d = 0;
                        } else {
                            i15 = i24;
                            i24 = i14;
                        }
                        int i29 = i15;
                        if (r.a(c16026d, 3) != 63) {
                            int a11 = chf.f127682m[r.b(3) + i23 + ((r.c(3) + i21) * i16)].f127668a + r.a(c16026d, 3);
                            int i30 = iArr[a11];
                            if (i30 != 0 && (u.f127817e & i30) == 0) {
                                int[] iArr4 = chf.f127685p;
                                if (iArr4[i25] == iArr4[a11]) {
                                    b bVar2 = bVarArr[i24];
                                    int i31 = bVar2.f127657d;
                                    if (i31 == 0 || i31 == i30) {
                                        bVar2.f127657d = i30;
                                        bVar2.f127656c++;
                                        if (iArr2.length <= i30) {
                                            iArr2 = Arrays.copyOf(iArr2, iArr2.length * 2);
                                        }
                                        iArr2[i30] = iArr2[i30] + 1;
                                    } else {
                                        bVar2.f127657d = 65535;
                                    }
                                }
                            }
                        }
                        iArr[i25] = i24;
                        i24 = i29;
                    }
                    i25++;
                    i26 = i27;
                    i17 = i12;
                    i18 = i13;
                }
                i23++;
            }
            int i32 = i17;
            int i33 = i18;
            for (int i34 = 1; i34 < i24; i34++) {
                b bVar3 = bVarArr[i34];
                int i35 = bVar3.f127657d;
                if (i35 == 65535 || i35 == 0 || iArr2[i35] != bVar3.f127656c) {
                    bVar3.f127655b = i20;
                    i20++;
                } else {
                    bVar3.f127655b = i35;
                }
            }
            for (int i36 = i33; i36 < i11; i36++) {
                C16024b c16024b2 = chf.f127682m[(i21 * i16) + i36];
                int i37 = c16024b2.f127668a;
                int i38 = c16024b2.f127669b + i37;
                while (i37 < i38) {
                    int i39 = iArr[i37];
                    if (i39 > 0 && i39 < i24) {
                        iArr[i37] = bVarArr[i39].f127655b;
                    }
                    i37++;
                }
            }
            i21++;
            i17 = i32;
            i18 = i33;
        }
        ctx.f("REGIONS_FILTER");
        chf.f127677h = p(ctx, minRegionArea, mergeRegionArea, i20, chf, iArr, new ArrayList());
        ctx.g("REGIONS_FILTER");
        for (int i40 = 0; i40 < chf.f127672c; i40++) {
            chf.f127683n[i40].f127687b = iArr[i40];
        }
        ctx.g("REGIONS");
    }

    public static int i(C16025c chf, int[] src) {
        int i10 = chf.f127670a;
        int i11 = chf.f127671b;
        int i12 = 0;
        for (int i13 = 0; i13 < chf.f127672c; i13++) {
            src[i13] = 65535;
        }
        for (int i14 = 0; i14 < i11; i14++) {
            for (int i15 = 0; i15 < i10; i15++) {
                C16024b c16024b = chf.f127682m[(i14 * i10) + i15];
                int i16 = c16024b.f127668a;
                int i17 = c16024b.f127669b + i16;
                while (i16 < i17) {
                    C16026d c16026d = chf.f127683n[i16];
                    int i18 = chf.f127685p[i16];
                    int i19 = 0;
                    for (int i20 = 0; i20 < 4; i20++) {
                        if (r.a(c16026d, i20) != 63) {
                            if (i18 == chf.f127685p[chf.f127682m[r.b(i20) + i15 + ((r.c(i20) + i14) * i10)].f127668a + r.a(c16026d, i20)]) {
                                i19++;
                            }
                        }
                    }
                    if (i19 != 4) {
                        src[i16] = 0;
                    }
                    i16++;
                }
            }
        }
        int i21 = 0;
        while (i21 < i11) {
            int i22 = i12;
            while (i22 < i10) {
                C16024b c16024b2 = chf.f127682m[(i21 * i10) + i22];
                int i23 = c16024b2.f127668a;
                int i24 = c16024b2.f127669b + i23;
                while (i23 < i24) {
                    C16026d c16026d2 = chf.f127683n[i23];
                    if (r.a(c16026d2, i12) != 63) {
                        int b10 = r.b(i12) + i22;
                        int c10 = r.c(i12) + i21;
                        int a10 = chf.f127682m[(c10 * i10) + b10].f127668a + r.a(c16026d2, i12);
                        C16026d c16026d3 = chf.f127683n[a10];
                        int i25 = src[a10];
                        if (i25 + 2 < src[i23]) {
                            src[i23] = i25 + 2;
                        }
                        if (r.a(c16026d3, 3) != 63) {
                            int i26 = src[chf.f127682m[b10 + r.b(3) + ((c10 + r.c(3)) * i10)].f127668a + r.a(c16026d3, 3)];
                            if (i26 + 3 < src[i23]) {
                                src[i23] = i26 + 3;
                            }
                        }
                    }
                    if (r.a(c16026d2, 3) != 63) {
                        int b11 = r.b(3) + i22;
                        int c11 = r.c(3) + i21;
                        int a11 = chf.f127682m[(c11 * i10) + b11].f127668a + r.a(c16026d2, 3);
                        C16026d c16026d4 = chf.f127683n[a11];
                        int i27 = src[a11];
                        if (i27 + 2 < src[i23]) {
                            src[i23] = i27 + 2;
                        }
                        if (r.a(c16026d4, 2) != 63) {
                            int i28 = src[chf.f127682m[b11 + r.b(2) + ((c11 + r.c(2)) * i10)].f127668a + r.a(c16026d4, 2)];
                            if (i28 + 3 < src[i23]) {
                                src[i23] = i28 + 3;
                            }
                        }
                    }
                    i23++;
                    i12 = 0;
                }
                i22++;
                i12 = 0;
            }
            i21++;
            i12 = 0;
        }
        for (int i29 = i11 - 1; i29 >= 0; i29--) {
            for (int i30 = i10 - 1; i30 >= 0; i30--) {
                C16024b c16024b3 = chf.f127682m[(i29 * i10) + i30];
                int i31 = c16024b3.f127668a;
                int i32 = c16024b3.f127669b + i31;
                while (i31 < i32) {
                    C16026d c16026d5 = chf.f127683n[i31];
                    if (r.a(c16026d5, 2) != 63) {
                        int b12 = r.b(2) + i30;
                        int c12 = r.c(2) + i29;
                        int a12 = chf.f127682m[(c12 * i10) + b12].f127668a + r.a(c16026d5, 2);
                        C16026d c16026d6 = chf.f127683n[a12];
                        int i33 = src[a12];
                        if (i33 + 2 < src[i31]) {
                            src[i31] = i33 + 2;
                        }
                        if (r.a(c16026d6, 1) != 63) {
                            int i34 = src[chf.f127682m[b12 + r.b(1) + ((c12 + r.c(1)) * i10)].f127668a + r.a(c16026d6, 1)];
                            if (i34 + 3 < src[i31]) {
                                src[i31] = i34 + 3;
                            }
                        }
                    }
                    if (r.a(c16026d5, 1) != 63) {
                        int b13 = r.b(1) + i30;
                        int c13 = r.c(1) + i29;
                        int a13 = chf.f127682m[(c13 * i10) + b13].f127668a + r.a(c16026d5, 1);
                        C16026d c16026d7 = chf.f127683n[a13];
                        int i35 = src[a13];
                        if (i35 + 2 < src[i31]) {
                            src[i31] = i35 + 2;
                        }
                        if (r.a(c16026d7, 0) != 63) {
                            int i36 = src[chf.f127682m[b13 + r.b(0) + ((c13 + r.c(0)) * i10)].f127668a + r.a(c16026d7, 0)];
                            if (i36 + 3 < src[i31]) {
                                src[i31] = i36 + 3;
                            }
                        }
                    }
                    i31++;
                }
            }
        }
        int i37 = 0;
        for (int i38 = 0; i38 < chf.f127672c; i38++) {
            i37 = Math.max(src[i38], i37);
        }
        return i37;
    }

    public static boolean j(a rega, a regb) {
        if (rega.f127645c != regb.f127645c) {
            return false;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < rega.f127652j.size(); i11++) {
            if (rega.f127652j.get(i11).intValue() == regb.f127644b) {
                i10++;
            }
        }
        if (i10 > 1) {
            return false;
        }
        for (int i12 = 0; i12 < rega.f127653k.size(); i12++) {
            if (rega.f127653k.get(i12).intValue() == regb.f127644b) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int[] k(int maxIter, int level, C16025c chf, int[] srcReg, int[] srcDist, List<Integer> stack, boolean fillStack) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = chf.f127670a;
        int i15 = chf.f127671b;
        if (fillStack) {
            stack.clear();
            for (int i16 = 0; i16 < i15; i16++) {
                for (int i17 = 0; i17 < i14; i17++) {
                    C16024b c16024b = chf.f127682m[(i16 * i14) + i17];
                    int i18 = c16024b.f127668a;
                    int i19 = c16024b.f127669b + i18;
                    while (i18 < i19) {
                        if (chf.f127684o[i18] >= level && srcReg[i18] == 0 && chf.f127685p[i18] != 0) {
                            stack.add(Integer.valueOf(i17));
                            stack.add(Integer.valueOf(i16));
                            stack.add(Integer.valueOf(i18));
                        }
                        i18++;
                    }
                }
            }
        } else {
            for (int i20 = 0; i20 < stack.size(); i20 += 3) {
                int i21 = i20 + 2;
                if (srcReg[stack.get(i21).intValue()] != 0) {
                    stack.set(i21, -1);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        int i22 = 0;
        while (stack.size() > 0) {
            arrayList.clear();
            int i23 = 0;
            int i24 = 0;
            while (i23 < stack.size()) {
                int intValue = stack.get(i23).intValue();
                int intValue2 = stack.get(i23 + 1).intValue();
                int i25 = i23 + 2;
                Integer num = stack.get(i25);
                int intValue3 = num.intValue();
                if (intValue3 < 0) {
                    i24++;
                    i11 = i22;
                    i10 = i23;
                } else {
                    int i26 = srcReg[intValue3];
                    int i27 = chf.f127685p[intValue3];
                    C16026d c16026d = chf.f127683n[intValue3];
                    i10 = i23;
                    int i28 = 0;
                    int i29 = i26;
                    i11 = i22;
                    int i30 = 65535;
                    while (i28 < 4) {
                        int i31 = i24;
                        if (r.a(c16026d, i28) == 63) {
                            i12 = intValue;
                        } else {
                            i12 = intValue;
                            int a10 = chf.f127682m[r.b(i28) + intValue + ((r.c(i28) + intValue2) * i14)].f127668a + r.a(c16026d, i28);
                            if (chf.f127685p[a10] == i27 && (i13 = srcReg[a10]) > 0 && (u.f127817e & i13) == 0) {
                                int i32 = srcDist[a10];
                                if (i32 + 2 < i30) {
                                    i30 = i32 + 2;
                                    i29 = i13;
                                }
                            }
                        }
                        i28++;
                        i24 = i31;
                        intValue = i12;
                    }
                    int i33 = i24;
                    if (i29 != 0) {
                        stack.set(i25, -1);
                        arrayList.add(num);
                        arrayList.add(Integer.valueOf(i29));
                        arrayList.add(Integer.valueOf(i30));
                        i24 = i33;
                    } else {
                        i24 = i33 + 1;
                    }
                }
                i23 = i10 + 3;
                i22 = i11;
            }
            int i34 = i22;
            int i35 = i24;
            for (int i36 = 0; i36 < arrayList.size(); i36 += 3) {
                int intValue4 = ((Integer) arrayList.get(i36)).intValue();
                srcReg[intValue4] = ((Integer) arrayList.get(i36 + 1)).intValue();
                srcDist[intValue4] = ((Integer) arrayList.get(i36 + 2)).intValue();
            }
            if (i35 * 3 == stack.size()) {
                break;
            }
            if (level > 0) {
                i22 = i34 + 1;
                if (i22 >= maxIter) {
                    break;
                }
            } else {
                i22 = i34;
            }
        }
        return srcReg;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v5 */
    public static boolean l(int i10, int i11, int i12, int i13, int i14, C16025c c16025c, int[] iArr, int[] iArr2, List<Integer> list) {
        int i15;
        List<Integer> list2 = list;
        int i16 = c16025c.f127670a;
        int i17 = c16025c.f127685p[i12];
        list.clear();
        list2.add(Integer.valueOf(i10));
        list2.add(Integer.valueOf(i11));
        list2.add(Integer.valueOf(i12));
        iArr[i12] = i14;
        boolean z10 = false;
        iArr2[i12] = 0;
        int i18 = i13 >= 2 ? i13 - 2 : 0;
        int i19 = 0;
        while (list.size() > 0) {
            int intValue = list2.remove(list.size() - 1).intValue();
            int intValue2 = list2.remove(list.size() - 1).intValue();
            int intValue3 = list2.remove(list.size() - 1).intValue();
            C16026d c16026d = c16025c.f127683n[intValue];
            ?? r12 = z10;
            while (true) {
                if (r12 >= 4) {
                    i15 = 0;
                    break;
                }
                if (r.a(c16026d, r12) != 63) {
                    int b10 = r.b(r12) + intValue3;
                    int c10 = intValue2 + r.c(r12);
                    int a10 = c16025c.f127682m[b10 + (c10 * i16)].f127668a + r.a(c16026d, r12);
                    if (c16025c.f127685p[a10] != i17) {
                        continue;
                    } else {
                        int i20 = iArr[a10];
                        if ((i20 & u.f127817e) != 0) {
                            continue;
                        } else {
                            if (i20 != 0 && i20 != i14) {
                                i15 = i20;
                                break;
                            }
                            C16026d c16026d2 = c16025c.f127683n[a10];
                            int i21 = (r12 + 1) & 3;
                            if (r.a(c16026d2, i21) != 63) {
                                int a11 = c16025c.f127682m[b10 + r.b(i21) + ((c10 + r.c(i21)) * i16)].f127668a + r.a(c16026d2, i21);
                                if (c16025c.f127685p[a11] == i17 && (i15 = iArr[a11]) != 0 && i15 != i14) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                r12++;
            }
            if (i15 != 0) {
                iArr[intValue] = 0;
                z10 = false;
                list2 = list;
            } else {
                i19++;
                for (int i22 = 0; i22 < 4; i22++) {
                    if (r.a(c16026d, i22) != 63) {
                        int b11 = r.b(i22) + intValue3;
                        int c11 = r.c(i22) + intValue2;
                        int a12 = c16025c.f127682m[(c11 * i16) + b11].f127668a + r.a(c16026d, i22);
                        if (c16025c.f127685p[a12] == i17 && c16025c.f127684o[a12] >= i18 && iArr[a12] == 0) {
                            iArr[a12] = i14;
                            iArr2[a12] = 0;
                            list.add(Integer.valueOf(b11));
                            list.add(Integer.valueOf(c11));
                            list.add(Integer.valueOf(a12));
                        }
                    }
                }
                list2 = list;
                z10 = false;
            }
        }
        boolean z11 = z10;
        if (i19 > 0) {
            return true;
        }
        return z11;
    }

    public static boolean m(a reg) {
        return reg.f127652j.contains(0);
    }

    public static boolean n(C16025c chf, int[] srcReg, int x10, int y10, int i10, int dir) {
        C16026d c16026d = chf.f127683n[i10];
        return (r.a(c16026d, dir) != 63 ? srcReg[chf.f127682m[(x10 + r.b(dir)) + ((y10 + r.c(dir)) * chf.f127670a)].f127668a + r.a(c16026d, dir)] : 0) != srcReg[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int o(N ctx, int minRegionArea, int maxRegionId, C16025c chf, int[] srcReg, List<Integer> overlaps) {
        int i10;
        int i11 = chf.f127670a;
        int i12 = chf.f127671b;
        int i13 = 1;
        int i14 = maxRegionId + 1;
        a[] aVarArr = new a[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            aVarArr[i15] = new a(i15);
        }
        ArrayList arrayList = new ArrayList(32);
        int i16 = 0;
        while (i16 < i12) {
            int i17 = 0;
            while (i17 < i11) {
                C16024b c16024b = chf.f127682m[(i16 * i11) + i17];
                arrayList.clear();
                int i18 = c16024b.f127668a;
                int i19 = c16024b.f127669b + i18;
                while (i18 < i19) {
                    C16026d c16026d = chf.f127683n[i18];
                    int i20 = srcReg[i18];
                    if (i20 != 0 && i20 < i14) {
                        a aVar = aVarArr[i20];
                        aVar.f127643a += i13;
                        aVar.f127645c = chf.f127685p[i18];
                        aVar.f127650h = Math.min(aVar.f127650h, c16026d.f127686a);
                        aVar.f127651i = Math.max(aVar.f127651i, c16026d.f127686a);
                        arrayList.add(Integer.valueOf(i20));
                        int i21 = 0;
                        while (i21 < 4) {
                            if (r.a(c16026d, i21) != 63) {
                                i10 = i12;
                                int i22 = srcReg[chf.f127682m[r.b(i21) + i17 + ((r.c(i21) + i16) * i11)].f127668a + r.a(c16026d, i21)];
                                if (i22 > 0 && i22 < i14 && i22 != i20) {
                                    a(aVar, i22);
                                }
                                if ((i22 & u.f127817e) != 0) {
                                    aVar.f127649g = true;
                                }
                            } else {
                                i10 = i12;
                            }
                            i21++;
                            i12 = i10;
                        }
                    }
                    i18++;
                    i12 = i12;
                    i13 = 1;
                }
                int i23 = i12;
                int i24 = 0;
                while (i24 < arrayList.size() - 1) {
                    int i25 = i24 + 1;
                    for (int i26 = i25; i26 < arrayList.size(); i26++) {
                        if (arrayList.get(i24) != arrayList.get(i26)) {
                            a aVar2 = aVarArr[((Integer) arrayList.get(i24)).intValue()];
                            a aVar3 = aVarArr[((Integer) arrayList.get(i26)).intValue()];
                            b(aVar2, ((Integer) arrayList.get(i26)).intValue());
                            b(aVar3, ((Integer) arrayList.get(i24)).intValue());
                        }
                    }
                    i24 = i25;
                }
                i17++;
                i12 = i23;
                i13 = 1;
            }
            i16++;
            i13 = 1;
        }
        for (int i27 = 0; i27 < i14; i27++) {
            aVarArr[i27].f127644b = 0;
        }
        ArrayList arrayList2 = new ArrayList(32);
        int i28 = 1;
        for (int i29 = 1; i29 < i14; i29++) {
            a aVar4 = aVarArr[i29];
            if (aVar4.f127644b == 0) {
                aVar4.f127644b = i28;
                arrayList2.clear();
                arrayList2.add(Integer.valueOf(i29));
                while (arrayList2.size() > 0) {
                    a aVar5 = aVarArr[((Integer) arrayList2.remove(0)).intValue()];
                    int size = aVar5.f127652j.size();
                    for (int i30 = 0; i30 < size; i30++) {
                        Integer num = aVar5.f127652j.get(i30);
                        int intValue = num.intValue();
                        a aVar6 = aVarArr[intValue];
                        if (aVar6.f127644b == 0 && aVar5.f127645c == aVar6.f127645c) {
                            int i31 = 0;
                            while (true) {
                                if (i31 >= aVar4.f127653k.size()) {
                                    arrayList2.add(num);
                                    aVar6.f127644b = i28;
                                    for (int i32 = 0; i32 < aVar6.f127653k.size(); i32++) {
                                        b(aVar4, aVar6.f127653k.get(i32).intValue());
                                    }
                                    aVar4.f127650h = Math.min(aVar4.f127650h, aVar6.f127650h);
                                    aVar4.f127651i = Math.max(aVar4.f127651i, aVar6.f127651i);
                                    aVar4.f127643a += aVar6.f127643a;
                                    aVar6.f127643a = 0;
                                    aVar4.f127649g = aVar4.f127649g || aVar6.f127649g;
                                } else {
                                    if (aVar4.f127653k.get(i31).intValue() == intValue) {
                                        break;
                                    }
                                    i31++;
                                }
                            }
                        }
                    }
                }
                i28++;
            }
        }
        for (int i33 = 0; i33 < i14; i33++) {
            a aVar7 = aVarArr[i33];
            int i34 = aVar7.f127643a;
            if (i34 > 0 && i34 < minRegionArea && !aVar7.f127649g) {
                int i35 = aVar7.f127644b;
                for (int i36 = 0; i36 < i14; i36++) {
                    a aVar8 = aVarArr[i36];
                    if (aVar8.f127644b == i35) {
                        aVar8.f127644b = 0;
                    }
                }
            }
        }
        for (int i37 = 0; i37 < i14; i37++) {
            a aVar9 = aVarArr[i37];
            aVar9.f127646d = false;
            int i38 = aVar9.f127644b;
            if (i38 != 0 && (i38 & u.f127817e) == 0) {
                aVar9.f127646d = true;
            }
        }
        int i39 = 0;
        for (int i40 = 0; i40 < i14; i40++) {
            a aVar10 = aVarArr[i40];
            if (aVar10.f127646d) {
                int i41 = aVar10.f127644b;
                i39++;
                for (int i42 = i40; i42 < i14; i42++) {
                    a aVar11 = aVarArr[i42];
                    if (aVar11.f127644b == i41) {
                        aVar11.f127644b = i39;
                        aVar11.f127646d = false;
                    }
                }
            }
        }
        for (int i43 = 0; i43 < chf.f127672c; i43++) {
            int i44 = srcReg[i43];
            if ((u.f127817e & i44) == 0) {
                srcReg[i43] = aVarArr[i44].f127644b;
            }
        }
        return i39;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v9 */
    public static int p(N n10, int i10, int i11, int i12, C16025c c16025c, int[] iArr, List<Integer> list) {
        int i13;
        int i14;
        a aVar;
        int i15;
        int i16;
        int i17;
        int i18;
        C16024b c16024b;
        int i19;
        a aVar2;
        int i20;
        int i21;
        int i22 = c16025c.f127670a;
        int i23 = c16025c.f127671b;
        boolean z10 = true;
        int i24 = i12 + 1;
        a[] aVarArr = new a[i24];
        for (int i25 = 0; i25 < i24; i25++) {
            aVarArr[i25] = new a(i25);
        }
        int i26 = 0;
        while (i26 < i23) {
            int i27 = 0;
            boolean z11 = z10;
            while (i27 < i22) {
                C16024b c16024b2 = c16025c.f127682m[(i26 * i22) + i27];
                int i28 = c16024b2.f127668a;
                int i29 = i28 + c16024b2.f127669b;
                int i30 = i28;
                ?? r10 = z11;
                while (i30 < i29) {
                    int i31 = iArr[i30];
                    if (i31 != 0 && i31 < i24) {
                        a aVar3 = aVarArr[i31];
                        aVar3.f127643a += r10;
                        for (int i32 = c16024b2.f127668a; i32 < i29; i32++) {
                            if (i30 != i32 && (i21 = iArr[i32]) != 0 && i21 < i24) {
                                if (i21 == i31) {
                                    aVar3.f127648f = r10;
                                }
                                b(aVar3, i21);
                            }
                        }
                        if (aVar3.f127652j.size() <= 0) {
                            aVar3.f127645c = c16025c.f127685p[i30];
                            int i33 = 0;
                            while (true) {
                                if (i33 >= 4) {
                                    i19 = -1;
                                    aVar2 = aVar3;
                                    i17 = i30;
                                    i18 = i29;
                                    i20 = -1;
                                    break;
                                }
                                i19 = -1;
                                int i34 = i33;
                                aVar2 = aVar3;
                                i17 = i30;
                                i18 = i29;
                                if (n(c16025c, iArr, i27, i26, i30, i34)) {
                                    i20 = i34;
                                    break;
                                }
                                i33 = i34 + 1;
                                aVar3 = aVar2;
                                i30 = i17;
                                i29 = i18;
                            }
                            if (i20 != i19) {
                                c16024b = c16024b2;
                                v(i27, i26, i17, i20, c16025c, iArr, aVar2.f127652j);
                                i30 = i17 + 1;
                                c16024b2 = c16024b;
                                i29 = i18;
                                r10 = 1;
                            }
                            c16024b = c16024b2;
                            i30 = i17 + 1;
                            c16024b2 = c16024b;
                            i29 = i18;
                            r10 = 1;
                        }
                    }
                    i17 = i30;
                    i18 = i29;
                    c16024b = c16024b2;
                    i30 = i17 + 1;
                    c16024b2 = c16024b;
                    i29 = i18;
                    r10 = 1;
                }
                i27++;
                z11 = true;
            }
            i26++;
            z10 = true;
        }
        ArrayList arrayList = new ArrayList(32);
        ArrayList arrayList2 = new ArrayList(32);
        for (int i35 = 0; i35 < i24; i35++) {
            a aVar4 = aVarArr[i35];
            int i36 = aVar4.f127644b;
            if (i36 != 0 && (i36 & u.f127817e) == 0 && aVar4.f127643a != 0 && !aVar4.f127647e) {
                arrayList.clear();
                arrayList2.clear();
                int i37 = 1;
                aVar4.f127647e = true;
                arrayList.add(Integer.valueOf(i35));
                int i38 = 0;
                boolean z12 = false;
                while (arrayList.size() > 0) {
                    Integer num = (Integer) arrayList.remove(arrayList.size() - i37);
                    a aVar5 = aVarArr[num.intValue()];
                    i38 += aVar5.f127643a;
                    arrayList2.add(num);
                    for (int i39 = 0; i39 < aVar5.f127652j.size(); i39++) {
                        if ((aVar5.f127652j.get(i39).intValue() & u.f127817e) != 0) {
                            z12 = true;
                        } else {
                            a aVar6 = aVarArr[aVar5.f127652j.get(i39).intValue()];
                            if (!aVar6.f127647e && (i16 = aVar6.f127644b) != 0 && (u.f127817e & i16) == 0) {
                                arrayList.add(Integer.valueOf(i16));
                                aVar6.f127647e = true;
                            }
                        }
                    }
                    i37 = 1;
                }
                if (i38 < i10 && !z12) {
                    for (int i40 = 0; i40 < arrayList2.size(); i40++) {
                        aVarArr[((Integer) arrayList2.get(i40)).intValue()].f127643a = 0;
                        aVarArr[((Integer) arrayList2.get(i40)).intValue()].f127644b = 0;
                    }
                }
            }
        }
        do {
            i13 = 0;
            for (int i41 = 0; i41 < i24; i41++) {
                a aVar7 = aVarArr[i41];
                int i42 = aVar7.f127644b;
                if (i42 != 0 && (i42 & u.f127817e) == 0 && !aVar7.f127648f && (i14 = aVar7.f127643a) != 0) {
                    if (i14 <= i11 || !m(aVar7)) {
                        int i43 = 268435455;
                        int i44 = aVar7.f127644b;
                        for (int i45 = 0; i45 < aVar7.f127652j.size(); i45++) {
                            if ((aVar7.f127652j.get(i45).intValue() & u.f127817e) == 0 && (i15 = (aVar = aVarArr[aVar7.f127652j.get(i45).intValue()]).f127644b) != 0 && (i15 & u.f127817e) == 0 && !aVar.f127648f && aVar.f127643a < i43 && j(aVar7, aVar) && j(aVar, aVar7)) {
                                i43 = aVar.f127643a;
                                i44 = aVar.f127644b;
                            }
                        }
                        int i46 = aVar7.f127644b;
                        if (i44 != i46 && q(aVarArr[i44], aVar7)) {
                            for (int i47 = 0; i47 < i24; i47++) {
                                a aVar8 = aVarArr[i47];
                                int i48 = aVar8.f127644b;
                                if (i48 != 0 && (u.f127817e & i48) == 0) {
                                    if (i48 == i46) {
                                        aVar8.f127644b = i44;
                                    }
                                    t(aVar8, i46, i44);
                                }
                            }
                            i13++;
                        }
                    }
                }
            }
        } while (i13 > 0);
        for (int i49 = 0; i49 < i24; i49++) {
            a aVar9 = aVarArr[i49];
            aVar9.f127646d = false;
            int i50 = aVar9.f127644b;
            if (i50 != 0 && (i50 & u.f127817e) == 0) {
                aVar9.f127646d = true;
            }
        }
        int i51 = 0;
        for (int i52 = 0; i52 < i24; i52++) {
            a aVar10 = aVarArr[i52];
            if (aVar10.f127646d) {
                int i53 = aVar10.f127644b;
                i51++;
                for (int i54 = i52; i54 < i24; i54++) {
                    a aVar11 = aVarArr[i54];
                    if (aVar11.f127644b == i53) {
                        aVar11.f127644b = i51;
                        aVar11.f127646d = false;
                    }
                }
            }
        }
        for (int i55 = 0; i55 < c16025c.f127672c; i55++) {
            int i56 = iArr[i55];
            if ((u.f127817e & i56) == 0) {
                iArr[i55] = aVarArr[i56].f127644b;
            }
        }
        for (int i57 = 0; i57 < i24; i57++) {
            a aVar12 = aVarArr[i57];
            if (aVar12.f127648f) {
                list.add(Integer.valueOf(aVar12.f127644b));
            }
        }
        return i51;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean q(a rega, a regb) {
        int i10 = rega.f127644b;
        int i11 = regb.f127644b;
        ArrayList arrayList = new ArrayList(rega.f127652j);
        List<Integer> list = regb.f127652j;
        int i12 = 0;
        while (true) {
            if (i12 >= arrayList.size()) {
                i12 = -1;
                break;
            }
            if (((Integer) arrayList.get(i12)).intValue() == i11) {
                break;
            }
            i12++;
        }
        if (i12 == -1) {
            return false;
        }
        int i13 = 0;
        while (true) {
            if (i13 >= list.size()) {
                i13 = -1;
                break;
            }
            if (list.get(i13).intValue() == i10) {
                break;
            }
            i13++;
        }
        if (i13 == -1) {
            return false;
        }
        rega.f127652j.clear();
        int size = arrayList.size();
        for (int i14 = 0; i14 < size - 1; i14++) {
            rega.f127652j.add((Integer) arrayList.get(((1 + i12) + i14) % size));
        }
        int size2 = list.size();
        for (int i15 = 0; i15 < size2 - 1; i15++) {
            rega.f127652j.add(list.get(((i13 + 1) + i15) % size2));
        }
        s(rega);
        for (int i16 = 0; i16 < regb.f127653k.size(); i16++) {
            b(rega, regb.f127653k.get(i16).intValue());
        }
        rega.f127643a += regb.f127643a;
        regb.f127643a = 0;
        regb.f127652j.clear();
        return true;
    }

    public static void r(int minx, int maxx, int miny, int maxy, int regId, C16025c chf, int[] srcReg) {
        int i10 = chf.f127670a;
        while (miny < maxy) {
            for (int i11 = minx; i11 < maxx; i11++) {
                C16024b c16024b = chf.f127682m[(miny * i10) + i11];
                int i12 = c16024b.f127668a;
                int i13 = c16024b.f127669b + i12;
                while (i12 < i13) {
                    if (chf.f127685p[i12] != 0) {
                        srcReg[i12] = regId;
                    }
                    i12++;
                }
            }
            miny++;
        }
    }

    public static void s(a reg) {
        int i10 = 0;
        while (i10 < reg.f127652j.size() && reg.f127652j.size() > 1) {
            int i11 = i10 + 1;
            if (reg.f127652j.get(i10) == reg.f127652j.get(i11 % reg.f127652j.size())) {
                reg.f127652j.remove(i10);
            } else {
                i10 = i11;
            }
        }
    }

    public static void t(a reg, int oldId, int newId) {
        boolean z10 = false;
        for (int i10 = 0; i10 < reg.f127652j.size(); i10++) {
            if (reg.f127652j.get(i10).intValue() == oldId) {
                reg.f127652j.set(i10, Integer.valueOf(newId));
                z10 = true;
            }
        }
        for (int i11 = 0; i11 < reg.f127653k.size(); i11++) {
            if (reg.f127653k.get(i11).intValue() == oldId) {
                reg.f127653k.set(i11, Integer.valueOf(newId));
            }
        }
        if (z10) {
            s(reg);
        }
    }

    public static void u(int startLevel, C16025c chf, int[] srcReg, int nbStacks, List<List<Integer>> stacks, int loglevelsPerStack) {
        int i10;
        int i11 = chf.f127670a;
        int i12 = chf.f127671b;
        int i13 = startLevel >> loglevelsPerStack;
        for (int i14 = 0; i14 < nbStacks; i14++) {
            stacks.get(i14).clear();
        }
        for (int i15 = 0; i15 < i12; i15++) {
            for (int i16 = 0; i16 < i11; i16++) {
                C16024b c16024b = chf.f127682m[(i15 * i11) + i16];
                int i17 = c16024b.f127668a;
                int i18 = c16024b.f127669b + i17;
                while (i17 < i18) {
                    if (chf.f127685p[i17] != 0 && srcReg[i17] == 0 && (i10 = i13 - (chf.f127684o[i17] >> loglevelsPerStack)) < nbStacks) {
                        if (i10 < 0) {
                            i10 = 0;
                        }
                        stacks.get(i10).add(Integer.valueOf(i16));
                        stacks.get(i10).add(Integer.valueOf(i15));
                        stacks.get(i10).add(Integer.valueOf(i17));
                    }
                    i17++;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d0, code lost:
    
        if (r23.size() <= 1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d2, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d7, code lost:
    
        if (r10 >= r23.size()) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d9, code lost:
    
        r0 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e9, code lost:
    
        if (r23.get(r10) != r23.get(r0 % r23.size())) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ef, code lost:
    
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00eb, code lost:
    
        r23.remove(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f1, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void v(int x10, int y10, int i10, int dir, C16025c chf, int[] srcReg, List<Integer> cont) {
        int i11;
        C16026d c16026d = chf.f127683n[i10];
        int i12 = r.a(c16026d, dir) != 63 ? srcReg[chf.f127682m[x10 + r.b(dir) + ((y10 + r.c(dir)) * chf.f127670a)].f127668a + r.a(c16026d, dir)] : 0;
        cont.add(Integer.valueOf(i12));
        int i13 = x10;
        int i14 = y10;
        int i15 = i10;
        int i16 = dir;
        int i17 = i12;
        int i18 = 0;
        while (true) {
            int i19 = i18 + 1;
            if (i19 >= 40000) {
                break;
            }
            C16026d c16026d2 = chf.f127683n[i15];
            int i20 = i16;
            if (n(chf, srcReg, i13, i14, i15, i20)) {
                int i21 = r.a(c16026d2, i20) != 63 ? srcReg[chf.f127682m[r.b(i20) + i13 + ((r.c(i20) + i14) * chf.f127670a)].f127668a + r.a(c16026d2, i20)] : 0;
                if (i21 != i17) {
                    cont.add(Integer.valueOf(i21));
                    i17 = i21;
                }
                i11 = i20 + 1;
            } else {
                i13 += r.b(i20);
                i14 += r.c(i20);
                i15 = r.a(c16026d2, i20) != 63 ? chf.f127682m[(chf.f127670a * i14) + i13].f127668a + r.a(c16026d2, i20) : -1;
                if (i15 == -1) {
                    return;
                } else {
                    i11 = i20 + 3;
                }
            }
            i16 = i11 & 3;
            if (i10 == i15 && dir == i16) {
                break;
            } else {
                i18 = i19;
            }
        }
    }
}
