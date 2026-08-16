package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class j7 implements Parcelable.Creator {
    public static void a(i7 i7Var, Parcel parcel, int i10) {
        int i11 = i7Var.f63357b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, i7Var.f63358c, false);
        I0.b.K(parcel, 3, i7Var.f63359d);
        I0.b.N(parcel, 4, i7Var.f63360e, false);
        I0.b.z(parcel, 5, null, false);
        I0.b.Y(parcel, 6, i7Var.f63361f, false);
        I0.b.Y(parcel, 7, i7Var.f63362g, false);
        I0.b.u(parcel, 8, i7Var.f63363h, false);
        I0.b.b(parcel, a10);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        Long l10 = null;
        Float f10 = null;
        String str2 = null;
        String str3 = null;
        Double d10 = null;
        long j10 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 4:
                    l10 = SafeParcelReader.d0(parcel, X10);
                    break;
                case 5:
                    f10 = SafeParcelReader.W(parcel, X10);
                    break;
                case 6:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 7:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    d10 = SafeParcelReader.U(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new i7(i10, str, j10, l10, f10, str2, str3, d10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new i7[i10];
    }
}
