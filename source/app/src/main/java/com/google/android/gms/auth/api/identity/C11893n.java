package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import a1.C3549q;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "SignInCredentialCreator")
@Deprecated
public final class C11893n extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11893n> CREATOR = new L();

    @c.InterfaceC0186c(getter = "getId", id = 1)
    public final String f60957b;

    @Nullable
    @c.InterfaceC0186c(getter = "getDisplayName", id = 2)
    public final String f60958c;

    @Nullable
    @c.InterfaceC0186c(getter = "getGivenName", id = 3)
    public final String f60959d;

    @Nullable
    @c.InterfaceC0186c(getter = "getFamilyName", id = 4)
    public final String f60960e;

    @Nullable
    @c.InterfaceC0186c(getter = "getProfilePictureUri", id = 5)
    public final Uri f60961f;

    @Nullable
    @c.InterfaceC0186c(getter = "getPassword", id = 6)
    public final String f60962g;

    @Nullable
    @c.InterfaceC0186c(getter = "getGoogleIdToken", id = 7)
    public final String f60963h;

    @Nullable
    @c.InterfaceC0186c(getter = "getPhoneNumber", id = 8)
    public final String f60964i;

    @Nullable
    @c.InterfaceC0186c(getter = "getPublicKeyCredential", id = 9)
    public final C3549q f60965j;

    @c.b
    public C11893n(@c.e(id = 1) String str, @Nullable @c.e(id = 2) String str2, @Nullable @c.e(id = 3) String str3, @Nullable @c.e(id = 4) String str4, @Nullable @c.e(id = 5) Uri uri, @Nullable @c.e(id = 6) String str5, @Nullable @c.e(id = 7) String str6, @Nullable @c.e(id = 8) String str7, @Nullable @c.e(id = 9) C3549q c3549q) {
        this.f60957b = (String) G0.A.r(str);
        this.f60958c = str2;
        this.f60959d = str3;
        this.f60960e = str4;
        this.f60961f = uri;
        this.f60962g = str5;
        this.f60963h = str6;
        this.f60964i = str7;
        this.f60965j = c3549q;
    }

    @Nullable
    public String b0() {
        return this.f60959d;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11893n)) {
            return false;
        }
        C11893n c11893n = (C11893n) obj;
        return C2601y.b(this.f60957b, c11893n.f60957b) && C2601y.b(this.f60958c, c11893n.f60958c) && C2601y.b(this.f60959d, c11893n.f60959d) && C2601y.b(this.f60960e, c11893n.f60960e) && C2601y.b(this.f60961f, c11893n.f60961f) && C2601y.b(this.f60962g, c11893n.f60962g) && C2601y.b(this.f60963h, c11893n.f60963h) && C2601y.b(this.f60964i, c11893n.f60964i) && C2601y.b(this.f60965j, c11893n.f60965j);
    }

    public int hashCode() {
        return C2601y.c(this.f60957b, this.f60958c, this.f60959d, this.f60960e, this.f60961f, this.f60962g, this.f60963h, this.f60964i, this.f60965j);
    }

    @Nullable
    public String n() {
        return this.f60958c;
    }

    @Nullable
    public String n0() {
        return this.f60963h;
    }

    @Nullable
    public String t() {
        return this.f60960e;
    }

    @NonNull
    public String u0() {
        return this.f60957b;
    }

    @Nullable
    public String v0() {
        return this.f60962g;
    }

    @Nullable
    @Deprecated
    public String w0() {
        return this.f60964i;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, u0(), false);
        I0.b.Y(parcel, 2, n(), false);
        I0.b.Y(parcel, 3, b0(), false);
        I0.b.Y(parcel, 4, t(), false);
        I0.b.S(parcel, 5, x0(), i10, false);
        I0.b.Y(parcel, 6, v0(), false);
        I0.b.Y(parcel, 7, n0(), false);
        I0.b.Y(parcel, 8, w0(), false);
        I0.b.S(parcel, 9, y0(), i10, false);
        I0.b.b(parcel, a10);
    }

    @Nullable
    public Uri x0() {
        return this.f60961f;
    }

    @Nullable
    public C3549q y0() {
        return this.f60965j;
    }
}
