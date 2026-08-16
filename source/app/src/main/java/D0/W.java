package D0;

import android.os.Looper;
import android.os.Message;
import android.util.Log;

public final class W extends g1.u {

    public final com.google.android.gms.common.api.internal.s f4617b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(com.google.android.gms.common.api.internal.s sVar, Looper looper) {
        super(looper);
        this.f4617b = sVar;
    }

    @Override
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            ((V) message.obj).b(this.f4617b);
        } else {
            if (i10 == 2) {
                throw ((RuntimeException) message.obj);
            }
            Log.w("GACStateManager", "Unknown message id: " + i10);
        }
    }
}
