package v0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.a;
import com.google.android.gms.internal.auth.AbstractC11919c0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@c.a(creator = "AccountTransferMsgCreator")
public final class t extends AbstractC11919c0 {
    public static final Parcelable.Creator<t> CREATOR = new u();

    public static final HashMap f121079g;

    @c.d
    public final Set f121080b;

    @c.h(id = 1)
    public final int f121081c;

    @c.InterfaceC0186c(getter = "getAuthenticatorDatas", id = 2)
    public ArrayList f121082d;

    @c.InterfaceC0186c(getter = "getRequestType", id = 3)
    public int f121083e;

    @c.InterfaceC0186c(getter = "getProgress", id = 4)
    public x f121084f;

    static {
        HashMap hashMap = new HashMap();
        f121079g = hashMap;
        hashMap.put("authenticatorData", a.C0954a.t("authenticatorData", 2, z.class));
        hashMap.put("progress", a.C0954a.p("progress", 4, x.class));
    }

    public t() {
        this.f121080b = new HashSet(1);
        this.f121081c = 1;
    }

    @Override
    public final void b(a.C0954a c0954a, String str, ArrayList arrayList) {
        int z02 = c0954a.z0();
        if (z02 != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known ConcreteTypeArray type. Found %s", Integer.valueOf(z02), arrayList.getClass().getCanonicalName()));
        }
        this.f121082d = arrayList;
        this.f121080b.add(Integer.valueOf(z02));
    }

    @Override
    public final void c(a.C0954a c0954a, String str, com.google.android.gms.common.server.response.a aVar) {
        int z02 = c0954a.z0();
        if (z02 != 4) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(z02), aVar.getClass().getCanonicalName()));
        }
        this.f121084f = (x) aVar;
        this.f121080b.add(Integer.valueOf(z02));
    }

    @Override
    public final Map d() {
        return f121079g;
    }

    @Override
    public final Object e(a.C0954a c0954a) {
        int z02 = c0954a.z0();
        if (z02 == 1) {
            return Integer.valueOf(this.f121081c);
        }
        if (z02 == 2) {
            return this.f121082d;
        }
        if (z02 == 4) {
            return this.f121084f;
        }
        throw new IllegalStateException("Unknown SafeParcelable id=" + c0954a.z0());
    }

    @Override
    public final boolean g(a.C0954a c0954a) {
        return this.f121080b.contains(Integer.valueOf(c0954a.z0()));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        Set set = this.f121080b;
        if (set.contains(1)) {
            I0.b.F(parcel, 1, this.f121081c);
        }
        if (set.contains(2)) {
            I0.b.d0(parcel, 2, this.f121082d, true);
        }
        if (set.contains(3)) {
            I0.b.F(parcel, 3, this.f121083e);
        }
        if (set.contains(4)) {
            I0.b.S(parcel, 4, this.f121084f, i10, true);
        }
        I0.b.b(parcel, a10);
    }

    @c.b
    public t(@c.d Set set, @c.e(id = 1) int i10, @c.e(id = 2) ArrayList arrayList, @c.e(id = 3) int i11, @c.e(id = 4) x xVar) {
        this.f121080b = set;
        this.f121081c = i10;
        this.f121082d = arrayList;
        this.f121083e = i11;
        this.f121084f = xVar;
    }
}
