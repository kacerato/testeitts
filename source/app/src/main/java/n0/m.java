package n0;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.B0;
import nf.L0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1149#1:1172\n1149#1:1173\n1149#1:1174\n1149#1:1175\n1149#1:1176\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n821#1:1172\n954#1:1173\n988#1:1174\n1023#1:1175\n1055#1:1176\n*E\n"})
public final class m {

    public static final int f97639a = 15;

    public static final int f97640b = 32768;

    public static final int f97641c = 10;

    public static final int f97642d = 31;

    public static final int f97643e = 1023;

    public static final int f97644f = 15;

    public static final int f97645g = 32767;

    public static final int f97646h = 31744;

    public static final int f97647i = 32256;

    public static final int f97648j = 32767;

    public static final int f97649k = 31;

    public static final int f97650l = 23;

    public static final int f97651m = 255;

    public static final int f97652n = 8388607;

    public static final int f97653o = 127;

    public static final int f97654p = 4194304;

    public static final int f97655q = 1056964608;

    public static final float f97656r;

    static {
        kotlin.jvm.internal.B b10 = kotlin.jvm.internal.B.f95693a;
        f97656r = Float.intBitsToFloat(f97655q);
    }

    public static final short a(double d10) {
        return C14344i.r(i((float) d10));
    }

    public static final short b(float f10) {
        return C14344i.r(i(f10));
    }

    public static final short c(@NotNull String value) {
        M.p(value, "value");
        return C14344i.r(i(Float.parseFloat(value)));
    }

    public static final short d(short s10) {
        return C14344i.w(s10);
    }

    public static final short g(short s10) {
        int Q10 = C14344i.Q(s10);
        int i10 = Q10 & 32767;
        if (i10 < 15360) {
            Q10 = ((-((~(Q10 >> 15)) & (i10 == 0 ? 0 : 1))) & 15360) | (32768 & Q10);
        } else if (i10 < 25600) {
            int i11 = (1 << (25 - (i10 >> 10))) - 1;
            Q10 = (Q10 + (i11 & ((Q10 >> 15) - 1))) & (~i11);
        } else if (i10 > 31744) {
            Q10 |= 512;
        }
        return C14344i.r(L0.i((short) Q10));
    }

    public static final short h(int i10, int i11, int i12, int i13, int i14) {
        int o10;
        int o11;
        int o12;
        if (i11 < 0) {
            o10 = B0.o(B0.o(i10) + B0.o(i12 >>> ((i14 - 10) - i11)));
            int i15 = (i14 - 11) - i11;
            o11 = B0.o(B0.o(i12 >>> i15) & 1);
            o12 = B0.o(B0.o(B0.o(i12 & B0.o(B0.o(1 << i15) - B0.o(1))) != 0 ? 1 : 0) | i13);
        } else {
            o10 = B0.o(B0.o(B0.o(i10) + B0.o(B0.o(i11) << 10)) + B0.o(i12 >>> (i14 - 10)));
            int i16 = i14 - 11;
            o11 = B0.o(B0.o(i12 >>> i16) & 1);
            o12 = B0.o(B0.o(B0.o(i12 & B0.o(B0.o(1 << i16) - B0.o(1))) != 0 ? 1 : 0) | i13);
        }
        return C14344i.r(L0.i((short) B0.o(o10 + B0.o(o11 & B0.o(o12 | o10)))));
    }

    public static final short i(float f10) {
        int floatToIntBits = Float.floatToIntBits(f10);
        int i10 = floatToIntBits >>> 31;
        int i11 = (floatToIntBits >>> 23) & 255;
        int i12 = 8388607 & floatToIntBits;
        int i13 = 31;
        int i14 = 0;
        if (i11 != 255) {
            int i15 = i11 - 112;
            if (i15 >= 31) {
                i13 = 49;
            } else if (i15 > 0) {
                i14 = i12 >> 13;
                if ((floatToIntBits & 4096) != 0) {
                    return L0.i((short) ((((i15 << 10) | i14) + 1) | (i10 << 15)));
                }
                i13 = i15;
            } else if (i15 >= -10) {
                int i16 = (8388608 | i12) >> (1 - i15);
                if ((i16 & 4096) != 0) {
                    i16 += 8192;
                }
                i13 = 0;
                i14 = i16 >> 13;
            } else {
                i13 = 0;
            }
        } else if (i12 != 0) {
            i14 = 512;
        }
        return L0.i((short) ((i10 << 15) | (i13 << 10) | i14));
    }

    public static final short j(short s10) {
        int Q10 = C14344i.Q(s10);
        int i10 = Q10 & 32767;
        if (i10 < 15360) {
            Q10 = ((Q10 > 32768 ? 65535 : 0) & 15360) | (Q10 & 32768);
        } else if (i10 < 25600) {
            int i11 = (1 << (25 - (i10 >> 10))) - 1;
            Q10 = (Q10 + ((-(Q10 >> 15)) & i11)) & (~i11);
        } else if (i10 > 31744) {
            Q10 |= 512;
        }
        return C14344i.r(L0.i((short) Q10));
    }

    public static final short k(double d10) {
        return C14344i.r(i((float) d10));
    }

    public static final short l(float f10) {
        return C14344i.r(i(f10));
    }

    public static final float m(short s10) {
        int i10;
        int i11;
        int i12;
        int i13 = 32768 & s10;
        int i14 = ((65535 & s10) >>> 10) & 31;
        int i15 = s10 & 1023;
        if (i14 != 0) {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        } else {
            if (i15 != 0) {
                kotlin.jvm.internal.B b10 = kotlin.jvm.internal.B.f95693a;
                float intBitsToFloat = Float.intBitsToFloat(i15 + f97655q) - f97656r;
                return i13 == 0 ? intBitsToFloat : -intBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        }
        int i18 = (i12 << 23) | (i13 << 16) | i11;
        kotlin.jvm.internal.B b11 = kotlin.jvm.internal.B.f95693a;
        return Float.intBitsToFloat(i18);
    }

    public static final short n(short s10, short s11) {
        int Q10;
        int Q11;
        int Q12 = C14344i.Q(s10);
        int i10 = Q12 & 32767;
        if (i10 <= 31744 && (Q11 = (Q10 = C14344i.Q(s11)) & 32767) <= 31744) {
            if (i10 == 0 && Q11 == 0) {
                return (Q12 & 32768) != 0 ? s11 : s10;
            }
            int i11 = Q12 & 32768;
            int i12 = Q12 & 65535;
            if (i11 != 0) {
                i12 = 32768 - i12;
            }
            return i12 > ((Q10 & 32768) != 0 ? 32768 - (Q10 & 65535) : Q10 & 65535) ? s10 : s11;
        }
        return C14344i.f97612c.i();
    }

    public static final short o(short s10, short s11) {
        int Q10;
        int Q11;
        int Q12 = C14344i.Q(s10);
        int i10 = Q12 & 32767;
        if (i10 <= 31744 && (Q11 = (Q10 = C14344i.Q(s11)) & 32767) <= 31744) {
            if (i10 == 0 && Q11 == 0) {
                return (Q12 & 32768) != 0 ? s10 : s11;
            }
            int i11 = Q12 & 32768;
            int i12 = Q12 & 65535;
            if (i11 != 0) {
                i12 = 32768 - i12;
            }
            return i12 < ((Q10 & 32768) != 0 ? 32768 - (Q10 & 65535) : Q10 & 65535) ? s10 : s11;
        }
        return C14344i.f97612c.i();
    }

    public static final int p(int i10) {
        return i10 | 512;
    }

    public static final int q(int i10, int i11) {
        if ((i10 & 32767) <= 31744) {
            i10 = i11;
        }
        return i10 | 512;
    }

    public static final short r(short s10) {
        int Q10 = C14344i.Q(s10);
        int i10 = Q10 & 32767;
        if (i10 < 15360) {
            Q10 = (Q10 & 32768) | ((i10 >= 14336 ? 65535 : 0) & 15360);
        } else if (i10 < 25600) {
            int i11 = i10 >> 10;
            Q10 = (Q10 + (1 << (24 - i11))) & (~((1 << (25 - i11)) - 1));
        } else if (i10 > 31744) {
            Q10 |= 512;
        }
        return C14344i.r(L0.i((short) Q10));
    }

    public static final short s(short s10) {
        int Q10 = C14344i.Q(s10);
        int i10 = Q10 & 32767;
        if (i10 == 0 || i10 >= 31744) {
            if (i10 > 31744) {
                Q10 |= 512;
            } else if (Q10 > 32768) {
                Q10 = 32767;
            }
            return C14344i.r(L0.i((short) Q10));
        }
        int i11 = 15;
        while (i10 < 1024) {
            i10 <<= 1;
            i11--;
        }
        int o10 = B0.o(B0.o(1024 | (i10 & 1023)) << 10);
        int i12 = i11 + (i10 >> 10);
        int i13 = i12 & 1;
        int o11 = B0.o(o10 << i13);
        int i14 = (i12 - i13) / 2;
        int i15 = 0;
        for (int o12 = B0.o(1048576); o12 != 0; o12 = B0.o(o12 >>> 2)) {
            int i16 = i15 + o12;
            if (Integer.compareUnsigned(o11, B0.o(i16)) < 0) {
                i15 = B0.o(i15 >>> 1);
            } else {
                o11 = B0.o(o11 - B0.o(i16));
                i15 = B0.o(B0.o(i15 >>> 1) + o12);
            }
        }
        int o13 = B0.o(B0.o(i14 << 10) + B0.o(i15 & 1023));
        return C14344i.r(L0.i((short) B0.o(o13 + B0.o((Integer.compareUnsigned(o11, i15) > 0 ? 1 : 0) & B0.o((o11 != 0 ? 1 : 0) | o13)))));
    }

    public static final short t(double d10) {
        return C14344i.r(i((float) d10));
    }

    public static final short u(float f10) {
        return C14344i.r(i(f10));
    }

    public static final short v(@NotNull String str) {
        M.p(str, "<this>");
        return C14344i.r(i(Float.parseFloat(str)));
    }

    public static final short w(short s10) {
        int i10;
        int Q10 = C14344i.Q(s10);
        int i11 = Q10 & 32767;
        if (i11 < 15360) {
            i10 = 32768;
        } else {
            if (i11 >= 25600) {
                if (i11 > 31744) {
                    Q10 |= 512;
                }
                return C14344i.r(L0.i((short) Q10));
            }
            i10 = ~((1 << (25 - (i11 >> 10))) - 1);
        }
        Q10 &= i10;
        return C14344i.r(L0.i((short) Q10));
    }
}
