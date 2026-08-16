package s0;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.internal.auth.AbstractBinderC11932f1;
import java.io.IOException;

public final class o implements q {

    public final C15222b f109150a;

    public o(C15222b c15222b) {
        this.f109150a = c15222b;
    }

    @Override
    public final Object a(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        C15223c x02 = AbstractBinderC11932f1.k(iBinder).x0(this.f109150a);
        r.m(x02);
        return x02.n();
    }
}
