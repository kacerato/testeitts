package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;

public final class u7 {

    public final C12370p3 f63633a;

    public u7(C12370p3 c12370p3) {
        this.f63633a = c12370p3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final void a() {
        C12370p3 c12370p3 = this.f63633a;
        c12370p3.b().h();
        if (e()) {
            if (d()) {
                c12370p3.x().f62869x.b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                c12370p3.B().t("auto", "_cmpx", bundle);
            } else {
                String a10 = c12370p3.x().f62869x.a();
                if (TextUtils.isEmpty(a10)) {
                    c12370p3.a().p().a("Cache still valid but referrer not found");
                } else {
                    long a11 = c12370p3.x().f62870y.a() / 3600000;
                    Uri parse = Uri.parse(a10);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (a11 - 1) * 3600000);
                    F f10 = pair.first;
                    c12370p3.B().t(f10 == 0 ? "app" : (String) f10, "_cmp", (Bundle) pair.second);
                }
                c12370p3.x().f62869x.b(null);
            }
            c12370p3.x().f62870y.b(0L);
        }
    }

    @WorkerThread
    public final void b(String str, Bundle bundle) {
        String uri;
        C12370p3 c12370p3 = this.f63633a;
        c12370p3.b().h();
        if (c12370p3.g()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        c12370p3.x().f62869x.b(uri);
        c12370p3.x().f62870y.b(c12370p3.e().a());
    }

    public final void c() {
        if (e() && d()) {
            this.f63633a.x().f62869x.b(null);
        }
    }

    public final boolean d() {
        if (!e()) {
            return false;
        }
        C12370p3 c12370p3 = this.f63633a;
        return c12370p3.e().a() - c12370p3.x().f62870y.a() > c12370p3.w().D(null, C12281e2.f63219k0);
    }

    public final boolean e() {
        return this.f63633a.x().f62870y.a() > 0;
    }
}
