package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;

@c.a(creator = "SignInButtonConfigCreator")
public final class C2583o0 extends I0.a {
    public static final Parcelable.Creator<C2583o0> CREATOR = new C2585p0();

    @c.h(id = 1)
    public final int f7472b;

    @c.InterfaceC0186c(getter = "getButtonSize", id = 2)
    public final int f7473c;

    @c.InterfaceC0186c(getter = "getColorScheme", id = 3)
    public final int f7474d;

    @Nullable
    @c.InterfaceC0186c(getter = "getScopes", id = 4)
    @Deprecated
    public final Scope[] f7475e;

    @c.b
    public C2583o0(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) int i12, @Nullable @c.e(id = 4) Scope[] scopeArr) {
        this.f7472b = i10;
        this.f7473c = i11;
        this.f7474d = i12;
        this.f7475e = scopeArr;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7472b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.F(parcel, 2, this.f7473c);
        I0.b.F(parcel, 3, this.f7474d);
        I0.b.c0(parcel, 4, this.f7475e, i10, false);
        I0.b.b(parcel, a10);
    }
}
