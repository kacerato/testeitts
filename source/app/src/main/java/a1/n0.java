package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.List;

@c.a(creator = "CableAuthenticationExtensionCreator")
public final class n0 extends I0.a {
    public static final Parcelable.Creator<n0> CREATOR = new o0();

    @NonNull
    @c.InterfaceC0186c(getter = "getCableAuthentication", id = 1)
    public final List f31610b;

    @c.b
    public n0(@NonNull @c.e(id = 1) List list) {
        this.f31610b = (List) G0.A.r(list);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n0)) {
            return false;
        }
        n0 n0Var = (n0) obj;
        return this.f31610b.containsAll(n0Var.f31610b) && n0Var.f31610b.containsAll(this.f31610b);
    }

    public final int hashCode() {
        return C2601y.c(new HashSet(this.f31610b));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, this.f31610b, false);
        I0.b.b(parcel, a10);
    }
}
