package z0;

import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import y0.InterfaceC16132c;

@c.a(creator = "GoogleSignInOptionsExtensionCreator")
public class C16216a extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C16216a> CREATOR = new C16219d();

    @c.h(id = 1)
    public final int f130509b;

    @c.InterfaceC0186c(getter = "getType", id = 2)
    public int f130510c;

    @c.InterfaceC0186c(getter = "getBundle", id = 3)
    public Bundle f130511d;

    @c.b
    public C16216a(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) Bundle bundle) {
        this.f130509b = i10;
        this.f130510c = i11;
        this.f130511d = bundle;
    }

    @C0.a
    public int n() {
        return this.f130510c;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f130509b);
        I0.b.F(parcel, 2, n());
        I0.b.k(parcel, 3, this.f130511d, false);
        I0.b.b(parcel, a10);
    }

    public C16216a(@NonNull InterfaceC16132c interfaceC16132c) {
        this(1, interfaceC16132c.a(), interfaceC16132c.c());
    }
}
