package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import Xi.L0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class u0 implements InterfaceC2374f {

    public static final int f14131h = 256;

    public static final int f14132i = 512;

    public static final int f14133j = 1024;

    public static final int f14134k = 16;

    public static final int f14135l = 2;

    public static final int f14136m = 72;

    public static final int f14137n = 72;

    public static final int f14138o = 80;

    public static final int f14139p = 80;

    public static final long f14140q = 2004413935125273122L;

    public static int[] f14141r;

    public static int[] f14142s;

    public static int[] f14143t;

    public static int[] f14144u;

    public int f14145a;

    public int f14146b;

    public long[] f14147c;

    public long[] f14148d;

    public long[] f14149e;

    public d f14150f;

    public boolean f14151g;

    public static final class a extends d {

        public static final int f14152A = 5;

        public static final int f14153B = 20;

        public static final int f14154C = 48;

        public static final int f14155D = 41;

        public static final int f14156E = 47;

        public static final int f14157F = 28;

        public static final int f14158G = 16;

        public static final int f14159H = 25;

        public static final int f14160I = 41;

        public static final int f14161J = 9;

        public static final int f14162K = 37;

        public static final int f14163L = 31;

        public static final int f14164M = 12;

        public static final int f14165N = 47;

        public static final int f14166O = 44;

        public static final int f14167P = 30;

        public static final int f14168Q = 16;

        public static final int f14169R = 34;

        public static final int f14170S = 56;

        public static final int f14171T = 51;

        public static final int f14172U = 4;

        public static final int f14173V = 53;

        public static final int f14174W = 42;

        public static final int f14175X = 41;

        public static final int f14176Y = 31;

        public static final int f14177Z = 44;

        public static final int f14178a0 = 47;

        public static final int f14179b0 = 46;

        public static final int f14180c = 24;

        public static final int f14181c0 = 19;

        public static final int f14182d = 13;

        public static final int f14183d0 = 42;

        public static final int f14184e = 8;

        public static final int f14185e0 = 44;

        public static final int f14186f = 47;

        public static final int f14187f0 = 25;

        public static final int f14188g = 8;

        public static final int f14189g0 = 9;

        public static final int f14190h = 17;

        public static final int f14191h0 = 48;

        public static final int f14192i = 22;

        public static final int f14193i0 = 35;

        public static final int f14194j = 37;

        public static final int f14195j0 = 52;

        public static final int f14196k = 38;

        public static final int f14197k0 = 23;

        public static final int f14198l = 19;

        public static final int f14199l0 = 31;

        public static final int f14200m = 10;

        public static final int f14201m0 = 37;

        public static final int f14202n = 55;

        public static final int f14203n0 = 20;

        public static final int f14204o = 49;

        public static final int f14205p = 18;

        public static final int f14206q = 23;

        public static final int f14207r = 52;

        public static final int f14208s = 33;

        public static final int f14209t = 4;

        public static final int f14210u = 51;

        public static final int f14211v = 13;

        public static final int f14212w = 34;

        public static final int f14213x = 41;

        public static final int f14214y = 59;

        public static final int f14215z = 17;

        public a(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override
        public void a(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14142s;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            int i10 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = jArr[8];
            long j19 = jArr[9];
            long j20 = jArr[10];
            long j21 = jArr[11];
            long j22 = jArr[12];
            long j23 = jArr[13];
            long j24 = jArr[14];
            long j25 = jArr[15];
            int i11 = 19;
            while (i11 >= i10) {
                int i12 = iArr[i11];
                int i13 = iArr2[i11];
                int i14 = i12 + 1;
                long j26 = j10 - jArr3[i14];
                int i15 = i12 + 2;
                long j27 = j11 - jArr3[i15];
                int i16 = i12 + 3;
                long j28 = j12 - jArr3[i16];
                int i17 = i12 + 4;
                long j29 = j13 - jArr3[i17];
                int i18 = i12 + 5;
                long j30 = j14 - jArr3[i18];
                int i19 = i12 + 6;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j31 = j15 - jArr3[i19];
                int i20 = i12 + 7;
                long j32 = j16 - jArr3[i20];
                int i21 = i12 + 8;
                long j33 = j17 - jArr3[i21];
                int i22 = i12 + 9;
                long j34 = j18 - jArr3[i22];
                int i23 = i12 + 10;
                long j35 = j19 - jArr3[i23];
                int i24 = i12 + 11;
                long j36 = j20 - jArr3[i24];
                int i25 = i12 + 12;
                long j37 = j21 - jArr3[i25];
                int i26 = i12 + 13;
                long j38 = j22 - jArr3[i26];
                int i27 = i12 + 14;
                int i28 = i13 + 1;
                long j39 = j23 - (jArr3[i27] + jArr4[i28]);
                int i29 = i12 + 15;
                long j40 = j24 - (jArr3[i29] + jArr4[i13 + 2]);
                long[] jArr5 = jArr3;
                long j41 = i11;
                long s10 = u0.s(j25 - ((jArr3[i12 + 16] + j41) + 1), 9, j26);
                long j42 = j26 - s10;
                long s11 = u0.s(j37, 48, j28);
                long j43 = j28 - s11;
                long s12 = u0.s(j39, 35, j32);
                long j44 = j32 - s12;
                long[] jArr6 = jArr4;
                long s13 = u0.s(j35, 52, j30);
                long j45 = j30 - s13;
                long s14 = u0.s(j27, 23, j40);
                long j46 = j40 - s14;
                long s15 = u0.s(j31, 31, j34);
                long j47 = j34 - s15;
                long s16 = u0.s(j29, 37, j36);
                long j48 = j36 - s16;
                long s17 = u0.s(j33, 20, j38);
                long j49 = j38 - s17;
                long s18 = u0.s(s17, 31, j42);
                long j50 = j42 - s18;
                long s19 = u0.s(s15, 44, j43);
                long j51 = j43 - s19;
                long s20 = u0.s(s16, 47, j45);
                long j52 = j45 - s20;
                long s21 = u0.s(s14, 46, j44);
                long j53 = j44 - s21;
                long s22 = u0.s(s10, 19, j49);
                long j54 = j49 - s22;
                long s23 = u0.s(s12, 42, j46);
                long j55 = j46 - s23;
                long s24 = u0.s(s11, 44, j47);
                long j56 = j47 - s24;
                long s25 = u0.s(s13, 25, j48);
                long j57 = j48 - s25;
                long s26 = u0.s(s25, 16, j50);
                long j58 = j50 - s26;
                long s27 = u0.s(s23, 34, j51);
                long j59 = j51 - s27;
                long s28 = u0.s(s24, 56, j53);
                long j60 = j53 - s28;
                long s29 = u0.s(s22, 51, j52);
                long j61 = j52 - s29;
                long s30 = u0.s(s18, 4, j57);
                long j62 = j57 - s30;
                long s31 = u0.s(s20, 53, j54);
                long j63 = j54 - s31;
                long s32 = u0.s(s19, 42, j55);
                long j64 = j55 - s32;
                long s33 = u0.s(s21, 41, j56);
                long j65 = j56 - s33;
                long s34 = u0.s(s33, 41, j58);
                long s35 = u0.s(s31, 9, j59);
                long s36 = u0.s(s32, 37, j61);
                long j66 = j61 - s36;
                long s37 = u0.s(s30, 31, j60);
                long j67 = j60 - s37;
                long s38 = u0.s(s26, 12, j65);
                long j68 = j65 - s38;
                long s39 = u0.s(s28, 47, j62);
                long j69 = j62 - s39;
                long s40 = u0.s(s27, 44, j63);
                long j70 = j63 - s40;
                long s41 = u0.s(s29, 30, j64);
                long j71 = j64 - s41;
                long j72 = (j58 - s34) - jArr5[i12];
                long j73 = s34 - jArr5[i14];
                long j74 = (j59 - s35) - jArr5[i15];
                long j75 = s35 - jArr5[i16];
                long j76 = j66 - jArr5[i17];
                long j77 = s36 - jArr5[i18];
                long j78 = j67 - jArr5[i19];
                long j79 = s37 - jArr5[i20];
                long j80 = j68 - jArr5[i21];
                long j81 = s38 - jArr5[i22];
                long j82 = j69 - jArr5[i23];
                long j83 = s39 - jArr5[i24];
                long j84 = j70 - jArr5[i25];
                long j85 = s40 - (jArr5[i26] + jArr6[i13]);
                long j86 = j71 - (jArr5[i27] + jArr6[i28]);
                long s42 = u0.s(s41 - (jArr5[i29] + j41), 5, j72);
                long j87 = j72 - s42;
                long s43 = u0.s(j83, 20, j74);
                long j88 = j74 - s43;
                long s44 = u0.s(j85, 48, j78);
                long j89 = j78 - s44;
                long s45 = u0.s(j81, 41, j76);
                long j90 = j76 - s45;
                long s46 = u0.s(j73, 47, j86);
                long j91 = j86 - s46;
                long s47 = u0.s(j77, 28, j80);
                long j92 = j80 - s47;
                long s48 = u0.s(j75, 16, j82);
                long j93 = j82 - s48;
                long s49 = u0.s(j79, 25, j84);
                long j94 = j84 - s49;
                long s50 = u0.s(s49, 33, j87);
                long j95 = j87 - s50;
                long s51 = u0.s(s47, 4, j88);
                long j96 = j88 - s51;
                long s52 = u0.s(s48, 51, j90);
                long j97 = j90 - s52;
                long s53 = u0.s(s46, 13, j89);
                long j98 = j89 - s53;
                long s54 = u0.s(s42, 34, j94);
                long j99 = j94 - s54;
                long s55 = u0.s(s44, 41, j91);
                long j100 = j91 - s55;
                long s56 = u0.s(s43, 59, j92);
                long j101 = j92 - s56;
                long s57 = u0.s(s45, 17, j93);
                long j102 = j93 - s57;
                long s58 = u0.s(s57, 38, j95);
                long j103 = j95 - s58;
                long s59 = u0.s(s55, 19, j96);
                long j104 = j96 - s59;
                long s60 = u0.s(s56, 10, j98);
                long j105 = j98 - s60;
                long s61 = u0.s(s54, 55, j97);
                long j106 = j97 - s61;
                long s62 = u0.s(s50, 49, j102);
                long j107 = j102 - s62;
                long s63 = u0.s(s52, 18, j99);
                long j108 = j99 - s63;
                long s64 = u0.s(s51, 23, j100);
                long j109 = j100 - s64;
                long s65 = u0.s(s53, 52, j101);
                long j110 = j101 - s65;
                long s66 = u0.s(s65, 24, j103);
                long j111 = j103 - s66;
                long s67 = u0.s(s63, 13, j104);
                j12 = j104 - s67;
                long s68 = u0.s(s64, 8, j106);
                long j112 = j106 - s68;
                long s69 = u0.s(s62, 47, j105);
                long j113 = j105 - s69;
                long s70 = u0.s(s58, 8, j110);
                long j114 = j110 - s70;
                long s71 = u0.s(s60, 17, j107);
                long j115 = j107 - s71;
                long s72 = u0.s(s59, 22, j108);
                j22 = j108 - s72;
                j25 = u0.s(s61, 37, j109);
                j24 = j109 - j25;
                j21 = s71;
                j19 = s70;
                iArr = iArr3;
                iArr2 = iArr4;
                jArr4 = jArr6;
                jArr3 = jArr5;
                j23 = s72;
                j18 = j114;
                i10 = 1;
                i11 -= 2;
                j11 = s66;
                j13 = s67;
                j20 = j115;
                j17 = s69;
                j14 = j112;
                j15 = s68;
                j16 = j113;
                j10 = j111;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            long j116 = j10 - jArr7[0];
            long j117 = j11 - jArr7[1];
            long j118 = j12 - jArr7[2];
            long j119 = j13 - jArr7[3];
            long j120 = j14 - jArr7[4];
            long j121 = j15 - jArr7[5];
            long j122 = j16 - jArr7[6];
            long j123 = j17 - jArr7[7];
            long j124 = j18 - jArr7[8];
            long j125 = j19 - jArr7[9];
            long j126 = j20 - jArr7[10];
            long j127 = j21 - jArr7[11];
            long j128 = j22 - jArr7[12];
            long j129 = j23 - (jArr7[13] + jArr8[0]);
            long j130 = j24 - (jArr7[14] + jArr8[1]);
            long j131 = j25 - jArr7[15];
            jArr2[0] = j116;
            jArr2[1] = j117;
            jArr2[2] = j118;
            jArr2[3] = j119;
            jArr2[4] = j120;
            jArr2[5] = j121;
            jArr2[6] = j122;
            jArr2[7] = j123;
            jArr2[8] = j124;
            jArr2[9] = j125;
            jArr2[10] = j126;
            jArr2[11] = j127;
            jArr2[12] = j128;
            jArr2[13] = j129;
            jArr2[14] = j130;
            jArr2[15] = j131;
        }

        @Override
        public void b(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14142s;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            int i10 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = jArr[8];
            long j19 = jArr[9];
            long j20 = jArr[10];
            long j21 = jArr[11];
            long j22 = jArr[12];
            long j23 = jArr[13];
            long j24 = jArr[14];
            long j25 = jArr[15];
            long j26 = j10 + jArr3[0];
            long j27 = j11 + jArr3[1];
            long j28 = j12 + jArr3[2];
            long j29 = j13 + jArr3[3];
            long j30 = j14 + jArr3[4];
            long j31 = j15 + jArr3[5];
            long j32 = j16 + jArr3[6];
            long j33 = j17 + jArr3[7];
            long j34 = j18 + jArr3[8];
            long j35 = j19 + jArr3[9];
            long j36 = j20 + jArr3[10];
            long j37 = j21 + jArr3[11];
            long j38 = j22 + jArr3[12];
            long j39 = j23 + jArr3[13] + jArr4[0];
            long j40 = j24 + jArr3[14] + jArr4[1];
            long j41 = j29;
            long j42 = j31;
            long j43 = j33;
            long j44 = j35;
            long j45 = j37;
            long j46 = j39;
            long j47 = j25 + jArr3[15];
            while (i10 < 20) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                long j48 = j26 + j27;
                long o10 = u0.o(j27, 24, j48);
                long j49 = j28 + j41;
                long o11 = u0.o(j41, 13, j49);
                long[] jArr5 = jArr3;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j50 = j42;
                long j51 = j30 + j50;
                long o12 = u0.o(j50, 8, j51);
                int i13 = i10;
                long j52 = j43;
                long j53 = j32 + j52;
                long o13 = u0.o(j52, 47, j53);
                long[] jArr6 = jArr4;
                long j54 = j44;
                long j55 = j34 + j54;
                long o14 = u0.o(j54, 8, j55);
                long j56 = j45;
                long j57 = j36 + j56;
                long o15 = u0.o(j56, 17, j57);
                long j58 = j46;
                long j59 = j38 + j58;
                long o16 = u0.o(j58, 22, j59);
                long j60 = j47;
                long j61 = j40 + j60;
                long o17 = u0.o(j60, 37, j61);
                long j62 = j48 + o14;
                long o18 = u0.o(o14, 38, j62);
                long j63 = j49 + o16;
                long o19 = u0.o(o16, 19, j63);
                long j64 = j53 + o15;
                long o20 = u0.o(o15, 10, j64);
                long j65 = j51 + o17;
                long o21 = u0.o(o17, 55, j65);
                long j66 = j57 + o13;
                long o22 = u0.o(o13, 49, j66);
                long j67 = j59 + o11;
                long o23 = u0.o(o11, 18, j67);
                long j68 = j61 + o12;
                long o24 = u0.o(o12, 23, j68);
                long j69 = j55 + o10;
                long o25 = u0.o(o10, 52, j69);
                long j70 = j62 + o22;
                long o26 = u0.o(o22, 33, j70);
                long j71 = j63 + o24;
                long o27 = u0.o(o24, 4, j71);
                long j72 = j65 + o23;
                long o28 = u0.o(o23, 51, j72);
                long j73 = j64 + o25;
                long o29 = u0.o(o25, 13, j73);
                long j74 = j67 + o21;
                long o30 = u0.o(o21, 34, j74);
                long j75 = j68 + o19;
                long o31 = u0.o(o19, 41, j75);
                long j76 = j69 + o20;
                long o32 = u0.o(o20, 59, j76);
                long j77 = j66 + o18;
                long o33 = u0.o(o18, 17, j77);
                long j78 = j70 + o30;
                long o34 = u0.o(o30, 5, j78);
                long j79 = j71 + o32;
                long o35 = u0.o(o32, 20, j79);
                long j80 = j73 + o31;
                long o36 = u0.o(o31, 48, j80);
                long j81 = j72 + o33;
                long o37 = u0.o(o33, 41, j81);
                long j82 = j75 + o29;
                long o38 = u0.o(o29, 47, j82);
                long j83 = j76 + o27;
                long o39 = u0.o(o27, 28, j83);
                long j84 = j77 + o28;
                long o40 = u0.o(o28, 16, j84);
                long j85 = j74 + o26;
                long o41 = u0.o(o26, 25, j85);
                long j86 = j78 + jArr5[i11];
                int i14 = i11 + 1;
                long j87 = o38 + jArr5[i14];
                int i15 = i11 + 2;
                long j88 = j79 + jArr5[i15];
                int i16 = i11 + 3;
                long j89 = o40 + jArr5[i16];
                int i17 = i11 + 4;
                long j90 = j81 + jArr5[i17];
                int i18 = i11 + 5;
                long j91 = o39 + jArr5[i18];
                int i19 = i11 + 6;
                long j92 = j80 + jArr5[i19];
                int i20 = i11 + 7;
                long j93 = o41 + jArr5[i20];
                int i21 = i11 + 8;
                long j94 = j83 + jArr5[i21];
                int i22 = i11 + 9;
                long j95 = o37 + jArr5[i22];
                int i23 = i11 + 10;
                long j96 = j84 + jArr5[i23];
                int i24 = i11 + 11;
                long j97 = o35 + jArr5[i24];
                int i25 = i11 + 12;
                long j98 = j85 + jArr5[i25];
                int i26 = i11 + 13;
                long j99 = o36 + jArr5[i26] + jArr6[i12];
                int i27 = i11 + 14;
                int i28 = i12 + 1;
                long j100 = j82 + jArr5[i27] + jArr6[i28];
                int i29 = i11 + 15;
                long j101 = i13;
                long j102 = o34 + jArr5[i29] + j101;
                long j103 = j86 + j87;
                long o42 = u0.o(j87, 41, j103);
                long j104 = j88 + j89;
                long o43 = u0.o(j89, 9, j104);
                long j105 = j90 + j91;
                long o44 = u0.o(j91, 37, j105);
                long j106 = j92 + j93;
                long o45 = u0.o(j93, 31, j106);
                long j107 = j94 + j95;
                long o46 = u0.o(j95, 12, j107);
                long j108 = j96 + j97;
                long o47 = u0.o(j97, 47, j108);
                long j109 = j98 + j99;
                long o48 = u0.o(j99, 44, j109);
                long j110 = j100 + j102;
                long o49 = u0.o(j102, 30, j110);
                long j111 = j103 + o46;
                long o50 = u0.o(o46, 16, j111);
                long j112 = j104 + o48;
                long o51 = u0.o(o48, 34, j112);
                long j113 = j106 + o47;
                long o52 = u0.o(o47, 56, j113);
                long j114 = j105 + o49;
                long o53 = u0.o(o49, 51, j114);
                long j115 = j108 + o45;
                long o54 = u0.o(o45, 4, j115);
                long j116 = j109 + o43;
                long o55 = u0.o(o43, 53, j116);
                long j117 = j110 + o44;
                long o56 = u0.o(o44, 42, j117);
                long j118 = j107 + o42;
                long o57 = u0.o(o42, 41, j118);
                long j119 = j111 + o54;
                long o58 = u0.o(o54, 31, j119);
                long j120 = j112 + o56;
                long o59 = u0.o(o56, 44, j120);
                long j121 = j114 + o55;
                long o60 = u0.o(o55, 47, j121);
                long j122 = j113 + o57;
                long o61 = u0.o(o57, 46, j122);
                long j123 = j116 + o53;
                long o62 = u0.o(o53, 19, j123);
                long j124 = j117 + o51;
                long o63 = u0.o(o51, 42, j124);
                long j125 = j118 + o52;
                long o64 = u0.o(o52, 44, j125);
                long j126 = j115 + o50;
                long o65 = u0.o(o50, 25, j126);
                long j127 = j119 + o62;
                long o66 = u0.o(o62, 9, j127);
                long j128 = j120 + o64;
                long o67 = u0.o(o64, 48, j128);
                long j129 = j122 + o63;
                long o68 = u0.o(o63, 35, j129);
                long j130 = j121 + o65;
                long o69 = u0.o(o65, 52, j130);
                long j131 = j124 + o61;
                long o70 = u0.o(o61, 23, j131);
                long j132 = j125 + o59;
                long o71 = u0.o(o59, 31, j132);
                long j133 = j126 + o60;
                long o72 = u0.o(o60, 37, j133);
                long j134 = j123 + o58;
                long o73 = u0.o(o58, 20, j134);
                long j135 = j127 + jArr5[i14];
                long j136 = o70 + jArr5[i15];
                long j137 = j128 + jArr5[i16];
                long j138 = o72 + jArr5[i17];
                long j139 = j130 + jArr5[i18];
                j42 = o71 + jArr5[i19];
                long j140 = j129 + jArr5[i20];
                j43 = o73 + jArr5[i21];
                j34 = j132 + jArr5[i22];
                long j141 = o69 + jArr5[i23];
                j36 = j133 + jArr5[i24];
                j45 = o67 + jArr5[i25];
                j38 = j134 + jArr5[i26];
                j46 = o68 + jArr5[i27] + jArr6[i28];
                j40 = j131 + jArr5[i29] + jArr6[i12 + 2];
                j47 = o66 + jArr5[i11 + 16] + j101 + 1;
                j44 = j141;
                j30 = j139;
                j41 = j138;
                j32 = j140;
                iArr = iArr3;
                iArr2 = iArr4;
                jArr4 = jArr6;
                jArr3 = jArr5;
                i10 = i13 + 2;
                j27 = j136;
                j26 = j135;
                j28 = j137;
            }
            jArr2[0] = j26;
            jArr2[1] = j27;
            jArr2[2] = j28;
            jArr2[3] = j41;
            jArr2[4] = j30;
            jArr2[5] = j42;
            jArr2[6] = j32;
            jArr2[7] = j43;
            jArr2[8] = j34;
            jArr2[9] = j44;
            jArr2[10] = j36;
            jArr2[11] = j45;
            jArr2[12] = j38;
            jArr2[13] = j46;
            jArr2[14] = j40;
            jArr2[15] = j47;
        }
    }

    public static final class b extends d {

        public static final int f14216c = 14;

        public static final int f14217d = 16;

        public static final int f14218e = 52;

        public static final int f14219f = 57;

        public static final int f14220g = 23;

        public static final int f14221h = 40;

        public static final int f14222i = 5;

        public static final int f14223j = 37;

        public static final int f14224k = 25;

        public static final int f14225l = 33;

        public static final int f14226m = 46;

        public static final int f14227n = 12;

        public static final int f14228o = 58;

        public static final int f14229p = 22;

        public static final int f14230q = 32;

        public static final int f14231r = 32;

        public b(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override
        public void a(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14143t;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            boolean z10 = false;
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            int i10 = 17;
            for (int i11 = 1; i10 >= i11; i11 = 1) {
                int i12 = iArr[i10];
                int i13 = iArr2[i10];
                int i14 = i12 + 1;
                long j14 = j10 - jArr3[i14];
                int i15 = i12 + 2;
                int i16 = i13 + 1;
                long j15 = j11 - (jArr3[i15] + jArr4[i16]);
                int i17 = i12 + 3;
                long j16 = j12 - (jArr3[i17] + jArr4[i13 + 2]);
                long j17 = i10;
                long s10 = u0.s(j13 - ((jArr3[i12 + 4] + j17) + 1), 32, j14);
                long j18 = j14 - s10;
                int[] iArr3 = iArr;
                long s11 = u0.s(j15, 32, j16);
                long j19 = j16 - s11;
                long s12 = u0.s(s11, 58, j18);
                long j20 = j18 - s12;
                long s13 = u0.s(s10, 22, j19);
                long j21 = j19 - s13;
                long s14 = u0.s(s13, 46, j20);
                long j22 = j20 - s14;
                long s15 = u0.s(s12, 12, j21);
                long j23 = j21 - s15;
                long s16 = u0.s(s15, 25, j22);
                long s17 = u0.s(s14, 33, j23);
                long j24 = (j22 - s16) - jArr3[i12];
                long j25 = s16 - (jArr3[i14] + jArr4[i13]);
                long j26 = (j23 - s17) - (jArr3[i15] + jArr4[i16]);
                long s18 = u0.s(s17 - (jArr3[i17] + j17), 5, j24);
                long j27 = j24 - s18;
                long s19 = u0.s(j25, 37, j26);
                long j28 = j26 - s19;
                long s20 = u0.s(s19, 23, j27);
                long j29 = j27 - s20;
                long s21 = u0.s(s18, 40, j28);
                long j30 = j28 - s21;
                long s22 = u0.s(s21, 52, j29);
                long j31 = j29 - s22;
                long s23 = u0.s(s20, 57, j30);
                long j32 = j30 - s23;
                long s24 = u0.s(s23, 14, j31);
                j10 = j31 - s24;
                j13 = u0.s(s22, 16, j32);
                j12 = j32 - j13;
                i10 -= 2;
                j11 = s24;
                iArr = iArr3;
                iArr2 = iArr2;
                z10 = false;
            }
            boolean z11 = z10;
            long j33 = j10 - jArr3[z11 ? 1 : 0];
            long j34 = j11 - (jArr3[1] + jArr4[z11 ? 1 : 0]);
            long j35 = j12 - (jArr3[2] + jArr4[1]);
            long j36 = j13 - jArr3[3];
            jArr2[z11 ? 1 : 0] = j33;
            jArr2[1] = j34;
            jArr2[2] = j35;
            jArr2[3] = j36;
        }

        @Override
        public void b(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14143t;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = j10 + jArr3[0];
            long j15 = j11 + jArr3[1] + jArr4[0];
            long j16 = j12 + jArr3[2] + jArr4[1];
            int i10 = 1;
            long j17 = j13 + jArr3[3];
            while (i10 < 18) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                long j18 = j14 + j15;
                long o10 = u0.o(j15, 14, j18);
                long j19 = j16 + j17;
                long o11 = u0.o(j17, 16, j19);
                long j20 = j18 + o11;
                long o12 = u0.o(o11, 52, j20);
                long j21 = j19 + o10;
                long o13 = u0.o(o10, 57, j21);
                long j22 = j20 + o13;
                long o14 = u0.o(o13, 23, j22);
                long j23 = j21 + o12;
                long o15 = u0.o(o12, 40, j23);
                long j24 = j22 + o15;
                long o16 = u0.o(o15, 5, j24);
                long j25 = j23 + o14;
                long o17 = u0.o(o14, 37, j25);
                long j26 = j24 + jArr3[i11];
                int i13 = i11 + 1;
                long j27 = o17 + jArr3[i13] + jArr4[i12];
                int i14 = i11 + 2;
                int i15 = i12 + 1;
                long j28 = j25 + jArr3[i14] + jArr4[i15];
                int i16 = i11 + 3;
                int[] iArr3 = iArr;
                long j29 = i10;
                long j30 = o16 + jArr3[i16] + j29;
                long j31 = j26 + j27;
                long o18 = u0.o(j27, 25, j31);
                long j32 = j28 + j30;
                long o19 = u0.o(j30, 33, j32);
                long j33 = j31 + o19;
                long o20 = u0.o(o19, 46, j33);
                long j34 = j32 + o18;
                long o21 = u0.o(o18, 12, j34);
                long j35 = j33 + o21;
                long o22 = u0.o(o21, 58, j35);
                long j36 = j34 + o20;
                long o23 = u0.o(o20, 22, j36);
                long j37 = j35 + o23;
                long o24 = u0.o(o23, 32, j37);
                long j38 = j36 + o22;
                long o25 = u0.o(o22, 32, j38);
                j14 = j37 + jArr3[i13];
                j15 = o25 + jArr3[i14] + jArr4[i15];
                j16 = j38 + jArr3[i16] + jArr4[i12 + 2];
                j17 = o24 + jArr3[i11 + 4] + j29 + 1;
                i10 += 2;
                iArr = iArr3;
                iArr2 = iArr2;
            }
            jArr2[0] = j14;
            jArr2[1] = j15;
            jArr2[2] = j16;
            jArr2[3] = j17;
        }
    }

    public static final class c extends d {

        public static final int f14232A = 25;

        public static final int f14233B = 29;

        public static final int f14234C = 39;

        public static final int f14235D = 43;

        public static final int f14236E = 8;

        public static final int f14237F = 35;

        public static final int f14238G = 56;

        public static final int f14239H = 22;

        public static final int f14240c = 46;

        public static final int f14241d = 36;

        public static final int f14242e = 19;

        public static final int f14243f = 37;

        public static final int f14244g = 33;

        public static final int f14245h = 27;

        public static final int f14246i = 14;

        public static final int f14247j = 42;

        public static final int f14248k = 17;

        public static final int f14249l = 49;

        public static final int f14250m = 36;

        public static final int f14251n = 39;

        public static final int f14252o = 44;

        public static final int f14253p = 9;

        public static final int f14254q = 54;

        public static final int f14255r = 56;

        public static final int f14256s = 39;

        public static final int f14257t = 30;

        public static final int f14258u = 34;

        public static final int f14259v = 24;

        public static final int f14260w = 13;

        public static final int f14261x = 50;

        public static final int f14262y = 10;

        public static final int f14263z = 17;

        public c(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override
        public void a(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14141r;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            boolean z10 = false;
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            int i10 = 17;
            for (int i11 = 1; i10 >= i11; i11 = 1) {
                int i12 = iArr[i10];
                int i13 = iArr2[i10];
                int i14 = i12 + 1;
                long j18 = j10 - jArr3[i14];
                int i15 = i12 + 2;
                long j19 = j11 - jArr3[i15];
                int i16 = i12 + 3;
                long j20 = j12 - jArr3[i16];
                int i17 = i12 + 4;
                long j21 = j13 - jArr3[i17];
                int i18 = i12 + 5;
                long j22 = j14 - jArr3[i18];
                int i19 = i12 + 6;
                int i20 = i13 + 1;
                long j23 = j15 - (jArr3[i19] + jArr4[i20]);
                int i21 = i12 + 7;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j24 = j16 - (jArr3[i21] + jArr4[i13 + 2]);
                long[] jArr5 = jArr3;
                long j25 = i10;
                long j26 = j17 - ((jArr3[i12 + 8] + j25) + 1);
                int i22 = i10;
                long s10 = u0.s(j19, 8, j24);
                long j27 = j24 - s10;
                long s11 = u0.s(j26, 35, j18);
                long j28 = j18 - s11;
                long s12 = u0.s(j23, 56, j20);
                long j29 = j20 - s12;
                long s13 = u0.s(j21, 22, j22);
                long j30 = j22 - s13;
                long s14 = u0.s(s10, 25, j30);
                long j31 = j30 - s14;
                long s15 = u0.s(s13, 29, j27);
                long j32 = j27 - s15;
                long s16 = u0.s(s12, 39, j28);
                long j33 = j28 - s16;
                long s17 = u0.s(s11, 43, j29);
                long j34 = j29 - s17;
                long s18 = u0.s(s14, 13, j34);
                long j35 = j34 - s18;
                long s19 = u0.s(s17, 50, j31);
                long j36 = j31 - s19;
                long s20 = u0.s(s16, 10, j32);
                long j37 = j32 - s20;
                long[] jArr6 = jArr4;
                long s21 = u0.s(s15, 17, j33);
                long j38 = j33 - s21;
                long s22 = u0.s(s18, 39, j38);
                long s23 = u0.s(s21, 30, j35);
                long s24 = u0.s(s20, 34, j36);
                long s25 = u0.s(s19, 24, j37);
                long j39 = (j38 - s22) - jArr5[i12];
                long j40 = s22 - jArr5[i14];
                long j41 = (j35 - s23) - jArr5[i15];
                long j42 = s23 - jArr5[i16];
                long j43 = (j36 - s24) - jArr5[i17];
                long j44 = s24 - (jArr5[i18] + jArr6[i13]);
                long j45 = (j37 - s25) - (jArr5[i19] + jArr6[i20]);
                long j46 = s25 - (jArr5[i21] + j25);
                long s26 = u0.s(j40, 44, j45);
                long j47 = j45 - s26;
                long s27 = u0.s(j46, 9, j39);
                long j48 = j39 - s27;
                long s28 = u0.s(j44, 54, j41);
                long j49 = j41 - s28;
                long s29 = u0.s(j42, 56, j43);
                long j50 = j43 - s29;
                long s30 = u0.s(s26, 17, j50);
                long j51 = j50 - s30;
                long s31 = u0.s(s29, 49, j47);
                long j52 = j47 - s31;
                long s32 = u0.s(s28, 36, j48);
                long j53 = j48 - s32;
                long s33 = u0.s(s27, 39, j49);
                long j54 = j49 - s33;
                long s34 = u0.s(s30, 33, j54);
                long j55 = j54 - s34;
                long s35 = u0.s(s33, 27, j51);
                long j56 = j51 - s35;
                long s36 = u0.s(s32, 14, j52);
                long j57 = j52 - s36;
                long s37 = u0.s(s31, 42, j53);
                long j58 = j53 - s37;
                long s38 = u0.s(s34, 46, j58);
                j10 = j58 - s38;
                j13 = u0.s(s37, 36, j55);
                j15 = u0.s(s36, 19, j56);
                j17 = u0.s(s35, 37, j57);
                j16 = j57 - j17;
                i10 = i22 - 2;
                j14 = j56 - j15;
                j12 = j55 - j13;
                j11 = s38;
                iArr = iArr3;
                jArr4 = jArr6;
                iArr2 = iArr4;
                jArr3 = jArr5;
                z10 = false;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            boolean z11 = z10;
            long j59 = j10 - jArr7[z11 ? 1 : 0];
            long j60 = j11 - jArr7[1];
            long j61 = j12 - jArr7[2];
            long j62 = j13 - jArr7[3];
            long j63 = j14 - jArr7[4];
            long j64 = j15 - (jArr7[5] + jArr8[z11 ? 1 : 0]);
            long j65 = j16 - (jArr7[6] + jArr8[1]);
            long j66 = j17 - jArr7[7];
            jArr2[z11 ? 1 : 0] = j59;
            jArr2[1] = j60;
            jArr2[2] = j61;
            jArr2[3] = j62;
            jArr2[4] = j63;
            jArr2[5] = j64;
            jArr2[6] = j65;
            jArr2[7] = j66;
        }

        @Override
        public void b(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f14265b;
            long[] jArr4 = this.f14264a;
            int[] iArr = u0.f14141r;
            int[] iArr2 = u0.f14144u;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = j10 + jArr3[0];
            long j19 = j11 + jArr3[1];
            long j20 = j12 + jArr3[2];
            long j21 = j13 + jArr3[3];
            long j22 = j14 + jArr3[4];
            long j23 = j15 + jArr3[5] + jArr4[0];
            long j24 = j16 + jArr3[6] + jArr4[1];
            int i10 = 1;
            long j25 = j21;
            long j26 = j23;
            long j27 = j17 + jArr3[7];
            while (i10 < 18) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                long j28 = j18 + j19;
                long o10 = u0.o(j19, 46, j28);
                long j29 = j20 + j25;
                long o11 = u0.o(j25, 36, j29);
                long j30 = j26;
                int[] iArr3 = iArr;
                long j31 = j22 + j30;
                long o12 = u0.o(j30, 19, j31);
                long[] jArr5 = jArr3;
                long j32 = j27;
                long j33 = j24 + j32;
                long o13 = u0.o(j32, 37, j33);
                int i13 = i10;
                long j34 = j29 + o10;
                long o14 = u0.o(o10, 33, j34);
                long j35 = j31 + o13;
                long o15 = u0.o(o13, 27, j35);
                long j36 = j33 + o12;
                long o16 = u0.o(o12, 14, j36);
                long j37 = j28 + o11;
                long o17 = u0.o(o11, 42, j37);
                long j38 = j35 + o14;
                long o18 = u0.o(o14, 17, j38);
                long j39 = j36 + o17;
                long o19 = u0.o(o17, 49, j39);
                long j40 = j37 + o16;
                long o20 = u0.o(o16, 36, j40);
                long j41 = j34 + o15;
                long o21 = u0.o(o15, 39, j41);
                long j42 = j39 + o18;
                long o22 = u0.o(o18, 44, j42);
                long j43 = j40 + o21;
                long o23 = u0.o(o21, 9, j43);
                long j44 = j41 + o20;
                long o24 = u0.o(o20, 54, j44);
                long j45 = j38 + o19;
                long o25 = u0.o(o19, 56, j45);
                long j46 = j43 + jArr5[i11];
                int i14 = i11 + 1;
                long j47 = o22 + jArr5[i14];
                int i15 = i11 + 2;
                long j48 = j44 + jArr5[i15];
                int i16 = i11 + 3;
                long j49 = o25 + jArr5[i16];
                int i17 = i11 + 4;
                long j50 = j45 + jArr5[i17];
                int i18 = i11 + 5;
                long j51 = o24 + jArr5[i18] + jArr4[i12];
                int i19 = i11 + 6;
                int i20 = i12 + 1;
                long j52 = j42 + jArr5[i19] + jArr4[i20];
                int i21 = i11 + 7;
                long j53 = i13;
                long j54 = o23 + jArr5[i21] + j53;
                long j55 = j46 + j47;
                long o26 = u0.o(j47, 39, j55);
                long j56 = j48 + j49;
                long o27 = u0.o(j49, 30, j56);
                long j57 = j50 + j51;
                long o28 = u0.o(j51, 34, j57);
                long j58 = j52 + j54;
                long o29 = u0.o(j54, 24, j58);
                long j59 = j56 + o26;
                long o30 = u0.o(o26, 13, j59);
                long j60 = j57 + o29;
                long o31 = u0.o(o29, 50, j60);
                long j61 = j58 + o28;
                long o32 = u0.o(o28, 10, j61);
                long j62 = j55 + o27;
                long o33 = u0.o(o27, 17, j62);
                long j63 = j60 + o30;
                long o34 = u0.o(o30, 25, j63);
                long j64 = j61 + o33;
                long o35 = u0.o(o33, 29, j64);
                long j65 = j62 + o32;
                long o36 = u0.o(o32, 39, j65);
                long j66 = j59 + o31;
                long[] jArr6 = jArr4;
                long o37 = u0.o(o31, 43, j66);
                long j67 = j64 + o34;
                long o38 = u0.o(o34, 8, j67);
                long j68 = j65 + o37;
                long o39 = u0.o(o37, 35, j68);
                long j69 = j66 + o36;
                long o40 = u0.o(o36, 56, j69);
                long j70 = j63 + o35;
                long o41 = u0.o(o35, 22, j70);
                long j71 = j68 + jArr5[i14];
                j19 = o38 + jArr5[i15];
                long j72 = j69 + jArr5[i16];
                j25 = o41 + jArr5[i17];
                long j73 = j70 + jArr5[i18];
                j26 = o40 + jArr5[i19] + jArr6[i20];
                long j74 = j67 + jArr5[i21] + jArr6[i12 + 2];
                long j75 = o39 + jArr5[i11 + 8] + j53 + 1;
                j24 = j74;
                j22 = j73;
                jArr3 = jArr5;
                iArr = iArr3;
                jArr4 = jArr6;
                j27 = j75;
                j20 = j72;
                j18 = j71;
                i10 = i13 + 2;
                iArr2 = iArr2;
            }
            jArr2[0] = j18;
            jArr2[1] = j19;
            jArr2[2] = j20;
            jArr2[3] = j25;
            jArr2[4] = j22;
            jArr2[5] = j26;
            jArr2[6] = j24;
            jArr2[7] = j27;
        }
    }

    public static abstract class d {

        public final long[] f14264a;

        public final long[] f14265b;

        public d(long[] jArr, long[] jArr2) {
            this.f14265b = jArr;
            this.f14264a = jArr2;
        }

        public abstract void a(long[] jArr, long[] jArr2);

        public abstract void b(long[] jArr, long[] jArr2);
    }

    static {
        int[] iArr = new int[80];
        f14141r = iArr;
        f14142s = new int[iArr.length];
        f14143t = new int[iArr.length];
        f14144u = new int[iArr.length];
        int i10 = 0;
        while (true) {
            int[] iArr2 = f14141r;
            if (i10 >= iArr2.length) {
                return;
            }
            f14142s[i10] = i10 % 17;
            iArr2[i10] = i10 % 9;
            f14143t[i10] = i10 % 5;
            f14144u[i10] = i10 % 3;
            i10++;
        }
    }

    public u0(int i10) {
        d bVar;
        long[] jArr = new long[5];
        this.f14148d = jArr;
        int i11 = i10 / 8;
        this.f14145a = i11;
        int i12 = i11 / 8;
        this.f14146b = i12;
        this.f14147c = new long[i12];
        long[] jArr2 = new long[(i12 * 2) + 1];
        this.f14149e = jArr2;
        if (i10 == 256) {
            bVar = new b(jArr2, jArr);
        } else if (i10 == 512) {
            bVar = new c(jArr2, jArr);
        } else {
            if (i10 != 1024) {
                throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
            }
            bVar = new a(jArr2, jArr);
        }
        this.f14150f = bVar;
    }

    public static long l(byte[] bArr, int i10) {
        return org.bouncycastle.util.p.x(bArr, i10);
    }

    public static long o(long j10, int i10, long j11) {
        return ((j10 >>> (-i10)) | (j10 << i10)) ^ j11;
    }

    public static void r(long j10, byte[] bArr, int i10) {
        org.bouncycastle.util.p.J(j10, bArr, i10);
    }

    public static long s(long j10, int i10, long j11) {
        long j12 = j10 ^ j11;
        return (j12 << (-i10)) | (j12 >>> i10);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        byte[] b10;
        byte[] bArr;
        long[] jArr;
        long[] jArr2 = null;
        if (interfaceC2379k instanceof L0) {
            L0 l02 = (L0) interfaceC2379k;
            b10 = l02.a().b();
            bArr = l02.b();
        } else {
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("Invalid parameter passed to Threefish init - " + interfaceC2379k.getClass().getName());
            }
            b10 = ((C3360o0) interfaceC2379k).b();
            bArr = null;
        }
        if (b10 == null) {
            jArr = null;
        } else {
            if (b10.length != this.f14145a) {
                throw new IllegalArgumentException("Threefish key must be same size as block (" + this.f14145a + " bytes)");
            }
            jArr = new long[this.f14146b];
            org.bouncycastle.util.p.y(b10, 0, jArr);
        }
        if (bArr != null) {
            if (bArr.length != 16) {
                throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
            }
            jArr2 = new long[2];
            org.bouncycastle.util.p.y(bArr, 0, jArr2);
        }
        m(z10, jArr, jArr2);
        Bi.r.a(new Hi.c(b(), 256, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "Threefish-" + (this.f14145a * 8);
    }

    @Override
    public int c() {
        return this.f14145a;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12 = this.f14145a;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        }
        org.bouncycastle.util.p.y(bArr, i10, this.f14147c);
        long[] jArr = this.f14147c;
        n(jArr, jArr);
        org.bouncycastle.util.p.L(this.f14147c, bArr2, i11);
        return this.f14145a;
    }

    public void m(boolean z10, long[] jArr, long[] jArr2) {
        this.f14151g = z10;
        if (jArr != null) {
            p(jArr);
        }
        if (jArr2 != null) {
            q(jArr2);
        }
    }

    public int n(long[] jArr, long[] jArr2) throws DataLengthException, IllegalStateException {
        long[] jArr3 = this.f14149e;
        int i10 = this.f14146b;
        if (jArr3[i10] == 0) {
            throw new IllegalStateException("Threefish engine not initialised");
        }
        if (jArr.length != i10) {
            throw new DataLengthException("Input buffer too short");
        }
        if (jArr2.length != i10) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.f14151g) {
            this.f14150f.b(jArr, jArr2);
        } else {
            this.f14150f.a(jArr, jArr2);
        }
        return this.f14146b;
    }

    public final void p(long[] jArr) {
        if (jArr.length != this.f14146b) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.f14146b + " words)");
        }
        long j10 = f14140q;
        int i10 = 0;
        while (true) {
            int i11 = this.f14146b;
            if (i10 >= i11) {
                long[] jArr2 = this.f14149e;
                jArr2[i11] = j10;
                System.arraycopy(jArr2, 0, jArr2, i11 + 1, i11);
                return;
            } else {
                long[] jArr3 = this.f14149e;
                long j11 = jArr[i10];
                jArr3[i10] = j11;
                j10 ^= j11;
                i10++;
            }
        }
    }

    public final void q(long[] jArr) {
        if (jArr.length != 2) {
            throw new IllegalArgumentException("Tweak must be 2 words.");
        }
        long[] jArr2 = this.f14148d;
        long j10 = jArr[0];
        jArr2[0] = j10;
        long j11 = jArr[1];
        jArr2[1] = j11;
        jArr2[2] = j10 ^ j11;
        jArr2[3] = j10;
        jArr2[4] = j11;
    }

    @Override
    public void reset() {
    }
}
