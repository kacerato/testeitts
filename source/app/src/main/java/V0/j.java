package v0;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.C11993v;
import com.google.android.gms.internal.auth.C12005y;

public final class j extends q {

    public final C12005y f121070e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(C15760b c15760b, int i10, C12005y c12005y) {
        super(1607, null);
        this.f121070e = c12005y;
    }

    @Override
    public final void f(C11993v c11993v) throws RemoteException {
        c11993v.g1(new i(this, this), this.f121070e);
    }
}
