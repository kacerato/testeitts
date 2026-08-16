package com.android.tools.r8;

import com.android.tools.r8.internal.C6170Ww0;

public final class Version {
    public static final String LABEL = "8.10.21";

    public static boolean a() {
        return false;
    }

    public static int b(String str) {
        if (str.equals(T5.b.f24045b)) {
            return -1;
        }
        int indexOf = str.indexOf(46) + 1;
        return Integer.parseInt(str.substring(indexOf, str.indexOf(46, indexOf)));
    }

    public static int c(String str) {
        if (str.equals(T5.b.f24045b)) {
            return -1;
        }
        int indexOf = str.indexOf(46, str.indexOf(46) + 1) + 1;
        int indexOf2 = str.indexOf(45, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return Integer.parseInt(str.substring(indexOf, indexOf2));
    }

    public static String d(String str) {
        if (str.equals(T5.b.f24045b)) {
            return null;
        }
        int indexOf = str.indexOf(45) + 1;
        return indexOf > 0 ? str.substring(indexOf) : "";
    }

    public static int getMajorVersion() {
        return a(LABEL);
    }

    public static int getMinorVersion() {
        return b(LABEL);
    }

    public static int getPatchVersion() {
        return c(LABEL);
    }

    public static String getPreReleaseString() {
        return d(LABEL);
    }

    public static String getVersionString() {
        return "8.10.21 (" + C6170Ww0.f45582c.a() + ")";
    }

    public static boolean isDevelopmentVersion() {
        return a(LABEL, C6170Ww0.f45582c.c());
    }

    public static int a(String str) {
        if (str.equals(T5.b.f24045b)) {
            return -1;
        }
        return Integer.parseInt(str.substring(0, str.indexOf(46)));
    }

    public static boolean a(String str, boolean z10) {
        return str.equals(T5.b.f24045b) || str.endsWith("-dev") || z10;
    }
}
