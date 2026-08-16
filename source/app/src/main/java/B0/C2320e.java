package B0;

import G0.C2601y;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
@c.a(creator = "FeatureCreator")
public class C2320e extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C2320e> CREATOR = new E();

    @c.InterfaceC0186c(getter = "getName", id = 1)
    public final String f1230b;

    @c.InterfaceC0186c(getter = "getOldVersion", id = 2)
    @Deprecated
    public final int f1231c;

    @c.InterfaceC0186c(defaultValue = "-1", getter = "getVersion", id = 3)
    public final long f1232d;

    @c.b
    public C2320e(@NonNull @c.e(id = 1) String str, @c.e(id = 2) int i10, @c.e(id = 3) long j10) {
        this.f1230b = str;
        this.f1231c = i10;
        this.f1232d = j10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof C2320e) {
            C2320e c2320e = (C2320e) obj;
            if (((n() != null && n().equals(c2320e.n())) || (n() == null && c2320e.n() == null)) && t() == c2320e.t()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(n(), Long.valueOf(t()));
    }

    @NonNull
    @C0.a
    public String n() {
        return this.f1230b;
    }

    @C0.a
    public long t() {
        long j10 = this.f1232d;
        return j10 == -1 ? this.f1231c : j10;
    }

    @NonNull
    public final String toString() {
        C2601y.a d10 = C2601y.d(this);
        d10.a("name", n());
        d10.a("version", Long.valueOf(t()));
        return d10.toString();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, n(), false);
        I0.b.F(parcel, 2, this.f1231c);
        I0.b.K(parcel, 3, t());
        I0.b.b(parcel, a10);
    }

    @C0.a
    public C2320e(@NonNull String str, long j10) {
        this.f1230b = str;
        this.f1232d = j10;
        this.f1231c = -1;
    }
}
