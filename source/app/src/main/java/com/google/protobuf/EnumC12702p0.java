package com.google.protobuf;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DOUBLE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC12702p0 {
    private static final EnumC12702p0[] $VALUES;
    public static final EnumC12702p0 BOOL;
    public static final EnumC12702p0 BOOL_LIST;
    public static final EnumC12702p0 BOOL_LIST_PACKED;
    public static final EnumC12702p0 BYTES;
    public static final EnumC12702p0 BYTES_LIST;
    public static final EnumC12702p0 DOUBLE;
    public static final EnumC12702p0 DOUBLE_LIST;
    public static final EnumC12702p0 DOUBLE_LIST_PACKED;
    private static final Type[] EMPTY_TYPES;
    public static final EnumC12702p0 ENUM;
    public static final EnumC12702p0 ENUM_LIST;
    public static final EnumC12702p0 ENUM_LIST_PACKED;
    public static final EnumC12702p0 FIXED32;
    public static final EnumC12702p0 FIXED32_LIST;
    public static final EnumC12702p0 FIXED32_LIST_PACKED;
    public static final EnumC12702p0 FIXED64;
    public static final EnumC12702p0 FIXED64_LIST;
    public static final EnumC12702p0 FIXED64_LIST_PACKED;
    public static final EnumC12702p0 FLOAT;
    public static final EnumC12702p0 FLOAT_LIST;
    public static final EnumC12702p0 FLOAT_LIST_PACKED;
    public static final EnumC12702p0 GROUP;
    public static final EnumC12702p0 GROUP_LIST;
    public static final EnumC12702p0 INT32;
    public static final EnumC12702p0 INT32_LIST;
    public static final EnumC12702p0 INT32_LIST_PACKED;
    public static final EnumC12702p0 INT64;
    public static final EnumC12702p0 INT64_LIST;
    public static final EnumC12702p0 INT64_LIST_PACKED;
    public static final EnumC12702p0 MAP;
    public static final EnumC12702p0 MESSAGE;
    public static final EnumC12702p0 MESSAGE_LIST;
    public static final EnumC12702p0 SFIXED32;
    public static final EnumC12702p0 SFIXED32_LIST;
    public static final EnumC12702p0 SFIXED32_LIST_PACKED;
    public static final EnumC12702p0 SFIXED64;
    public static final EnumC12702p0 SFIXED64_LIST;
    public static final EnumC12702p0 SFIXED64_LIST_PACKED;
    public static final EnumC12702p0 SINT32;
    public static final EnumC12702p0 SINT32_LIST;
    public static final EnumC12702p0 SINT32_LIST_PACKED;
    public static final EnumC12702p0 SINT64;
    public static final EnumC12702p0 SINT64_LIST;
    public static final EnumC12702p0 SINT64_LIST_PACKED;
    public static final EnumC12702p0 STRING;
    public static final EnumC12702p0 STRING_LIST;
    public static final EnumC12702p0 UINT32;
    public static final EnumC12702p0 UINT32_LIST;
    public static final EnumC12702p0 UINT32_LIST_PACKED;
    public static final EnumC12702p0 UINT64;
    public static final EnumC12702p0 UINT64_LIST;
    public static final EnumC12702p0 UINT64_LIST_PACKED;
    private static final EnumC12702p0[] VALUES;
    private final b collection;
    private final Class<?> elementType;

    private final int f69428id;
    private final G0 javaType;
    private final boolean primitiveScalar;

    public static class a {

        public static final int[] f69429a;

        public static final int[] f69430b;

        static {
            int[] iArr = new int[G0.values().length];
            f69430b = iArr;
            try {
                iArr[G0.BYTE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69430b[G0.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69430b[G0.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            f69429a = iArr2;
            try {
                iArr2[b.MAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69429a[b.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69429a[b.SCALAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        private final boolean isList;

        b(boolean isList) {
            this.isList = isList;
        }

        public boolean a() {
            return this.isList;
        }
    }

    static {
        b bVar = b.SCALAR;
        G0 g02 = G0.DOUBLE;
        EnumC12702p0 enumC12702p0 = new EnumC12702p0("DOUBLE", 0, 0, bVar, g02);
        DOUBLE = enumC12702p0;
        G0 g03 = G0.FLOAT;
        EnumC12702p0 enumC12702p02 = new EnumC12702p0("FLOAT", 1, 1, bVar, g03);
        FLOAT = enumC12702p02;
        G0 g04 = G0.LONG;
        EnumC12702p0 enumC12702p03 = new EnumC12702p0("INT64", 2, 2, bVar, g04);
        INT64 = enumC12702p03;
        EnumC12702p0 enumC12702p04 = new EnumC12702p0("UINT64", 3, 3, bVar, g04);
        UINT64 = enumC12702p04;
        G0 g05 = G0.INT;
        EnumC12702p0 enumC12702p05 = new EnumC12702p0("INT32", 4, 4, bVar, g05);
        INT32 = enumC12702p05;
        EnumC12702p0 enumC12702p06 = new EnumC12702p0("FIXED64", 5, 5, bVar, g04);
        FIXED64 = enumC12702p06;
        EnumC12702p0 enumC12702p07 = new EnumC12702p0("FIXED32", 6, 6, bVar, g05);
        FIXED32 = enumC12702p07;
        G0 g06 = G0.BOOLEAN;
        EnumC12702p0 enumC12702p08 = new EnumC12702p0("BOOL", 7, 7, bVar, g06);
        BOOL = enumC12702p08;
        G0 g07 = G0.STRING;
        EnumC12702p0 enumC12702p09 = new EnumC12702p0("STRING", 8, 8, bVar, g07);
        STRING = enumC12702p09;
        G0 g08 = G0.MESSAGE;
        EnumC12702p0 enumC12702p010 = new EnumC12702p0("MESSAGE", 9, 9, bVar, g08);
        MESSAGE = enumC12702p010;
        G0 g09 = G0.BYTE_STRING;
        EnumC12702p0 enumC12702p011 = new EnumC12702p0("BYTES", 10, 10, bVar, g09);
        BYTES = enumC12702p011;
        EnumC12702p0 enumC12702p012 = new EnumC12702p0("UINT32", 11, 11, bVar, g05);
        UINT32 = enumC12702p012;
        G0 g010 = G0.ENUM;
        EnumC12702p0 enumC12702p013 = new EnumC12702p0("ENUM", 12, 12, bVar, g010);
        ENUM = enumC12702p013;
        EnumC12702p0 enumC12702p014 = new EnumC12702p0("SFIXED32", 13, 13, bVar, g05);
        SFIXED32 = enumC12702p014;
        EnumC12702p0 enumC12702p015 = new EnumC12702p0("SFIXED64", 14, 14, bVar, g04);
        SFIXED64 = enumC12702p015;
        EnumC12702p0 enumC12702p016 = new EnumC12702p0("SINT32", 15, 15, bVar, g05);
        SINT32 = enumC12702p016;
        EnumC12702p0 enumC12702p017 = new EnumC12702p0("SINT64", 16, 16, bVar, g04);
        SINT64 = enumC12702p017;
        EnumC12702p0 enumC12702p018 = new EnumC12702p0("GROUP", 17, 17, bVar, g08);
        GROUP = enumC12702p018;
        b bVar2 = b.VECTOR;
        EnumC12702p0 enumC12702p019 = new EnumC12702p0("DOUBLE_LIST", 18, 18, bVar2, g02);
        DOUBLE_LIST = enumC12702p019;
        EnumC12702p0 enumC12702p020 = new EnumC12702p0("FLOAT_LIST", 19, 19, bVar2, g03);
        FLOAT_LIST = enumC12702p020;
        EnumC12702p0 enumC12702p021 = new EnumC12702p0("INT64_LIST", 20, 20, bVar2, g04);
        INT64_LIST = enumC12702p021;
        EnumC12702p0 enumC12702p022 = new EnumC12702p0("UINT64_LIST", 21, 21, bVar2, g04);
        UINT64_LIST = enumC12702p022;
        EnumC12702p0 enumC12702p023 = new EnumC12702p0("INT32_LIST", 22, 22, bVar2, g05);
        INT32_LIST = enumC12702p023;
        EnumC12702p0 enumC12702p024 = new EnumC12702p0("FIXED64_LIST", 23, 23, bVar2, g04);
        FIXED64_LIST = enumC12702p024;
        EnumC12702p0 enumC12702p025 = new EnumC12702p0("FIXED32_LIST", 24, 24, bVar2, g05);
        FIXED32_LIST = enumC12702p025;
        EnumC12702p0 enumC12702p026 = new EnumC12702p0("BOOL_LIST", 25, 25, bVar2, g06);
        BOOL_LIST = enumC12702p026;
        EnumC12702p0 enumC12702p027 = new EnumC12702p0("STRING_LIST", 26, 26, bVar2, g07);
        STRING_LIST = enumC12702p027;
        EnumC12702p0 enumC12702p028 = new EnumC12702p0("MESSAGE_LIST", 27, 27, bVar2, g08);
        MESSAGE_LIST = enumC12702p028;
        EnumC12702p0 enumC12702p029 = new EnumC12702p0("BYTES_LIST", 28, 28, bVar2, g09);
        BYTES_LIST = enumC12702p029;
        EnumC12702p0 enumC12702p030 = new EnumC12702p0("UINT32_LIST", 29, 29, bVar2, g05);
        UINT32_LIST = enumC12702p030;
        EnumC12702p0 enumC12702p031 = new EnumC12702p0("ENUM_LIST", 30, 30, bVar2, g010);
        ENUM_LIST = enumC12702p031;
        EnumC12702p0 enumC12702p032 = new EnumC12702p0("SFIXED32_LIST", 31, 31, bVar2, g05);
        SFIXED32_LIST = enumC12702p032;
        EnumC12702p0 enumC12702p033 = new EnumC12702p0("SFIXED64_LIST", 32, 32, bVar2, g04);
        SFIXED64_LIST = enumC12702p033;
        EnumC12702p0 enumC12702p034 = new EnumC12702p0("SINT32_LIST", 33, 33, bVar2, g05);
        SINT32_LIST = enumC12702p034;
        EnumC12702p0 enumC12702p035 = new EnumC12702p0("SINT64_LIST", 34, 34, bVar2, g04);
        SINT64_LIST = enumC12702p035;
        b bVar3 = b.PACKED_VECTOR;
        EnumC12702p0 enumC12702p036 = new EnumC12702p0("DOUBLE_LIST_PACKED", 35, 35, bVar3, g02);
        DOUBLE_LIST_PACKED = enumC12702p036;
        EnumC12702p0 enumC12702p037 = new EnumC12702p0("FLOAT_LIST_PACKED", 36, 36, bVar3, g03);
        FLOAT_LIST_PACKED = enumC12702p037;
        EnumC12702p0 enumC12702p038 = new EnumC12702p0("INT64_LIST_PACKED", 37, 37, bVar3, g04);
        INT64_LIST_PACKED = enumC12702p038;
        EnumC12702p0 enumC12702p039 = new EnumC12702p0("UINT64_LIST_PACKED", 38, 38, bVar3, g04);
        UINT64_LIST_PACKED = enumC12702p039;
        EnumC12702p0 enumC12702p040 = new EnumC12702p0("INT32_LIST_PACKED", 39, 39, bVar3, g05);
        INT32_LIST_PACKED = enumC12702p040;
        EnumC12702p0 enumC12702p041 = new EnumC12702p0("FIXED64_LIST_PACKED", 40, 40, bVar3, g04);
        FIXED64_LIST_PACKED = enumC12702p041;
        EnumC12702p0 enumC12702p042 = new EnumC12702p0("FIXED32_LIST_PACKED", 41, 41, bVar3, g05);
        FIXED32_LIST_PACKED = enumC12702p042;
        EnumC12702p0 enumC12702p043 = new EnumC12702p0("BOOL_LIST_PACKED", 42, 42, bVar3, g06);
        BOOL_LIST_PACKED = enumC12702p043;
        EnumC12702p0 enumC12702p044 = new EnumC12702p0("UINT32_LIST_PACKED", 43, 43, bVar3, g05);
        UINT32_LIST_PACKED = enumC12702p044;
        EnumC12702p0 enumC12702p045 = new EnumC12702p0("ENUM_LIST_PACKED", 44, 44, bVar3, g010);
        ENUM_LIST_PACKED = enumC12702p045;
        EnumC12702p0 enumC12702p046 = new EnumC12702p0("SFIXED32_LIST_PACKED", 45, 45, bVar3, g05);
        SFIXED32_LIST_PACKED = enumC12702p046;
        EnumC12702p0 enumC12702p047 = new EnumC12702p0("SFIXED64_LIST_PACKED", 46, 46, bVar3, g04);
        SFIXED64_LIST_PACKED = enumC12702p047;
        EnumC12702p0 enumC12702p048 = new EnumC12702p0("SINT32_LIST_PACKED", 47, 47, bVar3, g05);
        SINT32_LIST_PACKED = enumC12702p048;
        EnumC12702p0 enumC12702p049 = new EnumC12702p0("SINT64_LIST_PACKED", 48, 48, bVar3, g04);
        SINT64_LIST_PACKED = enumC12702p049;
        EnumC12702p0 enumC12702p050 = new EnumC12702p0("GROUP_LIST", 49, 49, bVar2, g08);
        GROUP_LIST = enumC12702p050;
        EnumC12702p0 enumC12702p051 = new EnumC12702p0("MAP", 50, 50, b.MAP, G0.VOID);
        MAP = enumC12702p051;
        $VALUES = new EnumC12702p0[]{enumC12702p0, enumC12702p02, enumC12702p03, enumC12702p04, enumC12702p05, enumC12702p06, enumC12702p07, enumC12702p08, enumC12702p09, enumC12702p010, enumC12702p011, enumC12702p012, enumC12702p013, enumC12702p014, enumC12702p015, enumC12702p016, enumC12702p017, enumC12702p018, enumC12702p019, enumC12702p020, enumC12702p021, enumC12702p022, enumC12702p023, enumC12702p024, enumC12702p025, enumC12702p026, enumC12702p027, enumC12702p028, enumC12702p029, enumC12702p030, enumC12702p031, enumC12702p032, enumC12702p033, enumC12702p034, enumC12702p035, enumC12702p036, enumC12702p037, enumC12702p038, enumC12702p039, enumC12702p040, enumC12702p041, enumC12702p042, enumC12702p043, enumC12702p044, enumC12702p045, enumC12702p046, enumC12702p047, enumC12702p048, enumC12702p049, enumC12702p050, enumC12702p051};
        EMPTY_TYPES = new Type[0];
        EnumC12702p0[] values = values();
        VALUES = new EnumC12702p0[values.length];
        for (EnumC12702p0 enumC12702p052 : values) {
            VALUES[enumC12702p052.f69428id] = enumC12702p052;
        }
    }

    public EnumC12702p0(String $enum$name, int $enum$ordinal, int id2, b collection, G0 javaType) {
        int i10;
        this.f69428id = id2;
        this.collection = collection;
        this.javaType = javaType;
        int i11 = a.f69429a[collection.ordinal()];
        if (i11 == 1) {
            this.elementType = javaType.a();
        } else if (i11 != 2) {
            this.elementType = null;
        } else {
            this.elementType = javaType.a();
        }
        this.primitiveScalar = (collection != b.SCALAR || (i10 = a.f69430b[javaType.ordinal()]) == 1 || i10 == 2 || i10 == 3) ? false : true;
    }

    public static EnumC12702p0 a(int id2) {
        if (id2 < 0) {
            return null;
        }
        EnumC12702p0[] enumC12702p0Arr = VALUES;
        if (id2 >= enumC12702p0Arr.length) {
            return null;
        }
        return enumC12702p0Arr[id2];
    }

    public static Type b(Class<?> clazz) {
        for (Type type : clazz.getGenericInterfaces()) {
            if ((type instanceof ParameterizedType) && List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
                return type;
            }
        }
        Type genericSuperclass = clazz.getGenericSuperclass();
        if ((genericSuperclass instanceof ParameterizedType) && List.class.isAssignableFrom((Class) ((ParameterizedType) genericSuperclass).getRawType())) {
            return genericSuperclass;
        }
        return null;
    }

    public static Type d(Class<?> clazz, Type[] realTypes) {
        while (true) {
            int i10 = 0;
            if (clazz == List.class) {
                if (realTypes.length == 1) {
                    return realTypes[0];
                }
                throw new RuntimeException("Unable to identify parameter type for List<T>");
            }
            Type b10 = b(clazz);
            if (!(b10 instanceof ParameterizedType)) {
                realTypes = EMPTY_TYPES;
                Class<?>[] interfaces = clazz.getInterfaces();
                int length = interfaces.length;
                while (true) {
                    if (i10 >= length) {
                        clazz = clazz.getSuperclass();
                        break;
                    }
                    Class<?> cls = interfaces[i10];
                    if (List.class.isAssignableFrom(cls)) {
                        clazz = cls;
                        break;
                    }
                    i10++;
                }
            } else {
                ParameterizedType parameterizedType = (ParameterizedType) b10;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
                    Type type = actualTypeArguments[i11];
                    if (type instanceof TypeVariable) {
                        TypeVariable<Class<?>>[] typeParameters = clazz.getTypeParameters();
                        if (realTypes.length != typeParameters.length) {
                            throw new RuntimeException("Type array mismatch");
                        }
                        for (int i12 = 0; i12 < typeParameters.length; i12++) {
                            if (type == typeParameters[i12]) {
                                actualTypeArguments[i11] = realTypes[i12];
                            }
                        }
                        throw new RuntimeException("Unable to find replacement for " + ((Object) type));
                    }
                }
                clazz = (Class) parameterizedType.getRawType();
                realTypes = actualTypeArguments;
            }
        }
    }

    public static EnumC12702p0 valueOf(String name) {
        return (EnumC12702p0) Enum.valueOf(EnumC12702p0.class, name);
    }

    public static EnumC12702p0[] values() {
        return (EnumC12702p0[]) $VALUES.clone();
    }

    public G0 c() {
        return this.javaType;
    }

    public int e() {
        return this.f69428id;
    }

    public boolean g() {
        return this.collection.a();
    }

    public boolean h() {
        return this.collection == b.MAP;
    }

    public boolean i() {
        return this.primitiveScalar;
    }

    public boolean i2() {
        return b.PACKED_VECTOR.equals(this.collection);
    }

    public boolean j() {
        return this.collection == b.SCALAR;
    }

    public boolean k(Field field) {
        return b.VECTOR.equals(this.collection) ? m(field) : this.javaType.c().isAssignableFrom(field.getType());
    }

    public final boolean m(Field field) {
        Class<?> type = field.getType();
        if (!this.javaType.c().isAssignableFrom(type)) {
            return false;
        }
        Type[] typeArr = EMPTY_TYPES;
        if (field.getGenericType() instanceof ParameterizedType) {
            typeArr = ((ParameterizedType) field.getGenericType()).getActualTypeArguments();
        }
        Type d10 = d(type, typeArr);
        if (d10 instanceof Class) {
            return this.elementType.isAssignableFrom((Class) d10);
        }
        return true;
    }
}
