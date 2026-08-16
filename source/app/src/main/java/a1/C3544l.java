package a1;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.g({1})
@c.a(creator = "FidoAppIdExtensionCreator")
public class C3544l extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C3544l> CREATOR = new r0();

    @NonNull
    @c.InterfaceC0186c(getter = "getAppId", id = 2)
    public final String f31598b;

    @c.b
    public C3544l(@NonNull @c.e(id = 2) String str) {
        this.f31598b = (String) G0.A.r(str);
    }

    public boolean equals(@NonNull Object obj) {
        if (obj instanceof C3544l) {
            return this.f31598b.equals(((C3544l) obj).f31598b);
        }
        return false;
    }

    public int hashCode() {
        return C2601y.c(this.f31598b);
    }

    @NonNull
    public String n() {
        return this.f31598b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, n(), false);
        I0.b.b(parcel, a10);
    }
}
