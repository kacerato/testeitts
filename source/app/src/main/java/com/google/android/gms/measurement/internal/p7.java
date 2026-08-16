package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class p7 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str11 = null;
        String str12 = null;
        int i13 = 100;
        boolean z13 = true;
        boolean z14 = true;
        long j17 = -2147483648L;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    str5 = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str6 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    str7 = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    str8 = SafeParcelReader.G(parcel, X10);
                    break;
                case 6:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 7:
                    j11 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 8:
                    str9 = SafeParcelReader.G(parcel, X10);
                    break;
                case 9:
                    z13 = SafeParcelReader.P(parcel, X10);
                    break;
                case 10:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 11:
                    j17 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 12:
                    str10 = SafeParcelReader.G(parcel, X10);
                    break;
                case 13:
                case 17:
                case 19:
                case 20:
                case 24:
                case 33:
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
                case 14:
                    j12 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 15:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 16:
                    z14 = SafeParcelReader.P(parcel, X10);
                    break;
                case 18:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 21:
                    bool = SafeParcelReader.Q(parcel, X10);
                    break;
                case 22:
                    j13 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 23:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 25:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 26:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 27:
                    str11 = SafeParcelReader.G(parcel, X10);
                    break;
                case 28:
                    z12 = SafeParcelReader.P(parcel, X10);
                    break;
                case 29:
                    j14 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 30:
                    i13 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 31:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 32:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 34:
                    j15 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 35:
                    str12 = SafeParcelReader.G(parcel, X10);
                    break;
                case 36:
                    str4 = SafeParcelReader.G(parcel, X10);
                    break;
                case 37:
                    j16 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 38:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new o7(str5, str6, str7, str8, j10, j11, str9, z13, z10, j17, str10, j12, i10, z14, z11, bool, j13, arrayList, str, str2, str11, z12, j14, i13, str3, i11, j15, str12, str4, j16, i12);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new o7[i10];
    }
}
