package v0;

import android.os.RemoteException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.C11974q;
import com.google.android.gms.internal.auth.C11993v;
import v1.C15791l;

public abstract class q extends D0.r {

    public C15791l f121076d;

    public q(int i10, p pVar) {
        super(null, false, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void b(C11894a.b bVar, C15791l c15791l) throws RemoteException {
        this.f121076d = c15791l;
        f((C11993v) ((C11974q) bVar).M());
    }

    public abstract void f(C11993v c11993v) throws RemoteException;
}
