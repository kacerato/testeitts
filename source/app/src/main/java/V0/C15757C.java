package v0;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

public final class C15757C implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        HashSet hashSet = new HashSet();
        int i10 = 0;
        String str = null;
        byte[] bArr = null;
        PendingIntent pendingIntent = null;
        e eVar = null;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    hashSet.add(1);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    hashSet.add(2);
                    break;
                case 3:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    hashSet.add(3);
                    break;
                case 4:
                    bArr = SafeParcelReader.h(parcel, X10);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    eVar = (e) SafeParcelReader.C(parcel, X10, e.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        if (parcel.dataPosition() == i02) {
            return new C15756B(hashSet, i10, str, i11, bArr, pendingIntent, eVar);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + i02, parcel);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C15756B[i10];
    }
}
