package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

@c.a(creator = "GetSignInIntentRequestCreator")
@Deprecated
public class C11887h extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11887h> CREATOR = new B();

    @c.InterfaceC0186c(getter = "getServerClientId", id = 1)
    public final String f60935b;

    @Nullable
    @c.InterfaceC0186c(getter = "getHostedDomainFilter", id = 2)
    public final String f60936c;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 3)
    public final String f60937d;

    @Nullable
    @c.InterfaceC0186c(getter = "getNonce", id = 4)
    public final String f60938e;

    @c.InterfaceC0186c(getter = "requestVerifiedPhoneNumber", id = 5)
    public final boolean f60939f;

    @c.InterfaceC0186c(getter = "getTheme", id = 6)
    public final int f60940g;

    @Nullable
    @c.InterfaceC0186c(getter = "getClaims", id = 7)
    public final List f60941h;

    public static final class a {

        public String f60942a;

        @Nullable
        public String f60943b;

        @Nullable
        public String f60944c;

        @Nullable
        public List f60945d;

        @Nullable
        public String f60946e;

        public boolean f60947f;

        public int f60948g;

        @NonNull
        public C11887h a() {
            return new C11887h(this.f60942a, this.f60943b, this.f60944c, this.f60946e, this.f60947f, this.f60948g, this.f60945d);
        }

        @NonNull
        public a b(@Nullable String str) {
            this.f60943b = str;
            return this;
        }

        @NonNull
        public a c(@Nullable List<C11884e> list) {
            this.f60945d = list;
            return this;
        }

        @NonNull
        public a d(@Nullable String str) {
            this.f60946e = str;
            return this;
        }

        @NonNull
        @Deprecated
        public a e(boolean z10) {
            this.f60947f = z10;
            return this;
        }

        @NonNull
        public a f(@NonNull String str) {
            G0.A.r(str);
            this.f60942a = str;
            return this;
        }

        @NonNull
        public final a g(@Nullable String str) {
            this.f60944c = str;
            return this;
        }

        @NonNull
        public final a h(int i10) {
            this.f60948g = i10;
            return this;
        }
    }

    @c.b
    public C11887h(@c.e(id = 1) String str, @Nullable @c.e(id = 2) String str2, @Nullable @c.e(id = 3) String str3, @Nullable @c.e(id = 4) String str4, @c.e(id = 5) boolean z10, @c.e(id = 6) int i10, @Nullable @c.e(id = 7) List list) {
        G0.A.r(str);
        this.f60935b = str;
        this.f60936c = str2;
        this.f60937d = str3;
        this.f60938e = str4;
        this.f60939f = z10;
        this.f60940g = i10;
        this.f60941h = list;
    }

    @NonNull
    public static a n() {
        return new a();
    }

    @NonNull
    public static a w0(@NonNull C11887h c11887h) {
        G0.A.r(c11887h);
        a n10 = n();
        n10.f(c11887h.u0());
        n10.d(c11887h.n0());
        n10.b(c11887h.b0());
        n10.e(c11887h.f60939f);
        n10.h(c11887h.f60940g);
        n10.c(c11887h.t());
        String str = c11887h.f60937d;
        if (str != null) {
            n10.g(str);
        }
        return n10;
    }

    @Nullable
    public String b0() {
        return this.f60936c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11887h)) {
            return false;
        }
        C11887h c11887h = (C11887h) obj;
        return C2601y.b(this.f60935b, c11887h.f60935b) && C2601y.b(this.f60938e, c11887h.f60938e) && C2601y.b(this.f60936c, c11887h.f60936c) && C2601y.b(Boolean.valueOf(this.f60939f), Boolean.valueOf(c11887h.f60939f)) && this.f60940g == c11887h.f60940g && C2601y.b(this.f60941h, c11887h.f60941h);
    }

    public int hashCode() {
        return C2601y.c(this.f60935b, this.f60936c, this.f60938e, Boolean.valueOf(this.f60939f), Integer.valueOf(this.f60940g), this.f60941h);
    }

    @Nullable
    public String n0() {
        return this.f60938e;
    }

    @Nullable
    public List<C11884e> t() {
        return this.f60941h;
    }

    @NonNull
    public String u0() {
        return this.f60935b;
    }

    @Deprecated
    public boolean v0() {
        return this.f60939f;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, u0(), false);
        I0.b.Y(parcel, 2, b0(), false);
        I0.b.Y(parcel, 3, this.f60937d, false);
        I0.b.Y(parcel, 4, n0(), false);
        I0.b.g(parcel, 5, v0());
        I0.b.F(parcel, 6, this.f60940g);
        I0.b.d0(parcel, 7, t(), false);
        I0.b.b(parcel, a10);
    }
}
