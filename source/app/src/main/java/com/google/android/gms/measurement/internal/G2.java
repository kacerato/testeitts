package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12116l3;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

public final class G2 extends N6 {
    public G2(c7 c7Var) {
        super(c7Var);
    }

    @Override
    public final boolean l() {
        return false;
    }

    public final boolean m() {
        j();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f62917a.d().getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    @WorkerThread
    public final void n(String str, O6 o62, C12116l3 c12116l3, D2 d22) {
        h();
        j();
        try {
            URL url = new URI(o62.a()).toURL();
            this.f62657b.K0();
            this.f62917a.b().w(new F2(this, str, url, c12116l3.g(), o62.b(), d22));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            this.f62917a.a().o().c("Failed to parse URL. Not uploading MeasurementBatch. appId", B2.x(str), o62.a());
        }
    }

    @WorkerThread
    public final void o(I2 i22, Map map, D2 d22) {
        h();
        j();
        G0.A.r(i22);
        G0.A.r(d22);
        P6 C02 = this.f62657b.C0();
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder appendQueryParameter = builder.scheme((String) C12281e2.f63203f.b(null)).encodedAuthority((String) C12281e2.f63206g.b(null)).path("config/app/".concat(String.valueOf(i22.r0()))).appendQueryParameter("platform", "android");
        C02.f62917a.w().A();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(130000L)).appendQueryParameter("runtime_version", "0");
        String uri = builder.build().toString();
        try {
            this.f62917a.b().w(new F2(this, i22.o0(), new URI(uri).toURL(), null, map, d22));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            this.f62917a.a().o().c("Failed to parse config URL. Not fetching. appId", B2.x(i22.o0()), uri);
        }
    }
}
