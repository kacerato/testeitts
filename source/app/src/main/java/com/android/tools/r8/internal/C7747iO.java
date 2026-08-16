package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public class C7747iO extends R2 {

    public final HO f48929c;

    public C7747iO(I50 i50, HO ho) {
        super(i50);
        this.f48929c = ho;
    }

    @Override
    public void a(String str, String str2, String str3) {
        if (!"Landroidx/annotation/keep/MemberAccessFlags;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/MemberAccessFlags;".equals(str2)) {
            super.a(str, str2, str3);
            throw null;
        }
        if (a(str3, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C7747iO.this.a((String) obj, (Boolean) obj2);
            }
        })) {
            return;
        }
        super.a(str, str2, str3);
        throw null;
    }

    public static boolean a(String str, BiPredicate biPredicate) {
        if (!str.startsWith("NON_")) {
            return biPredicate.test(str, Boolean.TRUE);
        }
        return biPredicate.test(str.substring(4), Boolean.FALSE);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
    
        if (r6.equals("FINAL") == false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(String str, Boolean bool) {
        char c10;
        EnumC6355a2 enumC6355a2;
        char c11 = 2;
        str.getClass();
        switch (str.hashCode()) {
            case -2116912242:
                if (str.equals("PROTECTED")) {
                    c10 = 0;
                    break;
                }
                c10 = '\uffff';
                break;
            case -1924094359:
                if (str.equals("PUBLIC")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            case 403485027:
                if (str.equals("PRIVATE")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            case 1152750154:
                if (str.equals("PACKAGE_PRIVATE")) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        switch (c10) {
            case 0:
                enumC6355a2 = EnumC6355a2.f46397c;
                break;
            case 1:
                enumC6355a2 = EnumC6355a2.f46396b;
                break;
            case 2:
                enumC6355a2 = EnumC6355a2.f46399e;
                break;
            case 3:
                enumC6355a2 = EnumC6355a2.f46398d;
                break;
            default:
                enumC6355a2 = null;
                break;
        }
        if (enumC6355a2 != null) {
            HO ho = this.f48929c;
            (bool.booleanValue() ? ho.f40747a : ho.f40748b).add(enumC6355a2);
            return true;
        }
        switch (str.hashCode()) {
            case -1839152530:
                if (str.equals("STATIC")) {
                    c11 = 0;
                    break;
                }
                c11 = '\uffff';
                break;
            case -519243995:
                if (str.equals("SYNTHETIC")) {
                    c11 = 1;
                    break;
                }
                c11 = '\uffff';
                break;
            case 66898262:
                break;
            default:
                c11 = '\uffff';
                break;
        }
        switch (c11) {
            case 0:
                HO ho2 = this.f48929c;
                boolean booleanValue = bool.booleanValue();
                ho2.getClass();
                ho2.f40749c = booleanValue ? LX.f41974b : LX.f41975c;
                return true;
            case 1:
                HO ho3 = this.f48929c;
                boolean booleanValue2 = bool.booleanValue();
                ho3.getClass();
                ho3.f40751e = booleanValue2 ? LX.f41974b : LX.f41975c;
                return true;
            case 2:
                HO ho4 = this.f48929c;
                boolean booleanValue3 = bool.booleanValue();
                ho4.getClass();
                ho4.f40750d = booleanValue3 ? LX.f41974b : LX.f41975c;
                return true;
            default:
                return false;
        }
    }
}
