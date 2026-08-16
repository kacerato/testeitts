package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.media.tv.TvContract;
import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.openjdk.tools.doclint.DocLint;

public final class Q2 implements Runnable {

    public final com.google.android.gms.internal.measurement.U f62886b;

    public final ServiceConnection f62887c;

    public final R2 f62888d;

    public Q2(R2 r22, com.google.android.gms.internal.measurement.U u10, ServiceConnection serviceConnection) {
        this.f62886b = u10;
        this.f62887c = serviceConnection;
        Objects.requireNonNull(r22);
        this.f62888d = r22;
    }

    @Override
    public final void run() {
        Bundle bundle;
        R2 r22 = this.f62888d;
        S2 s22 = r22.f62904d;
        C12370p3 c12370p3 = s22.f62916a;
        c12370p3.b().h();
        Bundle bundle2 = new Bundle();
        String a10 = r22.a();
        bundle2.putString(TvContract.BaseTvColumns.COLUMN_PACKAGE_NAME, a10);
        try {
            bundle = this.f62886b.c0(bundle2);
        } catch (Exception e10) {
            s22.f62916a.a().o().b("Exception occurred while retrieving the Install Referrer", e10.getMessage());
        }
        if (bundle == null) {
            c12370p3.a().o().a("Install Referrer Service returned a null response");
            bundle = null;
        }
        C12370p3 c12370p32 = s22.f62916a;
        c12370p32.b().h();
        C12370p3.q();
        if (bundle != null) {
            long j10 = bundle.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j10 == 0) {
                c12370p32.a().r().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    c12370p32.a().o().a("No referrer defined in Install Referrer response");
                } else {
                    c12370p32.a().w().b("InstallReferrer API result", string);
                    Bundle s02 = c12370p32.C().s0(Uri.parse("?".concat(string)));
                    if (s02 == null) {
                        c12370p32.a().o().a("No campaign params defined in Install Referrer result");
                    } else {
                        List asList = Arrays.asList(((String) C12281e2.f63214i1.b(null)).split(DocLint.SEPARATOR));
                        Iterator<String> it = s02.keySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (asList.contains(it.next())) {
                                long j11 = bundle.getLong("referrer_click_timestamp_server_seconds", 0L) * 1000;
                                if (j11 > 0) {
                                    s02.putLong("click_timestamp", j11);
                                }
                            }
                        }
                        if (j10 == c12370p32.x().f62852g.a()) {
                            c12370p32.a().w().a("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (c12370p32.g()) {
                            c12370p32.x().f62852g.b(j10);
                            c12370p32.a().w().b("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            s02.putString("_cis", "referrer API v2");
                            c12370p32.B().w("auto", "_cmp", s02, a10);
                        }
                    }
                }
            }
        }
        S0.b.b().c(c12370p32.d(), this.f62887c);
    }
}
