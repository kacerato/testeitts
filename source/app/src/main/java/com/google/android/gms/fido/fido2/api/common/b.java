package com.google.android.gms.fido.fido2.api.common;

import G0.C2601y;
import I0.c;
import a1.AbstractC3538f;
import a1.h0;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import j1.C13787k;
import j1.C13788l;

@c.g({1})
@c.a(creator = "AuthenticatorErrorResponseCreator")
public class b extends AbstractC3538f {

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new h0();

    @NonNull
    @c.InterfaceC0186c(getter = "getErrorCodeAsInt", id = 2, type = "int")
    public final ErrorCode f61468b;

    @Nullable
    @c.InterfaceC0186c(getter = "getErrorMessage", id = 3)
    public final String f61469c;

    @c.InterfaceC0186c(defaultValue = "0", getter = "getInternalErrorCode", id = 4, type = "int")
    public final int f61470d;

    @c.b
    public b(@NonNull @c.e(id = 2) int i10, @Nullable @c.e(id = 3) String str, @c.e(id = 4) int i11) {
        try {
            this.f61468b = ErrorCode.e(i10);
            this.f61469c = str;
            this.f61470d = i11;
        } catch (ErrorCode.UnsupportedErrorCodeException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @NonNull
    public static b b0(@NonNull byte[] bArr) {
        return (b) I0.d.a(bArr, CREATOR);
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return C2601y.b(this.f61468b, bVar.f61468b) && C2601y.b(this.f61469c, bVar.f61469c) && C2601y.b(Integer.valueOf(this.f61470d), Integer.valueOf(bVar.f61470d));
    }

    public int hashCode() {
        return C2601y.c(this.f61468b, this.f61469c, Integer.valueOf(this.f61470d));
    }

    @Override
    @NonNull
    public byte[] n() {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public ErrorCode n0() {
        return this.f61468b;
    }

    @Override
    @NonNull
    public byte[] t() {
        return I0.d.n(this);
    }

    @NonNull
    public String toString() {
        C13787k a10 = C13788l.a(this);
        a10.a("errorCode", this.f61468b.b());
        String str = this.f61469c;
        if (str != null) {
            a10.b("errorMessage", str);
        }
        return a10.toString();
    }

    public int u0() {
        return this.f61468b.b();
    }

    @Nullable
    public String v0() {
        return this.f61469c;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 2, u0());
        I0.b.Y(parcel, 3, v0(), false);
        I0.b.F(parcel, 4, this.f61470d);
        I0.b.b(parcel, a10);
    }
}
