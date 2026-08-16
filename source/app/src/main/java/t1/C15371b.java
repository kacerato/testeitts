package t1;

import I0.c;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;

@c.a(creator = "AuthAccountResultCreator")
public final class C15371b extends I0.a implements u {
    public static final Parcelable.Creator<C15371b> CREATOR = new C15372c();

    @c.h(id = 1)
    public final int f109703b;

    @c.InterfaceC0186c(getter = "getConnectionResultCode", id = 2)
    public int f109704c;

    @Nullable
    @c.InterfaceC0186c(getter = "getRawAuthResolutionIntent", id = 3)
    public Intent f109705d;

    public C15371b() {
        this(2, 0, null);
    }

    @Override
    public final Status getStatus() {
        return this.f109704c == 0 ? Status.f61039g : Status.f61043k;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f109703b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.F(parcel, 2, this.f109704c);
        I0.b.S(parcel, 3, this.f109705d, i10, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public C15371b(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @Nullable @c.e(id = 3) Intent intent) {
        this.f109703b = i10;
        this.f109704c = i11;
        this.f109705d = intent;
    }
}
