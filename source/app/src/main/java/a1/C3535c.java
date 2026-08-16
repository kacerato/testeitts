package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "AuthenticationExtensionsCredPropsOutputsCreator")
public class C3535c extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3535c> CREATOR = new a0();

    @c.InterfaceC0186c(getter = "getIsDiscoverableCredential", id = 1)
    public final boolean f31571b;

    @c.b
    public C3535c(@c.e(id = 1) boolean z10) {
        this.f31571b = z10;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C3535c) && this.f31571b == ((C3535c) obj).f31571b;
    }

    public int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31571b));
    }

    public boolean n() {
        return this.f31571b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, n());
        I0.b.b(parcel, a10);
    }
}
