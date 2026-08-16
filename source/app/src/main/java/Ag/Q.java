package ag;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\n_StringsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _StringsJvm.kt\nkotlin/text/StringsKt___StringsJvmKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,108:1\n1279#2,14:109\n1603#2,14:123\n*S KotlinDebug\n*F\n+ 1 _StringsJvm.kt\nkotlin/text/StringsKt___StringsJvmKt\n*L\n45#1:109,14\n66#1:123,14\n*E\n"})
public class Q extends P {
    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character A6(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return X.J8(charSequence);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Character B6(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return Character.valueOf(charAt);
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) > 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character C6(CharSequence charSequence, Comparator comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return X.L8(charSequence, comparator);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal D6(CharSequence charSequence, Mf.l<? super Character, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            valueOf = valueOf.add(selector.invoke(Character.valueOf(charSequence.charAt(i10))));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger E6(CharSequence charSequence, Mf.l<? super Character, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            valueOf = valueOf.add(selector.invoke(Character.valueOf(charSequence.charAt(i10))));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final SortedSet<Character> F6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return (SortedSet) X.K9(charSequence, new TreeSet());
    }

    @Ef.f
    public static final char w6(CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.charAt(i10);
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character x6(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return X.v8(charSequence);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Character y6(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return Character.valueOf(charAt);
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) < 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character z6(CharSequence charSequence, Comparator comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return X.x8(charSequence, comparator);
    }
}
