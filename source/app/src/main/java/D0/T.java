package D0;

import android.os.Looper;
import android.os.Message;
import android.util.Log;

public final class T extends g1.u {

    public final com.google.android.gms.common.api.internal.q f4608b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(com.google.android.gms.common.api.internal.q qVar, Looper looper) {
        super(looper);
        this.f4608b = qVar;
    }

    @Override
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            com.google.android.gms.common.api.internal.q.Q(this.f4608b);
            return;
        }
        if (i10 == 2) {
            com.google.android.gms.common.api.internal.q.P(this.f4608b);
            return;
        }
        Log.w("GoogleApiClientImpl", "Unknown message id: " + i10);
    }
}
