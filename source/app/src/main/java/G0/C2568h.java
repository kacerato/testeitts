package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.g({1000})
@C0.a
@c.a(creator = "ClientIdentityCreator")
public class C2568h extends I0.a {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<C2568h> CREATOR = new M();

    @c.InterfaceC0186c(defaultValueUnchecked = "0", id = 1)
    @C0.a
    public final int f7407b;

    @Nullable
    @c.InterfaceC0186c(defaultValueUnchecked = "null", id = 2)
    @C0.a
    public final String f7408c;

    @c.b
    public C2568h(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) String str) {
        this.f7407b = i10;
        this.f7408c = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2568h)) {
            return false;
        }
        C2568h c2568h = (C2568h) obj;
        return c2568h.f7407b == this.f7407b && C2601y.b(c2568h.f7408c, this.f7408c);
    }

    public final int hashCode() {
        return this.f7407b;
    }

    @NonNull
    public final String toString() {
        return this.f7407b + b3.s.f32937c + this.f7408c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f7407b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, this.f7408c, false);
        I0.b.b(parcel, a10);
    }
}
