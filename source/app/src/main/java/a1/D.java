package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "GoogleSilentVerificationExtensionCreator")
public final class D extends I0.a {
    public static final Parcelable.Creator<D> CREATOR = new E();

    @NonNull
    @c.InterfaceC0186c(getter = "getSilentVerification", id = 1)
    public final boolean f31540b;

    @c.b
    public D(@NonNull @c.e(id = 1) boolean z10) {
        this.f31540b = ((Boolean) G0.A.r(Boolean.valueOf(z10))).booleanValue();
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof D) && this.f31540b == ((D) obj).f31540b;
    }

    public final int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31540b));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, this.f31540b);
        I0.b.b(parcel, a10);
    }
}
