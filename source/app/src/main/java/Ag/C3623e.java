package ag;

import java.util.Locale;
import nf.InterfaceC14394D;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;

public class C3623e {
    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String A(char c10) {
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(Locale.ROOT);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String B(char c10, @NotNull Locale locale) {
        kotlin.jvm.internal.M.p(locale, "locale");
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(locale);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final char C(char c10) {
        return Character.toUpperCase(c10);
    }

    @InterfaceC14410f0
    @InterfaceC14394D
    public static int a(int i10) {
        if (2 <= i10 && i10 < 37) {
            return i10;
        }
        throw new IllegalArgumentException("radix " + i10 + " was not in valid range " + ((Object) new Vf.l(2, 36)));
    }

    public static final int b(char c10, int i10) {
        return Character.digit((int) c10, i10);
    }

    @NotNull
    public static final EnumC3619a c(char c10) {
        return EnumC3619a.Companion.a(Character.getType(c10));
    }

    @NotNull
    public static final EnumC3621c d(char c10) {
        return EnumC3621c.Companion.b(Character.getDirectionality(c10));
    }

    @Ef.f
    public static final boolean e(char c10) {
        return Character.isDefined(c10);
    }

    @Ef.f
    public static final boolean f(char c10) {
        return Character.isDigit(c10);
    }

    @Ef.f
    public static final boolean g(char c10) {
        return Character.isHighSurrogate(c10);
    }

    @Ef.f
    public static final boolean h(char c10) {
        return Character.isISOControl(c10);
    }

    @Ef.f
    public static final boolean i(char c10) {
        return Character.isIdentifierIgnorable(c10);
    }

    @Ef.f
    public static final boolean j(char c10) {
        return Character.isJavaIdentifierPart(c10);
    }

    @Ef.f
    public static final boolean k(char c10) {
        return Character.isJavaIdentifierStart(c10);
    }

    @Ef.f
    public static final boolean l(char c10) {
        return Character.isLetter(c10);
    }

    @Ef.f
    public static final boolean m(char c10) {
        return Character.isLetterOrDigit(c10);
    }

    @Ef.f
    public static final boolean n(char c10) {
        return Character.isLowSurrogate(c10);
    }

    @Ef.f
    public static final boolean o(char c10) {
        return Character.isLowerCase(c10);
    }

    @Ef.f
    public static final boolean p(char c10) {
        return Character.isTitleCase(c10);
    }

    @Ef.f
    public static final boolean q(char c10) {
        return Character.isUpperCase(c10);
    }

    public static boolean r(char c10) {
        return Character.isWhitespace(c10) || Character.isSpaceChar(c10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final String s(char c10) {
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = valueOf.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String t(char c10, @NotNull Locale locale) {
        kotlin.jvm.internal.M.p(locale, "locale");
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = valueOf.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final char u(char c10) {
        return Character.toLowerCase(c10);
    }

    @InterfaceC14422l0(version = "1.5")
    @NotNull
    public static final String v(char c10, @NotNull Locale locale) {
        kotlin.jvm.internal.M.p(locale, "locale");
        String B10 = B(c10, locale);
        if (B10.length() <= 1) {
            String valueOf = String.valueOf(c10);
            kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = valueOf.toUpperCase(Locale.ROOT);
            kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
            return !kotlin.jvm.internal.M.g(B10, upperCase) ? B10 : String.valueOf(Character.toTitleCase(c10));
        }
        if (c10 == '\u0149') {
            return B10;
        }
        char charAt = B10.charAt(0);
        kotlin.jvm.internal.M.n(B10, "null cannot be cast to non-null type java.lang.String");
        String substring = B10.substring(1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return charAt + lowerCase;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final char w(char c10) {
        return Character.toTitleCase(c10);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use lowercaseChar() instead.", replaceWith = @InterfaceC14412g0(expression = "lowercaseChar()", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final char x(char c10) {
        return Character.toLowerCase(c10);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use titlecaseChar() instead.", replaceWith = @InterfaceC14412g0(expression = "titlecaseChar()", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final char y(char c10) {
        return Character.toTitleCase(c10);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use uppercaseChar() instead.", replaceWith = @InterfaceC14412g0(expression = "uppercaseChar()", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.5")
    public static final char z(char c10) {
        return Character.toUpperCase(c10);
    }
}
