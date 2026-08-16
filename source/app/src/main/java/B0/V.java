package B0;

import G0.c1;
import I0.c;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import javax.annotation.Nullable;

@c.a(creator = "GoogleCertificatesQueryCreator")
public final class V extends I0.a {
    public static final Parcelable.Creator<V> CREATOR = new W();

    @c.InterfaceC0186c(getter = "getCallingPackage", id = 1)
    public final String f1160b;

    @c.InterfaceC0186c(getter = "getCallingCertificateBinder", id = 2, type = "android.os.IBinder")
    @Nullable
    public final L f1161c;

    @c.InterfaceC0186c(getter = "getAllowTestKeys", id = 3)
    public final boolean f1162d;

    @c.InterfaceC0186c(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 4)
    public final boolean f1163e;

    public V(String str, @Nullable L l10, boolean z10, boolean z11) {
        this.f1160b = str;
        this.f1161c = l10;
        this.f1162d = z10;
        this.f1163e = z11;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f1160b;
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, str, false);
        L l10 = this.f1161c;
        if (l10 == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            l10 = null;
        }
        I0.b.B(parcel, 2, l10, false);
        I0.b.g(parcel, 3, this.f1162d);
        I0.b.g(parcel, 4, this.f1163e);
        I0.b.b(parcel, a10);
    }

    @c.b
    public V(@c.e(id = 1) String str, @Nullable @c.e(id = 2) IBinder iBinder, @c.e(id = 3) boolean z10, @c.e(id = 4) boolean z11) {
        this.f1160b = str;
        M m10 = null;
        if (iBinder != null) {
            try {
                W0.d Q12 = c1.k(iBinder).Q1();
                byte[] bArr = Q12 == null ? null : (byte[]) W0.f.t(Q12);
                if (bArr != null) {
                    m10 = new M(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.f1161c = m10;
        this.f1162d = z10;
        this.f1163e = z11;
    }
}
