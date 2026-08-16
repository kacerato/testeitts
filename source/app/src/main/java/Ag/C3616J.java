package ag;

import mk.C14289h;
import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C3616J extends C3615I {
    @NotNull
    public static final Void o1(@NotNull String input) {
        kotlin.jvm.internal.M.p(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + JavaElement.JEM_MODULAR_CLASSFILE);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Byte p1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return q1(str, 10);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Byte q1(@NotNull String str, int i10) {
        int intValue;
        kotlin.jvm.internal.M.p(str, "<this>");
        Integer s12 = s1(str, i10);
        if (s12 == null || (intValue = s12.intValue()) < -128 || intValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) intValue);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static Integer r1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return s1(str, 10);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Integer s1(@NotNull String str, int i10) {
        boolean z10;
        int i11;
        int i12;
        kotlin.jvm.internal.M.p(str, "<this>");
        C3623e.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i13 = 0;
        char charAt = str.charAt(0);
        int t10 = kotlin.jvm.internal.M.t(charAt, 48);
        int i14 = C14289h.f97343g;
        if (t10 < 0) {
            i11 = 1;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z10 = false;
            } else {
                if (charAt != '-') {
                    return null;
                }
                i14 = Integer.MIN_VALUE;
                z10 = true;
            }
        } else {
            z10 = false;
            i11 = 0;
        }
        int i15 = -59652323;
        while (i11 < length) {
            int b10 = C3623e.b(str.charAt(i11), i10);
            if (b10 < 0) {
                return null;
            }
            if ((i13 < i15 && (i15 != -59652323 || i13 < (i15 = i14 / i10))) || (i12 = i13 * i10) < i14 + b10) {
                return null;
            }
            i13 = i12 - b10;
            i11++;
        }
        return z10 ? Integer.valueOf(i13) : Integer.valueOf(-i13);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static Long t1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return u1(str, 10);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Long u1(@NotNull String str, int i10) {
        boolean z10;
        kotlin.jvm.internal.M.p(str, "<this>");
        C3623e.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char charAt = str.charAt(0);
        long j10 = -9223372036854775807L;
        if (kotlin.jvm.internal.M.t(charAt, 48) < 0) {
            z10 = true;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z10 = false;
                i11 = 1;
            } else {
                if (charAt != '-') {
                    return null;
                }
                j10 = Long.MIN_VALUE;
                i11 = 1;
            }
        } else {
            z10 = false;
        }
        long j11 = -256204778801521550L;
        long j12 = 0;
        long j13 = -256204778801521550L;
        while (i11 < length) {
            int b10 = C3623e.b(str.charAt(i11), i10);
            if (b10 < 0) {
                return null;
            }
            if (j12 < j13) {
                if (j13 == j11) {
                    j13 = j10 / i10;
                    if (j12 < j13) {
                    }
                }
                return null;
            }
            long j14 = j12 * i10;
            long j15 = b10;
            if (j14 < j10 + j15) {
                return null;
            }
            j12 = j14 - j15;
            i11++;
            j11 = -256204778801521550L;
        }
        return z10 ? Long.valueOf(j12) : Long.valueOf(-j12);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Short v1(@NotNull String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return w1(str, 10);
    }

    @InterfaceC14422l0(version = "1.1")
    @Nullable
    public static final Short w1(@NotNull String str, int i10) {
        int intValue;
        kotlin.jvm.internal.M.p(str, "<this>");
        Integer s12 = s1(str, i10);
        if (s12 == null || (intValue = s12.intValue()) < -32768 || intValue > 32767) {
            return null;
        }
        return Short.valueOf((short) intValue);
    }
}
