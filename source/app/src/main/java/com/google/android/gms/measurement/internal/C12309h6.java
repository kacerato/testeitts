package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import q0.C15034a;

public final class C12309h6 extends N6 {

    public final Map f63331d;

    public final M2 f63332e;

    public final M2 f63333f;

    public final M2 f63334g;

    public final M2 f63335h;

    public final M2 f63336i;

    public final M2 f63337j;

    public C12309h6(c7 c7Var) {
        super(c7Var);
        this.f63331d = new HashMap();
        P2 x10 = this.f62917a.x();
        Objects.requireNonNull(x10);
        this.f63332e = new M2(x10, "last_delete_stale", 0L);
        P2 x11 = this.f62917a.x();
        Objects.requireNonNull(x11);
        this.f63333f = new M2(x11, "last_delete_stale_batch", 0L);
        P2 x12 = this.f62917a.x();
        Objects.requireNonNull(x12);
        this.f63334g = new M2(x12, "backoff", 0L);
        P2 x13 = this.f62917a.x();
        Objects.requireNonNull(x13);
        this.f63335h = new M2(x13, "last_upload", 0L);
        P2 x14 = this.f62917a.x();
        Objects.requireNonNull(x14);
        this.f63336i = new M2(x14, "last_upload_attempt", 0L);
        P2 x15 = this.f62917a.x();
        Objects.requireNonNull(x15);
        this.f63337j = new M2(x15, "midnight_offset", 0L);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @WorkerThread
    public final Pair m(String str, Z3 z32) {
        return z32.o(Y3.AD_STORAGE) ? n(str) : new Pair("", Boolean.FALSE);
    }

    @WorkerThread
    @Deprecated
    public final Pair n(String str) {
        C12301g6 c12301g6;
        C15034a.C1962a c1962a;
        h();
        C12370p3 c12370p3 = this.f62917a;
        long c10 = c12370p3.e().c();
        C12301g6 c12301g62 = (C12301g6) this.f63331d.get(str);
        if (c12301g62 != null && c10 < c12301g62.f63316c) {
            return new Pair(c12301g62.f63314a, Boolean.valueOf(c12301g62.f63315b));
        }
        C15034a.d(true);
        long D10 = c12370p3.w().D(str, C12281e2.f63191b) + c10;
        try {
            try {
                c1962a = C15034a.a(c12370p3.d());
            } catch (PackageManager.NameNotFoundException unused) {
                c1962a = null;
                if (c12301g62 != null && c10 < c12301g62.f63316c + this.f62917a.w().D(str, C12281e2.f63194c)) {
                    return new Pair(c12301g62.f63314a, Boolean.valueOf(c12301g62.f63315b));
                }
            }
        } catch (Exception e10) {
            this.f62917a.a().v().b("Unable to get advertising id", e10);
            c12301g6 = new C12301g6("", false, D10);
        }
        if (c1962a == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String a10 = c1962a.a();
        c12301g6 = a10 != null ? new C12301g6(a10, c1962a.b(), D10) : new C12301g6("", c1962a.b(), D10);
        this.f63331d.put(str, c12301g6);
        C15034a.d(false);
        return new Pair(c12301g6.f63314a, Boolean.valueOf(c12301g6.f63315b));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    @Deprecated
    public final String o(String str, boolean z10) {
        h();
        String str2 = z10 ? (String) n(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest C10 = m7.C();
        if (C10 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, C10.digest(str2.getBytes())));
    }
}
