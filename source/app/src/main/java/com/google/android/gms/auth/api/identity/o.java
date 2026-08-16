package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "SignInPasswordCreator")
@Deprecated
public class o extends I0.a {

    @NonNull
    public static final Parcelable.Creator<o> CREATOR = new N();

    @c.InterfaceC0186c(getter = "getId", id = 1)
    public final String f60966b;

    @c.InterfaceC0186c(getter = "getPassword", id = 2)
    public final String f60967c;

    @c.b
    public o(@NonNull @c.e(id = 1) String str, @NonNull @c.e(id = 2) String str2) {
        this.f60966b = G0.A.m(((String) G0.A.s(str, "Account identifier cannot be null")).trim(), "Account identifier cannot be empty");
        this.f60967c = G0.A.l(str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return C2601y.b(this.f60966b, oVar.f60966b) && C2601y.b(this.f60967c, oVar.f60967c);
    }

    public int hashCode() {
        return C2601y.c(this.f60966b, this.f60967c);
    }

    @NonNull
    public String n() {
        return this.f60966b;
    }

    @NonNull
    public String t() {
        return this.f60967c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, n(), false);
        I0.b.Y(parcel, 2, t(), false);
        I0.b.b(parcel, a10);
    }
}
