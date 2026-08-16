package qn;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import jn.C13890g;
import jn.U;
import kotlin.jvm.internal.C14021s;

public class h {

    public static final int f108453b = 0;

    public static final int f108454c = 63;

    public static final int f108455d = 65535;

    public static final int f108456e = 256;

    public final rn.a f108457a = new rn.a();

    public class b {

        public int[] f108458a;

        public int[] f108459b;

        public int[] f108460c;

        public b() {
            this.f108458a = new int[2];
            this.f108459b = new int[2];
            this.f108460c = new int[2];
        }
    }

    public class c {

        public int f108462a;

        public List<Integer> f108463b;

        public int f108464c;

        public int f108465d;

        public c() {
            this.f108463b = new ArrayList(16);
        }
    }

    public class d {

        public int f108467a;

        public int f108468b;

        public int f108469c;

        public d() {
        }
    }

    public class e {

        public List<Integer> f108471a = new ArrayList();

        public int f108472b = 0;

        public List<Integer> f108473c = new ArrayList();

        public e() {
        }

        public void a() {
            this.f108472b = 0;
            this.f108471a.clear();
        }

        public int b() {
            return this.f108473c.size();
        }
    }

    public static U<Integer, Boolean> u(l layer, int x10, int y10, int z10, int walkableClimb) {
        m mVar = layer.f108481a;
        int i10 = mVar.f108498j;
        int i11 = mVar.f108499k;
        int i12 = 15;
        short s10 = 255;
        int i13 = 0;
        boolean z11 = true;
        int i14 = 0;
        for (int i15 = -1; i15 <= 0; i15++) {
            for (int i16 = -1; i16 <= 0; i16++) {
                int i17 = x10 + i16;
                int i18 = z10 + i15;
                if (i17 >= 0 && i18 >= 0 && i17 < i10 && i18 < i11) {
                    int i19 = i17 + (i18 * i10);
                    short s11 = layer.f108483c[i19];
                    if (Math.abs(s11 - y10) <= walkableClimb && layer.f108484d[i19] != 0) {
                        int max = Math.max(i14, (int) ((char) s11));
                        i12 &= layer.f108485e[i19] >> 4;
                        if (s10 != 255 && s10 != layer.f108486f[i19]) {
                            z11 = false;
                        }
                        i13++;
                        i14 = max;
                        s10 = layer.f108486f[i19];
                    }
                }
            }
        }
        int i20 = 0;
        for (int i21 = 0; i21 < 4; i21++) {
            if (((1 << i21) & i12) != 0) {
                i20++;
            }
        }
        return new U<>(Integer.valueOf(i14), Boolean.valueOf(i13 > 1 && i20 == 1 && z11));
    }

    public final boolean A(int[] verts, int a10, int b10, int c10, int d10) {
        return B(verts, a10, b10, c10, d10) || e(verts, a10, b10, c10) || e(verts, a10, b10, d10) || e(verts, c10, d10, a10) || e(verts, c10, d10, b10);
    }

    public final boolean B(int[] verts, int a10, int b10, int c10, int d10) {
        if (l(verts, a10, b10, c10) || l(verts, a10, b10, d10) || l(verts, c10, d10, a10) || l(verts, c10, d10, b10) || !(D(verts, a10, b10, c10) ^ D(verts, a10, b10, d10))) {
            return false;
        }
        return D(verts, c10, d10, b10) ^ D(verts, c10, d10, a10);
    }

    public boolean C(l layer, int ia2, int ib2, int walkableClimb) {
        short[] sArr = layer.f108484d;
        if (sArr[ia2] != sArr[ib2]) {
            return false;
        }
        short[] sArr2 = layer.f108483c;
        return Math.abs(sArr2[ia2] - sArr2[ib2]) <= walkableClimb;
    }

    public final boolean D(int[] verts, int a10, int b10, int c10) {
        return d(verts, a10, b10, c10) < 0;
    }

    public final boolean E(int[] verts, int a10, int b10, int c10) {
        return d(verts, a10, b10, c10) <= 0;
    }

    public void F(l layer, float[] orig, float cs, float ch2, float[] bmin, float[] bmax, int areaId) {
        m mVar = layer.f108481a;
        int i10 = mVar.f108498j;
        int i11 = mVar.f108499k;
        float f10 = 1.0f / cs;
        float f11 = 1.0f / ch2;
        int floor = (int) Math.floor((bmin[0] - orig[0]) * f10);
        int floor2 = (int) Math.floor((bmin[1] - orig[1]) * f11);
        int floor3 = (int) Math.floor((bmin[2] - orig[2]) * f10);
        int floor4 = (int) Math.floor((bmax[0] - orig[0]) * f10);
        int floor5 = (int) Math.floor((bmax[1] - orig[1]) * f11);
        int floor6 = (int) Math.floor((bmax[2] - orig[2]) * f10);
        if (floor4 >= 0 && floor < i10 && floor6 >= 0 && floor3 < i11) {
            if (floor < 0) {
                floor = 0;
            }
            if (floor4 >= i10) {
                floor4 = i10 - 1;
            }
            if (floor6 >= i11) {
                floor6 = i11 - 1;
            }
            for (int i12 = floor3 >= 0 ? floor3 : 0; i12 <= floor6; i12++) {
                for (int i13 = floor; i13 <= floor4; i13++) {
                    int i14 = (i12 * i10) + i13;
                    short s10 = layer.f108483c[i14];
                    if (s10 >= floor2 && s10 <= floor5) {
                        layer.f108484d[i14] = (short) areaId;
                    }
                }
            }
        }
    }

    public void G(l layer, float[] orig, float cs, float ch2, float[] center, float[] extents, float[] rotAux, int areaId) {
        int i10;
        short s10;
        m mVar = layer.f108481a;
        int i11 = mVar.f108498j;
        int i12 = mVar.f108499k;
        float f10 = 1.0f / cs;
        float f11 = 1.0f / ch2;
        boolean z10 = false;
        float f12 = (center[0] - orig[0]) * f10;
        float f13 = (center[2] - orig[2]) * f10;
        float max = Math.max(extents[0], extents[2]) * 1.41f * f10;
        int floor = (int) Math.floor(f12 - max);
        int floor2 = (int) Math.floor(f12 + max);
        int floor3 = (int) Math.floor(f13 - max);
        int floor4 = (int) Math.floor(max + f13);
        char c10 = 1;
        int floor5 = (int) Math.floor(((center[1] - extents[1]) - orig[1]) * f11);
        int floor6 = (int) Math.floor(((center[1] + extents[1]) - orig[1]) * f11);
        if (floor2 >= 0 && floor < i11 && floor4 >= 0 && floor3 < i12) {
            if (floor < 0) {
                floor = 0;
            }
            if (floor2 >= i11) {
                floor2 = i11 - 1;
            }
            if (floor3 < 0) {
                floor3 = 0;
            }
            if (floor4 >= i12) {
                floor4 = i12 - 1;
            }
            float f14 = (extents[0] * f10) + 0.5f;
            float f15 = (extents[2] * f10) + 0.5f;
            while (floor3 <= floor4) {
                int i13 = floor;
                while (i13 <= floor2) {
                    float f16 = (i13 - f12) * 2.0f;
                    float f17 = (floor3 - f13) * 2.0f;
                    float f18 = rotAux[c10];
                    float f19 = rotAux[0];
                    float f20 = (f18 * f16) + (f19 * f17);
                    if (f20 <= f14 && f20 >= (-f14)) {
                        float f21 = (f18 * f17) - (f19 * f16);
                        if (f21 <= f15 && f21 >= (-f15) && (s10 = layer.f108483c[(i10 = (floor3 * i11) + i13)]) >= floor5 && s10 <= floor6) {
                            layer.f108484d[i10] = (short) areaId;
                            i13++;
                            z10 = false;
                            c10 = 1;
                        }
                    }
                    i13++;
                    z10 = false;
                    c10 = 1;
                }
                floor3++;
                c10 = 1;
            }
        }
    }

    public void H(l layer, float[] orig, float cs, float ch2, float[] pos, float radius, float height, int areaId) {
        int i10;
        short s10;
        float f10 = pos[0];
        float f11 = pos[1];
        float f12 = pos[2];
        float[] fArr = {f10 - radius, f11, f12 - radius};
        float[] fArr2 = {f10 + radius, f11 + height, f12 + radius};
        float s11 = C13890g.s((radius / cs) + 0.5f);
        m mVar = layer.f108481a;
        int i11 = mVar.f108498j;
        int i12 = mVar.f108499k;
        float f13 = 1.0f / cs;
        float f14 = 1.0f / ch2;
        float f15 = (pos[0] - orig[0]) * f13;
        float f16 = (pos[2] - orig[2]) * f13;
        int floor = (int) Math.floor((fArr[0] - r13) * f13);
        int floor2 = (int) Math.floor((fArr[1] - orig[1]) * f14);
        int floor3 = (int) Math.floor((fArr[2] - orig[2]) * f13);
        int floor4 = (int) Math.floor((fArr2[0] - orig[0]) * f13);
        int floor5 = (int) Math.floor((fArr2[1] - orig[1]) * f14);
        int floor6 = (int) Math.floor((fArr2[2] - orig[2]) * f13);
        if (floor4 >= 0 && floor < i11 && floor6 >= 0 && floor3 < i12) {
            if (floor < 0) {
                floor = 0;
            }
            if (floor4 >= i11) {
                floor4 = i11 - 1;
            }
            if (floor3 < 0) {
                floor3 = 0;
            }
            if (floor6 >= i12) {
                floor6 = i12 - 1;
            }
            while (floor3 <= floor6) {
                for (int i13 = floor; i13 <= floor4; i13++) {
                    float f17 = (i13 + 0.5f) - f15;
                    float f18 = (floor3 + 0.5f) - f16;
                    if ((f17 * f17) + (f18 * f18) <= s11 && (s10 = layer.f108483c[(i10 = (floor3 * i11) + i13)]) >= floor2 && s10 <= floor5) {
                        layer.f108484d[i10] = (short) areaId;
                    }
                }
                floor3++;
            }
        }
    }

    public final void I(int[] polys, int pa2, int pb2, int ea2, int eb2, int maxVertsPerPoly) {
        int[] iArr = new int[maxVertsPerPoly * 2];
        int p10 = p(polys, pa2, maxVertsPerPoly);
        int p11 = p(polys, pb2, maxVertsPerPoly);
        Arrays.fill(iArr, 65535);
        int i10 = 0;
        int i11 = 0;
        while (i10 < p10 - 1) {
            iArr[i11] = polys[(((ea2 + 1) + i10) % p10) + pa2];
            i10++;
            i11++;
        }
        int i12 = 0;
        while (i12 < p11 - 1) {
            iArr[i11] = polys[(((eb2 + 1) + i12) % p11) + pb2];
            i12++;
            i11++;
        }
        System.arraycopy(iArr, 0, polys, pa2, maxVertsPerPoly);
    }

    public final int J(int i10, int n10) {
        int i11 = i10 + 1;
        if (i11 < n10) {
            return i11;
        }
        return 0;
    }

    public final boolean K(int amin, int amax, int bmin, int bmax) {
        return amin < bmax && amax > bmin;
    }

    public final int L(int i10, int n10) {
        int i11 = i10 - 1;
        return i11 >= 0 ? i11 : n10 - 1;
    }

    public final int M(int v10, List<Integer> arr) {
        arr.add(Integer.valueOf(v10));
        return arr.size();
    }

    public final int N(int v10, List<Integer> arr) {
        arr.add(0, Integer.valueOf(v10));
        return arr.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x020a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void O(q mesh, int rem, int maxTris) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z10;
        int i17;
        int i18;
        int i19;
        int i20 = mesh.f108530a;
        int i21 = 0;
        while (true) {
            i10 = 2;
            if (i21 >= mesh.f108532c) {
                break;
            }
            int i22 = i21 * i20 * 2;
            int p10 = p(mesh.f108534e, i22, i20);
            for (int i23 = 0; i23 < p10; i23++) {
                int i24 = mesh.f108534e[i22 + i23];
            }
            i21++;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i25 = 0;
        int i26 = 0;
        while (i25 < mesh.f108532c) {
            int i27 = i25 * i20 * i10;
            int p11 = p(mesh.f108534e, i27, i20);
            boolean z11 = false;
            for (int i28 = 0; i28 < p11; i28++) {
                if (mesh.f108534e[i27 + i28] == rem) {
                    z11 = true;
                }
            }
            if (z11) {
                int i29 = p11 - 1;
                int i30 = 0;
                while (i30 < p11) {
                    int[] iArr = mesh.f108534e;
                    int i31 = i27 + i30;
                    if (iArr[i31] != rem && (i19 = iArr[i29 + i27]) != rem) {
                        arrayList.add(Integer.valueOf(i19));
                        arrayList.add(Integer.valueOf(mesh.f108534e[i31]));
                        arrayList.add(Integer.valueOf(mesh.f108536g[i25]));
                        i26++;
                    }
                    int i32 = i30;
                    i30++;
                    i29 = i32;
                }
                int i33 = (mesh.f108532c - 1) * i20 * 2;
                int[] iArr2 = mesh.f108534e;
                System.arraycopy(iArr2, i33, iArr2, i27, i20);
                Arrays.fill(mesh.f108534e, i27 + i20, i27 + (i20 * 2), 65535);
                int[] iArr3 = mesh.f108536g;
                int i34 = mesh.f108532c;
                iArr3[i25] = iArr3[i34 - 1];
                i18 = 1;
                mesh.f108532c = i34 - 1;
                i25--;
            } else {
                i18 = 1;
            }
            i25 += i18;
            i10 = 2;
        }
        int i35 = rem;
        while (true) {
            i11 = mesh.f108531b;
            if (i35 >= i11) {
                break;
            }
            int[] iArr4 = mesh.f108533d;
            int i36 = i35 * 3;
            i35++;
            int i37 = i35 * 3;
            iArr4[i36] = iArr4[i37];
            iArr4[i36 + 1] = iArr4[i37 + 1];
            iArr4[i36 + 2] = iArr4[i37 + 2];
        }
        int i38 = 2;
        mesh.f108531b = i11 - 1;
        int i39 = 0;
        while (i39 < mesh.f108532c) {
            int i40 = i39 * i20 * i38;
            int p12 = p(mesh.f108534e, i40, i20);
            for (int i41 = 0; i41 < p12; i41++) {
                int[] iArr5 = mesh.f108534e;
                int i42 = i40 + i41;
                int i43 = iArr5[i42];
                if (i43 > rem) {
                    iArr5[i42] = i43 - 1;
                }
            }
            i39++;
            i38 = 2;
        }
        for (int i44 = 0; i44 < i26; i44++) {
            int i45 = i44 * 3;
            if (((Integer) arrayList.get(i45)).intValue() > rem) {
                arrayList.set(i45, Integer.valueOf(((Integer) arrayList.get(i45)).intValue() - 1));
            }
            int i46 = i45 + 1;
            if (((Integer) arrayList.get(i46)).intValue() > rem) {
                arrayList.set(i46, Integer.valueOf(((Integer) arrayList.get(i46)).intValue() - 1));
            }
        }
        if (i26 == 0) {
            return;
        }
        int M10 = M(((Integer) arrayList.get(0)).intValue(), arrayList2);
        M(((Integer) arrayList.get(2)).intValue(), arrayList3);
        while (true) {
            if (i26 == 0) {
                i12 = i20;
                break;
            }
            int i47 = 0;
            boolean z12 = false;
            while (i47 < i26) {
                int i48 = i47 * 3;
                int intValue = ((Integer) arrayList.get(i48)).intValue();
                int i49 = i48 + 1;
                int intValue2 = ((Integer) arrayList.get(i49)).intValue();
                int i50 = i48 + 2;
                int intValue3 = ((Integer) arrayList.get(i50)).intValue();
                int i51 = i20;
                if (arrayList2.get(0).intValue() == intValue2) {
                    M10 = N(intValue, arrayList2);
                    N(intValue3, arrayList3);
                } else if (arrayList2.get(M10 - 1).intValue() == intValue) {
                    M10 = M(intValue2, arrayList2);
                    M(intValue3, arrayList3);
                } else {
                    z10 = false;
                    if (z10) {
                        i17 = 1;
                    } else {
                        int i52 = (i26 - 1) * 3;
                        arrayList.set(i48, (Integer) arrayList.get(i52));
                        arrayList.set(i49, Integer.valueOf(((Integer) arrayList.get(i52)).intValue() + 1));
                        arrayList.set(i50, Integer.valueOf(((Integer) arrayList.get(i52)).intValue() + 2));
                        i26--;
                        i47--;
                        i17 = 1;
                        z12 = true;
                    }
                    i47 += i17;
                    i20 = i51;
                }
                z10 = true;
                if (z10) {
                }
                i47 += i17;
                i20 = i51;
            }
            i12 = i20;
            if (!z12) {
                break;
            } else {
                i20 = i12;
            }
        }
        int[] iArr6 = new int[M10 * 3];
        int[] iArr7 = new int[M10 * 4];
        int[] iArr8 = new int[M10];
        for (int i53 = 0; i53 < M10; i53++) {
            int intValue4 = arrayList2.get(i53).intValue();
            int i54 = i53 * 4;
            int[] iArr9 = mesh.f108533d;
            int i55 = intValue4 * 3;
            iArr7[i54] = iArr9[i55];
            iArr7[i54 + 1] = iArr9[i55 + 1];
            iArr7[i54 + 2] = iArr9[i55 + 2];
            iArr7[i54 + 3] = 0;
            iArr8[i53] = i53;
        }
        int Q10 = Q(M10, iArr7, iArr8, iArr6);
        if (Q10 < 0) {
            Q10 = -Q10;
        }
        int i56 = Q10 * i12;
        int[] iArr10 = new int[i56];
        int[] iArr11 = new int[Q10];
        Arrays.fill(iArr10, 0, i56, 65535);
        int i57 = 0;
        for (int i58 = 0; i58 < Q10; i58++) {
            int i59 = i58 * 3;
            int i60 = iArr6[i59];
            int i61 = i59 + 1;
            int i62 = iArr6[i61];
            if (i60 != i62 && i60 != (i16 = iArr6[(i15 = i59 + 2)]) && i62 != i16) {
                int i63 = i57 * i12;
                iArr10[i63] = arrayList2.get(i60).intValue();
                iArr10[i63 + 1] = arrayList2.get(iArr6[i61]).intValue();
                iArr10[i63 + 2] = arrayList2.get(iArr6[i15]).intValue();
                iArr11[i57] = arrayList3.get(iArr6[i59]).intValue();
                i57++;
            }
        }
        if (i57 == 0) {
            return;
        }
        int i64 = i12;
        if (i64 > 3) {
            int i65 = i57;
            while (true) {
                int i66 = 0;
                int i67 = 0;
                int i68 = 0;
                int i69 = 0;
                int i70 = 0;
                int i71 = 0;
                while (true) {
                    i14 = i65 - 1;
                    if (i70 >= i14) {
                        break;
                    }
                    int i72 = i70 * i64;
                    int i73 = i70 + 1;
                    int i74 = i67;
                    int i75 = i68;
                    int i76 = i69;
                    int i77 = i71;
                    int i78 = i73;
                    int i79 = i66;
                    while (i78 < i65) {
                        int i80 = i78;
                        int[] y10 = y(iArr10, i72, i78 * i64, mesh.f108533d, i64);
                        int i81 = y10[0];
                        int i82 = y10[1];
                        int i83 = y10[2];
                        if (i81 > i79) {
                            i76 = i83;
                            i79 = i81;
                            i75 = i82;
                            i74 = i70;
                            i77 = i80;
                        }
                        i78 = i80 + 1;
                    }
                    i66 = i79;
                    i70 = i73;
                    i67 = i74;
                    i68 = i75;
                    i69 = i76;
                    i71 = i77;
                }
                i13 = 0;
                if (i66 <= 0) {
                    break;
                }
                int i84 = i71 * i64;
                I(iArr10, i67 * i64, i84, i68, i69, i64);
                System.arraycopy(iArr10, i14 * i64, iArr10, i84, i64);
                iArr11[i71] = iArr11[i14];
                i65--;
            }
            i57 = i65;
        } else {
            i13 = 0;
        }
        for (int i85 = i13; i85 < i57; i85++) {
            int i86 = mesh.f108532c;
            if (i86 >= maxTris) {
                return;
            }
            int i87 = i86 * i64 * 2;
            Arrays.fill(mesh.f108534e, i87, (i64 * 2) + i87, 65535);
            for (int i88 = i13; i88 < i64; i88++) {
                mesh.f108534e[i87 + i88] = iArr10[(i85 * i64) + i88];
            }
            int[] iArr12 = mesh.f108536g;
            int i89 = mesh.f108532c;
            iArr12[i89] = iArr11[i85];
            int i90 = i89 + 1;
            mesh.f108532c = i90;
            if (i90 > maxTris) {
                throw new RuntimeException("Buffer too small");
            }
        }
    }

    public final void P(e cont, float maxError) {
        float f10;
        int i10;
        int i11;
        int i12;
        cont.f108473c.clear();
        int i13 = 0;
        while (true) {
            int i14 = cont.f108472b;
            if (i13 >= i14) {
                break;
            }
            int i15 = i13 + 1;
            if (cont.f108471a.get(((i15 % i14) * 4) + 3).intValue() != cont.f108471a.get((i13 * 4) + 3).intValue()) {
                cont.f108473c.add(Integer.valueOf(i13));
            }
            i13 = i15;
        }
        int i16 = 2;
        if (cont.b() < 2) {
            int intValue = cont.f108471a.get(0).intValue();
            int intValue2 = cont.f108471a.get(2).intValue();
            int intValue3 = cont.f108471a.get(0).intValue();
            int intValue4 = cont.f108471a.get(2).intValue();
            int i17 = 0;
            int i18 = 0;
            for (int i19 = 1; i19 < cont.f108472b; i19++) {
                int i20 = i19 * 4;
                int intValue5 = cont.f108471a.get(i20).intValue();
                int intValue6 = cont.f108471a.get(i20 + 2).intValue();
                if (intValue5 < intValue || (intValue5 == intValue && intValue6 < intValue2)) {
                    i17 = i19;
                    intValue = intValue5;
                    intValue2 = intValue6;
                }
                if (intValue5 > intValue3 || (intValue5 == intValue3 && intValue6 > intValue4)) {
                    i18 = i19;
                    intValue3 = intValue5;
                    intValue4 = intValue6;
                }
            }
            cont.f108473c.clear();
            cont.f108473c.add(Integer.valueOf(i17));
            cont.f108473c.add(Integer.valueOf(i18));
        }
        int i21 = 0;
        while (i21 < cont.b()) {
            int i22 = i21 + 1;
            int b10 = i22 % cont.b();
            int intValue7 = cont.f108473c.get(i21).intValue();
            int i23 = intValue7 * 4;
            int intValue8 = cont.f108471a.get(i23).intValue();
            int intValue9 = cont.f108471a.get(i23 + i16).intValue();
            int intValue10 = cont.f108473c.get(b10).intValue();
            int i24 = intValue10 * 4;
            int intValue11 = cont.f108471a.get(i24).intValue();
            int intValue12 = cont.f108471a.get(i24 + i16).intValue();
            int i25 = -1;
            if (intValue11 > intValue8 || (intValue11 == intValue8 && intValue12 > intValue9)) {
                int i26 = (intValue7 + 1) % cont.f108472b;
                f10 = 0.0f;
                i10 = -1;
                i11 = 1;
                intValue7 = intValue10;
                i12 = i26;
            } else {
                int i27 = cont.f108472b;
                int i28 = i27 - 1;
                i12 = (intValue10 + i28) % i27;
                f10 = 0.0f;
                i11 = i28;
                i10 = -1;
            }
            while (i12 != intValue7) {
                int i29 = i12 * 4;
                int intValue13 = cont.f108471a.get(i29).intValue();
                int intValue14 = cont.f108471a.get(i29 + i16).intValue();
                int i30 = i10;
                int i31 = i25;
                int i32 = intValue12;
                int i33 = intValue11;
                float t10 = t(intValue13, intValue14, intValue8, intValue9, intValue11, i32);
                if (t10 > f10) {
                    i10 = i12;
                    f10 = t10;
                } else {
                    i10 = i30;
                }
                i12 = (i12 + i11) % cont.f108472b;
                i25 = i31;
                intValue12 = i32;
                intValue11 = i33;
                i16 = 2;
            }
            int i34 = i10;
            if (i34 == i25 || f10 <= maxError * maxError) {
                i21 = i22;
            } else {
                cont.f108473c.add(i22, Integer.valueOf(i34));
            }
            i16 = 2;
        }
        int i35 = 0;
        for (int i36 = 1; i36 < cont.b(); i36++) {
            if (cont.f108473c.get(i36).intValue() < cont.f108473c.get(i35).intValue()) {
                i35 = i36;
            }
        }
        cont.f108472b = 0;
        for (int i37 = 0; i37 < cont.b(); i37++) {
            int intValue15 = cont.f108473c.get((i35 + i37) % cont.b()).intValue() * 4;
            int i38 = cont.f108472b * 4;
            List<Integer> list = cont.f108471a;
            list.set(i38, list.get(intValue15));
            List<Integer> list2 = cont.f108471a;
            list2.set(i38 + 1, list2.get(intValue15 + 1));
            List<Integer> list3 = cont.f108471a;
            list3.set(i38 + 2, list3.get(intValue15 + 2));
            List<Integer> list4 = cont.f108471a;
            list4.set(i38 + 3, list4.get(intValue15 + 3));
            cont.f108472b++;
        }
    }

    public final int Q(int n10, int[] verts, int[] indices, int[] tris) {
        int i10 = n10;
        for (int i11 = 0; i11 < i10; i11++) {
            int J10 = J(i11, i10);
            if (r(i11, J(J10, i10), n10, verts, indices)) {
                indices[J10] = indices[J10] | 32768;
            }
        }
        int i12 = 0;
        int i13 = 0;
        while (i10 > 3) {
            int i14 = -1;
            int i15 = -1;
            for (int i16 = 0; i16 < i10; i16++) {
                int J11 = J(i16, i10);
                if ((indices[J11] & 32768) != 0) {
                    int i17 = (indices[i16] & 32767) * 4;
                    int i18 = (indices[J(J11, i10)] & 32767) * 4;
                    int i19 = verts[i18] - verts[i17];
                    int i20 = verts[i18 + 2] - verts[i17 + 2];
                    int i21 = (i19 * i19) + (i20 * i20);
                    if (i15 < 0 || i21 < i15) {
                        i14 = i16;
                        i15 = i21;
                    }
                }
            }
            if (i14 == -1) {
                return -i13;
            }
            int J12 = J(i14, i10);
            int J13 = J(J12, i10);
            tris[i12] = indices[i14] & 32767;
            tris[i12 + 1] = indices[J12] & 32767;
            int i22 = i12 + 3;
            tris[i12 + 2] = indices[J13] & 32767;
            int i23 = i13 + 1;
            i10--;
            int i24 = J12;
            while (i24 < i10) {
                int i25 = i24 + 1;
                indices[i24] = indices[i25];
                i24 = i25;
            }
            int i26 = J12 >= i10 ? 0 : J12;
            int L10 = L(i26, i10);
            if (r(L(L10, i10), i26, i10, verts, indices)) {
                indices[L10] = indices[L10] | 32768;
            } else {
                indices[L10] = indices[L10] & 32767;
            }
            if (r(L10, J(i26, i10), i10, verts, indices)) {
                indices[i26] = indices[i26] | 32768;
            } else {
                indices[i26] = indices[i26] & 32767;
            }
            i12 = i22;
            i13 = i23;
        }
        tris[i12] = indices[0] & 32767;
        tris[i12 + 1] = indices[1] & 32767;
        tris[i12 + 2] = indices[2] & 32767;
        return i13 + 1;
    }

    public final boolean R(int[] verts, int a10, int b10, int c10) {
        int i10 = verts[b10];
        int i11 = verts[a10];
        int i12 = verts[c10 + 2];
        int i13 = verts[a10 + 2];
        return ((i10 - i11) * (i12 - i13)) - ((verts[c10] - i11) * (verts[b10 + 2] - i13)) < 0;
    }

    public final boolean S(int[] verts, int a10, int b10) {
        return verts[a10] == verts[b10] && verts[a10 + 2] == verts[b10 + 2];
    }

    public final void T(l layer, int x10, int y10, e cont) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        l lVar = layer;
        m mVar = lVar.f108481a;
        int i18 = mVar.f108498j;
        int i19 = mVar.f108499k;
        cont.a();
        int i20 = 0;
        while (true) {
            if (i20 >= 4) {
                i10 = -1;
                break;
            }
            int i21 = (i20 + 3) & 3;
            if (x(lVar, x10, y10, i21) != lVar.f108486f[(y10 * i18) + x10]) {
                i10 = i21;
                break;
            }
            i20++;
        }
        if (i10 == -1) {
            return;
        }
        int i22 = i18 * i19;
        int i23 = x10;
        int i24 = y10;
        int i25 = i10;
        int i26 = 0;
        while (i26 < i22) {
            int x11 = x(lVar, i23, i24, i25);
            int i27 = i23 + (i24 * i18);
            if (x11 != lVar.f108486f[i27]) {
                if (i25 != 0) {
                    if (i25 == 1) {
                        i17 = i23 + 1;
                        i16 = i24 + 1;
                    } else if (i25 != 2) {
                        i16 = i24;
                    } else {
                        i17 = i23 + 1;
                        i16 = i24;
                    }
                    short s10 = lVar.f108483c[i27];
                    i11 = i25;
                    int i28 = i17;
                    i12 = i24;
                    i14 = i18;
                    i15 = i23;
                    int i29 = i16;
                    i13 = i26;
                    c(cont, i28, s10, i29, x11);
                    i25 = (i11 + 1) & 3;
                    i23 = i15;
                    i24 = i12;
                } else {
                    i16 = i24 + 1;
                }
                i17 = i23;
                short s102 = lVar.f108483c[i27];
                i11 = i25;
                int i282 = i17;
                i12 = i24;
                i14 = i18;
                i15 = i23;
                int i292 = i16;
                i13 = i26;
                c(cont, i282, s102, i292, x11);
                i25 = (i11 + 1) & 3;
                i23 = i15;
                i24 = i12;
            } else {
                i11 = i25;
                i12 = i24;
                i13 = i26;
                i14 = i18;
                i15 = i23;
                i23 = i15 + v(i11);
                i24 = i12 + w(i11);
                i25 = (i11 + 3) & 3;
            }
            if (i13 > 0 && i15 == x10 && i12 == y10 && i11 == i10) {
                break;
            }
            i26 = i13 + 1;
            lVar = layer;
            i18 = i14;
        }
        int i30 = (cont.f108472b - 1) * 4;
        if (cont.f108471a.get(i30).intValue() == cont.f108471a.get(0).intValue() && cont.f108471a.get(i30 + 2).intValue() == cont.f108471a.get(2).intValue()) {
            cont.f108472b--;
        }
    }

    public void a(List<Integer> a10, int v10) {
        int size = a10.size();
        if (size <= 0 || a10.get(size - 1).intValue() != v10) {
            a10.add(Integer.valueOf(v10));
        }
    }

    public final int b(int x10, int y10, int z10, int[] verts, int[] firstVert, int[] nextVert, int nv) {
        int o10 = o(x10, 0, z10);
        int i10 = firstVert[o10];
        while (i10 != 65535) {
            int i11 = i10 * 3;
            if (verts[i11] == x10 && verts[i11 + 2] == z10 && Math.abs(verts[i11 + 1] - y10) <= 2) {
                return i10;
            }
            i10 = nextVert[i10];
        }
        int i12 = nv * 3;
        verts[i12] = x10;
        verts[i12 + 1] = y10;
        verts[i12 + 2] = z10;
        nextVert[nv] = firstVert[o10];
        firstVert[o10] = nv;
        return nv;
    }

    public final void c(e cont, int x10, int y10, int z10, int r10) {
        int i10 = cont.f108472b;
        if (i10 > 1) {
            int i11 = (i10 - 2) * 4;
            int i12 = (i10 - 1) * 4;
            if (cont.f108471a.get(i12 + 3).intValue() == r10) {
                if (cont.f108471a.get(i11).intValue() == cont.f108471a.get(i12).intValue() && cont.f108471a.get(i12).intValue() == x10) {
                    cont.f108471a.set(i12 + 1, Integer.valueOf(y10));
                    cont.f108471a.set(i12 + 2, Integer.valueOf(z10));
                    return;
                }
                int i13 = i12 + 2;
                if (cont.f108471a.get(i11 + 2).intValue() == cont.f108471a.get(i13).intValue() && cont.f108471a.get(i13).intValue() == z10) {
                    cont.f108471a.set(i12, Integer.valueOf(x10));
                    cont.f108471a.set(i12 + 1, Integer.valueOf(y10));
                    return;
                }
            }
        }
        cont.f108471a.add(Integer.valueOf(x10));
        cont.f108471a.add(Integer.valueOf(y10));
        cont.f108471a.add(Integer.valueOf(z10));
        cont.f108471a.add(Integer.valueOf(r10));
        cont.f108472b++;
    }

    public final int d(int[] verts, int a10, int b10, int c10) {
        int i10 = verts[b10];
        int i11 = verts[a10];
        int i12 = verts[c10 + 2];
        int i13 = verts[a10 + 2];
        return ((i10 - i11) * (i12 - i13)) - ((verts[c10] - i11) * (verts[b10 + 2] - i13));
    }

    public final boolean e(int[] verts, int a10, int b10, int c10) {
        if (!l(verts, a10, b10, c10)) {
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

    public final void f(int[] polys, int npolys, int[] verts, int nverts, k lcset, int maxVertsPerPoly) {
        int i10;
        int i11;
        j jVar;
        j jVar2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = npolys;
        int i18 = i17 * maxVertsPerPoly;
        int[] iArr = new int[nverts + i18];
        b[] bVarArr = new b[i18];
        int i19 = 0;
        for (int i20 = 0; i20 < i18; i20++) {
            bVarArr[i20] = new b();
        }
        int i21 = 0;
        while (true) {
            i10 = 65535;
            if (i21 >= nverts) {
                break;
            }
            iArr[i21] = 65535;
            i21++;
        }
        int i22 = 0;
        int i23 = 0;
        while (true) {
            i11 = 2;
            if (i22 >= i17) {
                break;
            }
            int i24 = i22 * maxVertsPerPoly * 2;
            int i25 = 0;
            while (i25 < maxVertsPerPoly) {
                int i26 = i24 + i25;
                int i27 = polys[i26];
                if (i27 == i10) {
                    break;
                }
                int i28 = i25 + 1;
                if (i28 >= maxVertsPerPoly || (i15 = polys[i26 + 1]) == i10) {
                    i15 = polys[i24];
                }
                if (i27 < i15) {
                    b bVar = bVarArr[i23];
                    i16 = i28;
                    int[] iArr2 = bVar.f108458a;
                    iArr2[0] = i27;
                    iArr2[1] = i15;
                    int[] iArr3 = bVar.f108460c;
                    iArr3[0] = i22;
                    int[] iArr4 = bVar.f108459b;
                    iArr4[0] = i25;
                    iArr3[1] = i22;
                    iArr4[1] = 255;
                    iArr[nverts + i23] = iArr[i27];
                    iArr[i27] = (short) i23;
                    i23++;
                } else {
                    i16 = i28;
                }
                i25 = i16;
                i10 = 65535;
            }
            i22++;
            i10 = 65535;
        }
        int i29 = 0;
        while (i29 < i17) {
            int i30 = i29 * maxVertsPerPoly * i11;
            int i31 = i19;
            while (i31 < maxVertsPerPoly) {
                int i32 = i30 + i31;
                int i33 = polys[i32];
                int i34 = 65535;
                if (i33 == 65535) {
                    break;
                }
                int i35 = i31 + 1;
                if (i35 >= maxVertsPerPoly || (i12 = polys[i32 + 1]) == 65535) {
                    i12 = polys[i30];
                }
                if (i33 > i12) {
                    int i36 = iArr[i12];
                    while (true) {
                        if (i36 == i34) {
                            i13 = i30;
                            i14 = i35;
                            b bVar2 = bVarArr[i23];
                            int[] iArr5 = bVar2.f108458a;
                            iArr5[0] = i12;
                            iArr5[1] = i33;
                            int[] iArr6 = bVar2.f108460c;
                            short s10 = (short) i29;
                            iArr6[0] = s10;
                            int[] iArr7 = bVar2.f108459b;
                            iArr7[0] = (short) i31;
                            iArr6[1] = s10;
                            iArr7[1] = 255;
                            iArr[nverts + i23] = iArr[i12];
                            iArr[i12] = (short) i23;
                            i23++;
                            break;
                        }
                        b bVar3 = bVarArr[i36];
                        if (bVar3.f108458a[1] == i33) {
                            int[] iArr8 = bVar3.f108460c;
                            i13 = i30;
                            i14 = i35;
                            if (iArr8[0] == iArr8[1]) {
                                iArr8[1] = i29;
                                bVar3.f108459b[1] = i31;
                                break;
                            }
                        } else {
                            i13 = i30;
                            i14 = i35;
                        }
                        i36 = iArr[nverts + i36];
                        i30 = i13;
                        i35 = i14;
                        i34 = 65535;
                    }
                } else {
                    i13 = i30;
                    i14 = i35;
                }
                i30 = i13;
                i31 = i14;
            }
            i29++;
            i17 = npolys;
            i19 = 0;
            i11 = 2;
        }
        for (int i37 = 0; i37 < lcset.f108479a; i37++) {
            j jVar3 = lcset.f108480b[i37];
            int i38 = jVar3.f108475a;
            if (i38 >= 3) {
                int i39 = i38 - 1;
                int i40 = 0;
                while (i40 < jVar3.f108475a) {
                    int i41 = i39 * 4;
                    int i42 = i40 * 4;
                    int[] iArr9 = jVar3.f108476b;
                    int i43 = iArr9[i41 + 3] & 15;
                    if (i43 != 15) {
                        if (i43 == 0 || i43 == 2) {
                            jVar = jVar3;
                            int i44 = iArr9[i41];
                            int i45 = iArr9[i41 + 2];
                            int i46 = iArr9[i42 + 2];
                            if (i45 > i46) {
                                i46 = i45;
                                i45 = i46;
                            }
                            for (int i47 = 0; i47 < i23; i47++) {
                                b bVar4 = bVarArr[i47];
                                int[] iArr10 = bVar4.f108460c;
                                if (iArr10[0] == iArr10[1]) {
                                    int[] iArr11 = bVar4.f108458a;
                                    int i48 = iArr11[0] * 3;
                                    int i49 = iArr11[1] * 3;
                                    if (verts[i48] == i44 && verts[i49] == i44) {
                                        int i50 = verts[i48 + 2];
                                        int i51 = verts[i49 + 2];
                                        if (i50 > i51) {
                                            i50 = i51;
                                            i51 = i50;
                                        }
                                        if (K(i45, i46, i50, i51)) {
                                            bVar4.f108459b[1] = i43;
                                        }
                                    }
                                }
                            }
                            i39 = i40;
                            i40++;
                            jVar3 = jVar;
                        } else {
                            int i52 = iArr9[i41 + 2];
                            int i53 = iArr9[i41];
                            int i54 = iArr9[i42];
                            if (i53 > i54) {
                                i54 = i53;
                                i53 = i54;
                            }
                            int i55 = 0;
                            while (i55 < i23) {
                                b bVar5 = bVarArr[i55];
                                int[] iArr12 = bVar5.f108460c;
                                if (iArr12[0] != iArr12[1]) {
                                    jVar2 = jVar3;
                                } else {
                                    int[] iArr13 = bVar5.f108458a;
                                    int i56 = iArr13[0] * 3;
                                    int i57 = iArr13[1] * 3;
                                    jVar2 = jVar3;
                                    if (verts[i56 + 2] == i52 && verts[i57 + 2] == i52) {
                                        int i58 = verts[i56];
                                        int i59 = verts[i57];
                                        if (i58 > i59) {
                                            i59 = i58;
                                            i58 = i59;
                                        }
                                        if (K(i53, i54, i58, i59)) {
                                            bVar5.f108459b[1] = i43;
                                        }
                                    }
                                }
                                i55++;
                                jVar3 = jVar2;
                            }
                        }
                    }
                    jVar = jVar3;
                    i39 = i40;
                    i40++;
                    jVar3 = jVar;
                }
            }
        }
        for (int i60 = 0; i60 < i23; i60++) {
            b bVar6 = bVarArr[i60];
            int[] iArr14 = bVar6.f108460c;
            int i61 = iArr14[0];
            int i62 = iArr14[1];
            if (i61 != i62) {
                int[] iArr15 = bVar6.f108459b;
                polys[(i61 * maxVertsPerPoly * 2) + maxVertsPerPoly + iArr15[0]] = i62;
                polys[(i62 * maxVertsPerPoly * 2) + maxVertsPerPoly + iArr15[1]] = iArr14[0];
            } else {
                int[] iArr16 = bVar6.f108459b;
                int i63 = iArr16[1];
                if (i63 != 255) {
                    polys[(i61 * maxVertsPerPoly * 2) + maxVertsPerPoly + iArr16[0]] = 32768 | ((short) i63);
                }
            }
        }
    }

    public k g(l layer, int walkableClimb, float maxError) {
        h hVar = this;
        l lVar = layer;
        m mVar = lVar.f108481a;
        int i10 = mVar.f108498j;
        int i11 = mVar.f108499k;
        k kVar = new k();
        int i12 = lVar.f108482b;
        kVar.f108479a = i12;
        kVar.f108480b = new j[i12];
        for (int i13 = 0; i13 < kVar.f108479a; i13++) {
            kVar.f108480b[i13] = new j();
        }
        e eVar = new e();
        int i14 = 0;
        while (i14 < i11) {
            int i15 = 0;
            while (i15 < i10) {
                int i16 = (i14 * i10) + i15;
                short s10 = lVar.f108486f[i16];
                if (s10 != 255) {
                    j jVar = kVar.f108480b[s10];
                    if (jVar.f108475a <= 0) {
                        jVar.f108477c = s10;
                        jVar.f108478d = lVar.f108484d[i16];
                        hVar.T(lVar, i15, i14, eVar);
                        hVar.P(eVar, maxError);
                        int i17 = eVar.f108472b;
                        jVar.f108475a = i17;
                        if (i17 > 0) {
                            jVar.f108476b = new int[i17 * 4];
                            int i18 = i17 - 1;
                            for (int i19 = 0; i19 < eVar.f108472b; i19++) {
                                int i20 = i18 * 4;
                                int intValue = eVar.f108471a.get((i19 * 4) + 3).intValue();
                                int i21 = i20 + 1;
                                int i22 = i11;
                                int i23 = i20 + 2;
                                int i24 = i10;
                                U<Integer, Boolean> u10 = u(lVar, eVar.f108471a.get(i20).intValue(), eVar.f108471a.get(i21).intValue(), eVar.f108471a.get(i23).intValue(), walkableClimb);
                                int intValue2 = u10.f94229a.intValue();
                                boolean booleanValue = u10.f94230b.booleanValue();
                                jVar.f108476b[i20] = eVar.f108471a.get(i20).intValue();
                                int[] iArr = jVar.f108476b;
                                iArr[i21] = intValue2;
                                iArr[i23] = eVar.f108471a.get(i23).intValue();
                                int[] iArr2 = jVar.f108476b;
                                int i25 = i20 + 3;
                                iArr2[i25] = 15;
                                if (intValue != 255 && intValue >= 248) {
                                    iArr2[i25] = intValue - 248;
                                }
                                if (booleanValue) {
                                    iArr2[i25] = iArr2[i25] | 128;
                                }
                                lVar = layer;
                                i18 = i19;
                                i11 = i22;
                                i10 = i24;
                            }
                        }
                        i15++;
                        hVar = this;
                        lVar = layer;
                        i11 = i11;
                        i10 = i10;
                    }
                }
                i15++;
                hVar = this;
                lVar = layer;
                i11 = i11;
                i10 = i10;
            }
            i14++;
            hVar = this;
            lVar = layer;
            i10 = i10;
        }
        return kVar;
    }

    public q h(k lcset, int maxVertsPerPoly) {
        int i10;
        int i11;
        int i12;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        char c10;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        h hVar = this;
        k kVar = lcset;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            i10 = 3;
            if (i19 >= kVar.f108479a) {
                break;
            }
            int i23 = kVar.f108480b[i19].f108475a;
            if (i23 >= 3) {
                i20 += i23;
                i22 += i23 - 2;
                i21 = Math.max(i21, i23);
            }
            i19++;
        }
        q qVar = new q(maxVertsPerPoly);
        int[] iArr6 = new int[i20];
        qVar.f108533d = new int[i20 * 3];
        int[] iArr7 = new int[i22 * maxVertsPerPoly * 2];
        qVar.f108534e = iArr7;
        qVar.f108536g = new int[i22];
        qVar.f108535f = new int[i22];
        qVar.f108531b = 0;
        qVar.f108532c = 0;
        Arrays.fill(iArr7, 65535);
        int[] iArr8 = new int[256];
        for (int i24 = 0; i24 < 256; i24++) {
            iArr8[i24] = 65535;
        }
        int[] iArr9 = new int[i20];
        int[] iArr10 = new int[i21];
        int[] iArr11 = new int[i21 * 3];
        int[] iArr12 = new int[i21 * maxVertsPerPoly];
        int i25 = 0;
        while (i25 < kVar.f108479a) {
            j jVar = kVar.f108480b[i25];
            if (jVar.f108475a < i10) {
                i12 = i25;
                iArr = iArr12;
                iArr2 = iArr11;
                iArr3 = iArr10;
                iArr4 = iArr9;
                iArr5 = iArr8;
                i13 = i18;
                i14 = i22;
                c10 = C14021s.f95775c;
            } else {
                int i26 = i18;
                while (true) {
                    i11 = jVar.f108475a;
                    if (i26 >= i11) {
                        break;
                    }
                    iArr10[i26] = i26;
                    i26++;
                }
                int Q10 = hVar.Q(i11, jVar.f108476b, iArr10, iArr11);
                if (Q10 <= 0) {
                    Q10 = -Q10;
                }
                int i27 = Q10;
                int i28 = 0;
                while (i28 < jVar.f108475a) {
                    int i29 = i28 * 4;
                    int i30 = i25;
                    int[] iArr13 = jVar.f108476b;
                    int i31 = i28;
                    j jVar2 = jVar;
                    int[] iArr14 = iArr12;
                    int[] iArr15 = iArr11;
                    int[] iArr16 = iArr10;
                    int[] iArr17 = iArr9;
                    int[] iArr18 = iArr8;
                    int i32 = i22;
                    int b10 = b(iArr13[i29], iArr13[i29 + 1], iArr13[i29 + 2], qVar.f108533d, iArr8, iArr17, qVar.f108531b);
                    iArr16[i31] = b10;
                    qVar.f108531b = Math.max(qVar.f108531b, b10 + 1);
                    if ((jVar2.f108476b[i29 + 3] & 128) != 0) {
                        iArr6[iArr16[i31]] = 1;
                    }
                    i28 = i31 + 1;
                    iArr12 = iArr14;
                    jVar = jVar2;
                    i25 = i30;
                    iArr11 = iArr15;
                    iArr10 = iArr16;
                    iArr9 = iArr17;
                    iArr8 = iArr18;
                    i22 = i32;
                }
                j jVar3 = jVar;
                i12 = i25;
                iArr = iArr12;
                iArr2 = iArr11;
                iArr3 = iArr10;
                iArr4 = iArr9;
                iArr5 = iArr8;
                int i33 = i22;
                c10 = C14021s.f95775c;
                Arrays.fill(iArr, 65535);
                int i34 = 0;
                for (int i35 = 0; i35 < i27; i35++) {
                    int i36 = i35 * 3;
                    int i37 = iArr2[i36];
                    int i38 = i36 + 1;
                    int i39 = iArr2[i38];
                    if (i37 != i39 && i37 != (i17 = iArr2[(i16 = i36 + 2)]) && i39 != i17) {
                        int i40 = i34 * maxVertsPerPoly;
                        iArr[i40] = iArr3[i37];
                        iArr[i40 + 1] = iArr3[iArr2[i38]];
                        iArr[i40 + 2] = iArr3[iArr2[i16]];
                        i34++;
                    }
                }
                if (i34 == 0) {
                    i14 = i33;
                    i13 = 0;
                } else {
                    if (maxVertsPerPoly > 3) {
                        int i41 = i34;
                        while (true) {
                            int i42 = 0;
                            int i43 = 0;
                            int i44 = 0;
                            int i45 = 0;
                            int i46 = 0;
                            int i47 = 0;
                            while (true) {
                                i15 = i41 - 1;
                                if (i47 >= i15) {
                                    break;
                                }
                                int i48 = i47 * maxVertsPerPoly;
                                int i49 = i47 + 1;
                                int i50 = i43;
                                int i51 = i44;
                                int i52 = i45;
                                int i53 = i46;
                                int i54 = i49;
                                int i55 = i42;
                                while (i54 < i41) {
                                    int i56 = i54;
                                    int i57 = i55;
                                    int[] y10 = y(iArr, i48, i54 * maxVertsPerPoly, qVar.f108533d, maxVertsPerPoly);
                                    int i58 = y10[0];
                                    int i59 = y10[1];
                                    int i60 = y10[2];
                                    if (i58 > i57) {
                                        i53 = i60;
                                        i55 = i58;
                                        i52 = i59;
                                        i50 = i47;
                                        i51 = i56;
                                    } else {
                                        i55 = i57;
                                    }
                                    i54 = i56 + 1;
                                }
                                i42 = i55;
                                i47 = i49;
                                i43 = i50;
                                i44 = i51;
                                i45 = i52;
                                i46 = i53;
                            }
                            i13 = 0;
                            if (i42 <= 0) {
                                break;
                            }
                            int i61 = i44 * maxVertsPerPoly;
                            I(iArr, i43 * maxVertsPerPoly, i61, i45, i46, maxVertsPerPoly);
                            System.arraycopy(iArr, i15 * maxVertsPerPoly, iArr, i61, maxVertsPerPoly);
                            i41--;
                        }
                        i34 = i41;
                    } else {
                        i13 = 0;
                    }
                    int i62 = i13;
                    while (i62 < i34) {
                        int i63 = qVar.f108532c * maxVertsPerPoly * 2;
                        int i64 = i62 * maxVertsPerPoly;
                        for (int i65 = i13; i65 < maxVertsPerPoly; i65++) {
                            qVar.f108534e[i63 + i65] = iArr[i64 + i65];
                        }
                        int[] iArr19 = qVar.f108536g;
                        int i66 = qVar.f108532c;
                        iArr19[i66] = jVar3.f108478d;
                        int i67 = i66 + 1;
                        qVar.f108532c = i67;
                        int i68 = i33;
                        if (i67 > i68) {
                            throw new RuntimeException("Buffer too small");
                        }
                        i62++;
                        i33 = i68;
                    }
                    i14 = i33;
                }
            }
            i25 = i12 + 1;
            kVar = lcset;
            iArr12 = iArr;
            iArr11 = iArr2;
            iArr10 = iArr3;
            iArr9 = iArr4;
            iArr8 = iArr5;
            i10 = 3;
            hVar = this;
            i22 = i14;
            i18 = i13;
        }
        int i69 = i18;
        int i70 = i22;
        int i71 = i69;
        while (true) {
            int i72 = qVar.f108531b;
            if (i71 >= i72) {
                f(qVar.f108534e, qVar.f108532c, qVar.f108533d, i72, lcset, maxVertsPerPoly);
                return qVar;
            }
            if (iArr6[i71] != 0 && k(qVar, i71)) {
                O(qVar, i71, i70);
                int i73 = i71;
                while (i73 < qVar.f108531b) {
                    int i74 = i73 + 1;
                    iArr6[i73] = iArr6[i74];
                    i73 = i74;
                }
                i71--;
            }
            i71++;
        }
    }

    public void i(l layer, int walkableClimb) {
        Iterator<Integer> it;
        short s10;
        short s11;
        int i10;
        int i11;
        short s12;
        m mVar = layer.f108481a;
        int i12 = mVar.f108498j;
        int i13 = mVar.f108499k;
        short s13 = 255;
        Arrays.fill(layer.f108486f, (short) 255);
        d[] dVarArr = new d[i12];
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i15 >= i12) {
                break;
            }
            dVarArr[i15] = new d();
            i15++;
        }
        int[] iArr = new int[256];
        int i16 = 0;
        int i17 = 0;
        while (i16 < i13) {
            if (i17 > 0) {
                Arrays.fill(iArr, i14, i17, i14);
            }
            int i18 = i14;
            int i19 = i18;
            while (i18 < i12) {
                int i20 = i16 * i12;
                int i21 = i18 + i20;
                if (layer.f108484d[i21] != 0) {
                    int i22 = (i18 - 1) + i20;
                    if (i18 <= 0 || !C(layer, i21, i22, walkableClimb) || (s11 = layer.f108486f[i22]) == s13) {
                        s11 = s13;
                    }
                    if (s11 == s13) {
                        i10 = i19 + 1;
                        d dVar = dVarArr[i19];
                        dVar.f108469c = s13;
                        dVar.f108467a = i14;
                    } else {
                        int i23 = i19;
                        i19 = s11;
                        i10 = i23;
                    }
                    int i24 = ((i16 - 1) * i12) + i18;
                    if (i16 <= 0 || !C(layer, i21, i24, walkableClimb) || (s12 = layer.f108486f[i24]) == s13) {
                        i11 = i10;
                    } else {
                        d dVar2 = dVarArr[i19];
                        int i25 = dVar2.f108467a;
                        if (i25 == 0) {
                            dVar2.f108469c = s12;
                        }
                        i11 = i10;
                        if (dVar2.f108469c == s12) {
                            dVar2.f108467a = i25 + 1;
                            iArr[s12] = iArr[s12] + 1;
                        } else {
                            dVar2.f108469c = 255;
                        }
                    }
                    layer.f108486f[i21] = (byte) i19;
                    i19 = i11;
                }
                i18++;
                s13 = 255;
                i14 = 0;
            }
            for (int i26 = 0; i26 < i19; i26++) {
                d dVar3 = dVarArr[i26];
                int i27 = dVar3.f108469c;
                if (i27 != 255 && iArr[i27] == dVar3.f108467a) {
                    dVar3.f108468b = i27;
                } else {
                    if (i17 == 255) {
                        throw new RuntimeException("Buffer too small");
                    }
                    dVar3.f108468b = i17;
                    i17++;
                }
            }
            for (int i28 = 0; i28 < i12; i28++) {
                int i29 = (i16 * i12) + i28;
                short[] sArr = layer.f108486f;
                short s14 = sArr[i29];
                if (s14 != 255) {
                    sArr[i29] = (short) dVarArr[s14].f108468b;
                }
            }
            i16++;
            s13 = 255;
            i14 = 0;
        }
        c[] cVarArr = new c[i17];
        for (int i30 = 0; i30 < i17; i30++) {
            c cVar = new c();
            cVarArr[i30] = cVar;
            cVar.f108464c = 255;
        }
        for (int i31 = 0; i31 < i13; i31++) {
            for (int i32 = 0; i32 < i12; i32++) {
                int i33 = (i31 * i12) + i32;
                short s15 = layer.f108486f[i33];
                if (s15 != 255) {
                    c cVar2 = cVarArr[s15];
                    cVar2.f108462a++;
                    cVar2.f108465d = layer.f108484d[i33];
                    int i34 = ((i31 - 1) * i12) + i32;
                    if (i31 > 0 && C(layer, i33, i34, walkableClimb) && (s10 = layer.f108486f[i34]) != 255 && s10 != s15) {
                        a(cVarArr[s15].f108463b, s10);
                        a(cVarArr[s10].f108463b, s15);
                    }
                }
            }
        }
        for (int i35 = 0; i35 < i17; i35++) {
            cVarArr[i35].f108464c = i35;
        }
        for (int i36 = 0; i36 < i17; i36++) {
            c cVar3 = cVarArr[i36];
            Iterator<Integer> it2 = cVar3.f108463b.iterator();
            int i37 = -1;
            int i38 = 0;
            while (it2.hasNext()) {
                int intValue = it2.next().intValue();
                c cVar4 = cVarArr[intValue];
                int i39 = cVar3.f108464c;
                int i40 = cVar4.f108464c;
                if (i39 == i40) {
                    it = it2;
                } else {
                    it = it2;
                    if (cVar3.f108465d == cVar4.f108465d && cVar4.f108462a > i38 && j(i39, i40, cVarArr, i17)) {
                        i38 = cVar4.f108462a;
                        i37 = intValue;
                    }
                }
                it2 = it;
            }
            if (i37 != -1) {
                int i41 = cVar3.f108464c;
                int i42 = cVarArr[i37].f108464c;
                for (int i43 = 0; i43 < i17; i43++) {
                    c cVar5 = cVarArr[i43];
                    if (cVar5.f108464c == i41) {
                        cVar5.f108464c = i42;
                    }
                }
            }
        }
        int[] iArr2 = new int[256];
        for (int i44 = 0; i44 < i17; i44++) {
            iArr2[cVarArr[i44].f108464c] = 1;
        }
        int i45 = 0;
        for (int i46 = 0; i46 < 256; i46++) {
            if (iArr2[i46] != 0) {
                iArr2[i46] = i45;
                i45++;
            }
        }
        for (int i47 = 0; i47 < i17; i47++) {
            c cVar6 = cVarArr[i47];
            cVar6.f108464c = iArr2[cVar6.f108464c];
        }
        layer.f108482b = i45;
        for (int i48 = 0; i48 < i12 * i13; i48++) {
            short[] sArr2 = layer.f108486f;
            short s16 = sArr2[i48];
            if (s16 != 255) {
                sArr2[i48] = (short) cVarArr[s16].f108464c;
            }
        }
    }

    public boolean j(int oldRegId, int newRegId, c[] regs, int nregs) {
        int i10 = 0;
        for (int i11 = 0; i11 < nregs; i11++) {
            c cVar = regs[i11];
            if (cVar.f108464c == oldRegId) {
                Iterator<Integer> it = cVar.f108463b.iterator();
                while (it.hasNext()) {
                    if (regs[it.next().intValue()].f108464c == newRegId) {
                        i10++;
                    }
                }
            }
        }
        return i10 == 1;
    }

    public final boolean k(q mesh, int rem) {
        int i10;
        int i11 = mesh.f108530a;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            i10 = 2;
            if (i13 >= mesh.f108532c) {
                break;
            }
            int i16 = mesh.f108530a * i13 * 2;
            int p10 = p(mesh.f108534e, i16, i11);
            int i17 = 0;
            int i18 = 0;
            for (int i19 = 0; i19 < p10; i19++) {
                if (mesh.f108534e[i16 + i19] == rem) {
                    i15++;
                    i17++;
                }
                i18++;
            }
            if (i17 != 0) {
                i14 += i18 - (i17 + 1);
            }
            i13++;
        }
        if (i14 <= 2) {
            return false;
        }
        int[] iArr = new int[i15 * 2];
        int i20 = 0;
        int i21 = 0;
        while (i20 < mesh.f108532c) {
            int i22 = mesh.f108530a * i20 * i10;
            int p11 = p(mesh.f108534e, i22, i11);
            int i23 = p11 - 1;
            for (int i24 = i12; i24 < p11; i24++) {
                int[] iArr2 = mesh.f108534e;
                int i25 = iArr2[i22 + i24];
                if (i25 == rem || iArr2[i22 + i23] == rem) {
                    int i26 = iArr2[i23 + i22];
                    if (i26 == rem) {
                        i25 = i26;
                        i26 = i25;
                    }
                    boolean z10 = false;
                    for (int i27 = 0; i27 < i21; i27++) {
                        int i28 = i27 * 3;
                        if (iArr[i28 + 1] == i26) {
                            int i29 = i28 + 2;
                            iArr[i29] = iArr[i29] + 1;
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        int i30 = i21 * 3;
                        iArr[i30] = i25;
                        iArr[i30 + 1] = i26;
                        iArr[i30 + 2] = 1;
                        i21++;
                    }
                }
                i23 = i24;
            }
            i20++;
            i12 = 0;
            i10 = 2;
        }
        int i31 = 0;
        for (int i32 = 0; i32 < i21; i32++) {
            if (iArr[(i32 * 3) + 2] < 2) {
                i31++;
            }
        }
        return i31 <= 2;
    }

    public final boolean l(int[] verts, int a10, int b10, int c10) {
        return d(verts, a10, b10, c10) == 0;
    }

    public byte[] m(l layer, ByteOrder order, boolean cCompatibility) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new rn.b().h(byteArrayOutputStream, layer.f108481a, order, cCompatibility);
            m mVar = layer.f108481a;
            int i10 = mVar.f108498j * mVar.f108499k;
            byte[] bArr = new byte[i10 * 3];
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i11] = (byte) layer.f108483c[i11];
                bArr[i10 + i11] = (byte) layer.f108484d[i11];
                bArr[(i10 * 2) + i11] = (byte) layer.f108485e[i11];
            }
            byteArrayOutputStream.write(sn.d.a(cCompatibility).b(bArr));
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public byte[] n(m header, int[] heights, int[] areas, int[] cons, ByteOrder order, boolean cCompatibility) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new rn.b().h(byteArrayOutputStream, header, order, cCompatibility);
            int i10 = header.f108498j * header.f108499k;
            byte[] bArr = new byte[i10 * 3];
            for (int i11 = 0; i11 < i10; i11++) {
                bArr[i11] = (byte) heights[i11];
                bArr[i10 + i11] = (byte) areas[i11];
                bArr[(i10 * 2) + i11] = (byte) cons[i11];
            }
            byteArrayOutputStream.write(sn.d.a(cCompatibility).b(bArr));
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public final int o(int x10, int y10, int z10) {
        return ((x10 * (-1918454973)) + (y10 * (-669632447)) + (z10 * (-887442657))) & 255;
    }

    public final int p(int[] polys, int p10, int maxVertsPerPoly) {
        for (int i10 = 0; i10 < maxVertsPerPoly; i10++) {
            if (polys[p10 + i10] == 65535) {
                return i10;
            }
        }
        return maxVertsPerPoly;
    }

    public l q(i comp, byte[] compressed, ByteOrder order, boolean cCompatibility) {
        ByteBuffer wrap = ByteBuffer.wrap(compressed);
        wrap.order(order);
        l lVar = new l();
        try {
            m a10 = this.f108457a.a(wrap, cCompatibility);
            lVar.f108481a = a10;
            int i10 = a10.f108498j * a10.f108499k;
            byte[] a11 = comp.a(compressed, wrap.position(), compressed.length - wrap.position(), i10 * 3);
            lVar.f108483c = new short[i10];
            lVar.f108484d = new short[i10];
            lVar.f108485e = new short[i10];
            lVar.f108486f = new short[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                lVar.f108483c[i11] = (short) (a11[i11] & 255);
                lVar.f108484d[i11] = (short) (a11[i11 + i10] & 255);
                lVar.f108485e[i11] = (short) (a11[(i10 * 2) + i11] & 255);
            }
            return lVar;
        } catch (IOException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public final boolean r(int i10, int j10, int n10, int[] verts, int[] indices) {
        return z(i10, j10, n10, verts, indices) && s(i10, j10, n10, verts, indices);
    }

    public final boolean s(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & 32767) * 4;
        int i12 = (indices[j10] & 32767) * 4;
        for (int i13 = 0; i13 < n10; i13++) {
            int J10 = J(i13, n10);
            if (i13 != i10 && J10 != i10 && i13 != j10 && J10 != j10) {
                int i14 = (indices[i13] & 32767) * 4;
                int i15 = (indices[J10] & 32767) * 4;
                if (!S(verts, i11, i14) && !S(verts, i12, i14) && !S(verts, i11, i15) && !S(verts, i12, i15) && A(verts, i11, i12, i14, i15)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final float t(int x10, int z10, int px, int pz, int qx, int qz) {
        float f10 = qx - px;
        float f11 = qz - pz;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = ((x10 - px) * f10) + ((z10 - pz) * f11);
        float f14 = 0.0f;
        if (f12 > 0.0f) {
            f13 /= f12;
        }
        if (f13 >= 0.0f) {
            f14 = 1.0f;
            if (f13 <= 1.0f) {
                f14 = f13;
            }
        }
        float f15 = (px + (f10 * f14)) - x10;
        float f16 = (pz + (f14 * f11)) - z10;
        return (f15 * f15) + (f16 * f16);
    }

    public final int v(int dir) {
        return new int[]{-1, 0, 1, 0}[dir & 3];
    }

    public final int w(int dir) {
        return new int[]{0, 1, 0, -1}[dir & 3];
    }

    public final int x(l layer, int ax, int ay, int dir) {
        int i10 = layer.f108481a.f108498j;
        short s10 = layer.f108485e[(ay * i10) + ax];
        int i11 = s10 & 15;
        int i12 = s10 >> 4;
        int i13 = 1 << dir;
        if ((i11 & i13) != 0) {
            return layer.f108486f[ax + v(dir) + ((ay + w(dir)) * i10)];
        }
        if ((i12 & i13) != 0) {
            return dir + 248;
        }
        return 255;
    }

    public final int[] y(int[] polys, int pa2, int pb2, int[] verts, int maxVertsPerPoly) {
        int p10 = p(polys, pa2, maxVertsPerPoly);
        int p11 = p(polys, pb2, maxVertsPerPoly);
        int i10 = 0;
        int i11 = -1;
        if ((p10 + p11) - 2 > maxVertsPerPoly) {
            return new int[]{-1, 0, 0};
        }
        int i12 = 0;
        int i13 = -1;
        int i14 = -1;
        while (i12 < p10) {
            int i15 = polys[pa2 + i12];
            int i16 = i12 + 1;
            int i17 = polys[(i16 % p10) + pa2];
            if (i15 > i17) {
                i17 = i15;
                i15 = i17;
            }
            int i18 = i10;
            while (true) {
                if (i18 < p11) {
                    int i19 = polys[pb2 + i18];
                    int i20 = i18 + 1;
                    int i21 = polys[pb2 + (i20 % p11)];
                    if (i19 > i21) {
                        i21 = i19;
                        i19 = i21;
                    }
                    if (i15 == i19 && i17 == i21) {
                        i13 = i12;
                        i14 = i18;
                        break;
                    }
                    i18 = i20;
                }
            }
            i12 = i16;
            i10 = 0;
            i11 = -1;
        }
        int i22 = i11;
        if (i13 == i22 || i14 == i22) {
            return new int[]{i22, i13, i14};
        }
        int i23 = pa2 + i13;
        if (!R(verts, polys[(((i13 + p10) - 1) % p10) + pa2] * 3, polys[i23] * 3, polys[((i14 + 2) % p11) + pb2] * 3)) {
            return new int[]{-1, i13, i14};
        }
        if (!R(verts, polys[(((i14 + p11) - 1) % p11) + pb2] * 3, polys[pb2 + i14] * 3, polys[((i13 + 2) % p10) + pa2] * 3)) {
            return new int[]{-1, i13, i14};
        }
        int i24 = polys[i23] * 3;
        int i25 = polys[pa2 + ((i13 + 1) % p10)] * 3;
        int i26 = verts[i24] - verts[i25];
        int i27 = verts[i24 + 2] - verts[i25 + 2];
        return new int[]{(i26 * i26) + (i27 * i27), i13, i14};
    }

    public final boolean z(int i10, int j10, int n10, int[] verts, int[] indices) {
        int i11 = (indices[i10] & 32767) * 4;
        int i12 = (indices[j10] & 32767) * 4;
        int i13 = (indices[J(i10, n10)] & 32767) * 4;
        int i14 = (indices[L(i10, n10)] & 32767) * 4;
        return E(verts, i14, i11, i13) ? D(verts, i11, i12, i14) && D(verts, i12, i11, i13) : (E(verts, i11, i12, i13) && E(verts, i12, i11, i14)) ? false : true;
    }
}
