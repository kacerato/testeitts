package D0;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;

public final class H0 extends g1.u {

    public final J0 f4562b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H0(J0 j02, Looper looper) {
        super(looper);
        this.f4562b = j02;
    }

    @Override
    public final void handleMessage(Message message) {
        Object obj;
        J0 j02;
        int i10 = message.what;
        if (i10 != 0) {
            if (i10 == 1) {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: ".concat(String.valueOf(runtimeException.getMessage())));
                throw runtimeException;
            }
            Log.e("TransformedResultImpl", "TransformationResultHandler received unknown message type: " + i10);
            return;
        }
        com.google.android.gms.common.api.p pVar = (com.google.android.gms.common.api.p) message.obj;
        obj = this.f4562b.f4569e;
        synchronized (obj) {
            try {
                j02 = this.f4562b.f4566b;
                J0 j03 = (J0) G0.A.r(j02);
                if (pVar == null) {
                    j03.m(new Status(13, "Transform returned null"));
                } else if (pVar instanceof C2478x0) {
                    j03.m(((C2478x0) pVar).k());
                } else {
                    j03.l(pVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
