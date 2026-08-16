package com.google.android.gms.measurement.internal;

import android.content.Intent;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class T6 extends AbstractC12445z {

    public final c7 f62932e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T6(c7 c7Var, U3 u32) {
        super(u32);
        Objects.requireNonNull(c7Var);
        this.f62932e = c7Var;
    }

    @Override
    @WorkerThread
    public final void a() {
        c7 c7Var = this.f62932e;
        c7Var.b().h();
        String str = (String) c7Var.x0().pollFirst();
        if (str != null) {
            c7Var.y0(c7Var.e().c());
            c7Var.a().w().b("Sending trigger URI notification to app", str);
            Intent intent = new Intent();
            intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intent.setPackage(str);
            c7.V(c7Var.d(), intent);
        }
        c7Var.u0();
    }
}
