package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.List;

@c.a(creator = "AuthorizationResultCreator")
public final class C11881b extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11881b> CREATOR = new r();

    @Nullable
    @c.InterfaceC0186c(getter = "getServerAuthCode", id = 1)
    public final String f60881b;

    @Nullable
    @c.InterfaceC0186c(getter = "getAccessToken", id = 2)
    public final String f60882c;

    @Nullable
    @c.InterfaceC0186c(getter = "getIdToken", id = 3)
    public final String f60883d;

    @c.InterfaceC0186c(getter = "getGrantedScopes", id = 4)
    public final List f60884e;

    @Nullable
    @c.InterfaceC0186c(getter = "toGoogleSignInAccount", id = 5)
    public final GoogleSignInAccount f60885f;

    @Nullable
    @c.InterfaceC0186c(getter = "getPendingIntent", id = 6)
    public final PendingIntent f60886g;

    @c.b
    public C11881b(@Nullable @c.e(id = 1) String str, @Nullable @c.e(id = 2) String str2, @Nullable @c.e(id = 3) String str3, @NonNull @c.e(id = 4) List<String> list, @Nullable @c.e(id = 5) GoogleSignInAccount googleSignInAccount, @Nullable @c.e(id = 6) PendingIntent pendingIntent) {
        this.f60881b = str;
        this.f60882c = str2;
        this.f60883d = str3;
        this.f60884e = (List) G0.A.r(list);
        this.f60886g = pendingIntent;
        this.f60885f = googleSignInAccount;
    }

    @Nullable
    public PendingIntent b0() {
        return this.f60886g;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11881b)) {
            return false;
        }
        C11881b c11881b = (C11881b) obj;
        return C2601y.b(this.f60881b, c11881b.f60881b) && C2601y.b(this.f60882c, c11881b.f60882c) && C2601y.b(this.f60883d, c11881b.f60883d) && C2601y.b(this.f60884e, c11881b.f60884e) && C2601y.b(this.f60886g, c11881b.f60886g) && C2601y.b(this.f60885f, c11881b.f60885f);
    }

    public int hashCode() {
        return C2601y.c(this.f60881b, this.f60882c, this.f60883d, this.f60884e, this.f60886g, this.f60885f);
    }

    @Nullable
    public String n() {
        return this.f60882c;
    }

    @Nullable
    public String n0() {
        return this.f60881b;
    }

    @NonNull
    public List<String> t() {
        return this.f60884e;
    }

    public boolean u0() {
        return this.f60886g != null;
    }

    @Nullable
    public GoogleSignInAccount v0() {
        return this.f60885f;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, n0(), false);
        I0.b.Y(parcel, 2, n(), false);
        I0.b.Y(parcel, 3, this.f60883d, false);
        I0.b.a0(parcel, 4, t(), false);
        I0.b.S(parcel, 5, v0(), i10, false);
        I0.b.S(parcel, 6, b0(), i10, false);
        I0.b.b(parcel, a10);
    }
}
