package G0;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h1.C13407a;

public final class Z0 extends C13407a implements r {
    public Z0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override
    public final Account O1() throws RemoteException {
        Parcel h10 = h(2, l0());
        Account account = (Account) h1.q.a(h10, Account.CREATOR);
        h10.recycle();
        return account;
    }
}
