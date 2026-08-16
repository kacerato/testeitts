package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class C12408u2 {

    public static final AtomicReference f63609b = new AtomicReference();

    public static final AtomicReference f63610c = new AtomicReference();

    public static final AtomicReference f63611d = new AtomicReference();

    public final InterfaceC12400t2 f63612a;

    public C12408u2(InterfaceC12400t2 interfaceC12400t2) {
        this.f63612a = interfaceC12400t2;
    }

    public static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        G0.A.r(strArr);
        G0.A.r(strArr2);
        G0.A.r(atomicReference);
        G0.A.a(strArr.length == strArr2.length);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (Objects.equals(str, strArr[i10])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i10];
                        if (str2 == null) {
                            str2 = strArr2[i10] + "(" + strArr[i10] + ")";
                            strArr3[i10] = str2;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return !this.f63612a.N1() ? str : g(str, C12251a4.f63007c, C12251a4.f63005a, f63609b);
    }

    public final String b(String str) {
        if (str == null) {
            return null;
        }
        return !this.f63612a.N1() ? str : g(str, C12259b4.f63021b, C12259b4.f63020a, f63610c);
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f63612a.N1()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return g(str, C12267c4.f63071b, C12267c4.f63070a, f63611d);
        }
        return "experiment_id(" + str + ")";
    }

    public final String d(I i10) {
        InterfaceC12400t2 interfaceC12400t2 = this.f63612a;
        if (!interfaceC12400t2.N1()) {
            return i10.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("origin=");
        sb2.append(i10.f62681d);
        sb2.append(",name=");
        sb2.append(a(i10.f62679b));
        sb2.append(",params=");
        G g10 = i10.f62680c;
        sb2.append(g10 == null ? null : !interfaceC12400t2.N1() ? g10.toString() : e(g10.n0()));
        return sb2.toString();
    }

    public final String e(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f63612a.N1()) {
            return bundle.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb2.length() != 8) {
                sb2.append(", ");
            }
            sb2.append(b(str));
            sb2.append("=");
            Object obj = bundle.get(str);
            sb2.append(obj instanceof Bundle ? f(new Object[]{obj}) : obj instanceof Object[] ? f((Object[]) obj) : obj instanceof ArrayList ? f(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb2.append("}]");
        return sb2.toString();
    }

    public final String f(Object[] objArr) {
        if (objArr == null) {
            return okhttp3.v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (Object obj : objArr) {
            String e10 = obj instanceof Bundle ? e((Bundle) obj) : String.valueOf(obj);
            if (e10 != null) {
                if (sb2.length() != 1) {
                    sb2.append(", ");
                }
                sb2.append(e10);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
