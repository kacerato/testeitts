package org.openjdk.tools.javac.util;

import java.util.function.Supplier;

public class Assert {
    private Assert() {
    }

    public static void check(boolean z10) {
        if (z10) {
            return;
        }
        error();
    }

    public static <T> T checkNonNull(T t10) {
        if (t10 == null) {
            error();
        }
        return t10;
    }

    public static void checkNull(Object obj) {
        if (obj != null) {
            error();
        }
    }

    public static void error() {
        throw new AssertionError();
    }

    public static void check(boolean z10, int i10) {
        if (z10) {
            return;
        }
        error(String.valueOf(i10));
    }

    public static <T> T checkNonNull(T t10, String str) {
        if (t10 == null) {
            error(str);
        }
        return t10;
    }

    public static void checkNull(Object obj, Object obj2) {
        if (obj != null) {
            error(String.valueOf(obj2));
        }
    }

    public static void error(String str) {
        throw new AssertionError((Object) str);
    }

    public static void check(boolean z10, long j10) {
        if (z10) {
            return;
        }
        error(String.valueOf(j10));
    }

    public static <T> T checkNonNull(T t10, Supplier<String> supplier) {
        if (t10 == null) {
            error(supplier.get());
        }
        return t10;
    }

    public static void checkNull(Object obj, String str) {
        if (obj != null) {
            error(str);
        }
    }

    public static void check(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        error(String.valueOf(obj));
    }

    public static void checkNull(Object obj, Supplier<String> supplier) {
        if (obj != null) {
            error(supplier.get());
        }
    }

    public static void check(boolean z10, String str) {
        if (z10) {
            return;
        }
        error(str);
    }

    public static void check(boolean z10, Supplier<String> supplier) {
        if (z10) {
            return;
        }
        error(supplier.get());
    }
}
