package com.google.android.gms.internal.measurement;

import I0.c;
import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

@c.a(creator = "ScionActivityInfoCreator")
public final class K0 extends I0.a {
    public static final Parcelable.Creator<K0> CREATOR = new L0();

    @c.InterfaceC0186c(id = 1)
    public final int f61969b;

    @Nullable
    @c.InterfaceC0186c(id = 2)
    public final String f61970c;

    @Nullable
    @c.InterfaceC0186c(id = 3)
    public final Intent f61971d;

    @c.b
    public K0(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) String str, @Nullable @c.e(id = 3) Intent intent) {
        this.f61969b = i10;
        this.f61970c = str;
        this.f61971d = intent;
    }

    public static K0 b(Activity activity) {
        return new K0(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K0)) {
            return false;
        }
        K0 k02 = (K0) obj;
        return this.f61969b == k02.f61969b && Objects.equals(this.f61970c, k02.f61970c) && Objects.equals(this.f61971d, k02.f61971d);
    }

    public final int hashCode() {
        return this.f61969b;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61969b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, this.f61970c, false);
        I0.b.S(parcel, 3, this.f61971d, i10, false);
        I0.b.b(parcel, a10);
    }
}
