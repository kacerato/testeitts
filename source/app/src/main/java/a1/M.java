package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import java.util.ArrayList;

public final class M implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        byte[] bArr = null;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 3) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.L(parcel, X10, Transport.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new PublicKeyCredentialDescriptor(str, bArr, arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new PublicKeyCredentialDescriptor[i10];
    }
}
