package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "SavePasswordResultCreator")
@Deprecated
public class C11891l extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11891l> CREATOR = new K();

    @c.InterfaceC0186c(getter = "getPendingIntent", id = 1)
    public final PendingIntent f60956b;

    @c.b
    public C11891l(@NonNull @c.e(id = 1) PendingIntent pendingIntent) {
        this.f60956b = (PendingIntent) G0.A.r(pendingIntent);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C11891l) {
            return C2601y.b(this.f60956b, ((C11891l) obj).f60956b);
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(this.f60956b);
    }

    @NonNull
    public PendingIntent n() {
        return this.f60956b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, n(), i10, false);
        I0.b.b(parcel, a10);
    }
}
