package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

@C0.a
@c.a(creator = "RootTelemetryConfigurationCreator")
public class D extends I0.a {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<D> CREATOR = new B0();

    @c.InterfaceC0186c(getter = "getVersion", id = 1)
    public final int f7275b;

    @c.InterfaceC0186c(getter = "getMethodInvocationTelemetryEnabled", id = 2)
    public final boolean f7276c;

    @c.InterfaceC0186c(getter = "getMethodTimingTelemetryEnabled", id = 3)
    public final boolean f7277d;

    @c.InterfaceC0186c(getter = "getBatchPeriodMillis", id = 4)
    public final int f7278e;

    @c.InterfaceC0186c(getter = "getMaxMethodInvocationsInBatch", id = 5)
    public final int f7279f;

    @c.b
    public D(@c.e(id = 1) int i10, @c.e(id = 2) boolean z10, @c.e(id = 3) boolean z11, @c.e(id = 4) int i11, @c.e(id = 5) int i12) {
        this.f7275b = i10;
        this.f7276c = z10;
        this.f7277d = z11;
        this.f7278e = i11;
        this.f7279f = i12;
    }

    @C0.a
    public boolean b0() {
        return this.f7276c;
    }

    @C0.a
    public int getVersion() {
        return this.f7275b;
    }

    @C0.a
    public int n() {
        return this.f7278e;
    }

    @C0.a
    public boolean n0() {
        return this.f7277d;
    }

    @C0.a
    public int t() {
        return this.f7279f;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, getVersion());
        I0.b.g(parcel, 2, b0());
        I0.b.g(parcel, 3, n0());
        I0.b.F(parcel, 4, n());
        I0.b.F(parcel, 5, t());
        I0.b.b(parcel, a10);
    }
}
