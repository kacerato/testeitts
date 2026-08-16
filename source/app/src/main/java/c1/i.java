package c1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.u2f.api.common.ChannelIdValue;
import com.google.android.gms.fido.u2f.api.common.RegisterRequestParams;
import java.util.ArrayList;

public final class i implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Integer num = null;
        Double d10 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ChannelIdValue channelIdValue = null;
        String str = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    num = SafeParcelReader.a0(parcel, X10);
                    break;
                case 3:
                    d10 = SafeParcelReader.U(parcel, X10);
                    break;
                case 4:
                    uri = (Uri) SafeParcelReader.C(parcel, X10, Uri.CREATOR);
                    break;
                case 5:
                    arrayList = SafeParcelReader.L(parcel, X10, com.google.android.gms.fido.u2f.api.common.c.CREATOR);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.L(parcel, X10, c.CREATOR);
                    break;
                case 7:
                    channelIdValue = (ChannelIdValue) SafeParcelReader.C(parcel, X10, ChannelIdValue.CREATOR);
                    break;
                case 8:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new RegisterRequestParams(num, d10, uri, arrayList, arrayList2, channelIdValue, str);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new RegisterRequestParams[i10];
    }
}
