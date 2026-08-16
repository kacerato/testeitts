package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12186t2;
import com.google.android.gms.internal.measurement.C12205v3;
import com.google.android.gms.internal.measurement.EnumC12223x3;
import java.util.Collections;
import java.util.HashMap;
import org.openjdk.tools.doclint.DocLint;

public final class P6 extends G6 {
    public P6(c7 c7Var) {
        super(c7Var);
    }

    private final String k(String str) {
        String x10 = this.f62657b.D0().x(str);
        if (TextUtils.isEmpty(x10)) {
            return (String) C12281e2.f63233r.b(null);
        }
        Uri parse = Uri.parse((String) C12281e2.f63233r.b(null));
        Uri.Builder buildUpon = parse.buildUpon();
        String authority = parse.getAuthority();
        StringBuilder sb2 = new StringBuilder(String.valueOf(x10).length() + 1 + String.valueOf(authority).length());
        sb2.append(x10);
        sb2.append(".");
        sb2.append(authority);
        buildUpon.authority(sb2.toString());
        return buildUpon.build().toString();
    }

    public static final boolean l(String str) {
        String str2 = (String) C12281e2.f63237t.b(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(DocLint.SEPARATOR)) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    public final O6 i(String str) {
        I2 L02;
        c7 c7Var = this.f62657b;
        I2 L03 = c7Var.F0().L0(str);
        O6 o62 = null;
        if (L03 == null || !L03.V()) {
            return new O6(k(str), Collections.emptyMap(), EnumC12332k5.GOOGLE_ANALYTICS, null);
        }
        C12205v3 F10 = com.google.android.gms.internal.measurement.C3.F();
        F10.u(2);
        F10.t((EnumC12223x3) G0.A.r(EnumC12223x3.a(L03.M())));
        String p02 = L03.p0();
        C12186t2 w10 = c7Var.D0().w(str);
        if (w10 == null || (L02 = c7Var.F0().L0(str)) == null || ((!w10.S() || w10.T().G() != 100) && !this.f62917a.C().P(str, L02.l0()) && (TextUtils.isEmpty(p02) || Math.abs(p02.hashCode() % 100) >= w10.T().G()))) {
            F10.v(3);
            return new O6(k(str), Collections.emptyMap(), EnumC12332k5.GOOGLE_ANALYTICS, (com.google.android.gms.internal.measurement.C3) F10.q());
        }
        String o02 = L03.o0();
        F10.u(2);
        C12186t2 w11 = c7Var.D0().w(L03.o0());
        if (w11 == null || !w11.S()) {
            this.f62917a.a().w().b("[sgtm] Missing sgtm_setting in remote config. appId", o02);
            F10.v(4);
        } else {
            HashMap hashMap = new HashMap();
            if (!TextUtils.isEmpty(L03.l0())) {
                hashMap.put("x-gtm-server-preview", L03.l0());
            }
            String H10 = w11.T().H();
            EnumC12223x3 a10 = EnumC12223x3.a(L03.M());
            if (a10 != null && a10 != EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE) {
                F10.t(a10);
            } else if (l(L03.o0())) {
                F10.t(EnumC12223x3.PINNED_TO_SERVICE_UPLOAD);
            } else if (TextUtils.isEmpty(H10)) {
                F10.t(EnumC12223x3.MISSING_SGTM_SERVER_URL);
            } else {
                this.f62917a.a().w().b("[sgtm] Eligible for client side upload. appId", o02);
                F10.u(3);
                F10.t(EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE);
                o62 = new O6(H10, hashMap, EnumC12332k5.SGTM_CLIENT, (com.google.android.gms.internal.measurement.C3) F10.q());
            }
            w11.T().E();
            w11.T().F();
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.c();
            if (TextUtils.isEmpty(H10)) {
                F10.v(6);
                c12370p3.a().w().b("[sgtm] Local service, missing sgtm_server_url", L03.o0());
            } else {
                c12370p3.a().w().b("[sgtm] Eligible for local service direct upload. appId", o02);
                F10.u(5);
                F10.v(2);
                o62 = new O6(H10, hashMap, EnumC12332k5.SGTM, (com.google.android.gms.internal.measurement.C3) F10.q());
            }
        }
        return o62 != null ? o62 : new O6(k(str), Collections.emptyMap(), EnumC12332k5.GOOGLE_ANALYTICS, (com.google.android.gms.internal.measurement.C3) F10.q());
    }

    @WorkerThread
    public final boolean j(String str, EnumC12223x3 enumC12223x3) {
        C12186t2 w10;
        h();
        return (enumC12223x3 != EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE || l(str) || (w10 = this.f62657b.D0().w(str)) == null || !w10.S() || w10.T().H().isEmpty()) ? false : true;
    }
}
