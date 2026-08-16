package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.a(creator = "GoogleMultiAssertionExtensionCreator")
public final class t0 extends I0.a {
    public static final Parcelable.Creator<t0> CREATOR = new C3532A();

    @NonNull
    @c.InterfaceC0186c(getter = "getRequestForMultiAssertion", id = 1)
    public final boolean f31657b;

    @c.b
    public t0(@NonNull @c.e(id = 1) boolean z10) {
        this.f31657b = ((Boolean) G0.A.r(Boolean.valueOf(z10))).booleanValue();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof t0) && this.f31657b == ((t0) obj).f31657b;
    }

    public final int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31657b));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, this.f31657b);
        I0.b.b(parcel, a10);
    }
}
