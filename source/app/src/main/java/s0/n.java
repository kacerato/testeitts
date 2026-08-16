package s0;

import android.accounts.AccountManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.internal.auth.AbstractBinderC11932f1;
import java.io.IOException;

public final class n implements q {

    public final String f109148a;

    public final Bundle f109149b;

    public n(String str, Bundle bundle) {
        this.f109148a = str;
        this.f109149b = bundle;
    }

    @Override
    public final Object a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle L02 = AbstractBinderC11932f1.k(iBinder).L0(this.f109148a, this.f109149b);
        r.m(L02);
        String string = L02.getString("Error");
        if (L02.getBoolean(AccountManager.KEY_BOOLEAN_RESULT)) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
