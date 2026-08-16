package ag;

import kotlin.KotlinNothingValueException;
import nf.B0;
import nf.F0;
import nf.InterfaceC14422l0;
import nf.L0;
import nf.S0;
import nf.x0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.j(name = "UStringsKt")
public final class c0 {
    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String a(long j10, int i10) {
        return S0.t(j10, C3623e.a(i10));
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String b(byte b10, int i10) {
        String num = Integer.toString(b10 & 255, C3623e.a(i10));
        kotlin.jvm.internal.M.o(num, "toString(...)");
        return num;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String c(int i10, int i11) {
        return S0.t(i10 & 4294967295L, C3623e.a(i11));
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String d(short s10, int i10) {
        String num = Integer.toString(s10 & 65535, C3623e.a(i10));
        kotlin.jvm.internal.M.o(num, "toString(...)");
        return num;
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte e(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        x0 g10 = g(str);
        if (g10 != null) {
            return g10.j0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    public static final byte f(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        x0 h10 = h(str, i10);
        if (h10 != null) {
            return h10.j0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final x0 g(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return h(str, 10);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final x0 h(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        B0 l10 = l(str, i10);
        if (l10 == null) {
            return null;
        }
        int q02 = l10.q0();
        if (Integer.compareUnsigned(q02, B0.o(255)) > 0) {
            return null;
        }
        return x0.b(x0.i((byte) q02));
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int i(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        B0 k10 = k(str);
        if (k10 != null) {
            return k10.q0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int j(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        B0 l10 = l(str, i10);
        if (l10 != null) {
            return l10.q0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final B0 k(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return l(str, 10);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final B0 l(@NotNull String str, int i10) {
        int i11;
        kotlin.jvm.internal.M.p(str, "<this>");
        C3623e.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char charAt = str.charAt(0);
        if (kotlin.jvm.internal.M.t(charAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i11 = 0;
        }
        int o10 = B0.o(i10);
        int i13 = 119304647;
        while (i11 < length) {
            int b10 = C3623e.b(str.charAt(i11), i10);
            if (b10 < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i12, i13) > 0) {
                if (i13 == 119304647) {
                    i13 = Integer.divideUnsigned(-1, o10);
                    if (Integer.compareUnsigned(i12, i13) > 0) {
                    }
                }
                return null;
            }
            int o11 = B0.o(i12 * o10);
            int o12 = B0.o(B0.o(b10) + o11);
            if (Integer.compareUnsigned(o12, o11) < 0) {
                return null;
            }
            i11++;
            i12 = o12;
        }
        return B0.e(i12);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long m(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        F0 o10 = o(str);
        if (o10 != null) {
            return o10.l0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    public static final long n(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        F0 p10 = p(str, i10);
        if (p10 != null) {
            return p10.l0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final F0 o(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return p(str, 10);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final F0 p(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        C3623e.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char charAt = str.charAt(0);
        if (kotlin.jvm.internal.M.t(charAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long i12 = F0.i(i10);
        long j10 = 0;
        long j11 = 512409557603043100L;
        while (i11 < length) {
            if (C3623e.b(str.charAt(i11), i10) < 0) {
                return null;
            }
            if (Long.compareUnsigned(j10, j11) > 0) {
                if (j11 == 512409557603043100L) {
                    j11 = Long.divideUnsigned(-1L, i12);
                    if (Long.compareUnsigned(j10, j11) > 0) {
                    }
                }
                return null;
            }
            long i13 = F0.i(j10 * i12);
            long i14 = F0.i(F0.i(B0.o(r13) & 4294967295L) + i13);
            if (Long.compareUnsigned(i14, i13) < 0) {
                return null;
            }
            i11++;
            j10 = i14;
        }
        return F0.b(j10);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short q(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        L0 s10 = s(str);
        if (s10 != null) {
            return s10.j0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    public static final short r(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        L0 t10 = t(str, i10);
        if (t10 != null) {
            return t10.j0();
        }
        C3616J.o1(str);
        throw new KotlinNothingValueException();
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final L0 s(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return t(str, 10);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final L0 t(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        B0 l10 = l(str, i10);
        if (l10 == null) {
            return null;
        }
        int q02 = l10.q0();
        if (Integer.compareUnsigned(q02, B0.o(65535)) > 0) {
            return null;
        }
        return L0.b(L0.i((short) q02));
    }
}
