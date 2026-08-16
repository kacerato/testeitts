package com.google.android.gms.auth.api.identity;

import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.a(creator = "BeginSignInResultCreator")
@Deprecated
public final class C11883d extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11883d> CREATOR = new w();

    @c.InterfaceC0186c(getter = "getPendingIntent", id = 1)
    public final PendingIntent f60931b;

    @c.b
    public C11883d(@NonNull @c.e(id = 1) PendingIntent pendingIntent) {
        this.f60931b = (PendingIntent) G0.A.r(pendingIntent);
    }

    @NonNull
    public PendingIntent n() {
        return this.f60931b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, n(), i10, false);
        I0.b.b(parcel, a10);
    }
}
