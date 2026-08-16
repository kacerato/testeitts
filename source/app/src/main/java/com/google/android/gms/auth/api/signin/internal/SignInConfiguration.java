package com.google.android.gms.auth.api.signin.internal;

import G0.A;
import I0.a;
import I0.b;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import z0.C16217b;
import z0.C16240y;

@c.g({1})
@c.a(creator = "SignInConfigurationCreator")
public final class SignInConfiguration extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C16240y();

    @c.InterfaceC0186c(getter = "getConsumerPkgName", id = 2)
    public final String f61021b;

    @c.InterfaceC0186c(getter = "getGoogleConfig", id = 5)
    public final GoogleSignInOptions f61022c;

    @c.b
    public SignInConfiguration(@NonNull @c.e(id = 2) String str, @NonNull @c.e(id = 5) GoogleSignInOptions googleSignInOptions) {
        this.f61021b = A.l(str);
        this.f61022c = googleSignInOptions;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f61021b.equals(signInConfiguration.f61021b)) {
            GoogleSignInOptions googleSignInOptions = this.f61022c;
            GoogleSignInOptions googleSignInOptions2 = signInConfiguration.f61022c;
            if (googleSignInOptions == null) {
                if (googleSignInOptions2 == null) {
                    return true;
                }
            } else if (googleSignInOptions.equals(googleSignInOptions2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return new C16217b().a(this.f61021b).a(this.f61022c).b();
    }

    @NonNull
    public final GoogleSignInOptions n() {
        return this.f61022c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        String str = this.f61021b;
        int a10 = b.a(parcel);
        b.Y(parcel, 2, str, false);
        b.S(parcel, 5, this.f61022c, i10, false);
        b.b(parcel, a10);
    }
}
