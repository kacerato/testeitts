package ag;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnumC3641x implements InterfaceC3628j {
    private static final Cf.a $ENTRIES;
    private static final EnumC3641x[] $VALUES;
    public static final EnumC3641x CANON_EQ;
    public static final EnumC3641x COMMENTS;
    public static final EnumC3641x DOT_MATCHES_ALL;
    public static final EnumC3641x IGNORE_CASE;
    public static final EnumC3641x LITERAL;
    public static final EnumC3641x MULTILINE;
    public static final EnumC3641x UNIX_LINES;
    private final int mask;
    private final int value;

    static {
        int i10 = 2;
        IGNORE_CASE = new EnumC3641x("IGNORE_CASE", 0, i10, 0, 2, null);
        int i11 = 2;
        C14026x c14026x = null;
        int i12 = 0;
        MULTILINE = new EnumC3641x("MULTILINE", 1, 8, i12, i11, c14026x);
        int i13 = 2;
        C14026x c14026x2 = null;
        int i14 = 0;
        LITERAL = new EnumC3641x("LITERAL", i10, 16, i14, i13, c14026x2);
        UNIX_LINES = new EnumC3641x("UNIX_LINES", 3, 1, i12, i11, c14026x);
        COMMENTS = new EnumC3641x("COMMENTS", 4, 4, i14, i13, c14026x2);
        DOT_MATCHES_ALL = new EnumC3641x("DOT_MATCHES_ALL", 5, 32, i12, i11, c14026x);
        CANON_EQ = new EnumC3641x("CANON_EQ", 6, 128, i14, i13, c14026x2);
        EnumC3641x[] b10 = b();
        $VALUES = b10;
        $ENTRIES = Cf.c.c(b10);
    }

    public EnumC3641x(String str, int i10, int i11, int i12) {
        this.value = i11;
        this.mask = i12;
    }

    public static final EnumC3641x[] b() {
        return new EnumC3641x[]{IGNORE_CASE, MULTILINE, LITERAL, UNIX_LINES, COMMENTS, DOT_MATCHES_ALL, CANON_EQ};
    }

    @NotNull
    public static Cf.a<EnumC3641x> c() {
        return $ENTRIES;
    }

    public static EnumC3641x valueOf(String str) {
        return (EnumC3641x) Enum.valueOf(EnumC3641x.class, str);
    }

    public static EnumC3641x[] values() {
        return (EnumC3641x[]) $VALUES.clone();
    }

    @Override
    public int a() {
        return this.mask;
    }

    @Override
    public int getValue() {
        return this.value;
    }

    public EnumC3641x(String str, int i10, int i11, int i12, int i13, C14026x c14026x) {
        this(str, i10, i11, (i13 & 2) != 0 ? i11 : i12);
    }
}
