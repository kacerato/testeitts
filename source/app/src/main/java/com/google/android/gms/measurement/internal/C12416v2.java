package com.google.android.gms.measurement.internal;

import B0.C2326k;
import G0.AbstractC2564f;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;

public final class C12416v2 extends AbstractC2564f {
    public C12416v2(Context context, Looper looper, AbstractC2564f.a aVar, AbstractC2564f.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.measurement.START";
    }

    @Override
    public final int l() {
        return C2326k.f1252a;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof InterfaceC12313i2 ? (InterfaceC12313i2) queryLocalInterface : new C12289f2(iBinder);
    }
}
