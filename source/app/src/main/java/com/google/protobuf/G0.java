package com.google.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class G0 {
    private static final G0[] $VALUES;
    public static final G0 BOOLEAN;
    public static final G0 BYTE_STRING;
    public static final G0 DOUBLE;
    public static final G0 ENUM;
    public static final G0 FLOAT;
    public static final G0 INT;
    public static final G0 LONG;
    public static final G0 MESSAGE;
    public static final G0 STRING;
    public static final G0 VOID;
    private final Class<?> boxedType;
    private final Object defaultDefault;
    private final Class<?> type;

    static {
        G0 g02 = new G0("VOID", 0, Void.class, Void.class, null);
        VOID = g02;
        Class<Integer> cls = Integer.TYPE;
        G0 g03 = new G0("INT", 1, cls, Integer.class, 0);
        INT = g03;
        G0 g04 = new G0("LONG", 2, Long.TYPE, Long.class, 0L);
        LONG = g04;
        G0 g05 = new G0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        FLOAT = g05;
        G0 g06 = new G0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        DOUBLE = g06;
        G0 g07 = new G0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        BOOLEAN = g07;
        G0 g08 = new G0("STRING", 6, String.class, String.class, "");
        STRING = g08;
        G0 g09 = new G0("BYTE_STRING", 7, AbstractC12724x.class, AbstractC12724x.class, AbstractC12724x.f69696g);
        BYTE_STRING = g09;
        G0 g010 = new G0("ENUM", 8, cls, Integer.class, null);
        ENUM = g010;
        G0 g011 = new G0("MESSAGE", 9, Object.class, Object.class, null);
        MESSAGE = g011;
        $VALUES = new G0[]{g02, g03, g04, g05, g06, g07, g08, g09, g010, g011};
    }

    public G0(String $enum$name, int $enum$ordinal, Class type, Class boxedType, Object defaultDefault) {
        this.type = type;
        this.boxedType = boxedType;
        this.defaultDefault = defaultDefault;
    }

    public static G0 valueOf(String name) {
        return (G0) Enum.valueOf(G0.class, name);
    }

    public static G0[] values() {
        return (G0[]) $VALUES.clone();
    }

    public Class<?> a() {
        return this.boxedType;
    }

    public Object b() {
        return this.defaultDefault;
    }

    public Class<?> c() {
        return this.type;
    }

    public boolean d(Class<?> t10) {
        return this.type.isAssignableFrom(t10);
    }
}
