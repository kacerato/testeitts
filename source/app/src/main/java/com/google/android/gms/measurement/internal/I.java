package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.g({1})
@c.a(creator = "EventParcelCreator")
public final class I extends I0.a {
    public static final Parcelable.Creator<I> CREATOR = new J();

    @c.InterfaceC0186c(id = 2)
    public final String f62679b;

    @c.InterfaceC0186c(id = 3)
    public final G f62680c;

    @c.InterfaceC0186c(id = 4)
    public final String f62681d;

    @c.InterfaceC0186c(id = 5)
    public final long f62682e;

    public I(I i10, long j10) {
        G0.A.r(i10);
        this.f62679b = i10.f62679b;
        this.f62680c = i10.f62680c;
        this.f62681d = i10.f62681d;
        this.f62682e = j10;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f62680c);
        String str = this.f62681d;
        int length = String.valueOf(str).length();
        String str2 = this.f62679b;
        StringBuilder sb2 = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + valueOf.length());
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        sb2.append(",params=");
        sb2.append(valueOf);
        return sb2.toString();
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        J.a(this, parcel, i10);
    }

    @c.b
    public I(@c.e(id = 2) String str, @c.e(id = 3) G g10, @c.e(id = 4) String str2, @c.e(id = 5) long j10) {
        this.f62679b = str;
        this.f62680c = g10;
        this.f62681d = str2;
        this.f62682e = j10;
    }
}
