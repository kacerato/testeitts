package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;

@c.a(creator = "CableAuthenticationDataCreator")
public final class l0 extends I0.a {
    public static final Parcelable.Creator<l0> CREATOR = new m0();

    @c.InterfaceC0186c(getter = "getVersion", id = 1)
    public final long f31599b;

    @NonNull
    @c.InterfaceC0186c(getter = "getClientEid", id = 2)
    public final byte[] f31600c;

    @NonNull
    @c.InterfaceC0186c(getter = "getAuthenticatorEid", id = 3)
    public final byte[] f31601d;

    @NonNull
    @c.InterfaceC0186c(getter = "getSessionPreKey", id = 4)
    public final byte[] f31602e;

    @c.b
    public l0(@c.e(id = 1) long j10, @NonNull @c.e(id = 2) byte[] bArr, @NonNull @c.e(id = 3) byte[] bArr2, @NonNull @c.e(id = 4) byte[] bArr3) {
        this.f31599b = j10;
        this.f31600c = (byte[]) G0.A.r(bArr);
        this.f31601d = (byte[]) G0.A.r(bArr2);
        this.f31602e = (byte[]) G0.A.r(bArr3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.f31599b == l0Var.f31599b && Arrays.equals(this.f31600c, l0Var.f31600c) && Arrays.equals(this.f31601d, l0Var.f31601d) && Arrays.equals(this.f31602e, l0Var.f31602e);
    }

    public final int hashCode() {
        return C2601y.c(Long.valueOf(this.f31599b), this.f31600c, this.f31601d, this.f31602e);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.K(parcel, 1, this.f31599b);
        I0.b.m(parcel, 2, this.f31600c, false);
        I0.b.m(parcel, 3, this.f31601d, false);
        I0.b.m(parcel, 4, this.f31602e, false);
        I0.b.b(parcel, a10);
    }
}
