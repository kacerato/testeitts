package ag;

import java.util.Locale;
import org.jetbrains.annotations.NotNull;

public final class d0 {
    @NotNull
    public static final String a(char c10) {
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.M.n(valueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = valueOf.toUpperCase(locale);
        kotlin.jvm.internal.M.o(upperCase, "toUpperCase(...)");
        if (upperCase.length() <= 1) {
            return String.valueOf(Character.toTitleCase(c10));
        }
        if (c10 == '\u0149') {
            return upperCase;
        }
        char charAt = upperCase.charAt(0);
        kotlin.jvm.internal.M.n(upperCase, "null cannot be cast to non-null type java.lang.String");
        String substring = upperCase.substring(1);
        kotlin.jvm.internal.M.o(substring, "substring(...)");
        kotlin.jvm.internal.M.n(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        kotlin.jvm.internal.M.o(lowerCase, "toLowerCase(...)");
        return charAt + lowerCase;
    }
}
