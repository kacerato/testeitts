package com.android.tools.r8.internal;

import com.android.tools.r8.Version;
import java.util.function.BooleanSupplier;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class AbstractC9824ur0 {
    public static boolean a(boolean z10) {
        return z10;
    }

    public static boolean b(boolean z10) {
        return z10;
    }

    public static boolean a(String str) {
        final boolean z10 = false;
        return a(str, Version.isDevelopmentVersion() ? System.getProperty(str) : null, new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC9824ur0.a(z10);
            }
        });
    }

    public static Object a(Function function, Supplier supplier) {
        Z60 z60 = EnumC6871d70.f47286b;
        if (System.getProperty("com.android.tools.r8.startup.profile") != null) {
            return function.apply(System.getProperty("com.android.tools.r8.startup.profile"));
        }
        return supplier.get();
    }

    public static boolean a(String str, final boolean z10) {
        return a(str, System.getProperty(str), new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return AbstractC9824ur0.b(z10);
            }
        });
    }

    public static boolean a(String str, String str2, BooleanSupplier booleanSupplier) {
        if (str2 == null) {
            return booleanSupplier.getAsBoolean();
        }
        char[] cArr = C10656zq0.f54545a;
        if (str2.equals("0") || C10656zq0.f(str2).equals("false")) {
            return false;
        }
        if (str2.equals("1") || C10656zq0.f(str2).equals("true")) {
            return true;
        }
        throw new IllegalArgumentException("Expected value of " + str + " to be a boolean, but was: " + str2);
    }
}
