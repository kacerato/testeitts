package org.bouncycastle.jce;

import hk.C13523c;
import java.util.Enumeration;
import ki.l;
import oh.C14549x;

public class b {
    public static Enumeration a() {
        return ki.e.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C13523c b(String str) {
        C14549x c14549x;
        l l10;
        if (c(str)) {
            c14549x = new C14549x(str);
            l10 = c14549x == null ? Ji.a.l(c14549x) : Ji.a.j(str);
            if (l10 == null) {
                l10 = c14549x != null ? ki.e.d(c14549x) : ki.e.b(str);
            }
            if (l10 != null) {
                return null;
            }
            return new C13523c(str, l10.v(), l10.z(), l10.C(), l10.A(), l10.D());
        }
        c14549x = null;
        if (c14549x == null) {
        }
        if (l10 == null) {
        }
        if (l10 != null) {
        }
    }

    public static boolean c(String str) {
        char charAt;
        return str.length() >= 3 && str.charAt(1) == '.' && (charAt = str.charAt(0)) >= '0' && charAt <= '2';
    }
}
