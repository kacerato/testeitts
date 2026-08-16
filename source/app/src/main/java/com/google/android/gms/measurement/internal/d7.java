package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;

@VisibleForTesting
public final class d7 {

    public final Context f63128a;

    @VisibleForTesting
    public d7(Context context) {
        G0.A.r(context);
        Context applicationContext = context.getApplicationContext();
        G0.A.r(applicationContext);
        this.f63128a = applicationContext;
    }
}
