package S0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.ArrayList;

public final class f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        boolean z10 = false;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        float f10 = 0.0f;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
                case 4:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 6:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 8:
                    j11 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 10:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 11:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 12:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 13:
                    str4 = SafeParcelReader.G(parcel, X10);
                    break;
                case 14:
                    i13 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 15:
                    f10 = SafeParcelReader.V(parcel, X10);
                    break;
                case 16:
                    j12 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 17:
                    str5 = SafeParcelReader.G(parcel, X10);
                    break;
                case 18:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new WakeLockEvent(i10, j10, i11, str, i12, arrayList, str2, j11, i13, str3, str4, f10, j12, str5, z10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new WakeLockEvent[i10];
    }
}
