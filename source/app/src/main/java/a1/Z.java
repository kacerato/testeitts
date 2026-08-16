package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class Z implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C3544l c3544l = null;
        n0 n0Var = null;
        C3554w c3554w = null;
        t0 t0Var = null;
        B b10 = null;
        D d10 = null;
        p0 p0Var = null;
        G g10 = null;
        C3546n c3546n = null;
        I i10 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    c3544l = (C3544l) SafeParcelReader.C(parcel, X10, C3544l.CREATOR);
                    break;
                case 3:
                    n0Var = (n0) SafeParcelReader.C(parcel, X10, n0.CREATOR);
                    break;
                case 4:
                    c3554w = (C3554w) SafeParcelReader.C(parcel, X10, C3554w.CREATOR);
                    break;
                case 5:
                    t0Var = (t0) SafeParcelReader.C(parcel, X10, t0.CREATOR);
                    break;
                case 6:
                    b10 = (B) SafeParcelReader.C(parcel, X10, B.CREATOR);
                    break;
                case 7:
                    d10 = (D) SafeParcelReader.C(parcel, X10, D.CREATOR);
                    break;
                case 8:
                    p0Var = (p0) SafeParcelReader.C(parcel, X10, p0.CREATOR);
                    break;
                case 9:
                    g10 = (G) SafeParcelReader.C(parcel, X10, G.CREATOR);
                    break;
                case 10:
                    c3546n = (C3546n) SafeParcelReader.C(parcel, X10, C3546n.CREATOR);
                    break;
                case 11:
                    i10 = (I) SafeParcelReader.C(parcel, X10, I.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3533a(c3544l, n0Var, c3554w, t0Var, b10, d10, p0Var, g10, c3546n, i10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3533a[i10];
    }
}
