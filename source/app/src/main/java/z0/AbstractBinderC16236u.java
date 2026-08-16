package z0;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import e1.BinderC12976B;
import e1.O;

public abstract class AbstractBinderC16236u extends BinderC12976B implements InterfaceC16237v {
    public AbstractBinderC16236u() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 101:
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) O.a(parcel, GoogleSignInAccount.CREATOR);
                Status status = (Status) O.a(parcel, Status.CREATOR);
                O.d(parcel);
                B0(googleSignInAccount, status);
                break;
            case 102:
                Status status2 = (Status) O.a(parcel, Status.CREATOR);
                O.d(parcel);
                j0(status2);
                break;
            case 103:
                Status status3 = (Status) O.a(parcel, Status.CREATOR);
                O.d(parcel);
                o0(status3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
