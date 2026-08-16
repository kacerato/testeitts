package com.google.protobuf;

import com.google.protobuf.D0;
import java.lang.reflect.Field;

@B
public final class C12684j0 implements Comparable<C12684j0> {

    public final Field f69285b;

    public final EnumC12702p0 f69286c;

    public final Class<?> f69287d;

    public final int f69288e;

    public final Field f69289f;

    public final int f69290g;

    public final boolean f69291h;

    public final boolean f69292i;

    public final C12714t1 f69293j;

    public final Field f69294k;

    public final Class<?> f69295l;

    public final Object f69296m;

    public final D0.e f69297n;

    public static class a {

        public static final int[] f69298a;

        static {
            int[] iArr = new int[EnumC12702p0.values().length];
            f69298a = iArr;
            try {
                iArr[EnumC12702p0.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69298a[EnumC12702p0.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69298a[EnumC12702p0.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69298a[EnumC12702p0.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class b {

        public Field f69299a;

        public EnumC12702p0 f69300b;

        public int f69301c;

        public Field f69302d;

        public int f69303e;

        public boolean f69304f;

        public boolean f69305g;

        public C12714t1 f69306h;

        public Class<?> f69307i;

        public Object f69308j;

        public D0.e f69309k;

        public Field f69310l;

        public b(a aVar) {
            this();
        }

        public C12684j0 a() {
            C12714t1 c12714t1 = this.f69306h;
            if (c12714t1 != null) {
                return C12684j0.g(this.f69301c, this.f69300b, c12714t1, this.f69307i, this.f69305g, this.f69309k);
            }
            Object obj = this.f69308j;
            if (obj != null) {
                return C12684j0.e(this.f69299a, this.f69301c, obj, this.f69309k);
            }
            Field field = this.f69302d;
            if (field != null) {
                return this.f69304f ? C12684j0.k(this.f69299a, this.f69301c, this.f69300b, field, this.f69303e, this.f69305g, this.f69309k) : C12684j0.j(this.f69299a, this.f69301c, this.f69300b, field, this.f69303e, this.f69305g, this.f69309k);
            }
            D0.e eVar = this.f69309k;
            if (eVar != null) {
                Field field2 = this.f69310l;
                return field2 == null ? C12684j0.d(this.f69299a, this.f69301c, this.f69300b, eVar) : C12684j0.i(this.f69299a, this.f69301c, this.f69300b, eVar, field2);
            }
            Field field3 = this.f69310l;
            return field3 == null ? C12684j0.c(this.f69299a, this.f69301c, this.f69300b, this.f69305g) : C12684j0.h(this.f69299a, this.f69301c, this.f69300b, field3);
        }

        public b b(Field cachedSizeField) {
            this.f69310l = cachedSizeField;
            return this;
        }

        public b c(boolean enforceUtf8) {
            this.f69305g = enforceUtf8;
            return this;
        }

        public b d(D0.e enumVerifier) {
            this.f69309k = enumVerifier;
            return this;
        }

        public b e(Field field) {
            if (this.f69306h != null) {
                throw new IllegalStateException("Cannot set field when building a oneof.");
            }
            this.f69299a = field;
            return this;
        }

        public b f(int fieldNumber) {
            this.f69301c = fieldNumber;
            return this;
        }

        public b g(Object mapDefaultEntry) {
            this.f69308j = mapDefaultEntry;
            return this;
        }

        public b h(C12714t1 oneof, Class<?> oneofStoredType) {
            if (this.f69299a != null || this.f69302d != null) {
                throw new IllegalStateException("Cannot set oneof when field or presenceField have been provided");
            }
            this.f69306h = oneof;
            this.f69307i = oneofStoredType;
            return this;
        }

        public b i(Field presenceField, int presenceMask) {
            this.f69302d = (Field) D0.e(presenceField, "presenceField");
            this.f69303e = presenceMask;
            return this;
        }

        public b j(boolean required) {
            this.f69304f = required;
            return this;
        }

        public b k(EnumC12702p0 type) {
            this.f69300b = type;
            return this;
        }

        public b() {
        }
    }

    public C12684j0(Field field, int fieldNumber, EnumC12702p0 type, Class<?> messageClass, Field presenceField, int presenceMask, boolean required, boolean enforceUtf8, C12714t1 oneof, Class<?> oneofStoredType, Object mapDefaultEntry, D0.e enumVerifier, Field cachedSizeField) {
        this.f69285b = field;
        this.f69286c = type;
        this.f69287d = messageClass;
        this.f69288e = fieldNumber;
        this.f69289f = presenceField;
        this.f69290g = presenceMask;
        this.f69291h = required;
        this.f69292i = enforceUtf8;
        this.f69293j = oneof;
        this.f69295l = oneofStoredType;
        this.f69296m = mapDefaultEntry;
        this.f69297n = enumVerifier;
        this.f69294k = cachedSizeField;
    }

    public static boolean C(int value) {
        return value != 0 && (value & (value + (-1))) == 0;
    }

    public static b F() {
        return new b(null);
    }

    public static void a(int fieldNumber) {
        if (fieldNumber > 0) {
            return;
        }
        throw new IllegalArgumentException("fieldNumber must be positive: " + fieldNumber);
    }

    public static C12684j0 c(Field field, int fieldNumber, EnumC12702p0 fieldType, boolean enforceUtf8) {
        a(fieldNumber);
        D0.e(field, "field");
        D0.e(fieldType, "fieldType");
        if (fieldType == EnumC12702p0.MESSAGE_LIST || fieldType == EnumC12702p0.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new C12684j0(field, fieldNumber, fieldType, null, null, 0, false, enforceUtf8, null, null, null, null, null);
    }

    public static C12684j0 d(Field field, int fieldNumber, EnumC12702p0 fieldType, D0.e enumVerifier) {
        a(fieldNumber);
        D0.e(field, "field");
        return new C12684j0(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, null);
    }

    public static C12684j0 e(Field field, int fieldNumber, Object mapDefaultEntry, D0.e enumVerifier) {
        D0.e(mapDefaultEntry, "mapDefaultEntry");
        a(fieldNumber);
        D0.e(field, "field");
        return new C12684j0(field, fieldNumber, EnumC12702p0.MAP, null, null, 0, false, true, null, null, mapDefaultEntry, enumVerifier, null);
    }

    public static C12684j0 g(int fieldNumber, EnumC12702p0 fieldType, C12714t1 oneof, Class<?> oneofStoredType, boolean enforceUtf8, D0.e enumVerifier) {
        a(fieldNumber);
        D0.e(fieldType, "fieldType");
        D0.e(oneof, "oneof");
        D0.e(oneofStoredType, "oneofStoredType");
        if (fieldType.j()) {
            return new C12684j0(null, fieldNumber, fieldType, null, null, 0, false, enforceUtf8, oneof, oneofStoredType, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("Oneof is only supported for scalar fields. Field " + fieldNumber + " is of type " + ((Object) fieldType));
    }

    public static C12684j0 h(Field field, int fieldNumber, EnumC12702p0 fieldType, Field cachedSizeField) {
        a(fieldNumber);
        D0.e(field, "field");
        D0.e(fieldType, "fieldType");
        if (fieldType == EnumC12702p0.MESSAGE_LIST || fieldType == EnumC12702p0.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new C12684j0(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, null, cachedSizeField);
    }

    public static C12684j0 i(Field field, int fieldNumber, EnumC12702p0 fieldType, D0.e enumVerifier, Field cachedSizeField) {
        a(fieldNumber);
        D0.e(field, "field");
        return new C12684j0(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, cachedSizeField);
    }

    public static C12684j0 j(Field field, int fieldNumber, EnumC12702p0 fieldType, Field presenceField, int presenceMask, boolean enforceUtf8, D0.e enumVerifier) {
        a(fieldNumber);
        D0.e(field, "field");
        D0.e(fieldType, "fieldType");
        D0.e(presenceField, "presenceField");
        if (presenceField == null || C(presenceMask)) {
            return new C12684j0(field, fieldNumber, fieldType, null, presenceField, presenceMask, false, enforceUtf8, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + presenceMask);
    }

    public static C12684j0 k(Field field, int fieldNumber, EnumC12702p0 fieldType, Field presenceField, int presenceMask, boolean enforceUtf8, D0.e enumVerifier) {
        a(fieldNumber);
        D0.e(field, "field");
        D0.e(fieldType, "fieldType");
        D0.e(presenceField, "presenceField");
        if (presenceField == null || C(presenceMask)) {
            return new C12684j0(field, fieldNumber, fieldType, null, presenceField, presenceMask, true, enforceUtf8, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + presenceMask);
    }

    public static C12684j0 m(Field field, int fieldNumber, EnumC12702p0 fieldType, Class<?> messageClass) {
        a(fieldNumber);
        D0.e(field, "field");
        D0.e(fieldType, "fieldType");
        D0.e(messageClass, "messageClass");
        return new C12684j0(field, fieldNumber, fieldType, messageClass, null, 0, false, false, null, null, null, null, null);
    }

    public EnumC12702p0 A() {
        return this.f69286c;
    }

    public boolean B() {
        return this.f69292i;
    }

    public boolean D() {
        return this.f69291h;
    }

    @Override
    public int compareTo(C12684j0 o10) {
        return this.f69288e - o10.f69288e;
    }

    public Field o() {
        return this.f69294k;
    }

    public D0.e q() {
        return this.f69297n;
    }

    public Field r() {
        return this.f69285b;
    }

    public int s() {
        return this.f69288e;
    }

    public Class<?> t() {
        return this.f69287d;
    }

    public Object u() {
        return this.f69296m;
    }

    public Class<?> v() {
        int i10 = a.f69298a[this.f69286c.ordinal()];
        if (i10 == 1 || i10 == 2) {
            Field field = this.f69285b;
            return field != null ? field.getType() : this.f69295l;
        }
        if (i10 == 3 || i10 == 4) {
            return this.f69287d;
        }
        return null;
    }

    public C12714t1 w() {
        return this.f69293j;
    }

    public Class<?> x() {
        return this.f69295l;
    }

    public Field y() {
        return this.f69289f;
    }

    public int z() {
        return this.f69290g;
    }
}
