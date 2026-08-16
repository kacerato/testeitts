package G0;

import B0.C2320e;
import G0.r;
import I0.c;
import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;

@c.g({9})
@C0.a
@c.a(creator = "GetServiceRequestCreator")
public class C2578m extends I0.a {

    @NonNull
    public static final Parcelable.Creator<C2578m> CREATOR = new Q0();

    public static final Scope[] f7441p = new Scope[0];

    public static final C2320e[] f7442q = new C2320e[0];

    @c.h(id = 1)
    public final int f7443b;

    @c.InterfaceC0186c(id = 2)
    public final int f7444c;

    @c.InterfaceC0186c(id = 3)
    public final int f7445d;

    @c.InterfaceC0186c(id = 4)
    public String f7446e;

    @Nullable
    @c.InterfaceC0186c(id = 5)
    public IBinder f7447f;

    @c.InterfaceC0186c(defaultValueUnchecked = "GetServiceRequest.EMPTY_SCOPES", id = 6)
    public Scope[] f7448g;

    @c.InterfaceC0186c(defaultValueUnchecked = "new android.os.Bundle()", id = 7)
    public Bundle f7449h;

    @Nullable
    @c.InterfaceC0186c(id = 8)
    public Account f7450i;

    @c.InterfaceC0186c(defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES", id = 10)
    public C2320e[] f7451j;

    @c.InterfaceC0186c(defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES", id = 11)
    public C2320e[] f7452k;

    @c.InterfaceC0186c(id = 12)
    public final boolean f7453l;

    @c.InterfaceC0186c(defaultValue = "0", id = 13)
    public final int f7454m;

    @c.InterfaceC0186c(getter = "isRequestingTelemetryConfiguration", id = 14)
    public boolean f7455n;

    @Nullable
    @c.InterfaceC0186c(getter = "getAttributionTag", id = 15)
    public final String f7456o;

    @c.b
    public C2578m(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) int i12, @c.e(id = 4) String str, @Nullable @c.e(id = 5) IBinder iBinder, @c.e(id = 6) Scope[] scopeArr, @c.e(id = 7) Bundle bundle, @Nullable @c.e(id = 8) Account account, @c.e(id = 10) C2320e[] c2320eArr, @c.e(id = 11) C2320e[] c2320eArr2, @c.e(id = 12) boolean z10, @c.e(id = 13) int i13, @c.e(id = 14) boolean z11, @Nullable @c.e(id = 15) String str2) {
        scopeArr = scopeArr == null ? f7441p : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        c2320eArr = c2320eArr == null ? f7442q : c2320eArr;
        c2320eArr2 = c2320eArr2 == null ? f7442q : c2320eArr2;
        this.f7443b = i10;
        this.f7444c = i11;
        this.f7445d = i12;
        if ("com.google.android.gms".equals(str)) {
            this.f7446e = "com.google.android.gms";
        } else {
            this.f7446e = str;
        }
        if (i10 < 2) {
            this.f7450i = iBinder != null ? BinderC2554a.t(r.a.k(iBinder)) : null;
        } else {
            this.f7447f = iBinder;
            this.f7450i = account;
        }
        this.f7448g = scopeArr;
        this.f7449h = bundle;
        this.f7451j = c2320eArr;
        this.f7452k = c2320eArr2;
        this.f7453l = z10;
        this.f7454m = i13;
        this.f7455n = z11;
        this.f7456o = str2;
    }

    @NonNull
    @C0.a
    public C2320e[] b0() {
        return this.f7452k;
    }

    @Nullable
    @C0.a
    public String n() {
        return this.f7456o;
    }

    @C0.a
    public int n0() {
        return this.f7445d;
    }

    @NonNull
    @C0.a
    public String t() {
        return this.f7446e;
    }

    @NonNull
    @C0.a
    public Bundle u0() {
        return this.f7449h;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        Q0.a(this, parcel, i10);
    }
}
