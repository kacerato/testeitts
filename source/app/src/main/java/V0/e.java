package v0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@c.a(creator = "DeviceMetaDataCreator")
public class e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<e> CREATOR = new C15758D();

    @c.h(id = 1)
    public final int f121064b;

    @c.InterfaceC0186c(getter = "isLockScreenSolved", id = 2)
    public final boolean f121065c;

    @c.InterfaceC0186c(getter = "getMinAgeOfLockScreen", id = 3)
    public final long f121066d;

    @c.InterfaceC0186c(getter = "isChallengeAllowed", id = 4)
    public final boolean f121067e;

    @c.b
    public e(@c.e(id = 1) int i10, @c.e(id = 2) boolean z10, @c.e(id = 3) long j10, @c.e(id = 4) boolean z11) {
        this.f121064b = i10;
        this.f121065c = z10;
        this.f121066d = j10;
        this.f121067e = z11;
    }

    public boolean b0() {
        return this.f121065c;
    }

    public long n() {
        return this.f121066d;
    }

    public boolean t() {
        return this.f121067e;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f121064b);
        I0.b.g(parcel, 2, b0());
        I0.b.K(parcel, 3, n());
        I0.b.g(parcel, 4, t());
        I0.b.b(parcel, a10);
    }
}
