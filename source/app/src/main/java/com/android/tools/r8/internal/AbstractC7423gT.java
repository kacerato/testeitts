package com.android.tools.r8.internal;

public abstract class AbstractC7423gT {

    public static final boolean f48266a = true;

    public static boolean a(int i10) {
        if (i10 == 185 || i10 == 204 || i10 == 206 || i10 == 208) {
            return true;
        }
        if (f48266a || i10 == 205 || i10 == 184 || i10 == 207 || i10 == 182) {
            return false;
        }
        throw new AssertionError();
    }

    public static boolean b(int i10) {
        if (i10 == 182 || i10 == 184 || i10 == 185) {
            return true;
        }
        switch (i10) {
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
                return true;
            default:
                return false;
        }
    }
}
