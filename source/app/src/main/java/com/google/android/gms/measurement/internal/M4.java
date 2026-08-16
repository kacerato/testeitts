package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;

public final class M4 implements Runnable {

    public final boolean f62796b;

    public final Uri f62797c;

    public final String f62798d;

    public final String f62799e;

    public final N4 f62800f;

    public M4(N4 n42, boolean z10, Uri uri, String str, String str2) {
        this.f62796b = z10;
        this.f62797c = uri;
        this.f62798d = str;
        this.f62799e = str2;
        Objects.requireNonNull(n42);
        this.f62800f = n42;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d4 A[Catch: RuntimeException -> 0x0077, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0077, blocks: (B:3:0x000d, B:9:0x0095, B:11:0x009f, B:14:0x00ac, B:16:0x00b2, B:17:0x00c5, B:18:0x00cd, B:23:0x00d4, B:27:0x00f5, B:29:0x010d, B:31:0x00ff, B:32:0x0111, B:34:0x0117, B:36:0x011d, B:38:0x0123, B:40:0x0129, B:42:0x0131, B:44:0x0139, B:46:0x013f, B:49:0x0143, B:51:0x0029, B:53:0x002f, B:55:0x0037, B:57:0x003d, B:59:0x0043, B:61:0x0049, B:63:0x0051, B:65:0x0059, B:67:0x0061, B:69:0x0069, B:70:0x007a, B:72:0x0088), top: B:2:0x000d }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Bundle s02;
        String str;
        Bundle s03;
        N4 n42 = this.f62800f;
        C12260b5 c12260b5 = n42.f62816b;
        c12260b5.h();
        String str2 = this.f62799e;
        Uri uri = this.f62797c;
        try {
            C12370p3 c12370p3 = c12260b5.f62917a;
            m7 C10 = c12370p3.C();
            if (!TextUtils.isEmpty(str2)) {
                if (str2.contains("gclid") || str2.contains("gbraid") || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_id") || str2.contains("dclid") || str2.contains("srsltid") || str2.contains("sfmc_id")) {
                    s02 = C10.s0(Uri.parse("https://google.com/search?".concat(str2)));
                    if (s02 != null) {
                        s02.putString("_cis", "referrer");
                    }
                    str = this.f62798d;
                    if (this.f62796b && (s03 = c12370p3.C().s0(uri)) != null) {
                        s03.putString("_cis", "intent");
                        if (!s03.containsKey("gclid") && s02 != null && s02.containsKey("gclid")) {
                            s03.putString("_cer", String.format("gclid=%s", s02.getString("gclid")));
                        }
                        c12260b5.t(str, "_cmp", s03);
                        c12260b5.f63039r.b(str, s03);
                    }
                    if (TextUtils.isEmpty(str2)) {
                        c12370p3.a().v().b("Activity created with referrer", str2);
                        if (c12370p3.w().H(null, C12281e2.f63151H0)) {
                            if (s02 != null) {
                                c12260b5.t(str, "_cmp", s02);
                                c12260b5.f63039r.b(str, s02);
                            } else {
                                c12370p3.a().v().b("Referrer does not contain valid parameters", str2);
                            }
                            c12260b5.y("auto", "_ldl", null, true);
                            return;
                        }
                        if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                            c12370p3.a().v().a("Activity created with data 'referrer' without required params");
                            return;
                        } else {
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            c12260b5.y("auto", "_ldl", str2, true);
                            return;
                        }
                    }
                    return;
                }
                C10.f62917a.a().v().a("Activity created with data 'referrer' without required params");
            }
            s02 = null;
            str = this.f62798d;
            if (this.f62796b) {
                s03.putString("_cis", "intent");
                if (!s03.containsKey("gclid")) {
                    s03.putString("_cer", String.format("gclid=%s", s02.getString("gclid")));
                }
                c12260b5.t(str, "_cmp", s03);
                c12260b5.f63039r.b(str, s03);
            }
            if (TextUtils.isEmpty(str2)) {
            }
        } catch (RuntimeException e10) {
            n42.f62816b.f62917a.a().o().b("Throwable caught in handleReferrerForOnActivityCreated", e10);
        }
    }
}
