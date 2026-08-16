package D0;

import java.lang.ref.WeakReference;

public final class U extends AbstractC2447h0 {

    public final WeakReference f4611a;

    public U(com.google.android.gms.common.api.internal.q qVar) {
        this.f4611a = new WeakReference(qVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a() {
        com.google.android.gms.common.api.internal.q qVar = (com.google.android.gms.common.api.internal.q) this.f4611a.get();
        if (qVar == null) {
            return;
        }
        com.google.android.gms.common.api.internal.q.P(qVar);
    }
}
