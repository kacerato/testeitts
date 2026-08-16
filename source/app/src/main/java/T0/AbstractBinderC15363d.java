package t0;

import android.accounts.Account;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.B;
import com.google.android.gms.internal.auth.C11923d0;

public abstract class AbstractBinderC15363d extends B implements InterfaceC15364e {
    public AbstractBinderC15363d() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            int i12 = C11923d0.f61715b;
            int readInt = parcel.readInt();
            C11923d0.b(parcel);
            E(readInt != 0);
        } else {
            Account account = (Account) C11923d0.a(parcel, Account.CREATOR);
            C11923d0.b(parcel);
            N(account);
        }
        return true;
    }
}
