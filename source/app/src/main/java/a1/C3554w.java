package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "UserVerificationMethodExtensionCreator")
public class C3554w extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3554w> CREATOR = new T();

    @NonNull
    @c.InterfaceC0186c(getter = "getUvm", id = 1)
    public final boolean f31658b;

    @c.b
    public C3554w(@NonNull @c.e(id = 1) boolean z10) {
        this.f31658b = z10;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C3554w) && this.f31658b == ((C3554w) obj).f31658b;
    }

    public int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31658b));
    }

    public boolean n() {
        return this.f31658b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, n());
        I0.b.b(parcel, a10);
    }
}
