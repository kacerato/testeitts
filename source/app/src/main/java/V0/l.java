package v0;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.C11993v;

public final class l extends q {

    public final com.google.android.gms.internal.auth.r f121072e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(C15760b c15760b, int i10, com.google.android.gms.internal.auth.r rVar) {
        super(1608, null);
        this.f121072e = rVar;
    }

    @Override
    public final void f(C11993v c11993v) throws RemoteException {
        c11993v.l0(new k(this, this), this.f121072e);
    }
}
