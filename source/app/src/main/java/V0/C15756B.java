package v0;

import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.server.response.a;
import com.google.android.gms.internal.auth.AbstractC11919c0;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@c.a(creator = "AuthenticatorTransferInfoCreator")
public final class C15756B extends AbstractC11919c0 {
    public static final Parcelable.Creator<C15756B> CREATOR = new C15757C();

    public static final HashMap f121036i;

    @c.d
    public final Set f121037b;

    @c.h(id = 1)
    public final int f121038c;

    @c.InterfaceC0186c(getter = "getAccountType", id = 2)
    public String f121039d;

    @c.InterfaceC0186c(getter = "getStatus", id = 3)
    public int f121040e;

    @c.InterfaceC0186c(getter = "getTransferBytes", id = 4)
    public byte[] f121041f;

    @c.InterfaceC0186c(getter = "getPendingIntent", id = 5)
    public PendingIntent f121042g;

    @c.InterfaceC0186c(getter = "getDeviceMetaData", id = 6)
    public e f121043h;

    static {
        HashMap hashMap = new HashMap();
        f121036i = hashMap;
        hashMap.put("accountType", a.C0954a.w0("accountType", 2));
        hashMap.put("status", a.C0954a.u0("status", 3));
        hashMap.put("transferBytes", a.C0954a.b("transferBytes", 4));
    }

    public C15756B() {
        this.f121037b = new ArraySet(3);
        this.f121038c = 1;
    }

    @Override
    public final Map d() {
        return f121036i;
    }

    @Override
    public final Object e(a.C0954a c0954a) {
        int z02 = c0954a.z0();
        if (z02 == 1) {
            return Integer.valueOf(this.f121038c);
        }
        if (z02 == 2) {
            return this.f121039d;
        }
        if (z02 == 3) {
            return Integer.valueOf(this.f121040e);
        }
        if (z02 == 4) {
            return this.f121041f;
        }
        throw new IllegalStateException("Unknown SafeParcelable id=" + c0954a.z0());
    }

    @Override
    public final boolean g(a.C0954a c0954a) {
        return this.f121037b.contains(Integer.valueOf(c0954a.z0()));
    }

    @Override
    public final void l(a.C0954a c0954a, String str, byte[] bArr) {
        int z02 = c0954a.z0();
        if (z02 == 4) {
            this.f121041f = bArr;
            this.f121037b.add(Integer.valueOf(z02));
        } else {
            throw new IllegalArgumentException("Field with id=" + z02 + " is not known to be a byte array.");
        }
    }

    @Override
    public final void m(a.C0954a c0954a, String str, int i10) {
        int z02 = c0954a.z0();
        if (z02 == 3) {
            this.f121040e = i10;
            this.f121037b.add(Integer.valueOf(z02));
        } else {
            throw new IllegalArgumentException("Field with id=" + z02 + " is not known to be an int.");
        }
    }

    @Override
    public final void p(a.C0954a c0954a, String str, String str2) {
        int z02 = c0954a.z0();
        if (z02 != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(z02)));
        }
        this.f121039d = str2;
        this.f121037b.add(Integer.valueOf(z02));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        Set set = this.f121037b;
        if (set.contains(1)) {
            I0.b.F(parcel, 1, this.f121038c);
        }
        if (set.contains(2)) {
            I0.b.Y(parcel, 2, this.f121039d, true);
        }
        if (set.contains(3)) {
            I0.b.F(parcel, 3, this.f121040e);
        }
        if (set.contains(4)) {
            I0.b.m(parcel, 4, this.f121041f, true);
        }
        if (set.contains(5)) {
            I0.b.S(parcel, 5, this.f121042g, i10, true);
        }
        if (set.contains(6)) {
            I0.b.S(parcel, 6, this.f121043h, i10, true);
        }
        I0.b.b(parcel, a10);
    }

    @c.b
    public C15756B(@c.d Set set, @c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) int i11, @c.e(id = 4) byte[] bArr, @c.e(id = 5) PendingIntent pendingIntent, @c.e(id = 6) e eVar) {
        this.f121037b = set;
        this.f121038c = i10;
        this.f121039d = str;
        this.f121040e = i11;
        this.f121041f = bArr;
        this.f121042g = pendingIntent;
        this.f121043h = eVar;
    }
}
