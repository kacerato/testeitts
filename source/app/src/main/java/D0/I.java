package D0;

import androidx.annotation.BinderThread;
import java.lang.ref.WeakReference;
import t1.BinderC15373d;

public final class I extends BinderC15373d {

    public final WeakReference f4563e;

    public I(com.google.android.gms.common.api.internal.o oVar) {
        this.f4563e = new WeakReference(oVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @BinderThread
    public final void N0(t1.l lVar) {
        com.google.android.gms.common.api.internal.s sVar;
        com.google.android.gms.common.api.internal.o oVar = (com.google.android.gms.common.api.internal.o) this.f4563e.get();
        if (oVar == null) {
            return;
        }
        sVar = oVar.f61186a;
        sVar.u(new H(this, oVar, oVar, lVar));
    }
}
