package c1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.common.Transport;
import java.util.ArrayList;

public final class g implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        ArrayList arrayList = null;
        int i10 = 0;
        String str = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 3) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.L(parcel, X10, Transport.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new com.google.android.gms.fido.u2f.api.common.b(i10, bArr, str, arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new com.google.android.gms.fido.u2f.api.common.b[i10];
    }
}
