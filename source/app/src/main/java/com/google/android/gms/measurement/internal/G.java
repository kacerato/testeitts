package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;

@c.g({1})
@c.a(creator = "EventParamsCreator")
public final class G extends I0.a implements Iterable<String> {
    public static final Parcelable.Creator<G> CREATOR = new H();

    @c.InterfaceC0186c(getter = "z", id = 2)
    public final Bundle f62648b;

    @c.b
    public G(@c.e(id = 2) Bundle bundle) {
        this.f62648b = bundle;
    }

    public final Object b(String str) {
        return this.f62648b.get(str);
    }

    public final int b0() {
        return this.f62648b.size();
    }

    @Override
    public final Iterator iterator() {
        return new F(this);
    }

    public final Long n(String str) {
        return Long.valueOf(this.f62648b.getLong(str));
    }

    public final Bundle n0() {
        return new Bundle(this.f62648b);
    }

    public final Double p(String str) {
        return Double.valueOf(this.f62648b.getDouble("value"));
    }

    public final String t(String str) {
        return this.f62648b.getString(str);
    }

    public final String toString() {
        return this.f62648b.toString();
    }

    public final Bundle u0() {
        return this.f62648b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.k(parcel, 2, n0(), false);
        I0.b.b(parcel, a10);
    }
}
