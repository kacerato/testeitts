package ag;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnumC3619a {
    private static final Cf.a $ENTRIES;
    private static final EnumC3619a[] $VALUES;

    @NotNull
    public static final C0859a Companion;

    @NotNull
    private final String code;
    private final int value;
    public static final EnumC3619a UNASSIGNED = new EnumC3619a("UNASSIGNED", 0, 0, "Cn");
    public static final EnumC3619a UPPERCASE_LETTER = new EnumC3619a("UPPERCASE_LETTER", 1, 1, "Lu");
    public static final EnumC3619a LOWERCASE_LETTER = new EnumC3619a("LOWERCASE_LETTER", 2, 2, "Ll");
    public static final EnumC3619a TITLECASE_LETTER = new EnumC3619a("TITLECASE_LETTER", 3, 3, "Lt");
    public static final EnumC3619a MODIFIER_LETTER = new EnumC3619a("MODIFIER_LETTER", 4, 4, "Lm");
    public static final EnumC3619a OTHER_LETTER = new EnumC3619a("OTHER_LETTER", 5, 5, "Lo");
    public static final EnumC3619a NON_SPACING_MARK = new EnumC3619a("NON_SPACING_MARK", 6, 6, "Mn");
    public static final EnumC3619a ENCLOSING_MARK = new EnumC3619a("ENCLOSING_MARK", 7, 7, "Me");
    public static final EnumC3619a COMBINING_SPACING_MARK = new EnumC3619a("COMBINING_SPACING_MARK", 8, 8, "Mc");
    public static final EnumC3619a DECIMAL_DIGIT_NUMBER = new EnumC3619a("DECIMAL_DIGIT_NUMBER", 9, 9, "Nd");
    public static final EnumC3619a LETTER_NUMBER = new EnumC3619a("LETTER_NUMBER", 10, 10, "Nl");
    public static final EnumC3619a OTHER_NUMBER = new EnumC3619a("OTHER_NUMBER", 11, 11, "No");
    public static final EnumC3619a SPACE_SEPARATOR = new EnumC3619a("SPACE_SEPARATOR", 12, 12, "Zs");
    public static final EnumC3619a LINE_SEPARATOR = new EnumC3619a("LINE_SEPARATOR", 13, 13, "Zl");
    public static final EnumC3619a PARAGRAPH_SEPARATOR = new EnumC3619a("PARAGRAPH_SEPARATOR", 14, 14, "Zp");
    public static final EnumC3619a CONTROL = new EnumC3619a("CONTROL", 15, 15, "Cc");
    public static final EnumC3619a FORMAT = new EnumC3619a("FORMAT", 16, 16, "Cf");
    public static final EnumC3619a PRIVATE_USE = new EnumC3619a("PRIVATE_USE", 17, 18, "Co");
    public static final EnumC3619a SURROGATE = new EnumC3619a("SURROGATE", 18, 19, "Cs");
    public static final EnumC3619a DASH_PUNCTUATION = new EnumC3619a("DASH_PUNCTUATION", 19, 20, "Pd");
    public static final EnumC3619a START_PUNCTUATION = new EnumC3619a("START_PUNCTUATION", 20, 21, "Ps");
    public static final EnumC3619a END_PUNCTUATION = new EnumC3619a("END_PUNCTUATION", 21, 22, "Pe");
    public static final EnumC3619a CONNECTOR_PUNCTUATION = new EnumC3619a("CONNECTOR_PUNCTUATION", 22, 23, "Pc");
    public static final EnumC3619a OTHER_PUNCTUATION = new EnumC3619a("OTHER_PUNCTUATION", 23, 24, "Po");
    public static final EnumC3619a MATH_SYMBOL = new EnumC3619a("MATH_SYMBOL", 24, 25, "Sm");
    public static final EnumC3619a CURRENCY_SYMBOL = new EnumC3619a("CURRENCY_SYMBOL", 25, 26, "Sc");
    public static final EnumC3619a MODIFIER_SYMBOL = new EnumC3619a("MODIFIER_SYMBOL", 26, 27, "Sk");
    public static final EnumC3619a OTHER_SYMBOL = new EnumC3619a("OTHER_SYMBOL", 27, 28, "So");
    public static final EnumC3619a INITIAL_QUOTE_PUNCTUATION = new EnumC3619a("INITIAL_QUOTE_PUNCTUATION", 28, 29, "Pi");
    public static final EnumC3619a FINAL_QUOTE_PUNCTUATION = new EnumC3619a("FINAL_QUOTE_PUNCTUATION", 29, 30, "Pf");

    public static final class C0859a {
        public C0859a(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final EnumC3619a a(int i10) {
            if (i10 >= 0 && i10 < 17) {
                return (EnumC3619a) EnumC3619a.d().get(i10);
            }
            if (18 <= i10 && i10 < 31) {
                return (EnumC3619a) EnumC3619a.d().get(i10 - 1);
            }
            throw new IllegalArgumentException("Category #" + i10 + " is not defined.");
        }

        public C0859a() {
        }
    }

    static {
        EnumC3619a[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
        Companion = new C0859a(null);
    }

    public EnumC3619a(String str, int i10, int i11, String str2) {
        this.value = i11;
        this.code = str2;
    }

    public static final EnumC3619a[] a() {
        return new EnumC3619a[]{UNASSIGNED, UPPERCASE_LETTER, LOWERCASE_LETTER, TITLECASE_LETTER, MODIFIER_LETTER, OTHER_LETTER, NON_SPACING_MARK, ENCLOSING_MARK, COMBINING_SPACING_MARK, DECIMAL_DIGIT_NUMBER, LETTER_NUMBER, OTHER_NUMBER, SPACE_SEPARATOR, LINE_SEPARATOR, PARAGRAPH_SEPARATOR, CONTROL, FORMAT, PRIVATE_USE, SURROGATE, DASH_PUNCTUATION, START_PUNCTUATION, END_PUNCTUATION, CONNECTOR_PUNCTUATION, OTHER_PUNCTUATION, MATH_SYMBOL, CURRENCY_SYMBOL, MODIFIER_SYMBOL, OTHER_SYMBOL, INITIAL_QUOTE_PUNCTUATION, FINAL_QUOTE_PUNCTUATION};
    }

    @NotNull
    public static Cf.a<EnumC3619a> d() {
        return $ENTRIES;
    }

    public static EnumC3619a valueOf(String str) {
        return (EnumC3619a) Enum.valueOf(EnumC3619a.class, str);
    }

    public static EnumC3619a[] values() {
        return (EnumC3619a[]) $VALUES.clone();
    }

    public final boolean b(char c10) {
        return Character.getType(c10) == this.value;
    }

    @NotNull
    public final String c() {
        return this.code;
    }

    public final int e() {
        return this.value;
    }
}
