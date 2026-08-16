package L0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.a(creator = "ModuleInstallResponseCreator")
public class g extends I0.a {

    @NonNull
    public static final Parcelable.Creator<g> CREATOR = new m();

    @c.InterfaceC0186c(getter = "getSessionId", id = 1)
    public final int f11509b;

    @c.InterfaceC0186c(defaultValue = "false", getter = "getShouldUnregisterListener", id = 2)
    public final boolean f11510c;

    @C0.a
    public g(int i10) {
        this(i10, false);
    }

    public final boolean b0() {
        return this.f11510c;
    }

    public boolean n() {
        return this.f11509b == 0;
    }

    public int t() {
        return this.f11509b;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, t());
        I0.b.g(parcel, 2, this.f11510c);
        I0.b.b(parcel, a10);
    }

    @c.b
    public g(@c.e(id = 1) int i10, @c.e(id = 2) boolean z10) {
        this.f11509b = i10;
        this.f11510c = z10;
    }
}
