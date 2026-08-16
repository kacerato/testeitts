package of;

import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class b {
    private static final Cf.a $ENTRIES;
    private static final b[] $VALUES;
    public static final b CLASS = new b(SuffixConstants.EXTENSION_CLASS, 0);
    public static final b ANNOTATION_CLASS = new b("ANNOTATION_CLASS", 1);
    public static final b TYPE_PARAMETER = new b("TYPE_PARAMETER", 2);
    public static final b PROPERTY = new b("PROPERTY", 3);
    public static final b FIELD = new b("FIELD", 4);
    public static final b LOCAL_VARIABLE = new b("LOCAL_VARIABLE", 5);
    public static final b VALUE_PARAMETER = new b("VALUE_PARAMETER", 6);
    public static final b CONSTRUCTOR = new b("CONSTRUCTOR", 7);
    public static final b FUNCTION = new b("FUNCTION", 8);
    public static final b PROPERTY_GETTER = new b("PROPERTY_GETTER", 9);
    public static final b PROPERTY_SETTER = new b("PROPERTY_SETTER", 10);
    public static final b TYPE = new b("TYPE", 11);
    public static final b EXPRESSION = new b("EXPRESSION", 12);
    public static final b FILE = new b("FILE", 13);

    @InterfaceC14422l0(version = "1.1")
    public static final b TYPEALIAS = new b("TYPEALIAS", 14);

    static {
        b[] a10 = a();
        $VALUES = a10;
        $ENTRIES = Cf.c.c(a10);
    }

    public b(String str, int i10) {
    }

    public static final b[] a() {
        return new b[]{CLASS, ANNOTATION_CLASS, TYPE_PARAMETER, PROPERTY, FIELD, LOCAL_VARIABLE, VALUE_PARAMETER, CONSTRUCTOR, FUNCTION, PROPERTY_GETTER, PROPERTY_SETTER, TYPE, EXPRESSION, FILE, TYPEALIAS};
    }

    @NotNull
    public static Cf.a<b> b() {
        return $ENTRIES;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }
}
