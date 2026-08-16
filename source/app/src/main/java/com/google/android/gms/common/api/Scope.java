package com.google.android.gms.common.api;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;

@c.a(creator = "ScopeCreator")
public final class Scope extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<Scope> CREATOR = new L();

    @c.h(id = 1)
    public final int f61036b;

    @c.InterfaceC0186c(getter = "getScopeUri", id = 2)
    public final String f61037c;

    @c.b
    public Scope(@c.e(id = 1) int i10, @c.e(id = 2) String str) {
        G0.A.m(str, "scopeUri must not be null or empty");
        this.f61036b = i10;
        this.f61037c = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f61037c.equals(((Scope) obj).f61037c);
        }
        return false;
    }

    public int hashCode() {
        return this.f61037c.hashCode();
    }

    @NonNull
    @C0.a
    public String n() {
        return this.f61037c;
    }

    @NonNull
    public String toString() {
        return this.f61037c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61036b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, n(), false);
        I0.b.b(parcel, a10);
    }

    public Scope(@NonNull String str) {
        this(1, str);
    }
}
