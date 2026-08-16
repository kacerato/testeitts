package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.TokenBinding;
import java.util.ArrayList;

public final class K implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C3550s c3550s = null;
        C3551t c3551t = null;
        byte[] bArr = null;
        ArrayList arrayList = null;
        Double d10 = null;
        ArrayList arrayList2 = null;
        com.google.android.gms.fido.fido2.api.common.c cVar = null;
        Integer num = null;
        TokenBinding tokenBinding = null;
        String str = null;
        C3533a c3533a = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    c3550s = (C3550s) SafeParcelReader.C(parcel, X10, C3550s.CREATOR);
                    break;
                case 3:
                    c3551t = (C3551t) SafeParcelReader.C(parcel, X10, C3551t.CREATOR);
                    break;
                case 4:
                    bArr = SafeParcelReader.h(parcel, X10);
                    break;
                case 5:
                    arrayList = SafeParcelReader.L(parcel, X10, com.google.android.gms.fido.fido2.api.common.e.CREATOR);
                    break;
                case 6:
                    d10 = SafeParcelReader.U(parcel, X10);
                    break;
                case 7:
                    arrayList2 = SafeParcelReader.L(parcel, X10, PublicKeyCredentialDescriptor.CREATOR);
                    break;
                case 8:
                    cVar = (com.google.android.gms.fido.fido2.api.common.c) SafeParcelReader.C(parcel, X10, com.google.android.gms.fido.fido2.api.common.c.CREATOR);
                    break;
                case 9:
                    num = SafeParcelReader.a0(parcel, X10);
                    break;
                case 10:
                    tokenBinding = (TokenBinding) SafeParcelReader.C(parcel, X10, TokenBinding.CREATOR);
                    break;
                case 11:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 12:
                    c3533a = (C3533a) SafeParcelReader.C(parcel, X10, C3533a.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new com.google.android.gms.fido.fido2.api.common.d(c3550s, c3551t, bArr, arrayList, d10, arrayList2, cVar, num, tokenBinding, str, c3533a);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new com.google.android.gms.fido.fido2.api.common.d[i10];
    }
}
