package z0;

import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;

public final class C16230o extends AbstractC16231p {
    public C16230o(AbstractC11908l abstractC11908l) {
        super(abstractC11908l);
    }

    @Override
    public final com.google.android.gms.common.api.u k(Status status) {
        return status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void w(C11894a.b bVar) throws RemoteException {
        C16224i c16224i = (C16224i) bVar;
        ((C16238w) c16224i.M()).e1(new BinderC16229n(this), c16224i.v0());
    }
}
