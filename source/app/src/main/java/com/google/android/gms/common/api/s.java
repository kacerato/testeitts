package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.u;

public abstract class s<R extends u> extends w<R> {

    public final Activity f61303a;

    public final int f61304b;

    public s(@NonNull Activity activity, int i10) {
        G0.A.s(activity, "Activity must not be null");
        this.f61303a = activity;
        this.f61304b = i10;
    }

    @Override
    @C0.a
    public final void b(@NonNull Status status) {
        if (!status.u0()) {
            d(status);
            return;
        }
        try {
            status.y0(this.f61303a, this.f61304b);
        } catch (IntentSender.SendIntentException e10) {
            Log.e("ResolvingResultCallback", "Failed to start resolution", e10);
            d(new Status(8));
        }
    }

    @Override
    public abstract void c(@NonNull R r10);

    public abstract void d(@NonNull Status status);
}
