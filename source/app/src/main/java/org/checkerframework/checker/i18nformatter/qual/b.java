package org.checkerframework.checker.i18nformatter.qual;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.StringJoiner;

public enum b {
    UNUSED(null, null),
    GENERAL(null, null),
    DATE(new Class[]{Date.class, Number.class}, new String[]{"date", "time"}),
    NUMBER(new Class[]{Number.class}, new String[]{"number", "choice"});

    public final String[] strings;
    public final Class<?>[] types;
    static b[] namedCategories = {DATE, NUMBER};

    b(Class[] clsArr, String[] strArr) {
        this.types = clsArr;
        this.strings = strArr;
    }

    public static <E> Set<E> a(E[] eArr) {
        return new HashSet(Arrays.asList(eArr));
    }

    public static b b(b bVar, b bVar2) {
        b bVar3 = UNUSED;
        if (bVar == bVar3) {
            return bVar2;
        }
        if (bVar2 == bVar3) {
            return bVar;
        }
        b bVar4 = GENERAL;
        if (bVar == bVar4) {
            return bVar2;
        }
        if (bVar2 == bVar4) {
            return bVar;
        }
        Set a10 = a(bVar.types);
        a10.retainAll(a(bVar2.types));
        b[] bVarArr = {DATE, NUMBER};
        for (int i10 = 0; i10 < 2; i10++) {
            b bVar5 = bVarArr[i10];
            if (a(bVar5.types).equals(a10)) {
                return bVar5;
            }
        }
        throw new RuntimeException();
    }

    public static boolean d(b bVar, b bVar2) {
        return b(bVar, bVar2) == bVar;
    }

    public static b e(String str) {
        String lowerCase = str.toLowerCase();
        for (b bVar : namedCategories) {
            for (String str2 : bVar.strings) {
                if (str2.equals(lowerCase)) {
                    return bVar;
                }
            }
        }
        throw new IllegalArgumentException("Invalid format type " + lowerCase);
    }

    public static b g(b bVar, b bVar2) {
        b bVar3 = UNUSED;
        return (bVar == bVar3 || bVar2 == bVar3 || bVar == (bVar3 = GENERAL) || bVar2 == bVar3 || bVar == (bVar3 = DATE) || bVar2 == bVar3) ? bVar3 : NUMBER;
    }

    public boolean c(Class<?> cls) {
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
    public String toString() {
        StringBuilder sb2 = new StringBuilder(name());
        if (this.types == null) {
            sb2.append(" conversion category (all types)");
        } else {
            StringJoiner stringJoiner = new StringJoiner(", ", " conversion category (one of: ", ")");
            for (Class<?> cls : this.types) {
                stringJoiner.add(cls.getCanonicalName());
            }
            sb2.append((Object) stringJoiner);
        }
        return sb2.toString();
    }
}
