package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;

public final class H1 implements Application.ActivityLifecycleCallbacks {

    public final I1 f61934b;

    public H1(I1 i12) {
        Objects.requireNonNull(i12);
        this.f61934b = i12;
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f61934b.m(new C12239z1(this, bundle, activity));
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        this.f61934b.m(new F1(this, activity));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        this.f61934b.m(new C1(this, activity));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        this.f61934b.m(new B1(this, activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        this.f61934b.m(new E1(this, activity, binderC12184t0));
        Bundle l02 = binderC12184t0.l0(50L);
        if (l02 != null) {
            bundle.putAll(l02);
        }
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        this.f61934b.m(new A1(this, activity));
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        this.f61934b.m(new D1(this, activity));
    }
}
