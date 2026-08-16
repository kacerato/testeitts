package com.google.android.gms.auth.api.signin;

import G0.A;
import I0.b;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import y0.l;

@c.g({1})
@c.a(creator = "SignInAccountCreator")
public class SignInAccount extends I0.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInAccount> CREATOR = new l();

    @c.InterfaceC0186c(defaultValue = "", id = 4)
    @Deprecated
    public final String f61018b;

    @c.InterfaceC0186c(getter = "getGoogleSignInAccount", id = 7)
    public final GoogleSignInAccount f61019c;

    @c.InterfaceC0186c(defaultValue = "", id = 8)
    @Deprecated
    public final String f61020d;

    @c.b
    public SignInAccount(@c.e(id = 4) String str, @c.e(id = 7) GoogleSignInAccount googleSignInAccount, @c.e(id = 8) String str2) {
        this.f61019c = googleSignInAccount;
        this.f61018b = A.m(str, "8.3 and 8.4 SDKs require non-null email");
        this.f61020d = A.m(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Nullable
    public final GoogleSignInAccount n() {
        return this.f61019c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        String str = this.f61018b;
        int a10 = b.a(parcel);
        b.Y(parcel, 4, str, false);
        b.S(parcel, 7, this.f61019c, i10, false);
        b.Y(parcel, 8, this.f61020d, false);
        b.b(parcel, a10);
    }
}
