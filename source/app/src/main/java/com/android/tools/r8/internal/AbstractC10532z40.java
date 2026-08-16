package com.android.tools.r8.internal;

public abstract class AbstractC10532z40 {

    public static final boolean f54277a = true;

    public static String a(C10365y40 c10365y40, String str, String str2) {
        String a10 = c10365y40.a();
        if (!a10.equals(str) && !a10.equals(str2)) {
            if (!a10.startsWith(str) || a10.charAt(str.length()) != '=') {
                return null;
            }
            c10365y40.b();
            return a10.substring(str.length() + 1);
        }
        String b10 = c10365y40.b();
        if (b10 != null) {
            c10365y40.b();
            return b10;
        }
        throw new RuntimeException("Missing argument for '" + a10 + "'.");
    }

    public static Boolean a(C10365y40 c10365y40, String str) {
        if (c10365y40.a().equals(str)) {
            c10365y40.b();
            return Boolean.TRUE;
        }
        if (!f54277a && !str.startsWith("--")) {
            throw new AssertionError();
        }
        if (!c10365y40.a().equals("--no" + str.substring(2))) {
            return null;
        }
        c10365y40.b();
        return Boolean.FALSE;
    }
}
