package v0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import com.google.android.gms.common.server.response.a;
import com.google.android.gms.internal.auth.AbstractC11919c0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@c.a(creator = "AuthenticatorAnnotatedDataCreator")
public final class z extends AbstractC11919c0 {
    public static final Parcelable.Creator<z> CREATOR = new C15755A();

    public static final HashMap f121094h;

    @c.d
    public final Set f121095b;

    @c.h(id = 1)
    public final int f121096c;

    @c.InterfaceC0186c(getter = "getInfo", id = 2)
    public C15756B f121097d;

    @c.InterfaceC0186c(getter = "getSignature", id = 3)
    public String f121098e;

    @c.InterfaceC0186c(getter = "getPackageName", id = 4)
    public String f121099f;

    @c.InterfaceC0186c(getter = "getId", id = 5)
    public String f121100g;

    static {
        HashMap hashMap = new HashMap();
        f121094h = hashMap;
        hashMap.put("authenticatorInfo", a.C0954a.p("authenticatorInfo", 2, C15756B.class));
        hashMap.put("signature", a.C0954a.w0("signature", 3));
        hashMap.put(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, a.C0954a.w0(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, 4));
    }

    public z() {
        this.f121095b = new HashSet(3);
        this.f121096c = 1;
    }

    @Override
    public final void c(a.C0954a c0954a, String str, com.google.android.gms.common.server.response.a aVar) {
        int z02 = c0954a.z0();
        if (z02 != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(z02), aVar.getClass().getCanonicalName()));
        }
        this.f121097d = (C15756B) aVar;
        this.f121095b.add(Integer.valueOf(z02));
    }

    @Override
    public final Map d() {
        return f121094h;
    }

    @Override
    public final Object e(a.C0954a c0954a) {
        int z02 = c0954a.z0();
        if (z02 == 1) {
            return Integer.valueOf(this.f121096c);
        }
        if (z02 == 2) {
            return this.f121097d;
        }
        if (z02 == 3) {
            return this.f121098e;
        }
        if (z02 == 4) {
            return this.f121099f;
        }
        throw new IllegalStateException("Unknown SafeParcelable id=" + c0954a.z0());
    }

    @Override
    public final boolean g(a.C0954a c0954a) {
        return this.f121095b.contains(Integer.valueOf(c0954a.z0()));
    }

    @Override
    public final void p(a.C0954a c0954a, String str, String str2) {
        int z02 = c0954a.z0();
        if (z02 == 3) {
            this.f121098e = str2;
        } else {
            if (z02 != 4) {
                throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(z02)));
            }
            this.f121099f = str2;
        }
        this.f121095b.add(Integer.valueOf(z02));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        Set set = this.f121095b;
        if (set.contains(1)) {
            I0.b.F(parcel, 1, this.f121096c);
        }
        if (set.contains(2)) {
            I0.b.S(parcel, 2, this.f121097d, i10, true);
        }
        if (set.contains(3)) {
            I0.b.Y(parcel, 3, this.f121098e, true);
        }
        if (set.contains(4)) {
            I0.b.Y(parcel, 4, this.f121099f, true);
        }
        if (set.contains(5)) {
            I0.b.Y(parcel, 5, this.f121100g, true);
        }
        I0.b.b(parcel, a10);
    }

    @c.b
    public z(@c.d Set set, @c.e(id = 1) int i10, @c.e(id = 2) C15756B c15756b, @c.e(id = 3) String str, @c.e(id = 4) String str2, @c.e(id = 5) String str3) {
        this.f121095b = set;
        this.f121096c = i10;
        this.f121097d = c15756b;
        this.f121098e = str;
        this.f121099f = str2;
        this.f121100g = str3;
    }
}
