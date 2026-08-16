package com.google.android.gms.auth;

import G0.A;
import G0.C2601y;
import G0.F;
import I0.a;
import I0.b;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.List;
import s0.s;

@F
@c.a(creator = "TokenDataCreator")
public class TokenData extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<TokenData> CREATOR = new s();

    @c.h(id = 1)
    public final int f60835b;

    @c.InterfaceC0186c(getter = "getToken", id = 2)
    public final String f60836c;

    @Nullable
    @c.InterfaceC0186c(getter = "getExpirationTimeSecs", id = 3)
    public final Long f60837d;

    @c.InterfaceC0186c(getter = "isCached", id = 4)
    public final boolean f60838e;

    @c.InterfaceC0186c(getter = "isSnowballed", id = 5)
    public final boolean f60839f;

    @Nullable
    @c.InterfaceC0186c(getter = "getGrantedScopes", id = 6)
    public final List f60840g;

    @Nullable
    @c.InterfaceC0186c(getter = "getScopeData", id = 7)
    public final String f60841h;

    @c.b
    public TokenData(@c.e(id = 1) int i10, @c.e(id = 2) String str, @Nullable @c.e(id = 3) Long l10, @c.e(id = 4) boolean z10, @c.e(id = 5) boolean z11, @Nullable @c.e(id = 6) List list, @Nullable @c.e(id = 7) String str2) {
        this.f60835b = i10;
        this.f60836c = A.l(str);
        this.f60837d = l10;
        this.f60838e = z10;
        this.f60839f = z11;
        this.f60840g = list;
        this.f60841h = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f60836c, tokenData.f60836c) && C2601y.b(this.f60837d, tokenData.f60837d) && this.f60838e == tokenData.f60838e && this.f60839f == tokenData.f60839f && C2601y.b(this.f60840g, tokenData.f60840g) && C2601y.b(this.f60841h, tokenData.f60841h);
    }

    public final int hashCode() {
        return C2601y.c(this.f60836c, this.f60837d, Boolean.valueOf(this.f60838e), Boolean.valueOf(this.f60839f), this.f60840g, this.f60841h);
    }

    @NonNull
    public final String n() {
        return this.f60836c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = b.a(parcel);
        b.F(parcel, 1, this.f60835b);
        b.Y(parcel, 2, this.f60836c, false);
        b.N(parcel, 3, this.f60837d, false);
        b.g(parcel, 4, this.f60838e);
        b.g(parcel, 5, this.f60839f);
        b.a0(parcel, 6, this.f60840g, false);
        b.Y(parcel, 7, this.f60841h, false);
        b.b(parcel, a10);
    }
}
