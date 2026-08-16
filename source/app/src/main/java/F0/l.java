package F0;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class l implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.C(parcel, X10, ParcelFileDescriptor.CREATOR);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i11 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new BitmapTeleporter(i10, parcelFileDescriptor, i11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new BitmapTeleporter[i10];
    }
}
