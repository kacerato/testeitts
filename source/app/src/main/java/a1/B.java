package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "GoogleSessionIdExtensionCreator")
public final class B extends I0.a {
    public static final Parcelable.Creator<B> CREATOR = new C();

    @NonNull
    @c.InterfaceC0186c(getter = "getSessionId", id = 1)
    public final long f31539b;

    @c.b
    public B(@NonNull @c.e(id = 1) long j10) {
        this.f31539b = ((Long) G0.A.r(Long.valueOf(j10))).longValue();
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof B) && this.f31539b == ((B) obj).f31539b;
    }

    public final int hashCode() {
        return C2601y.c(Long.valueOf(this.f31539b));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.K(parcel, 1, this.f31539b);
        I0.b.b(parcel, a10);
    }
}
