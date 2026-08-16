package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
@c.a(creator = "MethodInvocationCreator")
public class C2599x extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C2599x> CREATOR = new C2563e0();

    @c.InterfaceC0186c(getter = "getMethodKey", id = 1)
    public final int f7488b;

    @c.InterfaceC0186c(getter = "getResultStatusCode", id = 2)
    public final int f7489c;

    @c.InterfaceC0186c(getter = "getConnectionResultStatusCode", id = 3)
    public final int f7490d;

    @c.InterfaceC0186c(getter = "getStartTimeMillis", id = 4)
    public final long f7491e;

    @c.InterfaceC0186c(getter = "getEndTimeMillis", id = 5)
    public final long f7492f;

    @Nullable
    @c.InterfaceC0186c(getter = "getCallingModuleId", id = 6)
    public final String f7493g;

    @Nullable
    @c.InterfaceC0186c(getter = "getCallingEntryPoint", id = 7)
    public final String f7494h;

    @c.InterfaceC0186c(defaultValue = "0", getter = "getServiceId", id = 8)
    public final int f7495i;

    @c.InterfaceC0186c(defaultValue = "-1", getter = "getLatencyMillis", id = 9)
    public final int f7496j;

    @I2.l(replacement = "this(methodKey, resultStatusCode, connectionResultStatusCode, startTimeMillis, endTimeMillis, callingModuleId, callingEntryPoint, serviceId, -1)")
    @C0.a
    @Deprecated
    public C2599x(int i10, int i11, int i12, long j10, long j11, @Nullable String str, @Nullable String str2, int i13) {
        this(i10, i11, i12, j10, j11, str, str2, i13, -1);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f7488b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.F(parcel, 2, this.f7489c);
        I0.b.F(parcel, 3, this.f7490d);
        I0.b.K(parcel, 4, this.f7491e);
        I0.b.K(parcel, 5, this.f7492f);
        I0.b.Y(parcel, 6, this.f7493g, false);
        I0.b.Y(parcel, 7, this.f7494h, false);
        I0.b.F(parcel, 8, this.f7495i);
        I0.b.F(parcel, 9, this.f7496j);
        I0.b.b(parcel, a10);
    }

    @c.b
    public C2599x(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) int i12, @c.e(id = 4) long j10, @c.e(id = 5) long j11, @Nullable @c.e(id = 6) String str, @Nullable @c.e(id = 7) String str2, @c.e(id = 8) int i13, @c.e(id = 9) int i14) {
        this.f7488b = i10;
        this.f7489c = i11;
        this.f7490d = i12;
        this.f7491e = j10;
        this.f7492f = j11;
        this.f7493g = str;
        this.f7494h = str2;
        this.f7495i = i13;
        this.f7496j = i14;
    }
}
