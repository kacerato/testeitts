package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
@c.a(creator = "ConnectionTelemetryConfigurationCreator")
public class C2572j extends I0.a {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<C2572j> CREATOR = new P0();

    @c.InterfaceC0186c(getter = "getRootTelemetryConfiguration", id = 1)
    public final D f7425b;

    @c.InterfaceC0186c(getter = "getMethodInvocationTelemetryEnabled", id = 2)
    public final boolean f7426c;

    @c.InterfaceC0186c(getter = "getMethodTimingTelemetryEnabled", id = 3)
    public final boolean f7427d;

    @Nullable
    @c.InterfaceC0186c(getter = "getMethodInvocationMethodKeyAllowlist", id = 4)
    public final int[] f7428e;

    @c.InterfaceC0186c(getter = "getMaxMethodInvocationsLogged", id = 5)
    public final int f7429f;

    @Nullable
    @c.InterfaceC0186c(getter = "getMethodInvocationMethodKeyDisallowlist", id = 6)
    public final int[] f7430g;

    @c.b
    public C2572j(@NonNull @c.e(id = 1) D d10, @c.e(id = 2) boolean z10, @c.e(id = 3) boolean z11, @Nullable @c.e(id = 4) int[] iArr, @c.e(id = 5) int i10, @Nullable @c.e(id = 6) int[] iArr2) {
        this.f7425b = d10;
        this.f7426c = z10;
        this.f7427d = z11;
        this.f7428e = iArr;
        this.f7429f = i10;
        this.f7430g = iArr2;
    }

    @Nullable
    @C0.a
    public int[] b0() {
        return this.f7430g;
    }

    @C0.a
    public int n() {
        return this.f7429f;
    }

    @C0.a
    public boolean n0() {
        return this.f7426c;
    }

    @Nullable
    @C0.a
    public int[] t() {
        return this.f7428e;
    }

    @C0.a
    public boolean u0() {
        return this.f7427d;
    }

    @NonNull
    public final D v0() {
        return this.f7425b;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.S(parcel, 1, this.f7425b, i10, false);
        I0.b.g(parcel, 2, n0());
        I0.b.g(parcel, 3, u0());
        I0.b.G(parcel, 4, t(), false);
        I0.b.F(parcel, 5, n());
        I0.b.G(parcel, 6, b0(), false);
        I0.b.b(parcel, a10);
    }
}
