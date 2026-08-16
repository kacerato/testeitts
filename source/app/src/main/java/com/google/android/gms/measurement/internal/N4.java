package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import java.util.Objects;

@MainThread
@VisibleForTesting
public final class N4 implements Application.ActivityLifecycleCallbacks, L4 {

    public final C12260b5 f62816b;

    public N4(C12260b5 c12260b5) {
        Objects.requireNonNull(c12260b5);
        this.f62816b = c12260b5;
    }

    @Override
    public final void a(com.google.android.gms.internal.measurement.K0 k02, Bundle bundle) {
        this.f62816b.f62917a.I().y(k02, bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(com.google.android.gms.internal.measurement.K0 k02, Bundle bundle) {
        C12370p3 c12370p3;
        C12260b5 c12260b5;
        C12370p3 c12370p32;
        Intent intent;
        Uri uri;
        String stringExtra;
        String str;
        try {
            try {
                c12260b5 = this.f62816b;
                c12370p32 = c12260b5.f62917a;
                c12370p32.a().w().a("onActivityCreated");
                intent = k02.f61971d;
            } catch (RuntimeException e10) {
                this.f62816b.f62917a.a().o().b("Throwable caught in onActivityCreated", e10);
            }
            if (intent != null) {
                Uri data = intent.getData();
                if (data != null) {
                    if (!data.isHierarchical()) {
                    }
                    uri = data;
                    if (uri != null && uri.isHierarchical()) {
                        c12370p32.C();
                        stringExtra = intent.getStringExtra(Intent.EXTRA_REFERRER_NAME);
                        if (!"android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) && !"https://www.google.com".equals(stringExtra) && !"android-app://com.google.appcrawler".equals(stringExtra)) {
                            str = "auto";
                            c12370p32.b().t(new M4(this, bundle != null, uri, str, uri.getQueryParameter("referrer")));
                            c12370p3 = this.f62816b.f62917a;
                            c12370p3.I().v(k02, bundle);
                        }
                        str = "gs";
                        c12370p32.b().t(new M4(this, bundle != null, uri, str, uri.getQueryParameter("referrer")));
                        c12370p3 = this.f62816b.f62917a;
                        c12370p3.I().v(k02, bundle);
                    }
                }
                Bundle extras = intent.getExtras();
                uri = null;
                if (extras != null) {
                    String string = extras.getString("com.android.vending.referral_url");
                    if (!TextUtils.isEmpty(string)) {
                        data = Uri.parse(string);
                        uri = data;
                    }
                }
                if (uri != null) {
                    c12370p32.C();
                    stringExtra = intent.getStringExtra(Intent.EXTRA_REFERRER_NAME);
                    if (!"android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra)) {
                        str = "auto";
                        c12370p32.b().t(new M4(this, bundle != null, uri, str, uri.getQueryParameter("referrer")));
                        c12370p3 = this.f62816b.f62917a;
                        c12370p3.I().v(k02, bundle);
                    }
                    str = "gs";
                    c12370p32.b().t(new M4(this, bundle != null, uri, str, uri.getQueryParameter("referrer")));
                    c12370p3 = this.f62816b.f62917a;
                    c12370p3.I().v(k02, bundle);
                }
            }
            c12370p3 = c12260b5.f62917a;
            c12370p3.I().v(k02, bundle);
        } catch (Throwable th2) {
            this.f62816b.f62917a.I().v(k02, bundle);
            throw th2;
        }
    }

    @Override
    @MainThread
    public final void c(com.google.android.gms.internal.measurement.K0 k02) {
        C12370p3 c12370p3 = this.f62816b.f62917a;
        c12370p3.I().x(k02);
        C12436x6 z10 = c12370p3.z();
        C12370p3 c12370p32 = z10.f62917a;
        c12370p32.b().t(new RunnableC12373p6(z10, c12370p32.e().c()));
    }

    @Override
    public final void d(com.google.android.gms.internal.measurement.K0 k02) {
        this.f62816b.f62917a.I().z(k02);
    }

    @Override
    @MainThread
    public final void e(com.google.android.gms.internal.measurement.K0 k02) {
        C12370p3 c12370p3 = this.f62816b.f62917a;
        C12436x6 z10 = c12370p3.z();
        C12370p3 c12370p32 = z10.f62917a;
        c12370p32.b().t(new RunnableC12365o6(z10, c12370p32.e().c()));
        c12370p3.I().w(k02);
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(com.google.android.gms.internal.measurement.K0.b(activity), bundle);
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        d(com.google.android.gms.internal.measurement.K0.b(activity));
    }

    @Override
    @MainThread
    public final void onActivityPaused(Activity activity) {
        c(com.google.android.gms.internal.measurement.K0.b(activity));
    }

    @Override
    @MainThread
    public final void onActivityResumed(Activity activity) {
        e(com.google.android.gms.internal.measurement.K0.b(activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(com.google.android.gms.internal.measurement.K0.b(activity), bundle);
    }

    @Override
    public final void onActivityStarted(Activity activity) {
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }
}
