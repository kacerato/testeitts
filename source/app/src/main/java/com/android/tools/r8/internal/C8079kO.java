package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public final class C8079kO extends C7747iO {

    public final PO f49606d;

    public C8079kO(B50 b50, PO po) {
        super(b50, po);
        this.f49606d = po;
    }

    @Override
    public final void a(String str, String str2, String str3) {
        if (!"Landroidx/annotation/keep/MethodAccessFlags;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/MethodAccessFlags;".equals(str2)) {
            super.a(str, str2, str3);
        }
        if (C7747iO.a(str3, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C8079kO.this.b((String) obj, (Boolean) obj2);
            }
        })) {
            return;
        }
        super.a(str, "Landroidx/annotation/keep/MemberAccessFlags;", str3);
    }

    public final boolean b(String str, Boolean bool) {
        str.getClass();
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1779441630:
                if (str.equals("ABSTRACT")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1707394560:
                if (str.equals("STRICT_FP")) {
                    c10 = 2;
                    break;
                }
                break;
            case 850685204:
                if (str.equals("SYNCHRONIZED")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1967495049:
                if (str.equals("BRIDGE")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                PO po = this.f49606d;
                boolean booleanValue = bool.booleanValue();
                po.getClass();
                po.f43196i = booleanValue ? LX.f41974b : LX.f41975c;
                return true;
            case 1:
                PO po2 = this.f49606d;
                boolean booleanValue2 = bool.booleanValue();
                po2.getClass();
                po2.f43197j = booleanValue2 ? LX.f41974b : LX.f41975c;
                return true;
            case 2:
                PO po3 = this.f49606d;
                boolean booleanValue3 = bool.booleanValue();
                po3.getClass();
                po3.f43198k = booleanValue3 ? LX.f41974b : LX.f41975c;
                return true;
            case 3:
                PO po4 = this.f49606d;
                boolean booleanValue4 = bool.booleanValue();
                po4.getClass();
                po4.f43194g = booleanValue4 ? LX.f41974b : LX.f41975c;
                return true;
            case 4:
                PO po5 = this.f49606d;
                boolean booleanValue5 = bool.booleanValue();
                po5.getClass();
                po5.f43195h = booleanValue5 ? LX.f41974b : LX.f41975c;
                return true;
            default:
                return false;
        }
    }
}
