package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public final class SN extends C7747iO {

    public final C9581tO f44197d;

    public SN(B50 b50, C9581tO c9581tO) {
        super(b50, c9581tO);
        this.f44197d = c9581tO;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        if (!"Landroidx/annotation/keep/FieldAccessFlags;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/FieldAccessFlags;".equals(str2)) {
            super.a(str, str2, str3);
        }
        if (C7747iO.a(str3, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return SN.this.b((String) obj, (Boolean) obj2);
            }
        })) {
            return;
        }
        super.a(str, "Landroidx/annotation/keep/MemberAccessFlags;", str3);
    }

    public final boolean b(String str, Boolean bool) {
        str.getClass();
        if (str.equals("VOLATILE")) {
            C9581tO c9581tO = this.f44197d;
            boolean booleanValue = bool.booleanValue();
            c9581tO.getClass();
            c9581tO.f52592g = booleanValue ? LX.f41974b : LX.f41975c;
            return true;
        }
        if (!str.equals("TRANSIENT")) {
            return false;
        }
        C9581tO c9581tO2 = this.f44197d;
        boolean booleanValue2 = bool.booleanValue();
        c9581tO2.getClass();
        c9581tO2.f52593h = booleanValue2 ? LX.f41974b : LX.f41975c;
        return true;
    }
}
