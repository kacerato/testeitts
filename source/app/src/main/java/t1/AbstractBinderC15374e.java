package t1;

import android.os.Parcel;
import android.os.RemoteException;
import g1.BinderC13280b;
import g1.C13281c;

public abstract class AbstractBinderC15374e extends BinderC13280b implements InterfaceC15375f {
    public AbstractBinderC15374e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override
    public final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 3:
                C13281c.b(parcel);
                break;
            case 4:
                C13281c.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                C13281c.b(parcel);
                break;
            case 7:
                C13281c.b(parcel);
                break;
            case 8:
                l lVar = (l) C13281c.a(parcel, l.CREATOR);
                C13281c.b(parcel);
                N0(lVar);
                break;
            case 9:
                C13281c.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
