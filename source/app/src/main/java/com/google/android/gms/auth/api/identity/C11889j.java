package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "SaveAccountLinkingTokenResultCreator")
public class C11889j extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11889j> CREATOR = new I();

    @Nullable
    @c.InterfaceC0186c(getter = "getPendingIntent", id = 1)
    public final PendingIntent f60949b;

    @c.b
    public C11889j(@Nullable @c.e(id = 1) PendingIntent pendingIntent) {
        this.f60949b = pendingIntent;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C11889j) {
            return C2601y.b(this.f60949b, ((C11889j) obj).f60949b);
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(this.f60949b);
    }

    @Nullable
    public PendingIntent n() {
        return this.f60949b;
    }

    public boolean t() {
        return this.f60949b != null;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, n(), i10, false);
        I0.b.b(parcel, a10);
    }
}
