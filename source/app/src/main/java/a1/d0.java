package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;

@c.a(creator = "AuthenticationExtensionsPrfOutputsCreator")
public final class d0 extends I0.a {
    public static final Parcelable.Creator<d0> CREATOR = new e0();

    @c.InterfaceC0186c(getter = "getSupported", id = 1)
    public final boolean f31577b;

    @Nullable
    @c.InterfaceC0186c(getter = "getOutputs", id = 2)
    public final byte[] f31578c;

    @c.b
    public d0(@NonNull @c.e(id = 1) boolean z10, @Nullable @c.e(id = 2) byte[] bArr) {
        this.f31577b = z10;
        this.f31578c = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return this.f31577b == d0Var.f31577b && Arrays.equals(this.f31578c, d0Var.f31578c);
    }

    public final int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31577b), this.f31578c);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, this.f31577b);
        I0.b.m(parcel, 2, this.f31578c, false);
        I0.b.b(parcel, a10);
    }
}
