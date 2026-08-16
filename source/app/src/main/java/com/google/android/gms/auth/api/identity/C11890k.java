package com.google.android.gms.auth.api.identity;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "SavePasswordRequestCreator")
@Deprecated
public class C11890k extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C11890k> CREATOR = new J();

    @c.InterfaceC0186c(getter = "getSignInPassword", id = 1)
    public final o f60950b;

    @Nullable
    @c.InterfaceC0186c(getter = "getSessionId", id = 2)
    public final String f60951c;

    @c.InterfaceC0186c(getter = "getTheme", id = 3)
    public final int f60952d;

    @Deprecated
    public static final class a {

        public o f60953a;

        @Nullable
        public String f60954b;

        public int f60955c;

        @NonNull
        public C11890k a() {
            return new C11890k(this.f60953a, this.f60954b, this.f60955c);
        }

        @NonNull
        public a b(@NonNull o oVar) {
            this.f60953a = oVar;
            return this;
        }

        @NonNull
        public final a c(int i10) {
            this.f60955c = i10;
            return this;
        }

        @NonNull
        public final a d(@NonNull String str) {
            this.f60954b = str;
            return this;
        }
    }

    @c.b
    public C11890k(@c.e(id = 1) o oVar, @Nullable @c.e(id = 2) String str, @c.e(id = 3) int i10) {
        this.f60950b = (o) G0.A.r(oVar);
        this.f60951c = str;
        this.f60952d = i10;
    }

    @NonNull
    public static a b0(@NonNull C11890k c11890k) {
        G0.A.r(c11890k);
        a n10 = n();
        n10.b(c11890k.t());
        n10.c(c11890k.f60952d);
        String str = c11890k.f60951c;
        if (str != null) {
            n10.d(str);
        }
        return n10;
    }

    @NonNull
    public static a n() {
        return new a();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C11890k)) {
            return false;
        }
        C11890k c11890k = (C11890k) obj;
        return C2601y.b(this.f60950b, c11890k.f60950b) && C2601y.b(this.f60951c, c11890k.f60951c) && this.f60952d == c11890k.f60952d;
    }

    public int hashCode() {
        return C2601y.c(this.f60950b, this.f60951c);
    }

    @NonNull
    public o t() {
        return this.f60950b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, t(), i10, false);
        I0.b.Y(parcel, 2, this.f60951c, false);
        I0.b.F(parcel, 3, this.f60952d);
        I0.b.b(parcel, a10);
    }
}
