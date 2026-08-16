package G0;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@VisibleForTesting
public final class G0 extends AbstractBinderC2594u0 {

    @Nullable
    public AbstractC2564f f7292e;

    public final int f7293f;

    public G0(@NonNull AbstractC2564f abstractC2564f, int i10) {
        this.f7292e = abstractC2564f;
        this.f7293f = i10;
    }

    @Override
    @BinderThread
    public final void E0(int i10, @NonNull IBinder iBinder, @NonNull N0 n02) {
        AbstractC2564f abstractC2564f = this.f7292e;
        A.s(abstractC2564f, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        A.r(n02);
        AbstractC2564f.l0(abstractC2564f, n02);
        I0(i10, iBinder, n02.f7305b);
    }

    @Override
    @BinderThread
    public final void I0(int i10, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        A.s(this.f7292e, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f7292e.W(i10, iBinder, bundle, this.f7293f);
        this.f7292e = null;
    }

    @Override
    @BinderThread
    public final void a0(int i10, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }
}
