package fl;

import Ii.N;
import Ii.Q;
import fl.k;
import fl.n;
import fl.o;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.util.p;

public class C13251a {

    public final boolean f86396A;

    public final int f86397B;

    public final int f86398C;

    public final int f86399D;

    public int f86400E;

    public final int f86401F;

    public final int f86402G;

    public final int f86403H;

    public final int f86404I;

    public final int f86405J;

    public final int f86406K;

    public final int f86407L;

    public final int f86408M;

    public final int f86409N;

    public final int f86410O;

    public final int f86411P;

    public final int f86412Q;

    public final int f86413R;

    public final int f86414S;

    public final int f86415T;

    public final int f86416U;

    public final int f86417V;

    public final int f86418W;

    public final int f86419X;

    public final long f86420Y;

    public SecureRandom f86422a;

    public int f86423a0;

    public final int f86424b;

    public int f86425b0;

    public final int f86426c;

    public final int f86427c0;

    public final int f86428d;

    public final long f86429d0;

    public final int f86430e;

    public final int f86431e0;

    public final int f86432f;

    public int f86433f0;

    public final int f86434g;

    public final int f86435g0;

    public final int f86436h;

    public final int f86437h0;

    public final int f86438i;

    public final int f86439i0;

    public final int f86440j;

    public N f86441j0;

    public final int f86443k0;

    public final int f86444l;

    public int f86445l0;

    public final int f86446m;

    public int f86447m0;

    public int f86448n;

    public int f86449n0;

    public int f86450o;

    public int f86451o0;

    public int f86452p;

    public int f86453p0;

    public int f86454q;

    public int f86455q0;

    public int f86456r;

    public k f86457r0;

    public final int f86458s;

    public n f86459s0;

    public final int f86460t;

    public l f86461t0;

    public int f86462u;

    public l f86463u0;

    public final int f86464v;

    public final int f86465w;

    public final int f86466x;

    public int f86467y;

    public int f86468z;

    public final int f86442k = 64;

    public final int f86421Z = 4;

    public static class C1613a {

        public static final int[] f86469a;

        static {
            int[] iArr = new int[b.values().length];
            f86469a = iArr;
            try {
                iArr[b.N.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86469a[b.NV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86469a[b.V.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86469a[b.M.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum b {
        NV,
        V,
        N,
        M
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03e8 A[LOOP:0: B:90:0x03e2->B:92:0x03e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x03ed A[EDGE_INSN: B:93:0x03ed->B:94:0x03ed BREAK  A[LOOP:0: B:90:0x03e2->B:92:0x03e8], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03f8 A[LOOP:1: B:95:0x03f0->B:97:0x03f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03fb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13251a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        k dVar;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        n aVar;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        this.f86424b = i11;
        this.f86426c = i12;
        this.f86428d = i13;
        this.f86430e = i14;
        this.f86432f = i15;
        this.f86434g = i16;
        this.f86436h = i17;
        this.f86431e0 = (i11 >>> 3) + ((i11 & 7) != 0 ? 1 : 0);
        int i31 = i16 + 1;
        this.f86435g0 = i31;
        int i32 = i11 + i12;
        this.f86438i = i32;
        int i33 = i11 >>> 6;
        this.f86444l = i33;
        int i34 = i11 & 63;
        this.f86446m = i34;
        int i35 = i32 >>> 6;
        this.f86458s = i35;
        int i36 = i32 & 63;
        this.f86460t = i36;
        this.f86465w = i10 >>> 3;
        int i37 = i11 - 1;
        int i38 = ((i37 << 1) >>> 6) + 1;
        this.f86466x = i38;
        if (i38 == 6) {
            dVar = new k.d();
        } else if (i38 == 9) {
            dVar = new k.e();
        } else if (i38 == 17) {
            dVar = new k.c();
        } else if (i38 != 12) {
            if (i38 == 13) {
                dVar = new k.b();
            }
            int i39 = 64 - i34;
            int i40 = i11 - i13;
            this.f86440j = i40;
            int i41 = i40 >>> 6;
            this.f86398C = i41;
            int i42 = i40 & 63;
            this.f86399D = i42;
            int i43 = i12 >>> 6;
            this.f86401F = i43;
            int i44 = i12 & 63;
            this.f86402G = i44;
            this.f86403H = i44 != 0 ? i43 + 1 : i43;
            int i45 = i40 >>> 3;
            this.f86404I = i45;
            int i46 = i40 & 7;
            this.f86405J = i46;
            this.f86406K = (i46 == 0 ? 1 : 0) + i45;
            this.f86410O = ((((i35 + 1) * i35) >>> 1) * 64) + ((i35 + 1) * i36);
            int i47 = i32 & 7;
            this.f86417V = i47;
            this.f86418W = (i32 >>> 3) + (i47 == 0 ? 1 : 0);
            this.f86419X = Math.min(i13 + i12, 8 - i46);
            this.f86420Y = j.f(i42);
            long f10 = j.f(i34);
            this.f86429d0 = f10;
            int i48 = (i34 == 0 ? 1 : 0) + i33;
            this.f86450o = i48;
            this.f86464v = (((i33 * (i33 + 1)) >>> 1) * 64) + (i48 * i34);
            this.f86427c0 = i11 * i48;
            int i49 = (i36 == 0 ? 1 : 0) + i35;
            this.f86452p = i49;
            this.f86397B = i32 * i49;
            this.f86462u = (((i35 * (i35 + 1)) >>> 1) * 64) + (i36 * i49);
            int i50 = i12 + 1;
            int i51 = ((i12 * i50) >>> 1) + 1;
            this.f86454q = i51;
            int i52 = (i32 * (i32 + 1)) >>> 1;
            int i53 = i52 + 1;
            this.f86456r = i53;
            this.f86468z = i51 * i48;
            this.f86407L = i45 * i53;
            this.f86408M = (i52 + 8) >>> 3;
            int i54 = i53 & 7;
            this.f86409N = i54;
            int i55 = (8 - i54) & 7;
            this.f86411P = i55;
            this.f86412Q = (i46 - 1) * i55;
            this.f86467y = i38;
            if (i11 == 174) {
                if (i11 == 175) {
                    i30 = 16;
                } else if (i11 == 177) {
                    i18 = 0;
                    i19 = 8;
                } else if (i11 == 178) {
                    i18 = 0;
                    i19 = 31;
                } else if (i11 == 265) {
                    i30 = 42;
                } else if (i11 == 266) {
                    i30 = 47;
                } else if (i11 == 268) {
                    i30 = 25;
                } else if (i11 == 354) {
                    i30 = 99;
                } else if (i11 == 358) {
                    i30 = 57;
                } else if (i11 == 364) {
                    i18 = 0;
                    i19 = 9;
                } else if (i11 == 366) {
                    i30 = 29;
                } else if (i11 != 402) {
                    if (i11 == 537) {
                        i19 = 10;
                        i20 = 2;
                        i18 = 1;
                    } else if (i11 == 544) {
                        i19 = 128;
                        i18 = 1;
                        i20 = 3;
                    } else if (i11 == 270) {
                        i30 = 53;
                    } else {
                        if (i11 != 271) {
                            throw new IllegalArgumentException("error: need to add support for HFEn=" + i11);
                        }
                        i30 = 58;
                    }
                    if (i20 != 0) {
                        i21 = 64 - i18;
                        i22 = 64 - i20;
                    } else {
                        i21 = 0;
                        i22 = 0;
                    }
                    int i56 = 64 - (i19 & 63);
                    i23 = i15 & 1;
                    if (i23 == 0) {
                        this.f86396A = true;
                        int i57 = (1 << i16) + 1;
                        this.f86448n = i57;
                        if (i23 != 0) {
                            throw new IllegalArgumentException("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                        }
                        if (i57 > i15) {
                            throw new IllegalArgumentException("It is useless to remove 0 term.");
                        }
                        if (i57 <= 1) {
                            throw new IllegalArgumentException("The case where the term X^3 is removing is not implemented.");
                        }
                        this.f86423a0 = i17 + 2 + (((i16 - 1) * i16) >>> 1) + i16;
                        i24 = 0;
                    } else {
                        i24 = 0;
                        this.f86396A = false;
                        this.f86423a0 = i17 + 2 + ((i16 * i31) >>> 1);
                    }
                    int i58 = i41 + (i42 != 0 ? 1 : i24);
                    this.f86400E = i58;
                    int i59 = (i49 - i58) + (i42 != 0 ? 1 : i24);
                    this.f86413R = i59;
                    this.f86414S = i49 + ((i14 - 1) * i59);
                    if (i10 <= 128) {
                        this.f86415T = 32;
                        this.f86416U = 4;
                        this.f86437h0 = 128;
                        this.f86439i0 = 256;
                    } else {
                        if (i10 <= 192) {
                            this.f86415T = 48;
                            this.f86416U = 6;
                            this.f86437h0 = 256;
                            i25 = 384;
                        } else {
                            this.f86415T = 64;
                            this.f86416U = 8;
                            this.f86437h0 = 256;
                            i25 = 512;
                        }
                        this.f86439i0 = i25;
                    }
                    this.f86441j0 = new N(this.f86439i0);
                    int i60 = this.f86423a0 + (this.f86454q - 1) + (i12 * i31);
                    int i61 = this.f86450o;
                    this.f86425b0 = i60 * i61;
                    this.f86443k0 = i50 * i61;
                    if (i15 > 34 || (i11 > 196 && i15 < 256)) {
                        this.f86445l0 = i15 == 17 ? 4 : 6;
                        int i62 = this.f86445l0;
                        int i63 = 1 << i62;
                        this.f86447m0 = i63;
                        int i64 = (i15 >>> i62) + (i15 % i63 != 0 ? 1 : 0);
                        this.f86449n0 = i64;
                        this.f86451o0 = i15 - i64;
                    }
                    if (i20 != 0) {
                        this.f86459s0 = (i11 == 544 && i19 == 128) ? new n.h(i18, i20, i34, i39, i21, i22, f10) : new n.g(i18, i20, i19, i34, i39, i21, i22, i56, f10);
                    } else {
                        if (i11 > 256 && i11 < 289 && i19 > 32 && i19 < 64) {
                            aVar = new n.b(i19, i34, i39, i56, f10);
                        } else if (i11 == 354) {
                            aVar = new n.d(i19, i34, i39, i56, f10);
                        } else if (i11 == 358) {
                            aVar = new n.c(i19, i34, i39, i56, f10);
                        } else if (i11 == 402) {
                            aVar = new n.f(i19, i34, i39, i56, f10);
                        } else if (i38 == 6) {
                            aVar = new n.a(i19, i34, i39, i56, f10);
                        } else if (i38 == 9) {
                            aVar = new n.b(i19, i34, i39, i56, f10);
                        } else if (i38 == 12) {
                            aVar = new n.e(i19, i34, i39, i56, f10);
                        }
                        this.f86459s0 = aVar;
                    }
                    this.f86461t0 = new l(i38);
                    this.f86463u0 = new l(this.f86450o);
                    i26 = 31;
                    this.f86453p0 = 31;
                    while (true) {
                        i27 = this.f86453p0;
                        if ((i37 >>> i27) != 0) {
                            break;
                        } else {
                            this.f86453p0 = i27 - 1;
                        }
                    }
                    i28 = (i11 + 1) >>> 1;
                    while (true) {
                        this.f86455q0 = i26;
                        i29 = this.f86455q0;
                        if ((i28 >>> i29) != 0) {
                            this.f86455q0 = i29 - 1;
                            return;
                        }
                        i26 = i29 - 1;
                    }
                } else {
                    i30 = 171;
                }
                i19 = i30;
                i18 = 0;
            } else {
                i18 = 0;
                i19 = 13;
            }
            i20 = 0;
            if (i20 != 0) {
            }
            int i562 = 64 - (i19 & 63);
            i23 = i15 & 1;
            if (i23 == 0) {
            }
            int i582 = i41 + (i42 != 0 ? 1 : i24);
            this.f86400E = i582;
            int i592 = (i49 - i582) + (i42 != 0 ? 1 : i24);
            this.f86413R = i592;
            this.f86414S = i49 + ((i14 - 1) * i592);
            if (i10 <= 128) {
            }
            this.f86441j0 = new N(this.f86439i0);
            int i602 = this.f86423a0 + (this.f86454q - 1) + (i12 * i31);
            int i612 = this.f86450o;
            this.f86425b0 = i602 * i612;
            this.f86443k0 = i50 * i612;
            if (i15 > 34) {
            }
            this.f86445l0 = i15 == 17 ? 4 : 6;
            int i622 = this.f86445l0;
            int i632 = 1 << i622;
            this.f86447m0 = i632;
            int i642 = (i15 >>> i622) + (i15 % i632 != 0 ? 1 : 0);
            this.f86449n0 = i642;
            this.f86451o0 = i15 - i642;
            if (i20 != 0) {
            }
            this.f86461t0 = new l(i38);
            this.f86463u0 = new l(this.f86450o);
            i26 = 31;
            this.f86453p0 = 31;
            while (true) {
                i27 = this.f86453p0;
                if ((i37 >>> i27) != 0) {
                }
                this.f86453p0 = i27 - 1;
            }
            i28 = (i11 + 1) >>> 1;
            while (true) {
                this.f86455q0 = i26;
                i29 = this.f86455q0;
                if ((i28 >>> i29) != 0) {
                }
                i26 = i29 - 1;
            }
        } else {
            dVar = new k.a();
        }
        this.f86457r0 = dVar;
        int i392 = 64 - i34;
        int i402 = i11 - i13;
        this.f86440j = i402;
        int i412 = i402 >>> 6;
        this.f86398C = i412;
        int i422 = i402 & 63;
        this.f86399D = i422;
        int i432 = i12 >>> 6;
        this.f86401F = i432;
        int i442 = i12 & 63;
        this.f86402G = i442;
        this.f86403H = i442 != 0 ? i432 + 1 : i432;
        int i452 = i402 >>> 3;
        this.f86404I = i452;
        int i462 = i402 & 7;
        this.f86405J = i462;
        this.f86406K = (i462 == 0 ? 1 : 0) + i452;
        this.f86410O = ((((i35 + 1) * i35) >>> 1) * 64) + ((i35 + 1) * i36);
        int i472 = i32 & 7;
        this.f86417V = i472;
        this.f86418W = (i32 >>> 3) + (i472 == 0 ? 1 : 0);
        this.f86419X = Math.min(i13 + i12, 8 - i462);
        this.f86420Y = j.f(i422);
        long f102 = j.f(i34);
        this.f86429d0 = f102;
        int i482 = (i34 == 0 ? 1 : 0) + i33;
        this.f86450o = i482;
        this.f86464v = (((i33 * (i33 + 1)) >>> 1) * 64) + (i482 * i34);
        this.f86427c0 = i11 * i482;
        int i492 = (i36 == 0 ? 1 : 0) + i35;
        this.f86452p = i492;
        this.f86397B = i32 * i492;
        this.f86462u = (((i35 * (i35 + 1)) >>> 1) * 64) + (i36 * i492);
        int i502 = i12 + 1;
        int i512 = ((i12 * i502) >>> 1) + 1;
        this.f86454q = i512;
        int i522 = (i32 * (i32 + 1)) >>> 1;
        int i532 = i522 + 1;
        this.f86456r = i532;
        this.f86468z = i512 * i482;
        this.f86407L = i452 * i532;
        this.f86408M = (i522 + 8) >>> 3;
        int i542 = i532 & 7;
        this.f86409N = i542;
        int i552 = (8 - i542) & 7;
        this.f86411P = i552;
        this.f86412Q = (i462 - 1) * i552;
        this.f86467y = i38;
        if (i11 == 174) {
        }
        i20 = 0;
        if (i20 != 0) {
        }
        int i5622 = 64 - (i19 & 63);
        i23 = i15 & 1;
        if (i23 == 0) {
        }
        int i5822 = i412 + (i422 != 0 ? 1 : i24);
        this.f86400E = i5822;
        int i5922 = (i492 - i5822) + (i422 != 0 ? 1 : i24);
        this.f86413R = i5922;
        this.f86414S = i492 + ((i14 - 1) * i5922);
        if (i10 <= 128) {
        }
        this.f86441j0 = new N(this.f86439i0);
        int i6022 = this.f86423a0 + (this.f86454q - 1) + (i12 * i31);
        int i6122 = this.f86450o;
        this.f86425b0 = i6022 * i6122;
        this.f86443k0 = i502 * i6122;
        if (i15 > 34) {
        }
        this.f86445l0 = i15 == 17 ? 4 : 6;
        int i6222 = this.f86445l0;
        int i6322 = 1 << i6222;
        this.f86447m0 = i6322;
        int i6422 = (i15 >>> i6222) + (i15 % i6322 != 0 ? 1 : 0);
        this.f86449n0 = i6422;
        this.f86451o0 = i15 - i6422;
        if (i20 != 0) {
        }
        this.f86461t0 = new l(i38);
        this.f86463u0 = new l(this.f86450o);
        i26 = 31;
        this.f86453p0 = 31;
        while (true) {
            i27 = this.f86453p0;
            if ((i37 >>> i27) != 0) {
            }
            this.f86453p0 = i27 - 1;
        }
        i28 = (i11 + 1) >>> 1;
        while (true) {
            this.f86455q0 = i26;
            i29 = this.f86455q0;
            if ((i28 >>> i29) != 0) {
            }
            i26 = i29 - 1;
        }
    }

    public static long s0(long j10, long j11) {
        return (j10 <= 0 || j11 <= 0) ? new BigInteger(1, p.H(j10)).mod(new BigInteger(1, p.H(j11))).longValue() : j10 % j11;
    }

    public int A(l lVar, int i10, l lVar2, int i11) {
        l lVar3 = new l(this.f86450o);
        l lVar4 = new l(this.f86450o);
        l lVar5 = new l(lVar);
        f0(lVar4, lVar2, this.f86450o * i11);
        while (i10 >= i11) {
            i10 = lVar.t(i10, i11, this.f86450o);
            if (i10 < i11) {
                break;
            }
            lVar5.a((i10 - i11) * this.f86450o);
            j0(lVar3, lVar, this.f86450o * i10, lVar4);
            T(lVar5, lVar3, lVar2, 0, i11);
            i10--;
        }
        return lVar.t(i10, 1, this.f86450o);
    }

    public final void A0(l lVar, int i10, l lVar2, int i11) {
        this.f86457r0.J(this.f86461t0.f86543a, lVar2.f86543a, i11 + lVar2.f86544b);
        r0(lVar, i10, this.f86461t0);
    }

    public final void B(l lVar, int i10, l lVar2, int i11) {
        l lVar3 = new l();
        int m10 = lVar.m();
        lVar.r(this.f86450o * i10);
        while (i10 >= i11) {
            lVar3.c(lVar, (-i11) * this.f86450o);
            T(lVar3, lVar, lVar2, 0, i11);
            lVar.r(-this.f86450o);
            i10--;
        }
        lVar.a(m10);
    }

    public final void B0(l lVar, l lVar2) {
        this.f86457r0.J(this.f86461t0.f86543a, lVar2.f86543a, lVar2.f86544b);
        this.f86459s0.a(lVar.f86543a, lVar.f86544b, this.f86461t0.f86543a);
    }

    public final int C(l lVar, int i10, l lVar2, int i11) {
        l lVar3 = new l();
        l lVar4 = new l();
        while (i10 >= i11) {
            i10 = lVar.t(i10, i11, this.f86450o);
            if (i10 < i11) {
                break;
            }
            lVar3.c(lVar, this.f86450o * i10);
            lVar4.c(lVar3, (-i11) * this.f86450o);
            T(lVar4, lVar3, lVar2, 0, i11);
            i10--;
        }
        if (i10 == -1) {
            i10++;
        }
        return lVar.t(i10, 1, this.f86450o);
    }

    public final void C0(l lVar, int i10) {
        int i11 = this.f86450o * i10;
        int m10 = lVar.m();
        lVar.r(i11);
        l lVar2 = new l(lVar, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            B0(lVar2, lVar);
            lVar.r(-this.f86450o);
            lVar2.r(-this.f86450o);
            lVar2.A(0, this.f86450o);
            lVar2.r(-this.f86450o);
        }
        B0(lVar, lVar);
        lVar.a(m10);
    }

    public final void D(l lVar, int i10, int i11, int i12, o.a aVar, l lVar2) {
        l lVar3 = new l(lVar, i10 * this.f86450o);
        l lVar4 = new l();
        while (i11 >= i12) {
            lVar4.c(lVar3, (-this.f86432f) * this.f86450o);
            m0(lVar4, lVar3, lVar2);
            for (int i13 = 1; i13 < this.f86423a0; i13++) {
                lVar4.r(aVar.f86588b[i13]);
                n0(lVar4, lVar3, aVar.f86587a, this.f86450o * i13);
            }
            lVar3.r(-this.f86450o);
            i11--;
        }
    }

    public final void D0(l lVar, l lVar2, l lVar3, int i10) {
        int i11;
        int i12 = 1;
        while (true) {
            i11 = 1 << i12;
            if (i11 >= i10) {
                break;
            }
            int i13 = this.f86450o;
            A0(lVar, i13 << i12, lVar, i13 << (i12 - 1));
            i12++;
        }
        if (i12 < this.f86424b) {
            int i14 = this.f86450o;
            A0(lVar2, i14 << i12, lVar, i14 << (i12 - 1));
            B(lVar2, i11, lVar3, i10);
            lVar.P(lVar2, this.f86450o * i10);
            for (int i15 = i12 + 1; i15 < this.f86424b; i15++) {
                int i16 = i10 - 1;
                C0(lVar2, i16);
                B(lVar2, i16 << 1, lVar3, i10);
                lVar.P(lVar2, this.f86450o * i10);
            }
        }
    }

    public final void E(l lVar, l lVar2, l lVar3, int i10) {
        l lVar4 = new l(this.f86466x);
        int m10 = lVar2.m();
        int m11 = lVar3.m();
        l0(lVar4, lVar2, lVar3);
        U(lVar4, lVar2, lVar3, i10 - 1);
        r0(lVar, 0, lVar4);
        lVar2.a(m10);
        lVar3.a(m11);
    }

    public final void E0(l lVar, byte[] bArr) {
        m mVar = new m(lVar);
        int i10 = (1 << this.f86417V) - 1;
        mVar.Y(0, bArr, 0, this.f86418W);
        if (this.f86417V != 0) {
            mVar.g0(this.f86418W - 1, i10);
        }
        int i11 = this.f86438i;
        mVar.f0((this.f86452p << 3) + (this.f86404I & 7));
        for (int i12 = 1; i12 < this.f86430e; i12++) {
            int i13 = i11 & 7;
            int min = Math.min(this.f86428d + this.f86426c, (8 - i13) & 7);
            if (i13 != 0) {
                mVar.k0(((bArr[i11 >>> 3] & 255) >>> i13) << this.f86405J);
                int i14 = min - this.f86419X;
                if (i14 >= 0) {
                    mVar.e0();
                }
                if (i14 > 0) {
                    int i15 = i11 + this.f86419X;
                    mVar.k0((bArr[i15 >>> 3] & 255) >>> (i15 & 7));
                    i11 = i15 + i14;
                } else {
                    i11 += min;
                }
            }
            int i16 = (this.f86428d + this.f86426c) - min;
            int i17 = (this.f86440j + min) & 7;
            if (i17 != 0) {
                for (int i18 = 0; i18 < ((i16 - 1) >>> 3); i18++) {
                    int i19 = i11 >>> 3;
                    mVar.k0((bArr[i19] & 255) << i17);
                    mVar.e0();
                    mVar.k0((bArr[i19] & 255) >>> (8 - i17));
                    i11 += 8;
                }
                int i20 = i11 >>> 3;
                mVar.k0((bArr[i20] & 255) << i17);
                mVar.e0();
                int i21 = ((i16 + 7) & 7) + 1;
                int i22 = 8 - i17;
                if (i21 > i22) {
                    mVar.i0((bArr[i20] & 255) >>> i22);
                    mVar.e0();
                }
                i11 += i21;
            } else {
                for (int i23 = 0; i23 < ((i16 + 7) >>> 3); i23++) {
                    mVar.i0(bArr[i11 >>> 3]);
                    i11 += 8;
                    mVar.e0();
                }
                i11 -= (8 - (i16 & 7)) & 7;
            }
            if (this.f86417V != 0) {
                mVar.g0(-1, i10);
            }
            mVar.f0(((8 - (this.f86418W & 7)) & 7) + (this.f86404I & 7));
        }
    }

    public final void F(l lVar, l lVar2, l lVar3, int i10) {
        E(lVar, lVar3, lVar2, i10);
        lVar.r(this.f86450o);
        lVar2.r((i10 + this.f86426c + 1) * this.f86450o);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bc A[LOOP:2: B:33:0x00ba->B:34:0x00bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void F0(l lVar, l lVar2, l lVar3, b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long i15;
        int i16;
        int i17;
        l lVar4 = new l(lVar3);
        int i18 = C1613a.f86469a[bVar.ordinal()];
        int i19 = 0;
        if (i18 == 1) {
            lVar.A(0, this.f86450o);
            i10 = this.f86450o;
            i11 = this.f86444l;
        } else if (i18 == 2) {
            lVar.A(0, this.f86452p);
            i11 = this.f86458s;
            i10 = this.f86452p;
        } else {
            if (i18 != 3) {
                if (i18 != 4) {
                    throw new IllegalArgumentException("Invalid input for vecMatProduct");
                }
                lVar.A(0, this.f86400E);
                i11 = this.f86444l;
                i10 = this.f86400E;
                i13 = this.f86450o;
                i12 = 0;
                while (i12 < i11) {
                    long i20 = lVar2.i(i12);
                    while (i19 < 64) {
                        lVar.R(lVar4, i10, -(i20 & 1));
                        lVar4.r(i13);
                        i20 >>>= 1;
                        i19++;
                    }
                    i12++;
                    i19 = 0;
                }
                i14 = C1613a.f86469a[bVar.ordinal()];
                if (i14 != 1) {
                    if (i14 == 2) {
                        if (this.f86460t == 0) {
                            return;
                        }
                        i15 = lVar2.i(this.f86458s);
                        i16 = this.f86460t;
                    } else if (i14 == 3) {
                        if (this.f86402G == 0) {
                            return;
                        }
                        i15 = lVar2.i(this.f86401F);
                        i16 = this.f86402G;
                    } else if (i14 != 4) {
                        throw new IllegalArgumentException("Invalid input for vecMatProduct");
                    }
                    for (i17 = 0; i17 < i16; i17++) {
                        lVar.R(lVar4, i10, -(i15 & 1));
                        lVar4.r(i13);
                        i15 >>>= 1;
                    }
                    if (bVar != b.M || this.f86399D == 0) {
                        return;
                    }
                    lVar.x(this.f86400E - 1, this.f86420Y);
                    return;
                }
                i15 = lVar2.i(this.f86444l);
                i16 = this.f86446m;
                while (i17 < i16) {
                }
                if (bVar != b.M) {
                    return;
                } else {
                    return;
                }
            }
            lVar.A(0, this.f86450o);
            i10 = this.f86450o;
            i11 = this.f86401F;
        }
        i12 = 0;
        i13 = i10;
        while (i12 < i11) {
        }
        i14 = C1613a.f86469a[bVar.ordinal()];
        if (i14 != 1) {
        }
        i15 = lVar2.i(this.f86444l);
        i16 = this.f86446m;
        while (i17 < i16) {
        }
        if (bVar != b.M) {
        }
    }

    public void G(l lVar, l lVar2, l lVar3) {
        l lVar4 = new l(this.f86466x);
        l lVar5 = new l(this.f86466x);
        l lVar6 = new l((this.f86434g + 1) * this.f86450o);
        l lVar7 = new l();
        int m10 = lVar2.m();
        l lVar8 = new l(this.f86403H);
        l lVar9 = new l(lVar6, this.f86450o);
        lVar6.e(lVar3, this.f86450o);
        lVar6.x(this.f86450o - 1, this.f86429d0);
        for (int i10 = 1; i10 <= this.f86434g; i10++) {
            A0(lVar9, 0, lVar9, -this.f86450o);
            lVar9.r(this.f86450o);
        }
        int i11 = this.f86450o;
        int i12 = this.f86403H;
        if (i11 + i12 != this.f86452p) {
            i12--;
        }
        int i13 = i12;
        lVar8.H(0, lVar3, i11 - 1, i13, 64 - this.f86446m);
        int i14 = this.f86450o;
        if (this.f86403H + i14 != this.f86452p) {
            lVar8.u(i13, lVar3.i((i14 - 1) + i13) >>> this.f86446m);
        }
        J(lVar4, lVar8, lVar2);
        lVar2.r(this.f86468z);
        G0(lVar5, lVar8, lVar2);
        lVar9.b(lVar6);
        o0(lVar4, lVar9, lVar5);
        for (int i15 = 1; i15 < this.f86434g; i15++) {
            G0(lVar5, lVar8, lVar2);
            int i16 = this.f86450o;
            lVar5.A(i16, this.f86467y - i16);
            lVar7.b(lVar9);
            U(lVar5, lVar2, lVar7, i15);
            r0(lVar5, 0, lVar5);
            o0(lVar4, lVar7, lVar5);
        }
        G0(lVar5, lVar8, lVar2);
        lVar7.b(lVar9);
        if (this.f86436h != 0) {
            int i17 = this.f86450o;
            lVar5.A(i17, this.f86467y - i17);
            U(lVar5, lVar2, lVar7, this.f86436h);
            lVar5.P(lVar7, this.f86450o);
            r0(lVar5, 0, lVar5);
        } else {
            lVar5.C(lVar5, lVar7, this.f86450o);
        }
        lVar9.r(this.f86434g * this.f86450o);
        o0(lVar4, lVar9, lVar5);
        r0(lVar, 0, lVar4);
        lVar2.a(m10);
    }

    public final void G0(l lVar, l lVar2, l lVar3) {
        F0(lVar, lVar2, new l(lVar3, this.f86450o), b.V);
        lVar.P(lVar3, this.f86450o);
        lVar3.r(this.f86443k0);
    }

    public final void H(l lVar, l lVar2, m mVar, m mVar2) {
        m mVar3 = new m(mVar2);
        I(lVar, lVar2, mVar);
        if (this.f86399D < 8) {
            lVar.u(this.f86398C, 0L);
        }
        for (int i10 = this.f86399D - this.f86405J; i10 < this.f86399D; i10++) {
            lVar.J(this.f86398C, K(lVar2, mVar3) << i10);
            mVar3.r(this.f86410O);
        }
    }

    public final void I(l lVar, l lVar2, m mVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        m mVar2;
        int i16;
        int i17 = this.f86438i;
        int i18 = this.f86440j;
        if ((i18 >>> 3) != 0) {
            i18 = (i18 >>> 3) << 3;
        }
        int i19 = i18;
        int i20 = (i19 & 7) != 0 ? (i19 >>> 3) + 1 : i19 >>> 3;
        int i21 = (i20 >>> 3) + ((i20 & 7) != 0 ? 1 : 0);
        m mVar3 = new m(mVar);
        System.arraycopy(mVar3.j(), 0, lVar.j(), lVar.m(), i21);
        mVar3.f0(i20);
        int i22 = 0;
        while (true) {
            i10 = this.f86458s;
            if (i22 >= i10) {
                break;
            }
            int i23 = i17;
            long i24 = lVar2.i(i22);
            int i25 = 0;
            while (i25 < 64) {
                if ((i24 & 1) != 0) {
                    lVar.O(0, mVar3, 0, i21);
                    mVar3.f0(i20);
                    i13 = i22;
                    i14 = i25;
                    m mVar4 = mVar3;
                    i15 = i21;
                    g(lVar, mVar3, i25 + 1, 64, i24 >>> 1, i20, i21);
                    int i26 = i13 + 1;
                    while (true) {
                        i16 = this.f86458s;
                        if (i26 >= i16) {
                            break;
                        }
                        g(lVar, mVar4, 0, 64, lVar2.i(i26), i20, i15);
                        i26++;
                    }
                    if (this.f86460t != 0) {
                        l(lVar, mVar4, 0, lVar2.i(i16), i20, i15);
                    }
                    mVar2 = mVar4;
                } else {
                    i13 = i22;
                    i14 = i25;
                    i15 = i21;
                    mVar2 = mVar3;
                    mVar2.f0(i23 * i20);
                }
                i24 >>>= 1;
                i25 = i14 + 1;
                i23--;
                mVar3 = mVar2;
                i21 = i15;
                i22 = i13;
            }
            i22++;
            i17 = i23;
            i21 = i21;
        }
        int i27 = i21;
        m mVar5 = mVar3;
        if (this.f86460t != 0) {
            int i28 = i17;
            long i29 = lVar2.i(i10);
            int i30 = 0;
            while (i30 < this.f86460t) {
                if ((i29 & 1) != 0) {
                    int i31 = i27;
                    lVar.O(0, mVar5, 0, i31);
                    mVar5.f0(i20);
                    i11 = i31;
                    i12 = i30;
                    l(lVar, mVar5, i30 + 1, i29 >>> 1, i20, i11);
                } else {
                    i11 = i27;
                    i12 = i30;
                    mVar5.f0(i28 * i20);
                }
                i29 >>>= 1;
                i30 = i12 + 1;
                i28--;
                i27 = i11;
            }
        }
        int i32 = i27;
        int i33 = i19 & 63;
        if (i33 != 0) {
            lVar.x(i32 - 1, (1 << i33) - 1);
        }
    }

    public void J(l lVar, l lVar2, l lVar3) {
        l lVar4 = new l(this.f86426c);
        int i10 = this.f86426c;
        int i11 = i10 >>> 6;
        int i12 = i10 & 63;
        int i13 = this.f86424b;
        int i14 = 0;
        int i15 = (i13 >>> 6) + ((i13 & 63) != 0 ? 1 : 0);
        int m10 = lVar3.m();
        l lVar5 = new l(i15);
        int i16 = 0;
        int i17 = 0;
        while (i16 < i11) {
            i17 = lVar4.I(lVar2.i(i16), i17, 64);
            i16++;
        }
        if (i12 != 0) {
            lVar4.I(lVar2.i(i16), i17, i12);
        }
        lVar.e(lVar3, i15);
        lVar3.r(i15);
        while (i14 < this.f86426c) {
            lVar5.e(lVar3, i15);
            lVar3.r(i15);
            int i18 = i14 + 1;
            int i19 = i18;
            while (i19 < this.f86426c - 3) {
                lVar5.S(lVar3, i15, lVar4.i(i19));
                lVar5.S(lVar3, i15, lVar4.i(i19 + 1));
                lVar5.S(lVar3, i15, lVar4.i(i19 + 2));
                lVar5.S(lVar3, i15, lVar4.i(i19 + 3));
                i19 += 4;
            }
            while (i19 < this.f86426c) {
                lVar5.S(lVar3, i15, lVar4.i(i19));
                i19++;
            }
            lVar.R(lVar5, i15, lVar4.i(i14));
            i14 = i18;
        }
        lVar3.a(m10);
    }

    public final long K(l lVar, m mVar) {
        int i10;
        m mVar2 = new m(mVar);
        long h10 = lVar.h();
        long j10 = 0;
        for (int i11 = 0; i11 < 64; i11++) {
            if ((1 & (h10 >>> i11)) != 0) {
                j10 ^= mVar2.i(i11) & h10;
            }
        }
        mVar2.r(64);
        int i12 = 1;
        while (true) {
            int i13 = this.f86452p;
            if (i12 >= i13) {
                return j.e(j10);
            }
            int i14 = i12 + 1;
            if (i13 != i14 || (i10 = this.f86460t) == 0) {
                i10 = 64;
            }
            long i15 = lVar.i(i12);
            for (int i16 = 0; i16 < i10; i16++) {
                if (((i15 >>> i16) & 1) != 0) {
                    j10 ^= mVar2.l(0, lVar, 0, i14);
                }
                mVar2.r(i14);
            }
            i12 = i14;
        }
    }

    public void L(l lVar, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        l lVar2 = new l(this.f86450o);
        l lVar3 = new l(this.f86450o);
        l lVar4 = new l();
        l lVar5 = new l();
        int i15 = i10 - 1;
        int b10 = j.b(i15);
        int i16 = b10;
        while (true) {
            i11 = 0;
            if (i16 <= 1) {
                break;
            }
            int i17 = i16 << 1;
            int i18 = i10 / i17;
            int max = Math.max(0, (i10 - (i17 * i18)) - i16);
            lVar4.b(lVar);
            lVar5.c(lVar, this.f86450o * i16);
            int i19 = 0;
            while (i19 < i18) {
                Q(lVar4, lVar5, lVar3, i16, 1);
                lVar4.r(this.f86450o * i16);
                lVar5.r(this.f86450o * i16);
                i19++;
                i18 = i18;
            }
            Q(lVar4, lVar5, lVar3, max, 1);
            int i20 = b10;
            while (i20 > i16) {
                while (i11 < i10 - i20) {
                    if ((i11 & i16) == 0) {
                        lVar5.c(lVar, (i11 + i16) * this.f86450o);
                        i12 = i20;
                        i13 = i11;
                        i14 = i16;
                        w(lVar2, lVar5, lVar, lVar4, lVar3, i12, i13);
                        lVar5.e(lVar2, this.f86450o);
                    } else {
                        i12 = i20;
                        i13 = i11;
                        i14 = i16;
                    }
                    i11 = i13 + 1;
                    i20 = i12;
                    i16 = i14;
                }
                i20 >>>= 1;
            }
            i16 >>>= 1;
        }
        lVar4.b(lVar);
        lVar5.c(lVar, this.f86450o);
        Q(lVar4, lVar5, lVar3, i15, 2);
        lVar5.c(lVar, this.f86450o);
        while (b10 > 1) {
            int i21 = i11;
            while (i21 < i10 - b10) {
                w(lVar2, lVar5, lVar, lVar4, lVar3, b10, i21);
                lVar5.e(lVar2, this.f86450o);
                lVar5.r(this.f86450o << 1);
                i21 += 2;
            }
            b10 >>>= 1;
            i11 = i21;
        }
    }

    public void M(l lVar, l lVar2) {
        l lVar3 = new l(this.f86450o);
        l lVar4 = new l(this.f86450o);
        int m10 = lVar2.m();
        A0(lVar3, 0, lVar2, this.f86450o);
        f0(lVar, lVar3, 0);
        k0(lVar3, lVar2, lVar);
        O(lVar4, lVar3);
        lVar2.r(this.f86450o);
        k0(lVar, lVar4, lVar2);
        int i10 = this.f86450o;
        lVar.B(i10, lVar, 0, lVar2, 0, i10);
        lVar2.a(m10);
    }

    public final void N(l lVar, l lVar2, int i10) {
        int i11;
        int Z10;
        int i12;
        if (i10 == 1) {
            lVar.e(lVar2, this.f86450o);
            return;
        }
        if ((this.f86424b & 1) != 0 && i10 == 2) {
            M(lVar, lVar2);
            return;
        }
        int i13 = (i10 << 1) - 1;
        l lVar3 = new l(this.f86450o * i13);
        l lVar4 = new l(this.f86450o * i10);
        int i14 = i10 + 1;
        l lVar5 = new l(this.f86450o * i14);
        l lVar6 = new l(this.f86450o);
        while (true) {
            lVar3.A(0, this.f86450o * i13);
            lVar4.A(0, this.f86450o * i10);
            do {
                lVar4.g(this.f86450o, this.f86422a, this.f86431e0);
                lVar4.x((this.f86450o << 1) - 1, this.f86429d0);
                i11 = this.f86450o;
            } while (lVar4.p(i11, i11) != 0);
            lVar5.e(lVar2, this.f86450o * i14);
            D0(lVar4, lVar3, lVar5, i10);
            Z10 = Z(lVar5, i10, lVar4, lVar4.t(i10 - 1, 1, this.f86450o));
            i12 = this.f86433f0;
            if (Z10 != 0 && Z10 != i10) {
                break;
            }
        }
        if (i12 != 0) {
            lVar4.V(lVar5);
        }
        f0(lVar6, lVar5, this.f86450o * Z10);
        int i15 = this.f86450o;
        lVar5.w(Z10 * i15, i15);
        S(lVar5, lVar6, Z10 - 1);
        z(lVar2, i10, lVar5, Z10);
        N(lVar, lVar5, Z10);
        N(new l(lVar, this.f86450o * Z10), new l(lVar2, this.f86450o * Z10), i10 - Z10);
    }

    public void O(l lVar, l lVar2) {
        l lVar3 = new l(this.f86450o);
        int i10 = (this.f86424b + 1) >>> 1;
        lVar.e(lVar2, this.f86450o);
        int i11 = 1;
        for (int i12 = this.f86455q0; i12 != -1; i12--) {
            int i13 = i11 << 1;
            B0(lVar3, lVar);
            for (int i14 = 1; i14 < i13; i14++) {
                B0(lVar3, lVar3);
            }
            lVar.P(lVar3, this.f86450o);
            i11 = i10 >>> i12;
            if ((i11 & 1) != 0) {
                B0(lVar3, lVar);
                B0(lVar, lVar3);
                lVar.P(lVar2, this.f86450o);
            }
        }
    }

    public final void P(l lVar, int i10, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            lVar.y(j10);
            lVar.K(1 << i12);
            j10 = (j10 << 1) + 1;
            lVar.r(i10);
        }
    }

    public final void Q(l lVar, l lVar2, l lVar3, int i10, int i11) {
        int i12 = this.f86450o * i11;
        int i13 = 0;
        while (i13 < i10) {
            a(lVar, lVar2, lVar3);
            lVar.r(i12);
            lVar2.r(i12);
            i13 += i11;
        }
    }

    public final void R(l lVar, o.a aVar) {
        for (int i10 = 1; i10 < this.f86423a0; i10++) {
            lVar.r(aVar.f86588b[i10]);
            l lVar2 = aVar.f86587a;
            int i11 = this.f86450o;
            lVar.d(0, lVar2, i10 * i11, i11);
        }
    }

    public final void S(l lVar, l lVar2, int i10) {
        l lVar3 = new l(lVar, this.f86450o * i10);
        while (i10 != -1) {
            k0(lVar3, lVar3, lVar2);
            lVar3.r(-this.f86450o);
            i10--;
        }
    }

    public final void T(l lVar, l lVar2, l lVar3, int i10, int i11) {
        int i12 = this.f86450o * i10;
        while (i10 < i11) {
            n0(lVar, lVar2, lVar3, i12);
            lVar.r(this.f86450o);
            i10++;
            i12 += this.f86450o;
        }
    }

    public void U(l lVar, l lVar2, l lVar3, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f86457r0.I(lVar, lVar2, lVar3);
            lVar2.r(this.f86450o);
            lVar3.r(this.f86450o);
        }
    }

    public final int V(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        bArr[i10] = (byte) (bArr2[i11] & 3);
        int i13 = 2;
        for (int i14 = 2; i14 < i12; i14++) {
            int i15 = this.f86438i;
            i13 = u0(bArr, bArr2, i14, i10, i11, i13, i15 - 1, i15 - i14);
        }
        return i13;
    }

    public final int W(l lVar, m mVar, int i10) {
        int i11 = 0;
        int i12 = 1;
        while (i11 < i10) {
            int v02 = v0(lVar, mVar, i12, i11, 64);
            w0(lVar, mVar, v02, i11);
            i11++;
            mVar.r(i11);
            lVar.r(i11);
            i12 = v02 + (i11 << 6);
        }
        return i12;
    }

    public final void X(l lVar, int i10, int i11, o.a aVar, l lVar2) {
        while (i10 < i11) {
            C0(lVar, this.f86432f - 1);
            int i12 = this.f86432f;
            D(lVar, (i12 - 1) << 1, (i12 - 1) << 1, i12, aVar, lVar2);
            i10++;
        }
    }

    public final void Y(l lVar, o.a aVar, l lVar2) {
        l lVar3 = new l();
        l lVar4 = new l(this.f86432f * this.f86450o);
        l lVar5 = new l();
        l lVar6 = new l(((this.f86451o0 * this.f86432f) + this.f86447m0) * this.f86450o);
        int i10 = (this.f86447m0 * this.f86449n0) - this.f86432f;
        l lVar7 = new l(lVar6, this.f86450o * i10);
        lVar7.e(lVar2, this.f86450o);
        R(lVar7, aVar);
        int i11 = i10 - 1;
        D(lVar6, i11 + this.f86432f, i11, 0, aVar, lVar2);
        int i12 = this.f86449n0 + 1;
        while (true) {
            int i13 = this.f86432f;
            if (i12 >= i13) {
                break;
            }
            lVar7.c(lVar6, i13 * this.f86450o);
            lVar7.A(0, this.f86447m0 * this.f86450o);
            int i14 = this.f86447m0;
            int i15 = this.f86450o;
            lVar7.d(i14 * i15, lVar6, 0, this.f86432f * i15);
            lVar6.b(lVar7);
            int i16 = this.f86447m0;
            D(lVar6, this.f86432f + (i16 - 1), i16 - 1, 0, aVar, lVar2);
            i12++;
        }
        lVar6.o();
        int i17 = (1 << this.f86434g) - this.f86449n0;
        int i18 = this.f86432f;
        int i19 = this.f86450o;
        lVar.d(0, lVar6, i17 * i18 * i19, i18 * i19);
        int i20 = 0;
        while (true) {
            int i21 = this.f86424b;
            int i22 = this.f86434g;
            int i23 = this.f86445l0;
            if (i20 >= ((i21 - i22) - i23) / i23) {
                X(lVar, 0, (i21 - i22) % i23, aVar, lVar2);
                return;
            }
            g0(lVar4, lVar);
            for (int i24 = 1; i24 < this.f86445l0; i24++) {
                g0(lVar4, lVar4);
            }
            lVar5.c(lVar4, this.f86449n0 * this.f86450o);
            lVar7.b(lVar6);
            lVar3.b(lVar);
            for (int i25 = 0; i25 < this.f86432f; i25++) {
                k0(lVar3, lVar7, lVar5);
                lVar3.r(this.f86450o);
                lVar7.r(this.f86450o);
            }
            int i26 = this.f86449n0;
            while (true) {
                i26++;
                if (i26 >= this.f86432f) {
                    break;
                }
                lVar5.r(this.f86450o);
                lVar3.b(lVar);
                for (int i27 = 0; i27 < this.f86432f; i27++) {
                    m0(lVar3, lVar7, lVar5);
                    lVar3.r(this.f86450o);
                    lVar7.r(this.f86450o);
                }
            }
            for (int i28 = 0; i28 < this.f86449n0; i28++) {
                int i29 = this.f86447m0 * i28;
                int i30 = this.f86450o;
                lVar.N(i29 * i30, lVar4, i28 * i30, i30);
            }
            i20++;
        }
    }

    public final int Z(l lVar, int i10, l lVar2, int i11) {
        int C10;
        l lVar3 = new l(this.f86450o);
        this.f86433f0 = 0;
        l lVar4 = lVar;
        l lVar5 = lVar2;
        int i12 = i10;
        while (i11 != 0) {
            if ((i11 << 1) > i12) {
                C10 = A(lVar4, i12, lVar5, i11);
            } else {
                f0(lVar3, lVar5, this.f86450o * i11);
                int i13 = this.f86450o;
                lVar5.w(i11 * i13, i13);
                S(lVar5, lVar3, i11 - 1);
                C10 = C(lVar4, i12, lVar5, i11);
            }
            this.f86433f0 = 1 - this.f86433f0;
            l lVar6 = lVar4;
            lVar4 = lVar5;
            lVar5 = lVar6;
            int i14 = i11;
            i11 = C10;
            i12 = i14;
        }
        return i12;
    }

    public final void a(l lVar, l lVar2, l lVar3) {
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        for (int i10 = this.f86450o - 1; i10 > 0; i10--) {
            j11 |= j.d(lVar2.i(i10) ^ lVar.i(i10));
            j12 += j11;
        }
        int i11 = 0;
        while (true) {
            int i12 = this.f86450o;
            if (i11 >= i12) {
                lVar3.D(lVar, lVar2, -j10, i12);
                return;
            } else {
                j10 |= (-j.c(i11 ^ j12)) & j.a(lVar2.i(i11), lVar.i(i11));
                i11++;
            }
        }
    }

    public void a0(l lVar, l lVar2) {
        l lVar3 = new l(this.f86450o);
        l lVar4 = new l((this.f86434g + 1) * (this.f86426c + 1) * this.f86450o);
        l lVar5 = new l(lVar2, this.f86468z);
        for (int i10 = 0; i10 <= this.f86434g; i10++) {
            for (int i11 = 0; i11 <= this.f86426c; i11++) {
                int i12 = ((this.f86434g + 1) * i11) + i10;
                int i13 = this.f86450o;
                lVar4.d(i12 * i13, lVar5, 0, i13);
                lVar5.r(this.f86450o);
            }
            lVar5.r(this.f86450o * i10);
        }
        l lVar6 = new l(this.f86435g0 * (this.f86424b - 1) * this.f86450o);
        for (int i14 = 1; i14 < this.f86424b; i14++) {
            lVar6.u(i14 >>> 6, 1 << (i14 & 63));
            for (int i15 = 0; i15 < this.f86434g; i15++) {
                A0(lVar6, this.f86450o, lVar6, 0);
                lVar6.r(this.f86450o);
            }
            lVar6.r(this.f86450o);
        }
        lVar6.o();
        lVar.e(lVar2, this.f86450o);
        lVar2.r(this.f86468z);
        lVar.r(this.f86450o);
        l lVar7 = new l(this.f86434g * this.f86424b * this.f86450o);
        z0(lVar7, lVar2, lVar6);
        l lVar8 = new l(lVar7);
        l lVar9 = new l(lVar7);
        lVar.e(lVar9, this.f86450o);
        lVar9.r(this.f86450o);
        lVar.M(lVar9, this.f86450o, this.f86434g - 1);
        lVar5.b(lVar4);
        lVar.L(lVar5, this.f86450o, this.f86434g + 1);
        l lVar10 = new l(lVar6, this.f86450o);
        int i16 = 1;
        while (i16 < this.f86424b) {
            E(lVar, lVar10, lVar8, this.f86434g);
            lVar10.r(this.f86435g0 * this.f86450o);
            lVar.L(lVar9, this.f86450o, this.f86434g);
            i16++;
        }
        while (i16 < this.f86438i) {
            lVar.e(lVar5, this.f86450o);
            lVar5.r(this.f86450o);
            lVar.L(lVar5, this.f86450o, this.f86434g);
            i16++;
        }
        l lVar11 = new l(lVar6, this.f86450o);
        l lVar12 = new l(this.f86466x);
        int i17 = 1;
        while (i17 < this.f86424b) {
            lVar8.r(this.f86434g * this.f86450o);
            lVar10.b(lVar11);
            lVar9.b(lVar8);
            this.f86457r0.H(this.f86461t0, lVar4, new l(lVar10, -this.f86450o));
            int i18 = 1;
            while (i18 <= this.f86434g) {
                int i19 = this.f86450o;
                l lVar13 = lVar10;
                l lVar14 = lVar9;
                lVar3.B(0, lVar9, 0, lVar4, i18 * i19, i19);
                o0(this.f86461t0, lVar3, lVar13);
                lVar14.r(this.f86450o);
                lVar13.r(this.f86450o);
                i18++;
                lVar9 = lVar14;
                lVar10 = lVar13;
                lVar11 = lVar11;
                i17 = i17;
                lVar12 = lVar12;
            }
            l lVar15 = lVar12;
            l lVar16 = lVar11;
            l lVar17 = lVar10;
            l lVar18 = lVar9;
            lVar17.r(this.f86450o);
            r0(lVar, 0, this.f86461t0);
            lVar.r(this.f86450o);
            int i20 = i17 + 1;
            int i21 = i20;
            while (i21 < this.f86424b) {
                int m10 = lVar17.m();
                int m11 = lVar8.m();
                int m12 = lVar16.m();
                int m13 = lVar18.m();
                l0(lVar15, lVar17, lVar8);
                U(lVar15, lVar17, lVar8, this.f86434g - 1);
                int i22 = i20;
                l lVar19 = lVar16;
                U(lVar15, lVar19, lVar18, this.f86434g);
                r0(lVar, 0, lVar15);
                lVar17.a(m10 + (this.f86435g0 * this.f86450o));
                lVar8.a(m11);
                lVar19.a(m12);
                lVar18.a(m13 + (this.f86434g * this.f86450o));
                lVar.r(this.f86450o);
                i21++;
                lVar3 = lVar3;
                lVar16 = lVar19;
                i20 = i22;
            }
            int i23 = i20;
            l lVar20 = lVar16;
            l lVar21 = lVar3;
            lVar5.b(lVar4);
            lVar20.r(-this.f86450o);
            while (i21 < this.f86438i) {
                lVar5.r((this.f86434g + 1) * this.f86450o);
                E(lVar, lVar20, lVar5, this.f86434g + 1);
                lVar.r(this.f86450o);
                i21++;
            }
            int i24 = this.f86450o;
            lVar20.r(i24 + (this.f86435g0 * i24));
            lVar9 = lVar18;
            lVar10 = lVar17;
            lVar11 = lVar20;
            lVar12 = lVar15;
            i17 = i23;
            lVar3 = lVar21;
        }
        lVar2.r(this.f86450o - this.f86468z);
        lVar.e(lVar2, this.f86450o * (this.f86454q - 1));
        lVar.o();
        lVar2.o();
    }

    public final void b(l lVar, l lVar2, l lVar3, int i10, int i11, int i12, int i13, boolean z10) {
        for (int i14 = 0; i14 < i10; i14++) {
            l lVar4 = new l(lVar3);
            int i15 = 1;
            while (i15 <= i11) {
                e(lVar, lVar2, lVar4, 64, i13, i15);
                i15++;
            }
            if (z10) {
                e(lVar, lVar2, lVar4, i12, i13, i15);
            }
            lVar2.r(i13);
        }
    }

    public final void b0(l lVar, int i10, int i11, byte[] bArr, int i12, int i13, byte[] bArr2) {
        this.f86441j0.update(bArr, i12, i13);
        this.f86441j0.c(bArr2, 0);
        lVar.f(i10, bArr2, 0, i11);
    }

    public final void c(l lVar, l lVar2, l lVar3, l lVar4, int i10, int i11) {
        while (i10 < i11) {
            lVar.A(0, this.f86450o);
            lVar2.b(lVar3);
            i(lVar, lVar4, lVar2, 0, this.f86458s);
            lVar4.r(this.f86452p);
            i10++;
        }
    }

    public final void c0(int[] iArr) {
        iArr[1] = this.f86450o;
        int i10 = 2;
        int i11 = 0;
        while (i11 < this.f86434g) {
            if (!this.f86396A || (1 << i11) + 1 <= this.f86448n) {
                iArr[i10] = this.f86450o;
                i10 = t0(iArr, i10 + 1, 0, i11);
            } else {
                if (i11 != 0) {
                    iArr[i10] = this.f86450o << 1;
                    i10++;
                }
                i10 = t0(iArr, i10, 1, i11);
            }
            i11++;
        }
        int i12 = this.f86436h;
        if (i12 != 0) {
            if (!this.f86396A || (1 << i11) + 1 <= this.f86448n) {
                iArr[i10] = this.f86450o;
                t0(iArr, i10 + 1, 0, i12 - 1);
            } else {
                iArr[i10] = this.f86450o << 1;
                t0(iArr, i10 + 1, 1, i12 - 1);
            }
        }
    }

    public final void d(l lVar, l lVar2, l lVar3, int i10, int i11) {
        while (i10 < i11) {
            i(lVar, lVar2, lVar3, 0, this.f86458s);
            i10++;
        }
    }

    public int d0(l lVar, l lVar2, l lVar3) {
        l lVar4 = new l(this.f86452p);
        l lVar5 = new l();
        l lVar6 = new l();
        l lVar7 = new l(this.f86438i * this.f86450o);
        lVar.e(lVar2, this.f86450o);
        l lVar8 = new l(lVar3);
        l lVar9 = new l(lVar7);
        for (int i10 = 0; i10 < this.f86438i; i10++) {
            G(lVar9, lVar2, lVar8);
            lVar9.r(this.f86450o);
            lVar8.r(this.f86452p);
        }
        lVar8.b(lVar3);
        lVar9.b(lVar7);
        int i11 = 0;
        while (i11 < this.f86438i) {
            lVar.r(this.f86450o);
            lVar9.P(lVar2, this.f86450o);
            lVar.e(lVar9, this.f86450o);
            lVar5.b(lVar9);
            lVar6.b(lVar8);
            int i12 = i11 + 1;
            for (int i13 = i12; i13 < this.f86438i; i13++) {
                lVar.r(this.f86450o);
                lVar5.r(this.f86450o);
                lVar6.r(this.f86452p);
                lVar4.C(lVar8, lVar6, this.f86452p);
                G(lVar, lVar2, lVar4);
                lVar.T(0, lVar9, 0, lVar5, 0, this.f86450o);
            }
            lVar9.r(this.f86450o);
            lVar8.r(this.f86452p);
            i11 = i12;
        }
        lVar.o();
        return 0;
    }

    public final void e(l lVar, l lVar2, l lVar3, int i10, int i11, int i12) {
        int min = Math.min(i11, i12);
        lVar.v(0L);
        for (int i13 = 0; i13 < i10; i13++) {
            lVar.K(j.e(lVar2.l(0, lVar3, 0, min)) << i13);
            lVar3.r(i12);
        }
        lVar.s();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e0(l lVar, l lVar2, l lVar3, b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        l lVar4;
        long j10;
        int i15;
        int i16;
        l lVar5 = new l(lVar2);
        l lVar6 = new l(lVar2);
        l lVar7 = new l(lVar3);
        int i17 = C1613a.f86469a[bVar.ordinal()];
        int i18 = 1;
        if (i17 == 1) {
            lVar.A(0, this.f86427c0);
            i10 = this.f86444l;
            i11 = this.f86424b - 1;
            i12 = this.f86450o;
            i13 = this.f86446m;
            i14 = this.f86464v;
        } else {
            if (i17 != 2) {
                throw new IllegalArgumentException("Invalid Input");
            }
            i10 = this.f86458s;
            i11 = this.f86438i - 1;
            i12 = this.f86452p;
            i13 = this.f86460t;
            i14 = this.f86462u;
        }
        int i19 = i10;
        int i20 = i11;
        int i21 = i12;
        int i22 = i13;
        int i23 = i14;
        l lVar8 = new l(lVar);
        l lVar9 = new l(lVar);
        int i24 = 0;
        int i25 = 0;
        while (i24 < i19) {
            int i26 = i24;
            int i27 = i21;
            i25 = h0(lVar8, lVar9, lVar5, lVar6, i25, i26, 64, i20, i27);
            lVar6.s();
            i24 = i26 + 1;
            lVar9 = lVar9;
            lVar8 = lVar8;
            i22 = i22;
            i18 = i18;
            i23 = i23;
            i19 = i19;
            i21 = i27;
        }
        l lVar10 = lVar9;
        l lVar11 = lVar8;
        int i28 = i23;
        int i29 = i22;
        int i30 = i21;
        int i31 = i18;
        int i32 = i24;
        if (i29 <= i31) {
            lVar4 = lVar11;
            j10 = 1;
            i15 = i30;
            if (i29 == i31) {
                lVar4.u(i32, 1L);
            }
            lVar7.r(i28);
            i16 = i20;
            while (i16 > 0) {
                lVar7.r((-1) - (i16 >>> 6));
                lVar4.r(-i15);
                l lVar12 = lVar10;
                lVar12.b(lVar);
                for (int i33 = 0; i33 < i16; i33++) {
                    lVar12.R(lVar4, i15, -((lVar7.i(i33 >>> 6) >>> (i33 & 63)) & j10));
                    lVar12.r(i15);
                }
                i16--;
                lVar10 = lVar12;
            }
        }
        int i34 = i29 - i31;
        j10 = 1;
        h0(lVar11, lVar10, lVar5, lVar6, i25, i32, i34, i20, i30);
        lVar4 = lVar11;
        lVar4.J(i32, 1 << i34);
        i15 = i30;
        lVar4.r(i15);
        lVar7.r(i28);
        i16 = i20;
        while (i16 > 0) {
        }
    }

    public final long f(l lVar, m mVar, int i10, int i11, long j10, int i12, int i13) {
        while (i10 < i11) {
            if ((1 & j10) != 0) {
                lVar.O(0, mVar, 0, i13);
            }
            mVar.f0(i12);
            j10 >>>= 1;
            i10++;
        }
        return j10;
    }

    public final void f0(l lVar, l lVar2, int i10) {
        int m10 = lVar2.m();
        lVar2.r(i10);
        l lVar3 = new l(this.f86450o);
        lVar.e(lVar2, this.f86450o);
        for (int i11 = this.f86453p0 - 1; i11 != -1; i11--) {
            int i12 = (this.f86424b - 1) >>> (i11 + 1);
            B0(lVar3, lVar);
            for (int i13 = 1; i13 < i12; i13++) {
                B0(lVar3, lVar3);
            }
            k0(lVar, lVar, lVar3);
            if ((((this.f86424b - 1) >>> i11) & 1) != 0) {
                B0(lVar3, lVar);
                k0(lVar, lVar2, lVar3);
            }
        }
        B0(lVar, lVar);
        lVar2.a(m10);
    }

    public final void g(l lVar, m mVar, int i10, int i11, long j10, int i12, int i13) {
        int i14 = i10;
        long j11 = j10;
        while (i14 < i11 - 3) {
            j11 = f(lVar, mVar, 0, 4, j11, i12, i13);
            i14 += 4;
        }
        f(lVar, mVar, i14, i11, j11, i12, i13);
    }

    public final void g0(l lVar, l lVar2) {
        for (int i10 = 0; i10 < this.f86432f; i10++) {
            int i11 = this.f86450o;
            A0(lVar, i10 * i11, lVar2, i11 * i10);
        }
    }

    public final void h(l lVar, l lVar2, long j10, int i10, int i11) {
        while (i10 < i11) {
            lVar2.S(lVar, this.f86450o, -(1 & j10));
            j10 >>>= 1;
            i10++;
        }
    }

    public final int h0(l lVar, l lVar2, l lVar3, l lVar4, int i10, int i11, int i12, int i13, int i14) {
        int i15 = 0;
        int i16 = i10;
        while (i15 < i12) {
            lVar.J(i11, 1 << i15);
            lVar2.b(lVar);
            lVar3.b(lVar4);
            for (int i17 = i16; i17 < i13; i17++) {
                lVar2.r(i14);
                lVar3.r((i17 >>> 6) + 1);
                lVar2.R(lVar, i11 + 1, -((lVar3.h() >>> i15) & 1));
            }
            lVar.r(i14);
            lVar4.r(i11 + 1);
            i15++;
            i16++;
        }
        return i16;
    }

    public final void i(l lVar, l lVar2, l lVar3, int i10, int i11) {
        while (i10 < i11) {
            h(lVar3, lVar, lVar2.i(i10), 0, 64);
            i10++;
        }
        if (this.f86460t != 0) {
            h(lVar3, lVar, lVar2.i(i11), 0, this.f86460t);
        }
        lVar.r(this.f86450o);
    }

    public final void i0(l lVar, l lVar2, l lVar3, b bVar) {
        int i10;
        boolean z10;
        int i11;
        int m10 = lVar.m();
        int i12 = C1613a.f86469a[bVar.ordinal()];
        if (i12 == 1) {
            i10 = this.f86444l;
            z10 = true;
            i11 = this.f86446m;
        } else {
            if (i12 != 2) {
                throw new IllegalArgumentException("Invalid parameter for MULMATRICESLU_GF2");
            }
            int i13 = this.f86458s;
            int i14 = this.f86460t;
            i10 = i13;
            i11 = i14;
            z10 = i14 != 0;
        }
        l lVar4 = new l(lVar2);
        int i15 = 1;
        while (i15 <= i10) {
            b(lVar, lVar4, lVar3, 64, i10, i11, i15, z10);
            i15++;
        }
        b(lVar, lVar4, lVar3, i11, i10, i11, i15, z10);
        lVar.a(m10);
    }

    public void j(l lVar, l lVar2) {
        l lVar3 = new l();
        int i10 = this.f86438i;
        l lVar4 = new l(i10 * i10 * this.f86450o);
        l lVar5 = new l(lVar, this.f86450o);
        l lVar6 = new l(lVar4);
        l lVar7 = new l(lVar2);
        int i11 = 0;
        while (true) {
            int i12 = 64;
            if (i11 >= this.f86438i) {
                break;
            }
            lVar3.b(lVar5);
            int i13 = 0;
            while (i13 < this.f86458s) {
                int i14 = 0;
                while (i14 < i12) {
                    int i15 = i13;
                    int i16 = i14;
                    h(lVar3, lVar6, lVar7.h() >>> i14, i16, 64);
                    i(lVar6, lVar7, lVar3, 1, this.f86458s - i15);
                    i14 = i16 + 1;
                    i12 = i12;
                    i11 = i11;
                    i13 = i15;
                }
                lVar7.s();
                i13++;
            }
            int i17 = i11;
            if (this.f86460t != 0) {
                for (int i18 = 0; i18 < this.f86460t; i18++) {
                    h(lVar3, lVar6, lVar7.h() >>> i18, i18, this.f86460t);
                    lVar6.r(this.f86450o);
                }
                lVar7.s();
            }
            i11 = i17 + 1;
        }
        int i19 = 64;
        lVar5.b(lVar4);
        lVar6.c(lVar, this.f86450o);
        l lVar8 = new l(lVar2);
        int i20 = 0;
        while (i20 < this.f86458s) {
            int i21 = 0;
            while (i21 < i19) {
                lVar7.b(lVar8);
                int i22 = i21;
                int i23 = i20;
                l lVar9 = lVar8;
                c(lVar6, lVar3, lVar5, lVar7, i22, 64);
                for (int i24 = i23 + 1; i24 < this.f86458s; i24++) {
                    c(lVar6, lVar3, lVar5, lVar7, 0, 64);
                }
                int i25 = this.f86460t;
                if (i25 != 0) {
                    c(lVar6, lVar3, lVar5, lVar7, 0, i25);
                }
                lVar5.b(lVar3);
                lVar9.r(this.f86452p);
                i21 = i22 + 1;
                lVar8 = lVar9;
                i20 = i23;
                i19 = 64;
            }
            i20++;
            i19 = 64;
        }
        l lVar10 = lVar8;
        if (this.f86460t != 0) {
            for (int i26 = 0; i26 < this.f86460t; i26++) {
                lVar7.b(lVar10);
                lVar3.b(lVar5);
                c(lVar6, lVar3, lVar5, lVar7, i26, this.f86460t);
                lVar5.b(lVar3);
                lVar10.r(this.f86452p);
            }
        }
        lVar5.b(lVar4);
        lVar6.c(lVar, this.f86450o);
        lVar7.b(lVar2);
        for (int i27 = 0; i27 < this.f86458s; i27++) {
            int i28 = 0;
            while (i28 < 64) {
                lVar6.r(this.f86450o);
                lVar5.r(this.f86438i * this.f86450o);
                lVar3.b(lVar5);
                int i29 = i28 + 1;
                d(lVar6, lVar7, lVar3, i29, 64);
                for (int i30 = i27 + 1; i30 < this.f86458s; i30++) {
                    d(lVar6, lVar7, lVar3, 0, 64);
                }
                int i31 = this.f86460t;
                if (i31 != 0) {
                    d(lVar6, lVar7, lVar3, 0, i31);
                }
                lVar7.r(this.f86452p);
                i28 = i29;
            }
        }
        if (this.f86460t != 0) {
            int i32 = 0;
            while (i32 < this.f86460t - 1) {
                lVar6.r(this.f86450o);
                lVar5.r(this.f86438i * this.f86450o);
                lVar3.b(lVar5);
                i32++;
                d(lVar6, lVar7, lVar3, i32, this.f86460t);
                lVar7.r(this.f86452p);
            }
        }
        lVar.o();
        lVar2.o();
    }

    public void j0(l lVar, l lVar2, int i10, l lVar3) {
        int m10 = lVar2.m();
        lVar2.r(i10);
        this.f86457r0.H(this.f86461t0, lVar2, lVar3);
        lVar2.a(m10);
        r0(lVar, 0, this.f86461t0);
    }

    public final int k(l lVar, o.a aVar, l lVar2) {
        l lVar3 = new l(this.f86416U);
        l lVar4 = new l(((this.f86432f << 1) - 1) * this.f86450o);
        l lVar5 = new l((this.f86432f + 1) * this.f86450o);
        l lVar6 = new l(this.f86450o);
        lVar6.C(aVar.f86587a, lVar2, this.f86450o);
        int i10 = this.f86432f;
        if (i10 <= 34 || (this.f86424b > 196 && i10 < 256)) {
            Y(lVar4, aVar, lVar6);
        } else {
            int i11 = 2 << this.f86434g;
            lVar4.u(this.f86450o * i11, 1L);
            D(lVar4, i11, i11, this.f86432f, aVar, lVar6);
            X(lVar4, this.f86434g + 1, this.f86424b, aVar, lVar6);
        }
        lVar4.J(this.f86450o, 1L);
        int m10 = lVar5.m();
        lVar5.e(aVar.f86587a, this.f86450o);
        R(lVar5, aVar);
        lVar5.a(m10);
        lVar5.u(this.f86432f * this.f86450o, 1L);
        lVar5.P(lVar2, this.f86450o);
        int Z10 = Z(lVar5, this.f86432f, lVar4, lVar4.k(this.f86450o, this.f86432f - 1));
        if (this.f86433f0 != 0) {
            lVar4.V(lVar5);
        }
        if (lVar4.p(0, this.f86450o) == 0) {
            return 0;
        }
        v(lVar5, Z10);
        l lVar7 = new l(this.f86450o * Z10);
        N(lVar7, lVar5, Z10);
        if (Z10 == 1) {
            lVar.e(lVar7, this.f86450o);
        } else {
            L(lVar7, Z10);
            b0(lVar3, 0, this.f86439i0 >>> 3, lVar2.W(this.f86431e0), 0, this.f86431e0, new byte[this.f86439i0 >>> 3]);
            int s02 = (int) s0(lVar3.h(), Z10);
            int i12 = this.f86450o;
            lVar.d(0, lVar7, s02 * i12, i12);
        }
        return Z10;
    }

    public void k0(l lVar, l lVar2, l lVar3) {
        this.f86457r0.H(this.f86461t0, lVar2, lVar3);
        r0(lVar, 0, this.f86461t0);
    }

    public final void l(l lVar, m mVar, int i10, long j10, int i11, int i12) {
        int i13 = this.f86460t;
        if (i13 < 8) {
            f(lVar, mVar, i10, i13, j10, i11, i12);
        } else {
            g(lVar, mVar, i10, i13, j10, i11, i12);
        }
    }

    public void l0(l lVar, l lVar2, l lVar3) {
        this.f86457r0.H(lVar, lVar2, lVar3);
        lVar2.r(this.f86450o);
        lVar3.r(this.f86450o);
    }

    public void m(l lVar, b bVar) {
        int i10;
        int i11;
        int i12 = C1613a.f86469a[bVar.ordinal()];
        int i13 = 1;
        if (i12 == 1) {
            i10 = this.f86444l;
            i11 = this.f86446m;
        } else {
            if (i12 != 2) {
                throw new IllegalArgumentException("");
            }
            i10 = this.f86458s;
            i11 = this.f86460t;
        }
        l lVar2 = new l(lVar);
        while (i13 <= i10) {
            P(lVar2, i13, 64);
            lVar2.s();
            i13++;
        }
        P(lVar2, i13, i11);
    }

    public void m0(l lVar, l lVar2, l lVar3) {
        this.f86457r0.H(this.f86461t0, lVar2, lVar3);
        this.f86459s0.b(lVar.f86543a, lVar.f86544b, this.f86461t0.f86543a);
    }

    public void n(l lVar) {
        int i10 = this.f86450o - 1;
        while (i10 < this.f86425b0) {
            lVar.x(i10, this.f86429d0);
            i10 += this.f86450o;
        }
    }

    public void n0(l lVar, l lVar2, l lVar3, int i10) {
        int m10 = lVar3.m();
        lVar3.r(i10);
        this.f86457r0.H(this.f86461t0, lVar2, lVar3);
        this.f86459s0.b(lVar.f86543a, lVar.f86544b, this.f86461t0.f86543a);
        lVar3.a(m10);
    }

    public void o(byte[] bArr, l lVar) {
        int i10;
        byte[] W10 = lVar.W(lVar.n() << 3);
        System.arraycopy(W10, 0, bArr, 0, this.f86418W);
        int i11 = this.f86438i;
        int i12 = (this.f86452p << 3) + (this.f86404I & 7);
        for (int i13 = 1; i13 < this.f86430e; i13++) {
            int i14 = i11 & 7;
            int min = Math.min(this.f86428d + this.f86426c, (8 - i14) & 7);
            if (i14 != 0) {
                int i15 = this.f86405J;
                if (i15 != 0) {
                    int i16 = i11 >>> 3;
                    bArr[i16] = (byte) ((((W10[i12] & 255) >>> i15) << i14) ^ bArr[i16]);
                    int i17 = this.f86419X;
                    int i18 = min - i17;
                    if (i18 >= 0) {
                        i12++;
                    }
                    if (i18 > 0) {
                        int i19 = i11 + i17;
                        int i20 = i19 >>> 3;
                        bArr[i20] = (byte) (bArr[i20] ^ ((W10[i12] & 255) << (i19 & 7)));
                        i11 = i19 + i18;
                    }
                } else {
                    int i21 = i11 >>> 3;
                    bArr[i21] = (byte) (((W10[i12] & 255) << i14) ^ bArr[i21]);
                }
                i11 += min;
            }
            int i22 = (this.f86428d + this.f86426c) - min;
            int i23 = (this.f86440j + min) & 7;
            if (i23 != 0) {
                for (int i24 = 0; i24 < ((i22 - 1) >>> 3); i24++) {
                    int i25 = (W10[i12] & 255) >>> i23;
                    i12++;
                    bArr[i11 >>> 3] = (byte) (i25 ^ ((W10[i12] & 255) << (8 - i23)));
                    i11 += 8;
                }
                int i26 = i11 >>> 3;
                i10 = i12 + 1;
                byte b10 = (byte) ((W10[i12] & 255) >>> i23);
                bArr[i26] = b10;
                int i27 = ((i22 + 7) & 7) + 1;
                int i28 = 8 - i23;
                if (i27 > i28) {
                    bArr[i26] = (byte) (((byte) ((W10[i10] & 255) << i28)) ^ b10);
                    i10 = i12 + 2;
                }
                i11 += i27;
            } else {
                int i29 = 0;
                while (i29 < ((i22 + 7) >>> 3)) {
                    bArr[i11 >>> 3] = W10[i12];
                    i11 += 8;
                    i29++;
                    i12++;
                }
                i11 -= (8 - (i22 & 7)) & 7;
                i10 = i12;
            }
            i12 = ((8 - (this.f86418W & 7)) & 7) + (this.f86404I & 7) + i10;
        }
    }

    public void o0(l lVar, l lVar2, l lVar3) {
        this.f86457r0.I(lVar, lVar2, lVar3);
    }

    public void p(byte[] bArr, m mVar, byte[] bArr2) {
        s(bArr, bArr2, this.f86405J);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f86456r; i11++) {
            i10 = mVar.l0(bArr, i10, this.f86404I);
            if (this.f86405J != 0) {
                mVar.e0();
            }
        }
    }

    public final void p0(o oVar, l[] lVarArr, byte[] bArr) {
        q0(oVar, bArr);
        c0(oVar.f86582a.f86588b);
        l lVar = new l(oVar.f86583b);
        l lVar2 = new l(this.f86423a0 * this.f86450o);
        l lVar3 = new l(lVar, this.f86468z);
        lVarArr[0] = lVar3;
        lVar.c(lVar3, this.f86443k0);
        l lVar4 = new l(lVar2, this.f86450o * 2);
        int i10 = 0;
        while (true) {
            int i11 = 1;
            if (i10 >= this.f86434g) {
                break;
            }
            if ((1 << i10) + 1 <= this.f86448n || !this.f86396A) {
                i11 = 0;
            }
            int i12 = i10 - i11;
            lVar4.e(lVar, this.f86450o * i12);
            lVar.r(this.f86450o * i12);
            lVar4.r(i12 * this.f86450o);
            i10++;
            lVarArr[i10] = new l(lVar);
            lVar.r(this.f86443k0);
            lVar4.r(this.f86450o);
        }
        int i13 = this.f86436h;
        if (i13 != 0) {
            lVar4.e(lVar, (i13 - ((1 << i10) + 1 > this.f86448n ? 1 : 0)) * this.f86450o);
        }
        oVar.f86582a.f86587a = new l(lVar2);
    }

    public void q(byte[] bArr, m mVar, byte[] bArr2) {
        int i10 = this.f86405J - 1;
        s(bArr, bArr2, i10);
        int i11 = this.f86407L;
        int i12 = this.f86408M;
        int i13 = i11 + (i10 * i12);
        int i14 = i10 * i12;
        int V10 = V(bArr, bArr2, i13, i14, this.f86438i);
        int i15 = this.f86438i;
        u0(bArr, bArr2, i15, i13, i14, V10, i15 - 1, this.f86412Q);
        int i16 = this.f86433f0;
        long j10 = 0;
        for (int i17 = this.f86412Q - 1; i17 >= 0; i17--) {
            j10 ^= ((bArr2[(i16 >>> 3) + i14] >>> (i16 & 7)) & 1) << ((this.f86412Q - 1) - i17);
            i16 += i17;
        }
        int i18 = this.f86407L - 1;
        for (int i19 = 0; i19 < this.f86405J - 1; i19++) {
            i18 += this.f86408M;
            bArr[i18] = (byte) (bArr[i18] ^ (((byte) (j10 >>> (this.f86411P * i19))) << this.f86409N));
        }
        mVar.o();
        int i20 = 0;
        for (int i21 = 0; i21 < this.f86456r; i21++) {
            i20 = mVar.l0(bArr, i20, this.f86404I);
            mVar.e0();
        }
    }

    public final void q0(o oVar, byte[] bArr) {
        int i10 = this.f86425b0 + ((this.f86462u + this.f86464v) << 1);
        oVar.f86586e = new l(this.f86397B + i10 + this.f86427c0);
        Q q10 = new Q(this.f86437h0);
        q10.update(bArr, 0, this.f86465w);
        int i11 = i10 << 3;
        byte[] bArr2 = new byte[i11];
        q10.e(bArr2, 0, i11);
        oVar.f86586e.f(0, bArr2, 0, i11);
        l lVar = new l(oVar.f86586e, i10);
        oVar.f86584c = lVar;
        oVar.f86585d = new l(lVar, this.f86397B);
        l lVar2 = new l(oVar.f86586e);
        oVar.f86583b = lVar2;
        n(lVar2);
        l lVar3 = new l(oVar.f86586e, this.f86425b0);
        l lVar4 = new l(lVar3, this.f86462u);
        b bVar = b.NV;
        m(lVar3, bVar);
        m(lVar4, bVar);
        i0(oVar.f86584c, lVar3, lVar4, bVar);
        lVar3.r(this.f86462u << 1);
        lVar4.c(lVar3, this.f86464v);
        b bVar2 = b.N;
        m(lVar3, bVar2);
        m(lVar4, bVar2);
        i0(oVar.f86585d, lVar3, lVar4, bVar2);
    }

    public void r(byte[] bArr, m mVar) {
        int i10;
        mVar.f0(this.f86404I);
        m mVar2 = new m(mVar);
        int i11 = this.f86456r >>> 3;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f86405J; i13++) {
            mVar2.X(mVar);
            int i14 = 0;
            while (true) {
                if (i14 >= i11) {
                    break;
                }
                int a02 = (mVar2.a0() >>> i13) & 1;
                mVar2.f0(this.f86406K);
                for (int i15 = 1; i15 < 8; i15++) {
                    a02 ^= ((mVar2.a0() >>> i13) & 1) << i15;
                    mVar2.f0(this.f86406K);
                }
                bArr[i12] = (byte) a02;
                i14++;
                i12++;
            }
            if (this.f86409N != 0) {
                long c02 = (mVar2.c0() >>> i13) & 1;
                mVar2.f0(this.f86406K);
                for (i10 = 1; i10 < this.f86409N; i10++) {
                    c02 ^= ((mVar2.c0() >>> i13) & 1) << i10;
                    mVar2.f0(this.f86406K);
                }
                bArr[i12] = (byte) c02;
                i12++;
            }
        }
    }

    public final void r0(l lVar, int i10, l lVar2) {
        this.f86459s0.a(lVar.f86543a, i10 + lVar.m(), lVar2.f86543a);
    }

    public void s(byte[] bArr, byte[] bArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f86407L;
            int i13 = this.f86408M;
            V(bArr, bArr2, i12 + (i11 * i13), i11 * i13, this.f86438i + 1);
        }
    }

    public final long t(l lVar, m mVar) {
        m mVar2 = new m(mVar);
        int i10 = this.f86438i - 1;
        int i11 = i10 >>> 6;
        int i12 = i10 & 63;
        int W10 = W(lVar, mVar2, i11);
        if (i12 != 0) {
            W10 = v0(lVar, mVar2, W10, i11, i12 + 1);
        }
        int i13 = this.f86438i;
        int i14 = this.f86412Q;
        int i15 = i13 - i14;
        int i16 = i15 >>> 6;
        int i17 = i15 & 63;
        if (i17 != 0) {
            int i18 = W10 & 63;
            if (i18 != 0) {
                int i19 = this.f86456r;
                if (((((i19 - i14) + 7) >>> 3) & 7) != 0) {
                    int i20 = (i13 - ((64 - (((i19 - i14) - this.f86460t) & 63)) & 63)) >>> 6;
                    lVar.G(mVar2, i20, W10);
                    lVar.u(i20, mVar2.d0(i20) >>> i18);
                    if (i20 < i16) {
                        int i21 = i20 + 1;
                        long d02 = mVar2.d0(i21);
                        lVar.J(i20, d02 << (64 - i18));
                        lVar.u(i21, d02 >>> i18);
                    } else if (i17 + i18 > 64) {
                        lVar.J(i20, mVar2.d0(i20 + 1) << (64 - i18));
                    }
                } else {
                    lVar.F(mVar2, i16, i18);
                    lVar.u(i16, mVar2.i(i16) >>> i18);
                    if (i17 + i18 > 64) {
                        lVar.J(i16, mVar2.i(i16 + 1) << (64 - i18));
                    }
                }
            } else if (((((this.f86456r - i14) + 7) >>> 3) & 7) != 0) {
                lVar.E(mVar2, i16);
                lVar.u(i16, mVar2.d0(i16));
            } else {
                i16++;
                lVar.E(mVar2, i16);
            }
        } else if (i16 != 0) {
            int i22 = W10 & 63;
            if (i22 != 0) {
                if (((((this.f86456r - i14) + 7) >>> 3) & 7) != 0) {
                    int i23 = i16 - 1;
                    lVar.F(mVar2, i23, i22);
                    lVar.u(i23, mVar2.i(i23) >>> i22);
                    lVar.J(i23, mVar2.d0(i16) << (64 - i22));
                } else {
                    lVar.F(mVar2, i16, i22);
                }
            }
            lVar.E(mVar2, i16);
        }
        return mVar.h() & 1;
    }

    public final int t0(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            iArr[i10] = this.f86450o << i11;
            i11++;
            i10++;
        }
        return i10;
    }

    public final long u(l lVar, m mVar) {
        m mVar2 = new m(mVar);
        int W10 = W(lVar, mVar2, this.f86458s);
        int i10 = this.f86460t;
        if (i10 != 0) {
            v0(lVar, mVar2, W10, this.f86458s, i10 + 1);
        }
        return mVar.h() & 1;
    }

    public final int u0(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, int i14, int i15) {
        while (i14 >= i15) {
            int i16 = (i13 >>> 3) + i11;
            bArr[i16] = (byte) (bArr[i16] ^ (((bArr2[(i10 >>> 3) + i12] >>> (i10 & 7)) & 1) << (i13 & 7)));
            i10 += i14;
            i14--;
            i13++;
        }
        this.f86433f0 = i10;
        return i13;
    }

    public final void v(l lVar, int i10) {
        l lVar2 = new l(this.f86450o);
        int m10 = lVar.m();
        lVar.r(this.f86450o * i10);
        f0(lVar2, lVar, 0);
        lVar.w(0, this.f86450o);
        while (true) {
            i10--;
            if (i10 == -1) {
                lVar.a(m10);
                return;
            } else {
                lVar.r(-this.f86450o);
                k0(lVar, lVar, lVar2);
            }
        }
    }

    public final int v0(l lVar, m mVar, int i10, int i11, int i12) {
        for (int i13 = 1; i13 < i12; i13++) {
            int i14 = i10 & 63;
            if (i14 != 0) {
                lVar.F(mVar, i11, i14);
                lVar.u(i11, mVar.i(i11) >>> i14);
                int i15 = i14 + i13;
                if (i15 > 64) {
                    lVar.J(i11, mVar.i(i11 + 1) << (64 - i14));
                }
                if (i15 >= 64) {
                    mVar.s();
                }
            } else {
                lVar.E(mVar, i11 + 1);
            }
            mVar.r(i11);
            lVar.x(i11, (1 << i13) - 1);
            lVar.r(i11 + 1);
            i10 += (i11 << 6) + i13;
        }
        return i10;
    }

    public final void w(l lVar, l lVar2, l lVar3, l lVar4, l lVar5, int i10, int i11) {
        lVar.e(lVar2, this.f86450o);
        while (i10 > 1) {
            lVar4.c(lVar3, (i11 + i10) * this.f86450o);
            a(lVar, lVar4, lVar5);
            i10 >>>= 1;
        }
    }

    public final void w0(l lVar, m mVar, int i10, int i11) {
        int i12 = i10 & 63;
        int i13 = i11 + 1;
        if (i12 != 0) {
            lVar.F(mVar, i13, i12);
        } else {
            lVar.E(mVar, i13);
        }
    }

    public final void x(l lVar, l lVar2, int i10) {
        lVar.e(lVar2, this.f86450o);
        lVar2.r(this.f86450o);
        lVar.L(lVar2, this.f86450o, i10);
        lVar2.r(this.f86450o * (this.f86426c + 1));
    }

    public void x0(SecureRandom secureRandom, byte[] bArr, byte[] bArr2, int i10, int i11, byte[] bArr3) {
        int i12;
        l lVar;
        int i13;
        int i14;
        o oVar;
        l lVar2;
        long j10;
        m mVar;
        m mVar2;
        l lVar3;
        l lVar4;
        o oVar2;
        l lVar5;
        long j11;
        l lVar6;
        this.f86422a = secureRandom;
        l lVar7 = new l(this.f86450o);
        l lVar8 = new l(this.f86416U);
        l lVar9 = new l(new l(this.f86416U));
        int i15 = this.f86426c;
        int i16 = i15 & 7;
        int i17 = (i15 >>> 3) + (i16 != 0 ? 1 : 0);
        long f10 = j.f(this.f86402G);
        o oVar3 = new o(this);
        l lVar10 = new l(this.f86403H);
        l[] lVarArr = new l[this.f86434g + 1];
        p0(oVar3, lVarArr, bArr3);
        l lVar11 = new l(oVar3.f86582a.f86587a);
        l lVar12 = new l(lVar8);
        int i18 = this.f86439i0 >>> 3;
        l lVar13 = lVar10;
        o oVar4 = oVar3;
        long j12 = f10;
        l lVar14 = lVar9;
        b0(lVar12, 0, i18, bArr2, i10, i11, new byte[i18]);
        l lVar15 = new l(this.f86414S);
        l lVar16 = new l(this.f86452p);
        m mVar3 = new m(lVar16);
        long j13 = 0;
        int i19 = 1;
        while (true) {
            i12 = this.f86430e;
            if (i19 > i12) {
                break;
            }
            lVar16.C(lVar15, lVar12, this.f86400E);
            if (this.f86405J != 0) {
                lVar16.x(this.f86400E - 1, this.f86420Y);
                j13 = mVar3.b0(this.f86404I);
            }
            long j14 = j13;
            while (true) {
                if (this.f86405J != 0) {
                    mVar3.Z(this.f86404I, secureRandom, (this.f86431e0 - this.f86406K) + 1);
                    lVar = lVar12;
                    i13 = i19;
                    mVar3.h0(this.f86404I, -(1 << this.f86405J), j14);
                } else {
                    lVar = lVar12;
                    i13 = i19;
                    int i20 = this.f86406K;
                    mVar3.Z(i20, secureRandom, this.f86431e0 - i20);
                }
                if ((this.f86424b & 7) != 0) {
                    i14 = 1;
                    lVar16.x(this.f86450o - 1, this.f86429d0);
                } else {
                    i14 = 1;
                }
                oVar = oVar4;
                F0(lVar7, lVar16, oVar.f86585d, b.N);
                lVar2 = lVar13;
                lVar2.g(0, secureRandom, i17);
                if (i16 != 0) {
                    j10 = j12;
                    lVar2.x(this.f86403H - i14, j10);
                } else {
                    j10 = j12;
                }
                J(lVar11, lVar2, oVar.f86583b);
                int i21 = 0;
                while (i21 <= this.f86434g) {
                    m mVar4 = mVar3;
                    F0(this.f86463u0, lVar2, new l(lVarArr[i21], this.f86450o), b.V);
                    int i22 = this.f86450o;
                    int i23 = i21 + 1;
                    lVar11.B(i22 * (((i21 * i23) >>> 1) + 1), lVarArr[i21], 0, this.f86463u0, 0, i22);
                    mVar3 = mVar4;
                    i21 = i23;
                    j10 = j10;
                }
                mVar = mVar3;
                j12 = j10;
                if (k(lVar16, oVar.f86582a, lVar7) != 0) {
                    break;
                }
                mVar3 = mVar;
                lVar13 = lVar2;
                oVar4 = oVar;
                i19 = i13;
                lVar12 = lVar;
            }
            lVar16.J(this.f86450o - 1, lVar2.h() << this.f86446m);
            lVar16.H(this.f86450o, lVar2, 0, this.f86403H - 1, 64 - this.f86446m);
            int i24 = this.f86450o;
            int i25 = this.f86403H;
            if (i24 + i25 == this.f86452p) {
                lVar16.u((i24 + i25) - 1, lVar2.i(i25 - 1) >>> (64 - this.f86446m));
            }
            F0(lVar15, lVar16, oVar.f86584c, b.NV);
            int i26 = this.f86430e;
            if (i13 != i26) {
                int i27 = this.f86452p;
                int i28 = this.f86413R;
                int i29 = (((i26 - 1) - i13) * i28) + i27;
                lVar15.d(i29, lVar15, i27 - i28, i28);
                if (this.f86399D != 0) {
                    lVar15.x(i29, ~this.f86420Y);
                }
                l lVar17 = lVar;
                byte[] W10 = lVar17.W(this.f86415T);
                mVar2 = mVar;
                j11 = j12;
                lVar4 = lVar2;
                oVar2 = oVar;
                lVar5 = lVar16;
                b0(lVar14, 0, this.f86415T, W10, 0, W10.length, W10);
                lVar6 = lVar14;
                lVar3 = lVar17;
                lVar6.V(lVar3);
            } else {
                mVar2 = mVar;
                lVar3 = lVar;
                lVar4 = lVar2;
                oVar2 = oVar;
                lVar5 = lVar16;
                j11 = j12;
                lVar6 = lVar14;
            }
            i19 = i13 + 1;
            lVar14 = lVar6;
            lVar12 = lVar3;
            oVar4 = oVar2;
            mVar3 = mVar2;
            lVar16 = lVar5;
            lVar13 = lVar4;
            j12 = j11;
            j13 = j14;
        }
        if (i12 == 1) {
            System.arraycopy(lVar15.W(lVar15.n() << 3), 0, bArr, 0, this.f86418W);
        } else {
            o(bArr, lVar15);
        }
    }

    public int y(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        long j10;
        int i10;
        long j11;
        m mVar = new m(bArr);
        int i11 = 0;
        long j12 = 0;
        if (this.f86409N == 0 || this.f86405J <= 1) {
            j10 = 0;
        } else {
            m mVar2 = new m(mVar);
            mVar2.f0(this.f86407L - 1);
            j10 = 0;
            for (int i12 = 0; i12 < this.f86405J - 1; i12++) {
                mVar2.f0(this.f86408M);
                j10 ^= ((mVar2.a0() & 255) >>> this.f86409N) << (this.f86411P * i12);
            }
        }
        int i13 = this.f86405J;
        if (i13 == 0) {
            l lVar = new l(this.f86414S);
            l lVar2 = new l(new l(this.f86452p));
            l lVar3 = new l(this.f86416U);
            lVar.f(0, bArr3, 0, this.f86418W);
            b0(lVar3, 0, 64, bArr2, 0, bArr2.length, new byte[64]);
            I(lVar2, lVar, mVar);
            return lVar2.q(lVar3, this.f86400E);
        }
        l lVar4 = new l((this.f86410O * i13) + 1);
        m mVar3 = new m(mVar);
        while (i11 < this.f86405J - 1) {
            mVar3.j0(this.f86407L + (this.f86408M * i11));
            j12 ^= u(new l(lVar4, (this.f86410O * i11) + 1), mVar3) << i11;
            i11++;
        }
        mVar3.j0(this.f86407L + (this.f86408M * i11));
        long t10 = j12 ^ (t(new l(lVar4, (this.f86410O * i11) + 1), mVar3) << i11);
        if (this.f86409N != 0) {
            int i14 = this.f86460t;
            if (i14 == 0) {
                i10 = (i11 + 1) * this.f86410O;
                j11 = j10 << (64 - this.f86412Q);
            } else {
                int i15 = this.f86412Q;
                int i16 = i11 + 1;
                if (i14 > i15) {
                    i10 = i16 * this.f86410O;
                    j11 = j10 << (i14 - i15);
                } else if (i14 == i15) {
                    lVar4.u(i16 * this.f86410O, j10);
                } else {
                    lVar4.J((this.f86410O * i16) - 1, j10 << (64 - (i15 - i14)));
                    lVar4.u(i16 * this.f86410O, j10 >>> (this.f86412Q - this.f86460t));
                }
            }
            lVar4.J(i10, j11);
        }
        lVar4.v(t10 << (this.f86399D - this.f86405J));
        return y0(bArr2, bArr2.length, bArr3, mVar, new m(lVar4));
    }

    public int y0(byte[] bArr, int i10, byte[] bArr2, m mVar, m mVar2) {
        l lVar = new l(this.f86414S);
        l lVar2 = new l(this.f86452p);
        l lVar3 = new l(this.f86452p);
        l lVar4 = new l(lVar2);
        l lVar5 = new l(lVar3);
        byte[] bArr3 = new byte[64];
        l lVar6 = new l(this.f86430e * this.f86416U);
        long h10 = mVar2.h();
        mVar2.r(1);
        E0(lVar, bArr2);
        b0(lVar6, 0, 64, bArr, 0, i10, bArr3);
        int i11 = 1;
        while (i11 < this.f86430e) {
            int i12 = i11;
            b0(lVar6, i11 * this.f86416U, 64, bArr3, 0, this.f86415T, bArr3);
            lVar6.x(((this.f86416U * (i12 - 1)) + this.f86400E) - 1, this.f86420Y);
            i11 = i12 + 1;
        }
        lVar6.x(((this.f86416U * (i11 - 1)) + this.f86400E) - 1, this.f86420Y);
        H(lVar4, lVar, mVar, mVar2);
        lVar4.J(this.f86398C, h10);
        for (int i13 = this.f86430e - 1; i13 > 0; i13--) {
            lVar4.Q(lVar6, this.f86416U * i13, this.f86400E);
            int i14 = this.f86452p + (((this.f86430e - 1) - i13) * this.f86413R);
            lVar4.x(this.f86400E - 1, this.f86420Y);
            lVar4.J(this.f86400E - 1, lVar.i(i14));
            int i15 = this.f86413R;
            if (i15 != 1) {
                lVar4.d(this.f86400E, lVar, i14 + 1, i15 - 1);
            }
            H(lVar5, lVar4, mVar, mVar2);
            lVar5.J(this.f86398C, h10);
            lVar5.V(lVar4);
        }
        return lVar4.q(lVar6, this.f86400E);
    }

    public final void z(l lVar, int i10, l lVar2, int i11) {
        l lVar3 = new l();
        l lVar4 = new l();
        while (i10 >= i11) {
            int t10 = lVar.t(i10, i11, this.f86450o);
            if (t10 < i11) {
                return;
            }
            lVar3.c(lVar, this.f86450o * t10);
            int max = Math.max(0, (i11 << 1) - t10);
            lVar4.c(lVar, ((t10 - i11) + max) * this.f86450o);
            T(lVar4, lVar3, lVar2, max, i11);
            i10 = t10 - 1;
        }
    }

    public final void z0(l lVar, l lVar2, l lVar3) {
        int i10;
        int m10 = lVar2.m();
        lVar2.r((this.f86450o * (this.f86426c + 1)) << 1);
        lVar.e(lVar2, this.f86450o);
        lVar.r(this.f86450o);
        l lVar4 = new l(lVar2, this.f86450o * (this.f86426c + 2));
        int i11 = 2;
        while (i11 < this.f86435g0 - 1) {
            x(lVar, lVar4, i11 - 1);
            i11++;
        }
        if (this.f86396A) {
            while (i11 < this.f86435g0 - 1) {
                x(lVar, lVar4, i11 - 2);
                i11++;
            }
        }
        lVar.w(0, this.f86450o);
        lVar.L(lVar4, this.f86450o, this.f86436h);
        for (int i12 = 0; i12 < this.f86424b - 1; i12++) {
            k0(lVar, lVar3, lVar2);
            lVar.r(this.f86450o);
            lVar4.c(lVar2, this.f86450o * (this.f86426c + 2));
            int i13 = 2;
            while (i13 < this.f86434g) {
                F(lVar, lVar4, lVar3, i13);
                i13++;
            }
            if (this.f86396A) {
                lVar3.r(this.f86450o);
                while (i13 < this.f86435g0 - 1) {
                    F(lVar, lVar4, lVar3, i13 - 1);
                    i13++;
                }
                lVar3.r(-this.f86450o);
            }
            int i14 = this.f86436h;
            if (i14 == 0) {
                lVar.e(lVar3, this.f86450o);
                lVar.r(this.f86450o);
                i10 = this.f86435g0;
            } else {
                E(lVar, lVar3, lVar4, i14);
                lVar3.r(this.f86436h * this.f86450o);
                lVar.U(lVar3, this.f86450o);
                i10 = this.f86435g0 - this.f86436h;
            }
            lVar3.r(i10 * this.f86450o);
        }
        lVar.o();
        lVar2.a(m10);
        lVar3.o();
    }
}
