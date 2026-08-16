package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "ClaimCreator")
public final class C11884e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11884e> CREATOR = new x();

    @c.InterfaceC0186c(getter = "getName", id = 1)
    public final String f60932b;

    @c.InterfaceC0186c(getter = "isEssential", id = 2)
    public final boolean f60933c;

    public static abstract class a {
        @NonNull
        public abstract C11884e a();

        @NonNull
        public abstract a b(boolean z10);

        @NonNull
        public abstract a c(@NonNull String str);
    }

    @c.b
    public C11884e(@NonNull @c.e(id = 1) String str, @c.e(id = 2) boolean z10) {
        this.f60932b = str;
        this.f60933c = z10;
    }

    @NonNull
    public static a n() {
        return new s();
    }

    public boolean b0() {
        return this.f60933c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C11884e) {
            C11884e c11884e = (C11884e) obj;
            if (this.f60932b.equals(c11884e.f60932b) && this.f60933c == c11884e.f60933c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(this.f60932b, Boolean.valueOf(this.f60933c));
    }

    @NonNull
    public String t() {
        return this.f60932b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, t(), false);
        I0.b.g(parcel, 2, b0());
        I0.b.b(parcel, a10);
    }
}
