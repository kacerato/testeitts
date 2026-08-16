package pk;

import Bi.a0;
import Ii.Q;
import Oi.K;
import java.security.SecureRandom;
import mk.C14289h;
import ok.c;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import sk.AbstractC15329o;

public abstract class AbstractC15008c {

    public static final int f104064a = 14;

    public static final int f104065b = 57;

    public static final int f104066c = 14;

    public static final int f104067d = 57;

    public static final int f104068e = 64;

    public static final int f104069f = 57;

    public static final int f104070g = 57;

    public static final int f104071h = 114;

    public static final int f104078o = 39081;

    public static final int f104079p = 5;

    public static final int f104080q = 7;

    public static final int f104081r = 5;

    public static final int f104082s = 5;

    public static final int f104083t = 18;

    public static final int f104084u = 450;

    public static final int f104085v = 16;

    public static final int f104086w = 15;

    public static final byte[] f104072i = {Opcodes.OPC_aastore, 105, Opcodes.OPC_dsub, Opcodes.OPC_fstore_2, 100, 52, 52, Opcodes.OPC_fstore};

    public static final int[] f104073j = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};

    public static final int[] f104074k = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};

    public static final int[] f104075l = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};

    public static final int[] f104076m = {110141154, 30892124, 160820362, 264558960, 217232225, 47722141, 19029845, 8326902, 183409749, 170134547, 90340180, 222600478, 61097333, 7431335, 198491505, 102372861};

    public static final int[] f104077n = {221945828, 50763449, 132637478, 109250759, 216053960, 61612587, 50649998, 138339097, 98949899, 248139835, 186410297, 126520782, 47339196, 78164062, 198835543, 169622712};

    public static final Object f104087x = new Object();

    public static d[] f104088y = null;

    public static d[] f104089z = null;

    public static int[] f104063A = null;

    public static final class b {

        public static final int f104090a = 0;

        public static final int f104091b = 1;
    }

    public static class C1957c extends ok.d {
    }

    public static class d {

        public int[] f104092a;

        public int[] f104093b;

        public d() {
            this.f104092a = ok.d.j();
            this.f104093b = ok.d.j();
        }
    }

    public static class e {

        public int[] f104094a;

        public int[] f104095b;

        public int[] f104096c;

        public e() {
            this.f104094a = ok.d.j();
            this.f104095b = ok.d.j();
            this.f104096c = ok.d.j();
        }
    }

    public static class f {

        public int[] f104097a;

        public int[] f104098b;

        public int[] f104099c;

        public int[] f104100d;

        public int[] f104101e;

        public int[] f104102f;

        public int[] f104103g;

        public int[] f104104h;

        public f() {
            this.f104097a = ok.d.j();
            this.f104098b = ok.d.j();
            this.f104099c = ok.d.j();
            this.f104100d = ok.d.j();
            this.f104101e = ok.d.j();
            this.f104102f = ok.d.j();
            this.f104103g = ok.d.j();
            this.f104104h = ok.d.j();
        }
    }

    public static final class g {

        public final int[] f104105a;

        public g(int[] iArr) {
            this.f104105a = iArr;
        }
    }

    public static void A(e eVar, d dVar) {
        ok.d.C(eVar.f104096c, dVar.f104093b);
        ok.d.J(dVar.f104093b, eVar.f104094a, dVar.f104092a);
        int[] iArr = dVar.f104093b;
        ok.d.J(iArr, eVar.f104095b, iArr);
        ok.d.L(dVar.f104092a);
        ok.d.L(dVar.f104093b);
    }

    public static boolean B(e eVar) {
        ok.d.L(eVar.f104094a);
        ok.d.L(eVar.f104095b);
        ok.d.L(eVar.f104096c);
        return ok.d.H(eVar.f104094a) && !ok.d.H(eVar.f104095b) && ok.d.e(eVar.f104095b, eVar.f104096c);
    }

    public static void C(d dVar, e eVar, f fVar) {
        int[] iArr = fVar.f104098b;
        int[] iArr2 = fVar.f104099c;
        int[] iArr3 = fVar.f104100d;
        int[] iArr4 = fVar.f104101e;
        int[] iArr5 = fVar.f104102f;
        int[] iArr6 = fVar.f104103g;
        int[] iArr7 = fVar.f104104h;
        ok.d.Q(eVar.f104096c, iArr);
        ok.d.J(dVar.f104092a, eVar.f104094a, iArr2);
        ok.d.J(dVar.f104093b, eVar.f104095b, iArr3);
        ok.d.J(iArr2, iArr3, iArr4);
        ok.d.I(iArr4, f104078o, iArr4);
        ok.d.a(iArr, iArr4, iArr5);
        ok.d.S(iArr, iArr4, iArr6);
        ok.d.a(dVar.f104093b, dVar.f104092a, iArr7);
        ok.d.a(eVar.f104095b, eVar.f104094a, iArr4);
        ok.d.J(iArr7, iArr4, iArr7);
        ok.d.a(iArr3, iArr2, iArr);
        ok.d.S(iArr3, iArr2, iArr4);
        ok.d.f(iArr);
        ok.d.S(iArr7, iArr, iArr7);
        ok.d.J(iArr7, eVar.f104096c, iArr7);
        ok.d.J(iArr4, eVar.f104096c, iArr4);
        ok.d.J(iArr5, iArr7, eVar.f104094a);
        ok.d.J(iArr4, iArr6, eVar.f104095b);
        ok.d.J(iArr5, iArr6, eVar.f104096c);
    }

    public static void D(e eVar, e eVar2, f fVar) {
        int[] iArr = fVar.f104097a;
        int[] iArr2 = fVar.f104098b;
        int[] iArr3 = fVar.f104099c;
        int[] iArr4 = fVar.f104100d;
        int[] iArr5 = fVar.f104101e;
        int[] iArr6 = fVar.f104102f;
        int[] iArr7 = fVar.f104103g;
        int[] iArr8 = fVar.f104104h;
        ok.d.J(eVar.f104096c, eVar2.f104096c, iArr);
        ok.d.Q(iArr, iArr2);
        ok.d.J(eVar.f104094a, eVar2.f104094a, iArr3);
        ok.d.J(eVar.f104095b, eVar2.f104095b, iArr4);
        ok.d.J(iArr3, iArr4, iArr5);
        ok.d.I(iArr5, f104078o, iArr5);
        ok.d.a(iArr2, iArr5, iArr6);
        ok.d.S(iArr2, iArr5, iArr7);
        ok.d.a(eVar.f104095b, eVar.f104094a, iArr8);
        ok.d.a(eVar2.f104095b, eVar2.f104094a, iArr5);
        ok.d.J(iArr8, iArr5, iArr8);
        ok.d.a(iArr4, iArr3, iArr2);
        ok.d.S(iArr4, iArr3, iArr5);
        ok.d.f(iArr2);
        ok.d.S(iArr8, iArr2, iArr8);
        ok.d.J(iArr8, iArr, iArr8);
        ok.d.J(iArr5, iArr, iArr5);
        ok.d.J(iArr6, iArr8, eVar2.f104094a);
        ok.d.J(iArr5, iArr7, eVar2.f104095b);
        ok.d.J(iArr6, iArr7, eVar2.f104096c);
    }

    public static void E(boolean z10, d dVar, e eVar, f fVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5 = fVar.f104098b;
        int[] iArr6 = fVar.f104099c;
        int[] iArr7 = fVar.f104100d;
        int[] iArr8 = fVar.f104101e;
        int[] iArr9 = fVar.f104102f;
        int[] iArr10 = fVar.f104103g;
        int[] iArr11 = fVar.f104104h;
        if (z10) {
            ok.d.S(dVar.f104093b, dVar.f104092a, iArr11);
            iArr2 = iArr5;
            iArr = iArr8;
            iArr4 = iArr9;
            iArr3 = iArr10;
        } else {
            ok.d.a(dVar.f104093b, dVar.f104092a, iArr11);
            iArr = iArr5;
            iArr2 = iArr8;
            iArr3 = iArr9;
            iArr4 = iArr10;
        }
        ok.d.Q(eVar.f104096c, iArr5);
        ok.d.J(dVar.f104092a, eVar.f104094a, iArr6);
        ok.d.J(dVar.f104093b, eVar.f104095b, iArr7);
        ok.d.J(iArr6, iArr7, iArr8);
        ok.d.I(iArr8, f104078o, iArr8);
        ok.d.a(iArr5, iArr8, iArr3);
        ok.d.S(iArr5, iArr8, iArr4);
        ok.d.a(eVar.f104095b, eVar.f104094a, iArr8);
        ok.d.J(iArr11, iArr8, iArr11);
        ok.d.a(iArr7, iArr6, iArr);
        ok.d.S(iArr7, iArr6, iArr2);
        ok.d.f(iArr);
        ok.d.S(iArr11, iArr5, iArr11);
        ok.d.J(iArr11, eVar.f104096c, iArr11);
        ok.d.J(iArr8, eVar.f104096c, iArr8);
        ok.d.J(iArr9, iArr11, eVar.f104094a);
        ok.d.J(iArr8, iArr10, eVar.f104095b);
        ok.d.J(iArr9, iArr10, eVar.f104096c);
    }

    public static void F(boolean z10, e eVar, e eVar2, f fVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5 = fVar.f104097a;
        int[] iArr6 = fVar.f104098b;
        int[] iArr7 = fVar.f104099c;
        int[] iArr8 = fVar.f104100d;
        int[] iArr9 = fVar.f104101e;
        int[] iArr10 = fVar.f104102f;
        int[] iArr11 = fVar.f104103g;
        int[] iArr12 = fVar.f104104h;
        if (z10) {
            ok.d.S(eVar.f104095b, eVar.f104094a, iArr12);
            iArr2 = iArr6;
            iArr = iArr9;
            iArr4 = iArr10;
            iArr3 = iArr11;
        } else {
            ok.d.a(eVar.f104095b, eVar.f104094a, iArr12);
            iArr = iArr6;
            iArr2 = iArr9;
            iArr3 = iArr10;
            iArr4 = iArr11;
        }
        ok.d.J(eVar.f104096c, eVar2.f104096c, iArr5);
        ok.d.Q(iArr5, iArr6);
        ok.d.J(eVar.f104094a, eVar2.f104094a, iArr7);
        ok.d.J(eVar.f104095b, eVar2.f104095b, iArr8);
        ok.d.J(iArr7, iArr8, iArr9);
        ok.d.I(iArr9, f104078o, iArr9);
        ok.d.a(iArr6, iArr9, iArr3);
        ok.d.S(iArr6, iArr9, iArr4);
        ok.d.a(eVar2.f104095b, eVar2.f104094a, iArr9);
        ok.d.J(iArr12, iArr9, iArr12);
        ok.d.a(iArr8, iArr7, iArr);
        ok.d.S(iArr8, iArr7, iArr2);
        ok.d.f(iArr);
        ok.d.S(iArr12, iArr6, iArr12);
        ok.d.J(iArr12, iArr5, iArr12);
        ok.d.J(iArr9, iArr5, iArr9);
        ok.d.J(iArr10, iArr12, eVar2.f104094a);
        ok.d.J(iArr9, iArr11, eVar2.f104095b);
        ok.d.J(iArr10, iArr11, eVar2.f104096c);
    }

    public static void G(d dVar, e eVar) {
        ok.d.i(dVar.f104092a, 0, eVar.f104094a, 0);
        ok.d.i(dVar.f104093b, 0, eVar.f104095b, 0);
        ok.d.M(eVar.f104096c);
    }

    public static void H(e eVar, e eVar2) {
        ok.d.i(eVar.f104094a, 0, eVar2.f104094a, 0);
        ok.d.i(eVar.f104095b, 0, eVar2.f104095b, 0);
        ok.d.i(eVar.f104096c, 0, eVar2.f104096c, 0);
    }

    public static void I(e eVar, f fVar) {
        int[] iArr = fVar.f104098b;
        int[] iArr2 = fVar.f104099c;
        int[] iArr3 = fVar.f104100d;
        int[] iArr4 = fVar.f104101e;
        int[] iArr5 = fVar.f104104h;
        int[] iArr6 = fVar.f104097a;
        ok.d.a(eVar.f104094a, eVar.f104095b, iArr);
        ok.d.Q(iArr, iArr);
        ok.d.Q(eVar.f104094a, iArr2);
        ok.d.Q(eVar.f104095b, iArr3);
        ok.d.a(iArr2, iArr3, iArr4);
        ok.d.f(iArr4);
        ok.d.Q(eVar.f104096c, iArr5);
        ok.d.a(iArr5, iArr5, iArr5);
        ok.d.f(iArr5);
        ok.d.S(iArr4, iArr5, iArr6);
        ok.d.S(iArr, iArr4, iArr);
        ok.d.S(iArr2, iArr3, iArr2);
        ok.d.J(iArr, iArr6, eVar.f104094a);
        ok.d.J(iArr4, iArr2, eVar.f104095b);
        ok.d.J(iArr4, iArr6, eVar.f104096c);
    }

    public static void J(int i10, int i11, d dVar) {
        int i12 = i10 * 512;
        for (int i13 = 0; i13 < 16; i13++) {
            int i14 = ((i13 ^ i11) - 1) >> 31;
            ok.d.g(i14, f104063A, i12, dVar.f104092a, 0);
            ok.d.g(i14, f104063A, i12 + 16, dVar.f104093b, 0);
            i12 += 32;
        }
    }

    public static void K(int[] iArr, int i10, int[] iArr2, e eVar) {
        int t10 = t(iArr, i10);
        int i11 = (t10 >>> 3) ^ 1;
        int i12 = (t10 ^ (-i11)) & 7;
        int i13 = 0;
        for (int i14 = 0; i14 < 8; i14++) {
            int i15 = ((i14 ^ i12) - 1) >> 31;
            ok.d.g(i15, iArr2, i13, eVar.f104094a, 0);
            ok.d.g(i15, iArr2, i13 + 16, eVar.f104095b, 0);
            ok.d.g(i15, iArr2, i13 + 32, eVar.f104096c, 0);
            i13 += 48;
        }
        ok.d.h(i11, eVar.f104094a);
    }

    public static void L(int[] iArr, e eVar) {
        ok.d.i(iArr, 336, eVar.f104094a, 0);
        ok.d.i(iArr, 352, eVar.f104095b, 0);
        ok.d.i(iArr, 368, eVar.f104096c, 0);
    }

    public static void M(d dVar, e[] eVarArr, int i10, int i11, f fVar) {
        e eVar = new e();
        G(dVar, eVar);
        I(eVar, fVar);
        e eVar2 = new e();
        eVarArr[i10] = eVar2;
        G(dVar, eVar2);
        for (int i12 = 1; i12 < i11; i12++) {
            int i13 = i10 + i12;
            e eVar3 = new e();
            eVarArr[i13] = eVar3;
            H(eVarArr[i13 - 1], eVar3);
            D(eVar, eVarArr[i13], fVar);
        }
    }

    public static int[] N(e eVar, int i10, f fVar) {
        e eVar2 = new e();
        H(eVar, eVar2);
        e eVar3 = new e();
        H(eVar, eVar3);
        I(eVar3, fVar);
        int[] k10 = ok.d.k(i10 * 3);
        int i11 = 0;
        int i12 = 0;
        while (true) {
            ok.d.i(eVar2.f104094a, 0, k10, i11);
            ok.d.i(eVar2.f104095b, 0, k10, i11 + 16);
            ok.d.i(eVar2.f104096c, 0, k10, i11 + 32);
            i11 += 48;
            i12++;
            if (i12 == i10) {
                return k10;
            }
            D(eVar3, eVar2, fVar);
        }
    }

    public static void O(e eVar) {
        ok.d.U(eVar.f104094a);
        ok.d.M(eVar.f104095b);
        ok.d.M(eVar.f104096c);
    }

    public static void P() {
        int i10;
        synchronized (f104087x) {
            try {
                if (f104063A != null) {
                    return;
                }
                e[] eVarArr = new e[144];
                f fVar = new f();
                d dVar = new d();
                ok.d.i(f104074k, 0, dVar.f104092a, 0);
                ok.d.i(f104075l, 0, dVar.f104093b, 0);
                M(dVar, eVarArr, 0, 32, fVar);
                d dVar2 = new d();
                ok.d.i(f104076m, 0, dVar2.f104092a, 0);
                ok.d.i(f104077n, 0, dVar2.f104093b, 0);
                M(dVar2, eVarArr, 32, 32, fVar);
                e eVar = new e();
                G(dVar, eVar);
                int i11 = 5;
                e[] eVarArr2 = new e[5];
                for (int i12 = 0; i12 < 5; i12++) {
                    eVarArr2[i12] = new e();
                }
                int i13 = 0;
                int i14 = 64;
                while (i13 < i11) {
                    int i15 = i14 + 1;
                    e eVar2 = new e();
                    eVarArr[i14] = eVar2;
                    int i16 = 0;
                    while (true) {
                        i10 = 1;
                        if (i16 >= i11) {
                            break;
                        }
                        if (i16 == 0) {
                            H(eVar, eVar2);
                        } else {
                            D(eVar, eVar2, fVar);
                        }
                        I(eVar, fVar);
                        H(eVar, eVarArr2[i16]);
                        if (i13 + i16 != 8) {
                            while (i10 < 18) {
                                I(eVar, fVar);
                                i10++;
                            }
                        }
                        i16++;
                        i11 = 5;
                    }
                    int[] iArr = eVar2.f104094a;
                    ok.d.K(iArr, iArr);
                    int i17 = 0;
                    i14 = i15;
                    while (i17 < 4) {
                        int i18 = i10 << i17;
                        int i19 = 0;
                        while (i19 < i18) {
                            e eVar3 = new e();
                            eVarArr[i14] = eVar3;
                            H(eVarArr[i14 - i18], eVar3);
                            D(eVarArr2[i17], eVarArr[i14], fVar);
                            i19++;
                            i14++;
                        }
                        i17++;
                        i10 = 1;
                    }
                    i13++;
                    i11 = 5;
                }
                z(eVarArr);
                f104088y = new d[32];
                for (int i20 = 0; i20 < 32; i20++) {
                    e eVar4 = eVarArr[i20];
                    d[] dVarArr = f104088y;
                    d dVar3 = new d();
                    dVarArr[i20] = dVar3;
                    ok.d.J(eVar4.f104094a, eVar4.f104096c, dVar3.f104092a);
                    ok.d.L(dVar3.f104092a);
                    ok.d.J(eVar4.f104095b, eVar4.f104096c, dVar3.f104093b);
                    ok.d.L(dVar3.f104093b);
                }
                f104089z = new d[32];
                for (int i21 = 0; i21 < 32; i21++) {
                    e eVar5 = eVarArr[32 + i21];
                    d[] dVarArr2 = f104089z;
                    d dVar4 = new d();
                    dVarArr2[i21] = dVar4;
                    ok.d.J(eVar5.f104094a, eVar5.f104096c, dVar4.f104092a);
                    ok.d.L(dVar4.f104092a);
                    ok.d.J(eVar5.f104095b, eVar5.f104096c, dVar4.f104093b);
                    ok.d.L(dVar4.f104093b);
                }
                f104063A = ok.d.k(160);
                int i22 = 0;
                for (int i23 = 64; i23 < 144; i23++) {
                    e eVar6 = eVarArr[i23];
                    int[] iArr2 = eVar6.f104094a;
                    ok.d.J(iArr2, eVar6.f104096c, iArr2);
                    ok.d.L(eVar6.f104094a);
                    int[] iArr3 = eVar6.f104095b;
                    ok.d.J(iArr3, eVar6.f104096c, iArr3);
                    ok.d.L(eVar6.f104095b);
                    ok.d.i(eVar6.f104094a, 0, f104063A, i22);
                    ok.d.i(eVar6.f104095b, 0, f104063A, i22 + 16);
                    i22 += 32;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void Q(byte[] bArr, int i10, byte[] bArr2) {
        System.arraycopy(bArr, i10, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & K.f20148c);
        bArr2[55] = (byte) (bArr2[55] | 128);
        bArr2[56] = 0;
    }

    public static void R(byte[] bArr, e eVar, e eVar2) {
        int[] iArr = new int[15];
        AbstractC15010e.b(bArr, iArr);
        AbstractC15010e.h(449, iArr, iArr);
        e eVar3 = new e();
        f fVar = new f();
        int[] N10 = N(eVar, 8, fVar);
        L(N10, eVar2);
        D(eVar, eVar2, fVar);
        int i10 = 111;
        while (true) {
            K(iArr, i10, N10, eVar3);
            D(eVar3, eVar2, fVar);
            i10--;
            if (i10 < 0) {
                return;
            }
            for (int i11 = 0; i11 < 4; i11++) {
                I(eVar2, fVar);
            }
        }
    }

    public static void S(byte[] bArr, e eVar) {
        P();
        int[] iArr = new int[15];
        AbstractC15010e.b(bArr, iArr);
        AbstractC15010e.h(450, iArr, iArr);
        d dVar = new d();
        f fVar = new f();
        O(eVar);
        int i10 = 17;
        while (true) {
            int i11 = i10;
            for (int i12 = 0; i12 < 5; i12++) {
                int i13 = 0;
                for (int i14 = 0; i14 < 5; i14++) {
                    i13 = (i13 & (~(1 << i14))) ^ ((iArr[i11 >>> 5] >>> (i11 & 31)) << i14);
                    i11 += 18;
                }
                int i15 = (i13 >>> 4) & 1;
                J(i12, ((-i15) ^ i13) & 15, dVar);
                ok.d.h(i15, dVar.f104092a);
                C(dVar, eVar, fVar);
            }
            i10--;
            if (i10 < 0) {
                return;
            } else {
                I(eVar, fVar);
            }
        }
    }

    public static void T(byte[] bArr, byte[] bArr2, int i10) {
        e eVar = new e();
        S(bArr, eVar);
        if (o(eVar, bArr2, i10) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void U(c.b bVar, byte[] bArr, int i10, int[] iArr, int[] iArr2) {
        if (bVar == null) {
            throw new NullPointerException("This method is only for use by X448");
        }
        byte[] bArr2 = new byte[57];
        Q(bArr, i10, bArr2);
        e eVar = new e();
        S(bArr2, eVar);
        if (d(eVar) == 0) {
            throw new IllegalStateException();
        }
        ok.d.i(eVar.f104094a, 0, iArr, 0);
        ok.d.i(eVar.f104095b, 0, iArr2, 0);
    }

    public static void V(d dVar, e eVar) {
        byte[] bArr = new byte[AbstractC15010e.f104124f];
        AbstractC15010e.c(5, bArr);
        e[] eVarArr = new e[8];
        f fVar = new f();
        M(dVar, eVarArr, 0, 8, fVar);
        O(eVar);
        int i10 = 446;
        while (true) {
            byte b10 = bArr[i10];
            if (b10 != 0) {
                F(b10 < 0, eVarArr[(b10 >> 1) ^ (b10 >> 31)], eVar, fVar);
            }
            i10--;
            if (i10 < 0) {
                return;
            } else {
                I(eVar, fVar);
            }
        }
    }

    public static void W(int[] iArr, int[] iArr2, d dVar, int[] iArr3, d dVar2, e eVar) {
        int i10;
        P();
        byte[] bArr = new byte[450];
        int i11 = 225;
        byte[] bArr2 = new byte[225];
        byte[] bArr3 = new byte[225];
        AbstractC15012g.a(iArr, 7, bArr);
        AbstractC15012g.a(iArr2, 5, bArr2);
        AbstractC15012g.a(iArr3, 5, bArr3);
        e[] eVarArr = new e[8];
        e[] eVarArr2 = new e[8];
        f fVar = new f();
        M(dVar, eVarArr, 0, 8, fVar);
        M(dVar2, eVarArr2, 0, 8, fVar);
        O(eVar);
        while (true) {
            i10 = i11 - 1;
            if (i10 < 0 || (bArr[i10] | bArr[i11 + 224] | bArr2[i10] | bArr3[i10]) != 0) {
                break;
            } else {
                i11 = i10;
            }
        }
        while (i10 >= 0) {
            byte b10 = bArr[i10];
            if (b10 != 0) {
                E(b10 < 0, f104088y[(b10 >> 1) ^ (b10 >> 31)], eVar, fVar);
            }
            byte b11 = bArr[i10 + 225];
            if (b11 != 0) {
                E(b11 < 0, f104089z[(b11 >> 1) ^ (b11 >> 31)], eVar, fVar);
            }
            byte b12 = bArr2[i10];
            if (b12 != 0) {
                F(b12 < 0, eVarArr[(b12 >> 1) ^ (b12 >> 31)], eVar, fVar);
            }
            byte b13 = bArr3[i10];
            if (b13 != 0) {
                F(b13 < 0, eVarArr2[(b13 >> 1) ^ (b13 >> 31)], eVar, fVar);
            }
            I(eVar, fVar);
            i10--;
        }
        I(eVar, fVar);
    }

    public static void X(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte[] bArr4, int i12, int i13, byte[] bArr5, int i14) {
        w(bArr, i10, bArr2, i11, bArr3, (byte) 0, bArr4, i12, i13, bArr5, i14);
    }

    public static void Y(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, int i11, int i12, byte[] bArr4, int i13) {
        v(bArr, i10, bArr2, (byte) 0, bArr3, i11, i12, bArr4, i13);
    }

    public static void Z(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, a0 a0Var, byte[] bArr4, int i12) {
        byte[] bArr5 = new byte[64];
        if (64 != a0Var.e(bArr5, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        w(bArr, i10, bArr2, i11, bArr3, (byte) 1, bArr5, 0, 64, bArr4, i12);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = new int[28];
        AbstractC15010e.b(bArr, iArr);
        int[] iArr2 = new int[14];
        AbstractC15010e.b(bArr2, iArr2);
        int[] iArr3 = new int[14];
        AbstractC15010e.b(bArr3, iArr3);
        AbstractC15329o.o0(14, iArr2, iArr3, iArr);
        byte[] bArr4 = new byte[114];
        AbstractC15006a.g(iArr, 0, 28, bArr4, 0);
        return AbstractC15010e.f(bArr4);
    }

    public static void a0(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte[] bArr4, int i12, byte[] bArr5, int i13) {
        w(bArr, i10, bArr2, i11, bArr3, (byte) 1, bArr4, i12, 64, bArr5, i13);
    }

    public static boolean b(byte[] bArr) {
        return bArr != null && bArr.length < 256;
    }

    public static void b0(byte[] bArr, int i10, byte[] bArr2, a0 a0Var, byte[] bArr3, int i11) {
        byte[] bArr4 = new byte[64];
        if (64 != a0Var.e(bArr4, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        v(bArr, i10, bArr2, (byte) 1, bArr4, 0, 64, bArr3, i11);
    }

    public static int c(d dVar) {
        int[] j10 = ok.d.j();
        int[] j11 = ok.d.j();
        int[] j12 = ok.d.j();
        ok.d.Q(dVar.f104092a, j11);
        ok.d.Q(dVar.f104093b, j12);
        ok.d.J(j11, j12, j10);
        ok.d.a(j11, j12, j11);
        ok.d.I(j10, f104078o, j10);
        ok.d.T(j10);
        ok.d.a(j10, j11, j10);
        ok.d.L(j10);
        ok.d.L(j12);
        return ok.d.G(j10) & (~ok.d.G(j12));
    }

    public static void c0(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, int i11, byte[] bArr4, int i12) {
        v(bArr, i10, bArr2, (byte) 1, bArr3, i11, 64, bArr4, i12);
    }

    public static int d(e eVar) {
        int[] j10 = ok.d.j();
        int[] j11 = ok.d.j();
        int[] j12 = ok.d.j();
        int[] j13 = ok.d.j();
        ok.d.Q(eVar.f104094a, j11);
        ok.d.Q(eVar.f104095b, j12);
        ok.d.Q(eVar.f104096c, j13);
        ok.d.J(j11, j12, j10);
        ok.d.a(j11, j12, j11);
        ok.d.J(j11, j13, j11);
        ok.d.Q(j13, j13);
        ok.d.I(j10, f104078o, j10);
        ok.d.S(j10, j13, j10);
        ok.d.a(j10, j11, j10);
        ok.d.L(j10);
        ok.d.L(j12);
        ok.d.L(j13);
        return ok.d.G(j10) & (~ok.d.G(j12)) & (~ok.d.G(j13));
    }

    public static boolean d0(byte[] bArr, int i10) {
        byte[] h10 = h(bArr, i10, 57);
        if (!e(h10)) {
            return false;
        }
        d dVar = new d();
        if (k(h10, false, dVar)) {
            return f(dVar);
        }
        return false;
    }

    public static boolean e(byte[] bArr) {
        if ((bArr[56] & Byte.MAX_VALUE) != 0) {
            return false;
        }
        int c10 = AbstractC15006a.c(bArr, 52);
        int i10 = f104073j[13] ^ c10;
        for (int i11 = 12; i11 > 0; i11--) {
            int c11 = AbstractC15006a.c(bArr, i11 * 4);
            if (i10 == 0 && c11 - 2147483648 > f104073j[i11] - 2147483648) {
                return false;
            }
            c10 |= c11;
            i10 |= f104073j[i11] ^ c11;
        }
        int c12 = AbstractC15006a.c(bArr, 0);
        if (c10 != 0 || c12 - 2147483648 > -2147483647) {
            return i10 != 0 || c12 + Integer.MIN_VALUE < f104073j[0] - C14289h.f97343g;
        }
        return false;
    }

    public static g e0(byte[] bArr, int i10) {
        byte[] h10 = h(bArr, i10, 57);
        if (!e(h10)) {
            return null;
        }
        d dVar = new d();
        if (k(h10, false, dVar) && f(dVar)) {
            return p(dVar);
        }
        return null;
    }

    public static boolean f(d dVar) {
        e eVar = new e();
        V(dVar, eVar);
        return B(eVar);
    }

    public static boolean f0(byte[] bArr, int i10) {
        byte[] h10 = h(bArr, i10, 57);
        if (e(h10)) {
            return k(h10, false, new d());
        }
        return false;
    }

    public static boolean g(byte[] bArr) {
        if ((bArr[56] & Byte.MAX_VALUE) != 0) {
            return false;
        }
        if (AbstractC15006a.c(bArr, 52) != f104073j[13]) {
            return true;
        }
        AbstractC15006a.d(bArr, 0, new int[14], 0, 14);
        return !AbstractC15329o.a0(14, r3, r2);
    }

    public static g g0(byte[] bArr, int i10) {
        byte[] h10 = h(bArr, i10, 57);
        if (!e(h10)) {
            return null;
        }
        d dVar = new d();
        if (k(h10, false, dVar)) {
            return p(dVar);
        }
        return null;
    }

    public static byte[] h(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return bArr2;
    }

    public static boolean h0(byte[] bArr, int i10, g gVar, byte[] bArr2, byte[] bArr3, int i11, int i12) {
        return x(bArr, i10, gVar, bArr2, (byte) 0, bArr3, i11, i12);
    }

    public static a0 i() {
        return j();
    }

    public static boolean i0(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte[] bArr4, int i12, int i13) {
        return y(bArr, i10, bArr2, i11, bArr3, (byte) 0, bArr4, i12, i13);
    }

    public static a0 j() {
        return new Q(256);
    }

    public static boolean j0(byte[] bArr, int i10, g gVar, byte[] bArr2, a0 a0Var) {
        byte[] bArr3 = new byte[64];
        if (64 == a0Var.e(bArr3, 0, 64)) {
            return x(bArr, i10, gVar, bArr2, (byte) 1, bArr3, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean k(byte[] bArr, boolean z10, d dVar) {
        int i10 = (bArr[56] & 128) >>> 7;
        ok.d.o(bArr, dVar.f104093b);
        int[] j10 = ok.d.j();
        int[] j11 = ok.d.j();
        ok.d.Q(dVar.f104093b, j10);
        ok.d.I(j10, f104078o, j11);
        ok.d.K(j10, j10);
        ok.d.b(j10);
        ok.d.b(j11);
        if (!ok.d.R(j10, j11, dVar.f104092a)) {
            return false;
        }
        ok.d.L(dVar.f104092a);
        if (i10 == 1 && ok.d.H(dVar.f104092a)) {
            return false;
        }
        int[] iArr = dVar.f104092a;
        if (z10 ^ (i10 != (iArr[0] & 1))) {
            ok.d.K(iArr, iArr);
            ok.d.L(dVar.f104092a);
        }
        return true;
    }

    public static boolean k0(byte[] bArr, int i10, g gVar, byte[] bArr2, byte[] bArr3, int i11) {
        return x(bArr, i10, gVar, bArr2, (byte) 1, bArr3, i11, 64);
    }

    public static void l(a0 a0Var, byte b10, byte[] bArr) {
        byte[] bArr2 = f104072i;
        int length = bArr2.length;
        int i10 = length + 2;
        int length2 = bArr.length + i10;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length);
        bArr3[length] = b10;
        bArr3[length + 1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr3, i10, bArr.length);
        a0Var.update(bArr3, 0, length2);
    }

    public static boolean l0(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, a0 a0Var) {
        byte[] bArr4 = new byte[64];
        if (64 == a0Var.e(bArr4, 0, 64)) {
            return y(bArr, i10, bArr2, i11, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static void m(d dVar, byte[] bArr, int i10) {
        ok.d.w(dVar.f104093b, bArr, i10);
        bArr[i10 + 56] = (byte) ((dVar.f104092a[0] & 1) << 7);
    }

    public static boolean m0(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte[] bArr4, int i12) {
        return y(bArr, i10, bArr2, i11, bArr3, (byte) 1, bArr4, i12, 64);
    }

    public static void n(g gVar, byte[] bArr, int i10) {
        ok.d.u(gVar.f104105a, 16, bArr, i10);
        bArr[i10 + 56] = (byte) ((gVar.f104105a[0] & 1) << 7);
    }

    public static int o(e eVar, byte[] bArr, int i10) {
        d dVar = new d();
        A(eVar, dVar);
        int c10 = c(dVar);
        m(dVar, bArr, i10);
        return c10;
    }

    public static g p(d dVar) {
        int[] iArr = new int[32];
        ok.d.i(dVar.f104092a, 0, iArr, 0);
        ok.d.i(dVar.f104093b, 0, iArr, 16);
        return new g(iArr);
    }

    public static void q(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 57) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
    }

    public static g r(byte[] bArr, int i10) {
        a0 j10 = j();
        byte[] bArr2 = new byte[114];
        j10.update(bArr, i10, 57);
        j10.e(bArr2, 0, 114);
        byte[] bArr3 = new byte[57];
        Q(bArr2, 0, bArr3);
        e eVar = new e();
        S(bArr3, eVar);
        d dVar = new d();
        A(eVar, dVar);
        if (c(dVar) != 0) {
            return p(dVar);
        }
        throw new IllegalStateException();
    }

    public static void s(byte[] bArr, int i10, byte[] bArr2, int i11) {
        a0 j10 = j();
        byte[] bArr3 = new byte[114];
        j10.update(bArr, i10, 57);
        j10.e(bArr3, 0, 114);
        byte[] bArr4 = new byte[57];
        Q(bArr3, 0, bArr4);
        T(bArr4, bArr2, i11);
    }

    public static int t(int[] iArr, int i10) {
        return (iArr[i10 >>> 3] >>> ((i10 & 7) << 2)) & 15;
    }

    public static void u(a0 a0Var, byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4, byte b10, byte[] bArr5, int i11, int i12, byte[] bArr6, int i13) {
        l(a0Var, b10, bArr4);
        a0Var.update(bArr, 57, 57);
        a0Var.update(bArr5, i11, i12);
        a0Var.e(bArr, 0, bArr.length);
        byte[] f10 = AbstractC15010e.f(bArr);
        byte[] bArr7 = new byte[57];
        T(f10, bArr7, 0);
        l(a0Var, b10, bArr4);
        a0Var.update(bArr7, 0, 57);
        a0Var.update(bArr3, i10, 57);
        a0Var.update(bArr5, i11, i12);
        a0Var.e(bArr, 0, bArr.length);
        byte[] a10 = a(f10, AbstractC15010e.f(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, i13, 57);
        System.arraycopy(a10, 0, bArr6, i13 + 57, 57);
    }

    public static void v(byte[] bArr, int i10, byte[] bArr2, byte b10, byte[] bArr3, int i11, int i12, byte[] bArr4, int i13) {
        if (!b(bArr2)) {
            throw new IllegalArgumentException("ctx");
        }
        a0 j10 = j();
        byte[] bArr5 = new byte[114];
        j10.update(bArr, i10, 57);
        j10.e(bArr5, 0, 114);
        byte[] bArr6 = new byte[57];
        Q(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[57];
        T(bArr6, bArr7, 0);
        u(j10, bArr5, bArr6, bArr7, 0, bArr2, b10, bArr3, i11, i12, bArr4, i13);
    }

    public static void w(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte b10, byte[] bArr4, int i12, int i13, byte[] bArr5, int i14) {
        if (!b(bArr3)) {
            throw new IllegalArgumentException("ctx");
        }
        a0 j10 = j();
        byte[] bArr6 = new byte[114];
        j10.update(bArr, i10, 57);
        j10.e(bArr6, 0, 114);
        byte[] bArr7 = new byte[57];
        Q(bArr6, 0, bArr7);
        u(j10, bArr6, bArr7, bArr2, i11, bArr3, b10, bArr4, i12, i13, bArr5, i14);
    }

    public static boolean x(byte[] bArr, int i10, g gVar, byte[] bArr2, byte b10, byte[] bArr3, int i11, int i12) {
        if (!b(bArr2)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] h10 = h(bArr, i10, 57);
        byte[] h11 = h(bArr, i10 + 57, 57);
        if (!g(h10)) {
            return false;
        }
        int[] iArr = new int[14];
        if (!AbstractC15010e.a(h11, iArr)) {
            return false;
        }
        d dVar = new d();
        if (!k(h10, true, dVar)) {
            return false;
        }
        d dVar2 = new d();
        ok.d.K(gVar.f104105a, dVar2.f104092a);
        ok.d.i(gVar.f104105a, 16, dVar2.f104093b, 0);
        byte[] bArr4 = new byte[57];
        n(gVar, bArr4, 0);
        a0 j10 = j();
        byte[] bArr5 = new byte[114];
        l(j10, b10, bArr2);
        j10.update(h10, 0, 57);
        j10.update(bArr4, 0, 57);
        j10.update(bArr3, i11, i12);
        j10.e(bArr5, 0, 114);
        int[] iArr2 = new int[14];
        AbstractC15010e.b(AbstractC15010e.f(bArr5), iArr2);
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[8];
        if (!AbstractC15010e.g(iArr2, iArr3, iArr4)) {
            throw new IllegalStateException();
        }
        AbstractC15010e.d(iArr, iArr4, iArr);
        e eVar = new e();
        W(iArr, iArr3, dVar2, iArr4, dVar, eVar);
        return B(eVar);
    }

    public static boolean y(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte b10, byte[] bArr4, int i12, int i13) {
        if (!b(bArr3)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] h10 = h(bArr, i10, 57);
        byte[] h11 = h(bArr, i10 + 57, 57);
        byte[] h12 = h(bArr2, i11, 57);
        if (!g(h10)) {
            return false;
        }
        int[] iArr = new int[14];
        if (!AbstractC15010e.a(h11, iArr) || !e(h12)) {
            return false;
        }
        d dVar = new d();
        if (!k(h10, true, dVar)) {
            return false;
        }
        d dVar2 = new d();
        if (!k(h12, true, dVar2)) {
            return false;
        }
        a0 j10 = j();
        byte[] bArr5 = new byte[114];
        l(j10, b10, bArr3);
        j10.update(h10, 0, 57);
        j10.update(h12, 0, 57);
        j10.update(bArr4, i12, i13);
        j10.e(bArr5, 0, 114);
        int[] iArr2 = new int[14];
        AbstractC15010e.b(AbstractC15010e.f(bArr5), iArr2);
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[8];
        if (!AbstractC15010e.g(iArr2, iArr3, iArr4)) {
            throw new IllegalStateException();
        }
        AbstractC15010e.d(iArr, iArr4, iArr);
        e eVar = new e();
        W(iArr, iArr3, dVar2, iArr4, dVar, eVar);
        return B(eVar);
    }

    public static void z(e[] eVarArr) {
        int length = eVarArr.length;
        int[] k10 = ok.d.k(length);
        int[] j10 = ok.d.j();
        ok.d.i(eVarArr[0].f104096c, 0, j10, 0);
        ok.d.i(j10, 0, k10, 0);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= length) {
                break;
            }
            ok.d.J(j10, eVarArr[i11].f104096c, j10);
            ok.d.i(j10, 0, k10, i11 * 16);
            i10 = i11;
        }
        ok.d.D(j10, j10);
        int[] j11 = ok.d.j();
        while (i10 > 0) {
            int i12 = i10 - 1;
            ok.d.i(k10, i12 * 16, j11, 0);
            ok.d.J(j11, j10, j11);
            ok.d.J(j10, eVarArr[i10].f104096c, j10);
            ok.d.i(j11, 0, eVarArr[i10].f104096c, 0);
            i10 = i12;
        }
        ok.d.i(j10, 0, eVarArr[0].f104096c, 0);
    }
}
