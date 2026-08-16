package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.TokenBinding;
import java.util.ArrayList;

public final class O implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        Double d10 = null;
        String str = null;
        ArrayList arrayList = null;
        Integer num = null;
        TokenBinding tokenBinding = null;
        String str2 = null;
        C3533a c3533a = null;
        Long l10 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    bArr = SafeParcelReader.h(parcel, X10);
                    break;
                case 3:
                    d10 = SafeParcelReader.U(parcel, X10);
                    break;
                case 4:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    arrayList = SafeParcelReader.L(parcel, X10, PublicKeyCredentialDescriptor.CREATOR);
                    break;
                case 6:
                    num = SafeParcelReader.a0(parcel, X10);
                    break;
                case 7:
                    tokenBinding = (TokenBinding) SafeParcelReader.C(parcel, X10, TokenBinding.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 9:
                    c3533a = (C3533a) SafeParcelReader.C(parcel, X10, C3533a.CREATOR);
                    break;
                case 10:
                    l10 = SafeParcelReader.d0(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new r(bArr, d10, str, arrayList, num, tokenBinding, str2, c3533a, l10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new r[i10];
    }
}
