package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "GoogleThirdPartyPaymentExtensionCreator")
public class C3546n extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3546n> CREATOR = new F();

    @NonNull
    @c.InterfaceC0186c(getter = "getThirdPartyPayment", id = 1)
    public final boolean f31609b;

    @c.b
    public C3546n(@c.e(id = 1) boolean z10) {
        this.f31609b = z10;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C3546n) && this.f31609b == ((C3546n) obj).n();
    }

    public int hashCode() {
        return C2601y.c(Boolean.valueOf(this.f31609b));
    }

    public boolean n() {
        return this.f31609b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, n());
        I0.b.b(parcel, a10);
    }
}
