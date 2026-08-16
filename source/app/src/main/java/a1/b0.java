package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;

@c.a(creator = "AuthenticationExtensionsDevicePublicKeyOutputsCreator")
public final class b0 extends I0.a {
    public static final Parcelable.Creator<b0> CREATOR = new c0();

    @Nullable
    @c.InterfaceC0186c(getter = "getSignature", id = 1)
    public final byte[] f31569b;

    @Nullable
    @c.InterfaceC0186c(getter = "getAuthenticatorOutput", id = 2)
    public final byte[] f31570c;

    @c.b
    public b0(@Nullable @c.e(id = 1) byte[] bArr, @Nullable @c.e(id = 2) byte[] bArr2) {
        this.f31569b = bArr;
        this.f31570c = bArr2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return Arrays.equals(this.f31569b, b0Var.f31569b) && Arrays.equals(this.f31570c, b0Var.f31570c);
    }

    public final int hashCode() {
        return C2601y.c(this.f31569b, this.f31570c);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.m(parcel, 1, this.f31569b, false);
        I0.b.m(parcel, 2, this.f31570c, false);
        I0.b.b(parcel, a10);
    }
}
