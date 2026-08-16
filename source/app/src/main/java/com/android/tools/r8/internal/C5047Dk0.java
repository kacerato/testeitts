package com.android.tools.r8.internal;

public final class C5047Dk0 {

    public static final boolean f39626b = true;

    public final int f39627a;

    public C5047Dk0(int i10) {
        this.f39627a = i10;
    }

    public static C5047Dk0 a(AbstractC6907dL abstractC6907dL) {
        String h10 = abstractC6907dL.h();
        int indexOf = h10.indexOf("(");
        int indexOf2 = h10.indexOf(")");
        if (indexOf2 > indexOf) {
            String substring = h10.substring(0, indexOf);
            String substring2 = h10.substring(indexOf + 1, indexOf2);
            if ("removeInnerFrames".equals(substring)) {
                return a(substring2);
            }
            if (f39626b) {
                throw new C6501av0("Unexpected action: " + substring);
            }
            throw new AssertionError((Object) ("Unknown function " + substring));
        }
        throw new C6501av0("Unexpected action: " + h10);
    }

    public final C7906jL a() {
        return new C7906jL("removeInnerFrames(" + this.f39627a + ")");
    }

    public static C5047Dk0 a(String str) {
        try {
            return new C5047Dk0(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            throw new C5325If("Unexpected number for removeInnerFrames: " + str);
        }
    }
}
