package B0;

import I0.c;
import W0.d;
import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "GoogleCertificatesLookupQueryCreator")
public final class Q extends I0.a {
    public static final Parcelable.Creator<Q> CREATOR = new S();

    @c.InterfaceC0186c(getter = "getCallingPackage", id = 1)
    public final String f1150b;

    @c.InterfaceC0186c(getter = "getAllowTestKeys", id = 2)
    public final boolean f1151c;

    @c.InterfaceC0186c(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 3)
    public final boolean f1152d;

    @c.InterfaceC0186c(getter = "getCallingContextBinder", id = 4, type = "android.os.IBinder")
    public final Context f1153e;

    @c.InterfaceC0186c(getter = "getIsChimeraPackage", id = 5)
    public final boolean f1154f;

    @c.InterfaceC0186c(getter = "getIncludeHashesInErrorMessage", id = 6)
    public final boolean f1155g;

    @c.b
    public Q(@c.e(id = 1) String str, @c.e(id = 2) boolean z10, @c.e(id = 3) boolean z11, @c.e(id = 4) IBinder iBinder, @c.e(id = 5) boolean z12, @c.e(id = 6) boolean z13) {
        this.f1150b = str;
        this.f1151c = z10;
        this.f1152d = z11;
        this.f1153e = (Context) W0.f.t(d.a.k(iBinder));
        this.f1154f = z12;
        this.f1155g = z13;
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [W0.d, android.os.IBinder] */
    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f1150b;
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, str, false);
        I0.b.g(parcel, 2, this.f1151c);
        I0.b.g(parcel, 3, this.f1152d);
        I0.b.B(parcel, 4, W0.f.l0(this.f1153e), false);
        I0.b.g(parcel, 5, this.f1154f);
        I0.b.g(parcel, 6, this.f1155g);
        I0.b.b(parcel, a10);
    }
}
