package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "GoogleTunnelServerIdExtensionCreator")
public final class G extends I0.a {
    public static final Parcelable.Creator<G> CREATOR = new H();

    @NonNull
    @c.InterfaceC0186c(getter = "getTunnelServerId", id = 1)
    public final String f31541b;

    @c.b
    public G(@NonNull @c.e(id = 1) String str) {
        this.f31541b = (String) G0.A.r(str);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof G) {
            return this.f31541b.equals(((G) obj).f31541b);
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(this.f31541b);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, this.f31541b, false);
        I0.b.b(parcel, a10);
    }
}
