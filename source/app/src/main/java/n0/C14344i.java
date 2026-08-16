package n0;

import ag.C3623e;
import ag.C3639v;
import android.util.Half;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.r0;
import kotlin.jvm.internal.t0;
import kotlin.time.C14038j;
import nf.B0;
import nf.L0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n+ 2 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1152#2:1172\n1152#2:1173\n1152#2:1174\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n*L\n574#1:1172\n647#1:1173\n693#1:1174\n*E\n"})
@Lf.h
public final class C14344i implements Comparable<C14344i> {

    public static final int f97613d = 16;

    public static final int f97615f = 15;

    public static final int f97616g = -14;

    public final short f97626b;

    @NotNull
    public static final a f97612c = new a(null);

    public static final short f97614e = r(L0.i((short) 5120));

    public static final short f97617h = r(L0.i((short) 64511));

    public static final short f97618i = r(L0.i((short) Half.MAX_VALUE));

    public static final short f97619j = r(L0.i((short) 1024));

    public static final short f97620k = r(L0.i((short) 1));

    public static final short f97621l = r(L0.i((short) 32256));

    public static final short f97622m = r(L0.i((short) 64512));

    public static final short f97623n = r(L0.i((short) 32768));

    public static final short f97624o = r(L0.i((short) 31744));

    public static final short f97625p = r(L0.i((short) 0));

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final short a(int i10) {
            return C14344i.r(L0.i((short) (i10 & 65535)));
        }

        public final short b() {
            return C14344i.f97614e;
        }

        public final short c() {
            return C14344i.f97617h;
        }

        public final short d() {
            return C14344i.f97618i;
        }

        public final short e() {
            return C14344i.f97619j;
        }

        public final short f() {
            return C14344i.f97620k;
        }

        public final short g() {
            return C14344i.f97622m;
        }

        public final short h() {
            return C14344i.f97623n;
        }

        public final short i() {
            return C14344i.f97621l;
        }

        public final short j() {
            return C14344i.f97624o;
        }

        public final short k() {
            return C14344i.f97625p;
        }

        public a() {
        }
    }

    public C14344i(short s10) {
        this.f97626b = s10;
    }

    public static final short A(short s10) {
        if (F(s10)) {
            return f97621l;
        }
        if (E(s10)) {
            return f97624o;
        }
        if ((s10 & r0.f95770c) == 31743) {
            return r(L0.i((short) 19456));
        }
        short w10 = w(s10);
        return I(L(w10), w10);
    }

    public static int B(short s10) {
        return L0.y(s10);
    }

    public static final short C(short s10) {
        return M(s10, r(L0.i((short) 15360)));
    }

    public static final boolean D(short s10) {
        return (s10 & 31744) != 31744;
    }

    public static final boolean E(short s10) {
        return (s10 & r0.f95770c) == 31744;
    }

    public static final boolean F(short s10) {
        return (s10 & r0.f95770c) > 31744;
    }

    public static final boolean G(short s10) {
        int i10 = s10 & 31744;
        return (i10 == 0 || i10 == 31744) ? false : true;
    }

    public static final boolean H(short s10) {
        return (s10 & r0.f95770c) == 0;
    }

    public static final short I(short s10, short s11) {
        return M(s10, Z(s11));
    }

    public static final short J(short s10) {
        if (F(s10) || s10 == f97622m) {
            return s10;
        }
        if (H(s10)) {
            return Z(f97620k);
        }
        return r(L0.i((short) (Q(s10) + ((s10 & r0.f95769b) == 0 ? -1 : 1))));
    }

    public static final short K(short s10, short s11) {
        return (F(s10) || F(s11)) ? f97621l : v(s11, s10) ? s10 : q(s11, s10) > 0 ? L(s10) : J(s10);
    }

    public static final short L(short s10) {
        if (F(s10) || s10 == f97624o) {
            return s10;
        }
        if (H(s10)) {
            return f97620k;
        }
        return r(L0.i((short) (Q(s10) + ((s10 & r0.f95769b) == 0 ? 1 : -1))));
    }

    public static final short M(short s10, short s11) {
        int i10;
        int i11;
        int Q10 = Q(s10);
        int Q11 = Q(s11);
        boolean z10 = ((Q10 ^ Q11) & 32768) != 0;
        int i12 = Q10 & 32767;
        int i13 = Q11 & 32767;
        if (i12 >= 31744 || i13 >= 31744) {
            if (i12 > 31744 || i13 > 31744) {
                if ((Q10 & 32767) <= 31744) {
                    i12 = i13;
                }
                Q10 = i12 | 512;
            } else if (i13 == 31744) {
                Q10 = (z10 && i12 == 31744) ? 32767 : Q11;
            }
            return r(L0.i((short) Q10));
        }
        if (i12 == 0) {
            return i13 != 0 ? s11 : r(L0.i((short) (Q10 & Q11)));
        }
        if (i13 == 0) {
            return s10;
        }
        if (z10 && i13 > i12) {
            Q10 = Q11;
        }
        int i14 = Q10 & 32768;
        if (i13 > i12) {
            i13 = i12;
            i12 = i13;
        }
        int i15 = (i12 >> 10) + (i12 <= 1023 ? 1 : 0);
        int i16 = (i15 - (i13 >> 10)) - (i13 <= 1023 ? 1 : 0);
        int i17 = ((i12 & 1023) | ((i12 > 1023 ? 1 : 0) << 10)) << 3;
        if (i16 < 13) {
            int i18 = (((i13 > 1023 ? 1 : 0) << 10) | (i13 & 1023)) << 3;
            i10 = ((i18 & ((1 << i16) - 1)) != 0 ? 1 : 0) | (i18 >> i16);
        } else {
            i10 = 1;
        }
        if (z10) {
            i11 = i17 - i10;
            if (i11 == 0) {
                return f97625p;
            }
            while (i11 < 8192 && i15 > 1) {
                i11 <<= 1;
                i15--;
            }
        } else {
            int i19 = i17 + i10;
            int i20 = i19 >> 14;
            i15 += i20;
            if (i15 > 30) {
                return r(L0.i((short) (i14 | 31744)));
            }
            i11 = (i19 >> i20) | (i20 & i19);
        }
        int i21 = i14 + ((i15 - 1) << 10) + (i11 >> 3);
        return r(L0.i((short) (i21 + ((i11 >> 2) & 1 & (((i11 & 3) != 0 ? 1 : 0) | i21)))));
    }

    public static final int N(short s10) {
        if (F(s10)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return V(m.r(s10));
    }

    public static final long O(short s10) {
        if (F(s10)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return W(m.r(s10));
    }

    public static final short P(short s10, short s11) {
        short h10;
        int Q10 = Q(s10);
        int Q11 = Q(s11);
        int i10 = (Q10 ^ Q11) & 32768;
        int i11 = Q10 & 32767;
        int i12 = 32767;
        int i13 = Q11 & 32767;
        if (i11 >= 31744 || i13 >= 31744) {
            if (i11 > 31744 || i13 > 31744) {
                if ((Q10 & 32767) <= 31744) {
                    i11 = i13;
                }
                i12 = i11 | 512;
            } else if ((i11 != 31744 || i13 != 0) && (i13 != 31744 || i11 != 0)) {
                i12 = i10 | 31744;
            }
            return r(L0.i((short) i12));
        }
        if (i11 == 0 || i13 == 0) {
            return r(L0.i((short) i10));
        }
        int i14 = -16;
        while (i11 < 1024) {
            i11 <<= 1;
            i14--;
        }
        while (i13 < 1024) {
            i13 <<= 1;
            i14--;
        }
        int o10 = B0.o(B0.o((i11 & 1023) | 1024) * B0.o(1024 | (i13 & 1023)));
        int o11 = B0.o(o10 >>> 21);
        int i15 = i14 + (i11 >> 10) + (i13 >> 10) + o11;
        if (i15 > 29) {
            return r(L0.i((short) (i10 | 31744)));
        }
        if (i15 < -11) {
            return r(L0.i((short) i10));
        }
        h10 = m.h(i10, i15, B0.o(o10 >>> o11), B0.o(o10 & o11), 20);
        return h10;
    }

    public static final int Q(short s10) {
        return s10 & 65535;
    }

    public static final byte R(short s10) {
        float m10;
        m10 = m.m(s10);
        return (byte) m10;
    }

    public static final double S(short s10) {
        float m10;
        m10 = m.m(s10);
        return m10;
    }

    public static final float T(short s10) {
        float m10;
        m10 = m.m(s10);
        return m10;
    }

    @NotNull
    public static final String U(short s10) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 65535 & s10;
        int i11 = i10 >>> 15;
        int i12 = (i10 >>> 10) & 31;
        int i13 = s10 & 1023;
        if (i12 != 31) {
            if (i11 == 1) {
                sb2.append('-');
            }
            if (i12 != 0) {
                sb2.append("0x1.");
                String num = Integer.toString(i13, C3623e.a(16));
                M.o(num, "toString(...)");
                sb2.append(new C3639v("0{2,}$").r(num, ""));
                sb2.append('p');
                sb2.append(String.valueOf(i12 - 15));
            } else if (i13 == 0) {
                sb2.append("0x0.0p0");
            } else {
                sb2.append("0x0.");
                String num2 = Integer.toString(i13, C3623e.a(16));
                M.o(num2, "toString(...)");
                sb2.append(new C3639v("0{2,}$").r(num2, ""));
                sb2.append("p-14");
            }
        } else if (i13 == 0) {
            if (i11 != 0) {
                sb2.append('-');
            }
            sb2.append(C14038j.f95883k);
        } else {
            sb2.append("NaN");
        }
        String sb3 = sb2.toString();
        M.o(sb3, "toString(...)");
        return sb3;
    }

    public static final int V(short s10) {
        float m10;
        m10 = m.m(s10);
        return (int) m10;
    }

    public static final long W(short s10) {
        float m10;
        m10 = m.m(s10);
        return m10;
    }

    public static final short X(short s10) {
        float m10;
        m10 = m.m(s10);
        return (short) m10;
    }

    @NotNull
    public static String Y(short s10) {
        return String.valueOf(T(s10));
    }

    public static final short Z(short s10) {
        return r(L0.i((short) ((s10 & 65535) ^ 32768)));
    }

    public static final short a0(short s10) {
        return r(s10);
    }

    public static final short c0(short s10, short s11) {
        return r(L0.i((short) ((s10 & r0.f95770c) | (s11 & r0.f95769b))));
    }

    public static final C14344i m(short s10) {
        return new C14344i(s10);
    }

    public static int q(short s10, short s11) {
        if ((s10 & r0.f95770c) > 31744) {
            s10 = 32256;
        }
        if ((s11 & r0.f95770c) > 31744) {
            s11 = 32256;
        }
        if (s10 == s11) {
            return 0;
        }
        int i10 = s10 >> 15;
        int i11 = (s10 ^ ((32768 - i10) | 32768)) + i10;
        int i12 = s11 >> 15;
        return i11 < (s11 ^ (32768 | (32768 - i12))) + i12 ? -1 : 1;
    }

    public static short r(short s10) {
        return s10;
    }

    public static final short s(short s10) {
        return M(s10, r(L0.i((short) 48128)));
    }

    public static final short t(short s10, short s11) {
        short h10;
        int Q10 = Q(s10);
        int Q11 = Q(s11);
        int i10 = (Q10 ^ Q11) & 32768;
        int i11 = Q10 & 32767;
        int i12 = 32767;
        int i13 = Q11 & 32767;
        if (i11 >= 31744 || i13 >= 31744) {
            if (i11 > 31744 || i13 > 31744) {
                if ((Q10 & 32767) <= 31744) {
                    i11 = i13;
                }
                i12 = i11 | 512;
            } else if (i11 != i13) {
                i12 = i10 | (i11 == 31744 ? 31744 : 0);
            }
            return r(L0.i((short) i12));
        }
        if (i11 == 0) {
            if (i13 == 0) {
                i10 = 32767;
            }
            return r(L0.i((short) i10));
        }
        if (i13 == 0) {
            return r(L0.i((short) (i10 | 31744)));
        }
        int i14 = 14;
        while (i11 < 1024) {
            i11 <<= 1;
            i14--;
        }
        while (i13 < 1024) {
            i13 <<= 1;
            i14++;
        }
        int o10 = B0.o((i11 & 1023) | 1024);
        int o11 = B0.o(1024 | (i13 & 1023));
        int i15 = Integer.compareUnsigned(o10, o11) < 0 ? 1 : 0;
        int i16 = i14 + (((i11 >> 10) - (i13 >> 10)) - i15);
        if (i16 > 29) {
            return r(L0.i((short) (i10 | 31744)));
        }
        if (i16 < -11) {
            return r(L0.i((short) i10));
        }
        int o12 = B0.o(o10 << (i15 + 12));
        int o13 = B0.o(o11 << 1);
        h10 = m.h(i10, i16, Integer.divideUnsigned(o12, o13), Integer.remainderUnsigned(o12, o13) != 0 ? 1 : 0, 11);
        return h10;
    }

    public static boolean u(short s10, Object obj) {
        return (obj instanceof C14344i) && s10 == ((C14344i) obj).b0();
    }

    public static final boolean v(short s10, short s11) {
        return L0.s(s10, s11);
    }

    public static final short w(short s10) {
        return r(L0.i((short) (s10 & r0.f95770c)));
    }

    public static final int x(short s10) {
        return (((s10 & 65535) >>> 10) & 31) - 15;
    }

    public static final short y(short s10) {
        int i10 = s10 & r0.f95770c;
        if (i10 > 31744) {
            return f97621l;
        }
        if (i10 == 0) {
            return f97625p;
        }
        return m.b((s10 & r0.f95769b) != 0 ? -1.0f : 1.0f);
    }

    public static final int z(short s10) {
        return s10 & 1023;
    }

    public final short b0() {
        return this.f97626b;
    }

    @Override
    public int compareTo(C14344i c14344i) {
        return o(c14344i.b0());
    }

    public boolean equals(Object obj) {
        return u(this.f97626b, obj);
    }

    public int hashCode() {
        return B(this.f97626b);
    }

    public int o(short s10) {
        return q(this.f97626b, s10);
    }

    @NotNull
    public String toString() {
        return Y(this.f97626b);
    }
}
