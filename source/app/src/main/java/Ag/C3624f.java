package ag;

import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Char.kt\nkotlin/text/CharsKt__CharKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"})
public class C3624f extends C3623e {
    @InterfaceC14422l0(version = "1.5")
    public static final char D(int i10) {
        if (i10 >= 0 && i10 < 10) {
            return (char) (i10 + 48);
        }
        throw new IllegalArgumentException("Int " + i10 + " is not a decimal digit");
    }

    @InterfaceC14422l0(version = "1.5")
    public static final char E(int i10, int i11) {
        if (2 > i11 || i11 >= 37) {
            throw new IllegalArgumentException("Invalid radix: " + i11 + ". Valid radix values are in range 2..36");
        }
        if (i10 >= 0 && i10 < i11) {
            return (char) (i10 < 10 ? i10 + 48 : ((char) (i10 + 65)) - '\n');
        }
        throw new IllegalArgumentException("Digit " + i10 + " does not represent a valid digit in radix " + i11);
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int F(char c10) {
        int b10 = C3623e.b(c10, 10);
        if (b10 >= 0) {
            return b10;
        }
        throw new IllegalArgumentException("Char " + c10 + " is not a decimal digit");
    }

    @InterfaceC14422l0(version = "1.5")
    public static final int G(char c10, int i10) {
        Integer I10 = I(c10, i10);
        if (I10 != null) {
            return I10.intValue();
        }
        throw new IllegalArgumentException("Char " + c10 + " is not a digit in the given radix=" + i10);
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final Integer H(char c10) {
        Integer valueOf = Integer.valueOf(C3623e.b(c10, 10));
        if (valueOf.intValue() >= 0) {
            return valueOf;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.5")
    @Nullable
    public static final Integer I(char c10, int i10) {
        C3623e.a(i10);
        Integer valueOf = Integer.valueOf(C3623e.b(c10, i10));
        if (valueOf.intValue() >= 0) {
            return valueOf;
        }
        return null;
    }

    public static final boolean J(char c10, char c11, boolean z10) {
        if (c10 == c11) {
            return true;
        }
        if (!z10) {
            return false;
        }
        char upperCase = Character.toUpperCase(c10);
        char upperCase2 = Character.toUpperCase(c11);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static boolean K(char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return J(c10, c11, z10);
    }

    public static final boolean L(char c10) {
        return '\ud800' <= c10 && c10 < '\ue000';
    }

    @Ef.f
    public static final String M(char c10, String other) {
        kotlin.jvm.internal.M.p(other, "other");
        return c10 + other;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String N(char c10) {
        return d0.a(c10);
    }
}
