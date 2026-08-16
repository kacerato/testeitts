package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

public final class C12299g4 {

    public final Context f63307a;

    @Nullable
    public Boolean f63308b;

    public long f63309c;

    @Nullable
    public com.google.android.gms.internal.measurement.I0 f63310d;

    public boolean f63311e;

    @Nullable
    public final Long f63312f;

    @Nullable
    public String f63313g;

    public C12299g4(Context context, @Nullable com.google.android.gms.internal.measurement.I0 i02, @Nullable Long l10) {
        this.f63311e = true;
        G0.A.r(context);
        Context applicationContext = context.getApplicationContext();
        G0.A.r(applicationContext);
        this.f63307a = applicationContext;
        this.f63312f = l10;
        if (i02 != null) {
            this.f63310d = i02;
            this.f63311e = i02.f61943d;
            this.f63309c = i02.f61942c;
            this.f63313g = i02.f61945f;
            Bundle bundle = i02.f61944e;
            if (bundle != null) {
                this.f63308b = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
