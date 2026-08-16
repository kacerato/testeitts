package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "DevicePublicKeyExtensionCreator")
public final class p0 extends I0.a {
    public static final Parcelable.Creator<p0> CREATOR = new q0();

    @NonNull
    @c.InterfaceC0186c(getter = "getDevicePublicKey", id = 1)
    public final boolean f31619b;

    @c.b
    public p0(@NonNull @c.e(id = 1) boolean z10) {
        this.f31619b = ((Boolean) G0.A.r(Boolean.valueOf(z10))).booleanValue();
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof p0) && this.f31619b == ((p0) obj).f31619b;
    }

    public final int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31619b));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, this.f31619b);
        I0.b.b(parcel, a10);
    }
}
