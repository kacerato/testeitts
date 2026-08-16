package om;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.StringJoiner;

public enum EnumC14616a {
    GENERAL("bBhHsS", null),
    CHAR("cC", Character.class, Byte.class, Short.class, Integer.class),
    INT("doxX", Byte.class, Short.class, Integer.class, Long.class, BigInteger.class),
    FLOAT("eEfgGaA", Float.class, Double.class, BigDecimal.class),
    TIME("tT", Long.class, Calendar.class, Date.class),
    CHAR_AND_INT(null, Byte.class, Short.class, Integer.class),
    INT_AND_TIME(null, Long.class),
    NULL(null, new Class[0]),
    UNUSED(null, null);

    public final String chars;
    public final Class<?>[] types;

    EnumC14616a(String str, Class... clsArr) {
        this.chars = str;
        if (clsArr == null) {
            this.types = clsArr;
            return;
        }
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class cls : clsArr) {
            arrayList.add(cls);
            Class<? extends Object> h10 = h(cls);
            if (h10 != null) {
                arrayList.add(h10);
            }
        }
        this.types = (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }

    public static <E> Set<E> a(E[] eArr) {
        return new HashSet(Arrays.asList(eArr));
    }

    public static EnumC14616a b(char c10) {
        EnumC14616a[] enumC14616aArr = {GENERAL, CHAR, INT, FLOAT, TIME};
        for (int i10 = 0; i10 < 5; i10++) {
            EnumC14616a enumC14616a = enumC14616aArr[i10];
            if (enumC14616a.chars.contains(String.valueOf(c10))) {
                return enumC14616a;
            }
        }
        throw new IllegalArgumentException("Bad conversion character " + c10);
    }

    public static EnumC14616a c(EnumC14616a enumC14616a, EnumC14616a enumC14616a2) {
        EnumC14616a enumC14616a3 = UNUSED;
        if (enumC14616a == enumC14616a3) {
            return enumC14616a2;
        }
        if (enumC14616a2 == enumC14616a3) {
            return enumC14616a;
        }
        EnumC14616a enumC14616a4 = GENERAL;
        if (enumC14616a == enumC14616a4) {
            return enumC14616a2;
        }
        if (enumC14616a2 == enumC14616a4) {
            return enumC14616a;
        }
        Set a10 = a(enumC14616a.types);
        a10.retainAll(a(enumC14616a2.types));
        EnumC14616a[] enumC14616aArr = {CHAR, INT, FLOAT, TIME, CHAR_AND_INT, INT_AND_TIME, NULL};
        for (int i10 = 0; i10 < 7; i10++) {
            EnumC14616a enumC14616a5 = enumC14616aArr[i10];
            if (a(enumC14616a5.types).equals(a10)) {
                return enumC14616a5;
            }
        }
        throw new RuntimeException();
    }

    public static boolean e(EnumC14616a enumC14616a, EnumC14616a enumC14616a2) {
        return c(enumC14616a, enumC14616a2) == enumC14616a;
    }

    public static EnumC14616a g(EnumC14616a enumC14616a, EnumC14616a enumC14616a2) {
        EnumC14616a enumC14616a3;
        EnumC14616a enumC14616a4 = UNUSED;
        if (enumC14616a == enumC14616a4 || enumC14616a2 == enumC14616a4 || enumC14616a == (enumC14616a4 = GENERAL) || enumC14616a2 == enumC14616a4) {
            return enumC14616a4;
        }
        EnumC14616a enumC14616a5 = CHAR_AND_INT;
        if ((enumC14616a == enumC14616a5 && enumC14616a2 == INT_AND_TIME) || (enumC14616a == (enumC14616a3 = INT_AND_TIME) && enumC14616a2 == enumC14616a5)) {
            return INT;
        }
        Set a10 = a(enumC14616a.types);
        a10.addAll(a(enumC14616a2.types));
        EnumC14616a[] enumC14616aArr = {NULL, enumC14616a5, enumC14616a3, CHAR, INT, FLOAT, TIME};
        for (int i10 = 0; i10 < 7; i10++) {
            EnumC14616a enumC14616a6 = enumC14616aArr[i10];
            if (a(enumC14616a6.types).equals(a10)) {
                return enumC14616a6;
            }
        }
        return GENERAL;
    }

    public static Class<? extends Object> h(Class<?> cls) {
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        return null;
    }

    public boolean d(Class<?> cls) {
        Class<?>[] clsArr = this.types;
        if (clsArr == null || cls == Void.TYPE) {
            return true;
        }
        for (Class<?> cls2 : clsArr) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override
    @Km.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(name());
        sb2.append(" conversion category");
        Class<?>[] clsArr = this.types;
        if (clsArr == null || clsArr.length == 0) {
            return sb2.toString();
        }
        StringJoiner stringJoiner = new StringJoiner(", ", "(one of: ", ")");
        for (Class<?> cls : this.types) {
            stringJoiner.add(cls.getSimpleName());
        }
        sb2.append(" ");
        sb2.append((Object) stringJoiner);
        return sb2.toString();
    }
}
