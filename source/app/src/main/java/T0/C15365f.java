package t0;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.C11910a;
import com.google.android.gms.internal.auth.C11923d0;

public final class C15365f extends C11910a implements InterfaceC15367h {
    public C15365f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.IWorkAccountService");
    }

    @Override
    public final void L(boolean z10) throws RemoteException {
        Parcel h10 = h();
        int i10 = C11923d0.f61715b;
        h10.writeInt(z10 ? 1 : 0);
        t(1, h10);
    }

    @Override
    public final void s0(InterfaceC15364e interfaceC15364e, Account account) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC15364e);
        C11923d0.c(h10, account);
        t(3, h10);
    }

    @Override
    public final void v0(InterfaceC15364e interfaceC15364e, String str) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC15364e);
        h10.writeString(str);
        t(2, h10);
    }
}
