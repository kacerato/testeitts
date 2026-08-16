package G0;

import B0.C2320e;
import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class Q0 implements Parcelable.Creator {
    public static void a(C2578m c2578m, Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, c2578m.f7443b);
        I0.b.F(parcel, 2, c2578m.f7444c);
        I0.b.F(parcel, 3, c2578m.f7445d);
        I0.b.Y(parcel, 4, c2578m.f7446e, false);
        I0.b.B(parcel, 5, c2578m.f7447f, false);
        I0.b.c0(parcel, 6, c2578m.f7448g, i10, false);
        I0.b.k(parcel, 7, c2578m.f7449h, false);
        I0.b.S(parcel, 8, c2578m.f7450i, i10, false);
        I0.b.c0(parcel, 10, c2578m.f7451j, i10, false);
        I0.b.c0(parcel, 11, c2578m.f7452k, i10, false);
        I0.b.g(parcel, 12, c2578m.f7453l);
        I0.b.F(parcel, 13, c2578m.f7454m);
        I0.b.g(parcel, 14, c2578m.f7455n);
        I0.b.Y(parcel, 15, c2578m.n(), false);
        I0.b.b(parcel, a10);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Scope[] scopeArr = C2578m.f7441p;
        Bundle bundle = new Bundle();
        C2320e[] c2320eArr = C2578m.f7442q;
        C2320e[] c2320eArr2 = c2320eArr;
        String str = null;
        IBinder iBinder = null;
        Account account = null;
        String str2 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        int i13 = 0;
        boolean z11 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 3:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 4:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    iBinder = SafeParcelReader.Y(parcel, X10);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.K(parcel, X10, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.g(parcel, X10);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.C(parcel, X10, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
                case 10:
                    c2320eArr = (C2320e[]) SafeParcelReader.K(parcel, X10, C2320e.CREATOR);
                    break;
                case 11:
                    c2320eArr2 = (C2320e[]) SafeParcelReader.K(parcel, X10, C2320e.CREATOR);
                    break;
                case 12:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 13:
                    i13 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 14:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 15:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2578m(i10, i11, i12, str, iBinder, scopeArr, bundle, account, c2320eArr, c2320eArr2, z10, i13, z11, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2578m[i10];
    }
}
