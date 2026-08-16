package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.C12274d3;
import java.util.Objects;

public final class W0 extends AbstractRunnableC12212w1 {

    public final Context f62151f;

    public final Bundle f62152g;

    public final I1 f62153h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W0(I1 i12, Context context, Bundle bundle) {
        super(i12, true);
        this.f62151f = context;
        this.f62152g = bundle;
        Objects.requireNonNull(i12);
        this.f62153h = i12;
    }

    @Override
    public final void a() {
        try {
            Context context = this.f62151f;
            G0.A.r(context);
            String a10 = C12274d3.a(context);
            G0.A.r(context);
            Resources resources = context.getResources();
            if (TextUtils.isEmpty(a10)) {
                a10 = C12274d3.a(context);
            }
            Boolean c10 = C12274d3.c("google_analytics_force_disable_updates", resources, a10);
            I1 i12 = this.f62153h;
            i12.r(i12.x(context, c10 == null || !c10.booleanValue()));
            if (i12.q() == null) {
                Log.w(i12.o(), "Failed to connect to measurement client.");
                return;
            }
            int a11 = DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
            ((InterfaceC12211w0) G0.A.r(i12.q())).initialize(W0.f.l0(context), new I0(130000L, Math.max(a11, r0), Boolean.TRUE.equals(c10) || DynamiteModule.c(context, ModuleDescriptor.MODULE_ID) < a11, this.f62152g, C12274d3.a(context)), this.f62456b);
        } catch (Exception e10) {
            this.f62153h.n(e10, true, false);
        }
    }
}
