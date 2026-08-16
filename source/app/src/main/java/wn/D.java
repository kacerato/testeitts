package wn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import wn.C16031i;
import wn.H;

public class D {

    public static final int f127616a = 63;

    public static final int f127617b = 16;

    public static class a {

        public int f127618a;

        public boolean f127620c;

        public int f127622e;

        public int f127621d = 65535;

        public int f127619b = 255;

        public List<Integer> f127623f = new ArrayList();

        public List<Integer> f127624g = new ArrayList();

        public a(int i10) {
            this.f127618a = i10;
        }
    }

    public static void a(List<Integer> a10, int v10) {
        if (a10.contains(Integer.valueOf(v10))) {
            return;
        }
        a10.add(Integer.valueOf(v10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        if (r8 != 255) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C16031i b(N ctx, C16025c chf, int walkableHeight) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[] iArr;
        a[] aVarArr;
        int i16;
        int i17;
        int i18;
        int[] iArr2;
        a[] aVarArr2;
        int i19;
        char c10;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        ctx.f("RC_TIMER_BUILD_LAYERS");
        int i32 = chf.f127670a;
        int i33 = chf.f127671b;
        int i34 = chf.f127675f;
        int[] iArr3 = new int[chf.f127672c];
        Arrays.fill(iArr3, 255);
        int i35 = chf.f127670a;
        H.b[] bVarArr = new H.b[i35];
        int i36 = 0;
        for (int i37 = 0; i37 < i35; i37++) {
            bVarArr[i37] = new H.b();
        }
        int[] iArr4 = new int[256];
        int i38 = i34;
        int i39 = 0;
        while (i38 < i33 - i34) {
            Arrays.fill(iArr4, i36, i39, i36);
            int i40 = i34;
            int i41 = i36;
            while (true) {
                i24 = i32 - i34;
                if (i40 >= i24) {
                    break;
                }
                C16024b c16024b = chf.f127682m[i40 + (i38 * i32)];
                int i42 = c16024b.f127668a;
                int i43 = c16024b.f127669b + i42;
                while (i42 < i43) {
                    C16026d c16026d = chf.f127683n[i42];
                    if (chf.f127685p[i42] == 0) {
                        i26 = i43;
                    } else {
                        i26 = i43;
                        if (r.a(c16026d, i36) != 63) {
                            int a10 = chf.f127682m[r.b(i36) + i40 + ((r.c(i36) + i38) * i32)].f127668a + r.a(c16026d, 0);
                            if (chf.f127685p[a10] != 0) {
                                i28 = iArr3[a10];
                                i27 = 255;
                            }
                        }
                        i27 = 255;
                        i28 = i27;
                        if (i28 == i27) {
                            i30 = i41 + 1;
                            H.b bVar = bVarArr[i41];
                            bVar.f127657d = i27;
                            bVar.f127656c = 0;
                            i29 = 3;
                        } else {
                            i29 = 3;
                            int i44 = i28;
                            i30 = i41;
                            i41 = i44;
                        }
                        int i45 = i30;
                        if (r.a(c16026d, i29) != 63 && (i31 = iArr3[chf.f127682m[r.b(i29) + i40 + ((r.c(i29) + i38) * i32)].f127668a + r.a(c16026d, 3)]) != 255) {
                            H.b bVar2 = bVarArr[i41];
                            int i46 = bVar2.f127656c;
                            if (i46 == 0) {
                                bVar2.f127657d = i31;
                            }
                            if (bVar2.f127657d == i31) {
                                bVar2.f127656c = i46 + 1;
                                iArr4[i31] = iArr4[i31] + 1;
                            } else {
                                bVar2.f127657d = 255;
                            }
                        }
                        iArr3[i42] = i41;
                        i41 = i45;
                    }
                    i42++;
                    i43 = i26;
                    i36 = 0;
                }
                i40++;
                i36 = 0;
            }
            for (int i47 = 0; i47 < i41; i47++) {
                H.b bVar3 = bVarArr[i47];
                int i48 = bVar3.f127657d;
                if (i48 == 255) {
                    i25 = 255;
                } else if (iArr4[i48] == bVar3.f127656c) {
                    bVar3.f127655b = i48;
                } else {
                    i25 = 255;
                }
                if (i39 == i25) {
                    throw new RuntimeException("rcBuildHeightfieldLayers: Region ID overflow.");
                }
                bVar3.f127655b = i39;
                i39++;
            }
            for (int i49 = i34; i49 < i24; i49++) {
                C16024b c16024b2 = chf.f127682m[(i38 * i32) + i49];
                int i50 = c16024b2.f127668a;
                int i51 = c16024b2.f127669b + i50;
                while (i50 < i51) {
                    int i52 = iArr3[i50];
                    if (i52 != 255) {
                        iArr3[i50] = bVarArr[i52].f127655b;
                    }
                    i50++;
                }
            }
            i38++;
            i36 = 0;
        }
        a[] aVarArr3 = new a[i39];
        for (int i53 = 0; i53 < i39; i53++) {
            aVarArr3[i53] = new a(i53);
        }
        ArrayList arrayList = new ArrayList();
        for (int i54 = 0; i54 < i33; i54++) {
            int i55 = 0;
            while (i55 < i32) {
                C16024b c16024b3 = chf.f127682m[(i54 * i32) + i55];
                arrayList.clear();
                int i56 = c16024b3.f127668a;
                int i57 = c16024b3.f127669b + i56;
                while (i56 < i57) {
                    C16026d c16026d2 = chf.f127683n[i56];
                    int i58 = iArr3[i56];
                    if (i58 == 255) {
                        i22 = i33;
                        i21 = i57;
                    } else {
                        a aVar = aVarArr3[i58];
                        i21 = i57;
                        aVar.f127621d = Math.min(aVar.f127621d, c16026d2.f127686a);
                        a aVar2 = aVarArr3[i58];
                        aVar2.f127622e = Math.max(aVar2.f127622e, c16026d2.f127686a);
                        arrayList.add(Integer.valueOf(i58));
                        int i59 = 0;
                        while (i59 < 4) {
                            if (r.a(c16026d2, i59) != 63) {
                                i23 = i33;
                                int i60 = iArr3[chf.f127682m[r.b(i59) + i55 + ((r.c(i59) + i54) * i32)].f127668a + r.a(c16026d2, i59)];
                                if (i60 != 255 && i60 != i58) {
                                    a(aVarArr3[i58].f127624g, i60);
                                }
                            } else {
                                i23 = i33;
                            }
                            i59++;
                            i33 = i23;
                        }
                        i22 = i33;
                    }
                    i56++;
                    i57 = i21;
                    i33 = i22;
                }
                int i61 = i33;
                int i62 = 0;
                while (i62 < arrayList.size() - 1) {
                    int i63 = i62 + 1;
                    for (int i64 = i63; i64 < arrayList.size(); i64++) {
                        if (((Integer) arrayList.get(i62)).intValue() != ((Integer) arrayList.get(i64)).intValue()) {
                            a aVar3 = aVarArr3[((Integer) arrayList.get(i62)).intValue()];
                            a aVar4 = aVarArr3[((Integer) arrayList.get(i64)).intValue()];
                            a(aVar3.f127623f, ((Integer) arrayList.get(i64)).intValue());
                            a(aVar4.f127623f, ((Integer) arrayList.get(i62)).intValue());
                        }
                    }
                    i62 = i63;
                }
                i55++;
                i33 = i61;
            }
        }
        int i65 = i33;
        ArrayList arrayList2 = new ArrayList();
        int i66 = 0;
        for (int i67 = 0; i67 < i39; i67++) {
            a aVar5 = aVarArr3[i67];
            if (aVar5.f127619b == 255) {
                aVar5.f127619b = i66;
                aVar5.f127620c = true;
                arrayList2.add(Integer.valueOf(i67));
                while (!arrayList2.isEmpty()) {
                    for (Integer num : aVarArr3[((Integer) arrayList2.remove(0)).intValue()].f127624g) {
                        int intValue = num.intValue();
                        a aVar6 = aVarArr3[intValue];
                        if (aVar6.f127619b == 255 && !c(aVar5.f127623f, intValue) && Math.max(aVar5.f127622e, aVar6.f127622e) - Math.min(aVar5.f127621d, aVar6.f127621d) < 255) {
                            arrayList2.add(num);
                            aVar6.f127619b = i66;
                            Iterator<Integer> it = aVar6.f127623f.iterator();
                            while (it.hasNext()) {
                                a(aVar5.f127623f, it.next().intValue());
                            }
                            aVar5.f127621d = Math.min(aVar5.f127621d, aVar6.f127621d);
                            aVar5.f127622e = Math.max(aVar5.f127622e, aVar6.f127622e);
                        }
                    }
                }
                i66++;
            }
        }
        int i68 = walkableHeight * 4;
        for (int i69 = 0; i69 < i39; i69++) {
            a aVar7 = aVarArr3[i69];
            if (aVar7.f127620c) {
                int i70 = aVar7.f127619b;
                while (true) {
                    int i71 = 0;
                    while (true) {
                        if (i71 >= i39) {
                            i20 = 255;
                            break;
                        }
                        if (i69 != i71) {
                            a aVar8 = aVarArr3[i71];
                            if (aVar8.f127620c && d(aVar7.f127621d, aVar7.f127622e + i68, aVar8.f127621d, aVar8.f127622e + i68) && Math.max(aVar7.f127622e, aVar8.f127622e) - Math.min(aVar7.f127621d, aVar8.f127621d) < 255) {
                                for (int i72 = 0; i72 < i39; i72++) {
                                    if (aVarArr3[i72].f127619b == aVar8.f127619b && c(aVar7.f127623f, i72)) {
                                        break;
                                    }
                                }
                                i20 = aVar8.f127619b;
                                break;
                            }
                        }
                        i71++;
                    }
                    if (i20 == 255) {
                        break;
                    }
                    for (int i73 = 0; i73 < i39; i73++) {
                        a aVar9 = aVarArr3[i73];
                        if (aVar9.f127619b == i20) {
                            aVar9.f127620c = false;
                            aVar9.f127619b = i70;
                            Iterator<Integer> it2 = aVar9.f127623f.iterator();
                            while (it2.hasNext()) {
                                a(aVar7.f127623f, it2.next().intValue());
                            }
                            aVar7.f127621d = Math.min(aVar7.f127621d, aVar9.f127621d);
                            aVar7.f127622e = Math.max(aVar7.f127622e, aVar9.f127622e);
                        }
                    }
                }
            }
        }
        int[] iArr5 = new int[256];
        for (int i74 = 0; i74 < i39; i74++) {
            iArr5[aVarArr3[i74].f127619b] = 1;
        }
        int i75 = 0;
        for (int i76 = 0; i76 < 256; i76++) {
            if (iArr5[i76] != 0) {
                iArr5[i76] = i75;
                i75++;
            } else {
                iArr5[i76] = 255;
            }
        }
        for (int i77 = 0; i77 < i39; i77++) {
            a aVar10 = aVarArr3[i77];
            aVar10.f127619b = iArr5[aVar10.f127619b];
        }
        if (i75 == 0) {
            return null;
        }
        int i78 = i34 * 2;
        int i79 = i32 - i78;
        int i80 = i65 - i78;
        I.e(r9, chf.f127678i);
        I.e(r8, chf.f127679j);
        float f10 = r9[0];
        float f11 = i34;
        float f12 = chf.f127680k;
        float[] fArr = {f10 + (f11 * f12), 0.0f, fArr[2] + (f11 * f12)};
        float[] fArr2 = {fArr2[0] - (f11 * f12), 0.0f, fArr2[2] - (f11 * f12)};
        C16031i c16031i = new C16031i();
        c16031i.f127717a = new C16031i.a[i75];
        int i81 = 0;
        while (true) {
            C16031i.a[] aVarArr4 = c16031i.f127717a;
            if (i81 >= aVarArr4.length) {
                break;
            }
            aVarArr4[i81] = new C16031i.a();
            i81++;
        }
        int i82 = 0;
        while (true) {
            C16031i.a[] aVarArr5 = c16031i.f127717a;
            if (i82 >= aVarArr5.length) {
                return c16031i;
            }
            C16031i.a aVar11 = aVarArr5[i82];
            int i83 = i79 * i80;
            int[] iArr6 = new int[i83];
            aVar11.f127730m = iArr6;
            Arrays.fill(iArr6, 255);
            aVar11.f127731n = new int[i83];
            aVar11.f127732o = new int[i83];
            int i84 = 0;
            int i85 = 0;
            int i86 = 0;
            while (i85 < i39) {
                int i87 = i39;
                a aVar12 = aVarArr3[i85];
                C16031i c16031i2 = c16031i;
                if (aVar12.f127620c && aVar12.f127619b == i82) {
                    i84 = aVar12.f127621d;
                    i86 = aVar12.f127622e;
                }
                i85++;
                c16031i = c16031i2;
                i39 = i87;
            }
            C16031i c16031i3 = c16031i;
            int i88 = i39;
            aVar11.f127722e = i79;
            aVar11.f127723f = i80;
            aVar11.f127720c = chf.f127680k;
            aVar11.f127721d = chf.f127681l;
            I.e(aVar11.f127718a, fArr);
            I.e(aVar11.f127719b, fArr2);
            float[] fArr3 = aVar11.f127718a;
            float f13 = fArr[1];
            float[] fArr4 = fArr2;
            float f14 = chf.f127681l;
            fArr3[1] = f13 + (i84 * f14);
            aVar11.f127719b[1] = fArr[1] + (i86 * f14);
            aVar11.f127728k = i84;
            aVar11.f127729l = i86;
            aVar11.f127724g = aVar11.f127722e;
            aVar11.f127725h = 0;
            aVar11.f127726i = aVar11.f127723f;
            aVar11.f127727j = 0;
            int i89 = 0;
            while (i89 < i80) {
                int i90 = 0;
                while (i90 < i79) {
                    int i91 = i34 + i90;
                    int i92 = i34 + i89;
                    C16024b c16024b4 = chf.f127682m[i91 + (i92 * i32)];
                    float[] fArr5 = fArr;
                    int i93 = c16024b4.f127668a;
                    int i94 = c16024b4.f127669b + i93;
                    while (i93 < i94) {
                        int i95 = i94;
                        C16026d c16026d3 = chf.f127683n[i93];
                        int i96 = i80;
                        int i97 = iArr3[i93];
                        int i98 = i34;
                        if (i97 != 255 && (i11 = aVarArr3[i97].f127619b) == i82) {
                            aVar11.f127724g = Math.min(aVar11.f127724g, i90);
                            aVar11.f127725h = Math.max(aVar11.f127725h, i90);
                            aVar11.f127726i = Math.min(aVar11.f127726i, i89);
                            aVar11.f127727j = Math.max(aVar11.f127727j, i89);
                            int i99 = (i89 * i79) + i90;
                            i12 = i82;
                            i13 = i89;
                            aVar11.f127730m[i99] = (char) (c16026d3.f127686a - i84);
                            aVar11.f127731n[i99] = chf.f127685p[i93];
                            i14 = i90;
                            char c11 = 0;
                            int i100 = 0;
                            char c12 = 0;
                            for (int i101 = 4; i100 < i101; i101 = 4) {
                                int i102 = i93;
                                if (r.a(c16026d3, i100) != 63) {
                                    int b10 = r.b(i100) + i91;
                                    int c13 = i92 + r.c(i100);
                                    int a11 = chf.f127682m[b10 + (c13 * i32)].f127668a + r.a(c16026d3, i100);
                                    i18 = i32;
                                    int i103 = iArr3[a11];
                                    iArr2 = iArr3;
                                    int i104 = i103 != 255 ? aVarArr3[i103].f127619b : 255;
                                    if (chf.f127685p[a11] == 0 || i11 == i104) {
                                        aVarArr2 = aVarArr3;
                                    } else {
                                        char c14 = (char) (c11 | (1 << i100));
                                        int i105 = chf.f127683n[a11].f127686a;
                                        aVarArr2 = aVarArr3;
                                        if (i105 > i84) {
                                            int[] iArr7 = aVar11.f127730m;
                                            c10 = c14;
                                            iArr7[i99] = Math.max(iArr7[i99], (int) ((char) (i105 - i84)));
                                        } else {
                                            c10 = c14;
                                        }
                                        c11 = c10;
                                    }
                                    if (chf.f127685p[a11] != 0 && i11 == i104) {
                                        int i106 = b10 - i98;
                                        int i107 = c13 - i98;
                                        if (i106 >= 0 && i107 >= 0 && i106 < i79) {
                                            i19 = i96;
                                            if (i107 < i19) {
                                                c12 = (char) (c12 | (1 << i100));
                                                i100++;
                                                i96 = i19;
                                                i93 = i102;
                                                i32 = i18;
                                                iArr3 = iArr2;
                                                aVarArr3 = aVarArr2;
                                            }
                                            i100++;
                                            i96 = i19;
                                            i93 = i102;
                                            i32 = i18;
                                            iArr3 = iArr2;
                                            aVarArr3 = aVarArr2;
                                        }
                                    }
                                } else {
                                    i18 = i32;
                                    iArr2 = iArr3;
                                    aVarArr2 = aVarArr3;
                                }
                                i19 = i96;
                                i100++;
                                i96 = i19;
                                i93 = i102;
                                i32 = i18;
                                iArr3 = iArr2;
                                aVarArr3 = aVarArr2;
                            }
                            i15 = i32;
                            iArr = iArr3;
                            aVarArr = aVarArr3;
                            i16 = i93;
                            i17 = i96;
                            aVar11.f127732o[i99] = (c11 << 4) | c12;
                        } else {
                            i15 = i32;
                            iArr = iArr3;
                            aVarArr = aVarArr3;
                            i13 = i89;
                            i16 = i93;
                            i14 = i90;
                            i12 = i82;
                            i17 = i96;
                        }
                        i93 = i16 + 1;
                        i94 = i95;
                        i80 = i17;
                        i34 = i98;
                        i82 = i12;
                        i89 = i13;
                        i90 = i14;
                        i32 = i15;
                        iArr3 = iArr;
                        aVarArr3 = aVarArr;
                    }
                    i90++;
                    fArr = fArr5;
                    i32 = i32;
                    iArr3 = iArr3;
                }
                i89++;
                i32 = i32;
                iArr3 = iArr3;
            }
            int i108 = i32;
            int i109 = i34;
            int[] iArr8 = iArr3;
            a[] aVarArr6 = aVarArr3;
            float[] fArr6 = fArr;
            int i110 = i82;
            int i111 = i80;
            if (aVar11.f127724g > aVar11.f127725h) {
                i10 = 0;
                aVar11.f127725h = 0;
                aVar11.f127724g = 0;
            } else {
                i10 = 0;
            }
            if (aVar11.f127726i > aVar11.f127727j) {
                aVar11.f127727j = i10;
                aVar11.f127726i = i10;
            }
            i82 = i110 + 1;
            c16031i = c16031i3;
            i80 = i111;
            i39 = i88;
            fArr2 = fArr4;
            fArr = fArr6;
            i34 = i109;
            i32 = i108;
            iArr3 = iArr8;
            aVarArr3 = aVarArr6;
        }
    }

    public static boolean c(List<Integer> a10, int v10) {
        return a10.contains(Integer.valueOf(v10));
    }

    public static boolean d(int amin, int amax, int bmin, int bmax) {
        return amin <= bmax && amax >= bmin;
    }
}
