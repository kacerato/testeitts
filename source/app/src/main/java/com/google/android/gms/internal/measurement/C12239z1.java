package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class C12239z1 extends AbstractRunnableC12212w1 {

    public final Bundle f62494f;

    public final Activity f62495g;

    public final H1 f62496h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12239z1(H1 h12, Bundle bundle, Activity activity) {
        super(h12.f61934b, true);
        this.f62494f = bundle;
        this.f62495g = activity;
        Objects.requireNonNull(h12);
        this.f62496h = h12;
    }

    @Override
    public final void a() throws RemoteException {
        Bundle bundle;
        Bundle bundle2 = this.f62494f;
        if (bundle2 != null) {
            bundle = new Bundle();
            if (bundle2.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = bundle2.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        InterfaceC12211w0 interfaceC12211w0 = (InterfaceC12211w0) G0.A.r(this.f62496h.f61934b.q());
        Activity activity = this.f62495g;
        interfaceC12211w0.onActivityCreatedByScionActivityInfo(K0.b(activity), bundle, this.f62457c);
    }
}
