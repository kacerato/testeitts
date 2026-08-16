package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import org.openjdk.tools.doclint.DocLint;

public final class Z3 {

    public static final Z3 f62987c = new Z3(null, null, 100);

    public final EnumMap f62988a;

    public final int f62989b;

    public Z3(Boolean bool, Boolean bool2, int i10) {
        EnumMap enumMap = new EnumMap(Y3.class);
        this.f62988a = enumMap;
        enumMap.put((EnumMap) Y3.AD_STORAGE, (Y3) h(null));
        enumMap.put((EnumMap) Y3.ANALYTICS_STORAGE, (Y3) h(null));
        this.f62989b = i10;
    }

    public static Z3 a(W3 w32, W3 w33, int i10) {
        EnumMap enumMap = new EnumMap(Y3.class);
        enumMap.put((EnumMap) Y3.AD_STORAGE, (Y3) w32);
        enumMap.put((EnumMap) Y3.ANALYTICS_STORAGE, (Y3) w33);
        return new Z3(enumMap, -10);
    }

    public static String d(int i10) {
        return i10 != -30 ? i10 != -20 ? i10 != -10 ? i10 != 0 ? i10 != 30 ? i10 != 90 ? i10 != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    public static Z3 e(Bundle bundle, int i10) {
        if (bundle == null) {
            return new Z3(null, null, i10);
        }
        EnumMap enumMap = new EnumMap(Y3.class);
        for (Y3 y32 : X3.STORAGE.b()) {
            enumMap.put((EnumMap) y32, (Y3) g(bundle.getString(y32.zze)));
        }
        return new Z3(enumMap, i10);
    }

    public static Z3 f(String str, int i10) {
        EnumMap enumMap = new EnumMap(Y3.class);
        Y3[] a10 = X3.STORAGE.a();
        for (int i11 = 0; i11 < a10.length; i11++) {
            String str2 = str == null ? "" : str;
            Y3 y32 = a10[i11];
            int i12 = i11 + 2;
            if (i12 < str2.length()) {
                enumMap.put((EnumMap) y32, (Y3) j(str2.charAt(i12)));
            } else {
                enumMap.put((EnumMap) y32, (Y3) W3.UNINITIALIZED);
            }
        }
        return new Z3(enumMap, i10);
    }

    public static W3 g(String str) {
        return str == null ? W3.UNINITIALIZED : str.equals("granted") ? W3.GRANTED : str.equals("denied") ? W3.DENIED : W3.UNINITIALIZED;
    }

    public static W3 h(Boolean bool) {
        return bool == null ? W3.UNINITIALIZED : bool.booleanValue() ? W3.GRANTED : W3.DENIED;
    }

    public static String i(W3 w32) {
        int ordinal = w32.ordinal();
        if (ordinal == 2) {
            return "denied";
        }
        if (ordinal != 3) {
            return null;
        }
        return "granted";
    }

    public static W3 j(char c10) {
        return c10 != '+' ? c10 != '0' ? c10 != '1' ? W3.UNINITIALIZED : W3.GRANTED : W3.DENIED : W3.POLICY;
    }

    public static char m(W3 w32) {
        if (w32 == null) {
            return '-';
        }
        int ordinal = w32.ordinal();
        if (ordinal == 1) {
            return '+';
        }
        if (ordinal != 2) {
            return ordinal != 3 ? '-' : '1';
        }
        return '0';
    }

    public static boolean u(int i10, int i11) {
        int i12 = -30;
        if (i10 == -20) {
            if (i11 == -30) {
                return true;
            }
            i10 = -20;
        }
        if (i10 != -30) {
            i12 = i10;
        } else if (i11 == -20) {
            return true;
        }
        return i12 == i11 || i10 < i11;
    }

    public final int b() {
        return this.f62989b;
    }

    public final boolean c() {
        Iterator it = this.f62988a.values().iterator();
        while (it.hasNext()) {
            if (((W3) it.next()) != W3.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Z3)) {
            return false;
        }
        Z3 z32 = (Z3) obj;
        for (Y3 y32 : X3.STORAGE.b()) {
            if (this.f62988a.get(y32) != z32.f62988a.get(y32)) {
                return false;
            }
        }
        return this.f62989b == z32.f62989b;
    }

    public final int hashCode() {
        Iterator it = this.f62988a.values().iterator();
        int i10 = this.f62989b * 17;
        while (it.hasNext()) {
            i10 = (i10 * 31) + ((W3) it.next()).hashCode();
        }
        return i10;
    }

    public final String k() {
        int ordinal;
        StringBuilder sb2 = new StringBuilder("G1");
        for (Y3 y32 : X3.STORAGE.a()) {
            W3 w32 = (W3) this.f62988a.get(y32);
            char c10 = '-';
            if (w32 != null && (ordinal = w32.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        c10 = '0';
                    } else if (ordinal != 3) {
                    }
                }
                c10 = '1';
            }
            sb2.append(c10);
        }
        return sb2.toString();
    }

    public final String l() {
        StringBuilder sb2 = new StringBuilder("G1");
        for (Y3 y32 : X3.STORAGE.a()) {
            sb2.append(m((W3) this.f62988a.get(y32)));
        }
        return sb2.toString();
    }

    public final Bundle n() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f62988a.entrySet()) {
            String i10 = i((W3) entry.getValue());
            if (i10 != null) {
                bundle.putString(((Y3) entry.getKey()).zze, i10);
            }
        }
        return bundle;
    }

    public final boolean o(Y3 y32) {
        return ((W3) this.f62988a.get(y32)) != W3.DENIED;
    }

    public final W3 p() {
        W3 w32 = (W3) this.f62988a.get(Y3.AD_STORAGE);
        return w32 == null ? W3.UNINITIALIZED : w32;
    }

    public final W3 q() {
        W3 w32 = (W3) this.f62988a.get(Y3.ANALYTICS_STORAGE);
        return w32 == null ? W3.UNINITIALIZED : w32;
    }

    public final boolean r(Z3 z32) {
        EnumMap enumMap = this.f62988a;
        for (Y3 y32 : (Y3[]) enumMap.o().toArray(new Y3[0])) {
            W3 w32 = (W3) enumMap.get(y32);
            W3 w33 = (W3) z32.f62988a.get(y32);
            W3 w34 = W3.DENIED;
            if (w32 == w34 && w33 != w34) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Z3 s(Z3 z32) {
        EnumMap enumMap = new EnumMap(Y3.class);
        for (Y3 y32 : X3.STORAGE.b()) {
            W3 w32 = (W3) this.f62988a.get(y32);
            W3 w33 = (W3) z32.f62988a.get(y32);
            if (w32 != null) {
                if (w33 != null) {
                    W3 w34 = W3.UNINITIALIZED;
                    if (w32 != w34) {
                        if (w33 != w34) {
                            W3 w35 = W3.POLICY;
                            if (w32 != w35) {
                                if (w33 != w35) {
                                    W3 w36 = W3.DENIED;
                                    w32 = (w32 == w36 || w33 == w36) ? w36 : W3.GRANTED;
                                }
                            }
                        }
                    }
                }
                if (w32 == null) {
                    enumMap.put((EnumMap) y32, (Y3) w32);
                }
            }
            w32 = w33;
            if (w32 == null) {
            }
        }
        return new Z3(enumMap, 100);
    }

    public final Z3 t(Z3 z32) {
        EnumMap enumMap = new EnumMap(Y3.class);
        for (Y3 y32 : X3.STORAGE.b()) {
            W3 w32 = (W3) this.f62988a.get(y32);
            if (w32 == W3.UNINITIALIZED) {
                w32 = (W3) z32.f62988a.get(y32);
            }
            if (w32 != null) {
                enumMap.put((EnumMap) y32, (Y3) w32);
            }
        }
        return new Z3(enumMap, this.f62989b);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(d(this.f62989b));
        for (Y3 y32 : X3.STORAGE.b()) {
            sb2.append(DocLint.SEPARATOR);
            sb2.append(y32.zze);
            sb2.append("=");
            W3 w32 = (W3) this.f62988a.get(y32);
            if (w32 == null) {
                w32 = W3.UNINITIALIZED;
            }
            sb2.append((Object) w32);
        }
        return sb2.toString();
    }

    public Z3(EnumMap enumMap, int i10) {
        EnumMap enumMap2 = new EnumMap(Y3.class);
        this.f62988a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f62989b = i10;
    }
}
