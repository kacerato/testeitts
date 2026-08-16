package com.google.protobuf;

import java.io.IOException;

public final class A2 {

    public static final int f67788a = 4;

    public static final int f67789b = 8;

    public static final int f67790c = 5;

    public static final int f67791d = 10;

    public static final int f67792e = 10;

    public static final int f67793f = 0;

    public static final int f67794g = 1;

    public static final int f67795h = 2;

    public static final int f67796i = 3;

    public static final int f67797j = 4;

    public static final int f67798k = 5;

    public static final int f67799l = 3;

    public static final int f67800m = 7;

    public static final int f67801n = 1;

    public static final int f67802o = 2;

    public static final int f67803p = 3;

    public static final int f67804q = c(1, 3);

    public static final int f67805r = c(1, 4);

    public static final int f67806s = c(2, 0);

    public static final int f67807t = c(3, 2);

    public static class a {

        public static final int[] f67808a;

        static {
            int[] iArr = new int[b.values().length];
            f67808a = iArr;
            try {
                iArr[b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67808a[b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67808a[b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67808a[b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67808a[b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f67808a[b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f67808a[b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f67808a[b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f67808a[b.BYTES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f67808a[b.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f67808a[b.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f67808a[b.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f67808a[b.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f67808a[b.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f67808a[b.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f67808a[b.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f67808a[b.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f67808a[b.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class b {
        private static final b[] $VALUES;
        public static final b BOOL;
        public static final b BYTES;
        public static final b DOUBLE;
        public static final b ENUM;
        public static final b FIXED32;
        public static final b FIXED64;
        public static final b FLOAT;
        public static final b GROUP;
        public static final b INT32;
        public static final b INT64;
        public static final b MESSAGE;
        public static final b SFIXED32;
        public static final b SFIXED64;
        public static final b SINT32;
        public static final b SINT64;
        public static final b STRING;
        public static final b UINT32;
        public static final b UINT64;
        private final c javaType;
        private final int wireType;

        public enum a extends b {
            public a(String $enum$name, int $enum$ordinal, final c javaType, final int wireType) {
                super($enum$name, $enum$ordinal, javaType, wireType, null);
            }

            @Override
            public boolean c() {
                return false;
            }
        }

        public enum C1026b extends b {
            public C1026b(String $enum$name, int $enum$ordinal, final c javaType, final int wireType) {
                super($enum$name, $enum$ordinal, javaType, wireType, null);
            }

            @Override
            public boolean c() {
                return false;
            }
        }

        public enum c extends b {
            public c(String $enum$name, int $enum$ordinal, final c javaType, final int wireType) {
                super($enum$name, $enum$ordinal, javaType, wireType, null);
            }

            @Override
            public boolean c() {
                return false;
            }
        }

        public enum d extends b {
            public d(String $enum$name, int $enum$ordinal, final c javaType, final int wireType) {
                super($enum$name, $enum$ordinal, javaType, wireType, null);
            }

            @Override
            public boolean c() {
                return false;
            }
        }

        static {
            b bVar = new b("DOUBLE", 0, c.DOUBLE, 1);
            DOUBLE = bVar;
            b bVar2 = new b("FLOAT", 1, c.FLOAT, 5);
            FLOAT = bVar2;
            c cVar = c.LONG;
            b bVar3 = new b("INT64", 2, cVar, 0);
            INT64 = bVar3;
            b bVar4 = new b("UINT64", 3, cVar, 0);
            UINT64 = bVar4;
            c cVar2 = c.INT;
            b bVar5 = new b("INT32", 4, cVar2, 0);
            INT32 = bVar5;
            b bVar6 = new b("FIXED64", 5, cVar, 1);
            FIXED64 = bVar6;
            b bVar7 = new b("FIXED32", 6, cVar2, 5);
            FIXED32 = bVar7;
            b bVar8 = new b("BOOL", 7, c.BOOLEAN, 0);
            BOOL = bVar8;
            a aVar = new a("STRING", 8, c.STRING, 2);
            STRING = aVar;
            c cVar3 = c.MESSAGE;
            C1026b c1026b = new C1026b("GROUP", 9, cVar3, 3);
            GROUP = c1026b;
            c cVar4 = new c("MESSAGE", 10, cVar3, 2);
            MESSAGE = cVar4;
            d dVar = new d("BYTES", 11, c.BYTE_STRING, 2);
            BYTES = dVar;
            b bVar9 = new b("UINT32", 12, cVar2, 0);
            UINT32 = bVar9;
            b bVar10 = new b("ENUM", 13, c.ENUM, 0);
            ENUM = bVar10;
            b bVar11 = new b("SFIXED32", 14, cVar2, 5);
            SFIXED32 = bVar11;
            b bVar12 = new b("SFIXED64", 15, cVar, 1);
            SFIXED64 = bVar12;
            b bVar13 = new b("SINT32", 16, cVar2, 0);
            SINT32 = bVar13;
            b bVar14 = new b("SINT64", 17, cVar, 0);
            SINT64 = bVar14;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, aVar, c1026b, cVar4, dVar, bVar9, bVar10, bVar11, bVar12, bVar13, bVar14};
        }

        public b(String str, int i10, c cVar, int i11, a aVar) {
            this(str, i10, cVar, i11);
        }

        public static b valueOf(String name) {
            return (b) Enum.valueOf(b.class, name);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        public c a() {
            return this.javaType;
        }

        public int b() {
            return this.wireType;
        }

        public boolean c() {
            return true;
        }

        public b(String $enum$name, int $enum$ordinal, final c javaType, final int wireType) {
            this.javaType = javaType;
            this.wireType = wireType;
        }
    }

    public enum c {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(AbstractC12724x.f69696g),
        ENUM(null),
        MESSAGE(null);

        private final Object defaultDefault;

        c(final Object defaultDefault) {
            this.defaultDefault = defaultDefault;
        }

        public Object a() {
            return this.defaultDefault;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class d {
        private static final d[] $VALUES;
        public static final d LAZY;
        public static final d LOOSE;
        public static final d STRICT;

        public enum a extends d {
            public a(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override
            public Object a(C input) throws IOException {
                return input.X();
            }
        }

        public enum b extends d {
            public b(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override
            public Object a(C input) throws IOException {
                return input.Y();
            }
        }

        public enum c extends d {
            public c(String $enum$name, int $enum$ordinal) {
                super($enum$name, $enum$ordinal, null);
            }

            @Override
            public Object a(C input) throws IOException {
                return input.y();
            }
        }

        static {
            a aVar = new a("LOOSE", 0);
            LOOSE = aVar;
            b bVar = new b("STRICT", 1);
            STRICT = bVar;
            c cVar = new c("LAZY", 2);
            LAZY = cVar;
            $VALUES = new d[]{aVar, bVar, cVar};
        }

        public d(String $enum$name, int $enum$ordinal) {
        }

        public static d valueOf(String name) {
            return (d) Enum.valueOf(d.class, name);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }

        public abstract Object a(C input) throws IOException;

        public d(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public static int a(final int tag) {
        return tag >>> 3;
    }

    public static int b(final int tag) {
        return tag & 7;
    }

    public static int c(final int fieldNumber, final int wireType) {
        return (fieldNumber << 3) | wireType;
    }

    public static Object d(C input, b type, d utf8Validation) throws IOException {
        switch (a.f67808a[type.ordinal()]) {
            case 1:
                return Double.valueOf(input.z());
            case 2:
                return Float.valueOf(input.D());
            case 3:
                return Long.valueOf(input.H());
            case 4:
                return Long.valueOf(input.b0());
            case 5:
                return Integer.valueOf(input.G());
            case 6:
                return Long.valueOf(input.C());
            case 7:
                return Integer.valueOf(input.B());
            case 8:
                return Boolean.valueOf(input.v());
            case 9:
                return input.y();
            case 10:
                return Integer.valueOf(input.a0());
            case 11:
                return Integer.valueOf(input.T());
            case 12:
                return Long.valueOf(input.U());
            case 13:
                return Integer.valueOf(input.V());
            case 14:
                return Long.valueOf(input.W());
            case 15:
                return utf8Validation.a(input);
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
