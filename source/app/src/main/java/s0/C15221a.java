package s0;

import G0.A;
import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

@c.a(creator = "AccountChangeEventCreator")
public class C15221a extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C15221a> CREATOR = new g();

    @c.h(id = 1)
    public final int f109107b;

    @c.InterfaceC0186c(id = 2)
    public final long f109108c;

    @c.InterfaceC0186c(id = 3)
    public final String f109109d;

    @c.InterfaceC0186c(id = 4)
    public final int f109110e;

    @c.InterfaceC0186c(id = 5)
    public final int f109111f;

    @c.InterfaceC0186c(id = 6)
    public final String f109112g;

    @c.b
    public C15221a(@c.e(id = 1) int i10, @c.e(id = 2) long j10, @c.e(id = 3) String str, @c.e(id = 4) int i11, @c.e(id = 5) int i12, @c.e(id = 6) String str2) {
        this.f109107b = i10;
        this.f109108c = j10;
        this.f109109d = (String) A.r(str);
        this.f109110e = i11;
        this.f109111f = i12;
        this.f109112g = str2;
    }

    public int b0() {
        return this.f109110e;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C15221a)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C15221a c15221a = (C15221a) obj;
        return this.f109107b == c15221a.f109107b && this.f109108c == c15221a.f109108c && C2601y.b(this.f109109d, c15221a.f109109d) && this.f109110e == c15221a.f109110e && this.f109111f == c15221a.f109111f && C2601y.b(this.f109112g, c15221a.f109112g);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f109107b), Long.valueOf(this.f109108c), this.f109109d, Integer.valueOf(this.f109110e), Integer.valueOf(this.f109111f), this.f109112g);
    }

    @NonNull
    public String n() {
        return this.f109109d;
    }

    public int n0() {
        return this.f109111f;
    }

    @NonNull
    public String t() {
        return this.f109112g;
    }

    @NonNull
    public String toString() {
        int i10 = this.f109110e;
        String str = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        return "AccountChangeEvent {accountName = " + this.f109109d + ", changeType = " + str + ", changeData = " + this.f109112g + ", eventIndex = " + this.f109111f + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f109107b);
        I0.b.K(parcel, 2, this.f109108c);
        I0.b.Y(parcel, 3, this.f109109d, false);
        I0.b.F(parcel, 4, this.f109110e);
        I0.b.F(parcel, 5, this.f109111f);
        I0.b.Y(parcel, 6, this.f109112g, false);
        I0.b.b(parcel, a10);
    }

    public C15221a(long j10, @NonNull String str, int i10, int i11, @NonNull String str2) {
        this.f109107b = 1;
        this.f109108c = j10;
        this.f109109d = (String) A.r(str);
        this.f109110e = i10;
        this.f109111f = i11;
        this.f109112g = str2;
    }
}
