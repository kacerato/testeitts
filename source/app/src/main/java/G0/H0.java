package G0;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.VisibleForTesting;

@VisibleForTesting
public final class H0 implements ServiceConnection {

    public final int f7296c;

    public final AbstractC2564f f7297d;

    public H0(AbstractC2564f abstractC2564f, int i10) {
        this.f7297d = abstractC2564f;
        this.f7296c = i10;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        AbstractC2564f abstractC2564f = this.f7297d;
        if (iBinder == null) {
            AbstractC2564f.m0(abstractC2564f, 16);
            return;
        }
        obj = abstractC2564f.f7389p;
        synchronized (obj) {
            try {
                AbstractC2564f abstractC2564f2 = this.f7297d;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                abstractC2564f2.f7390q = (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC2593u)) ? new C2596v0(iBinder) : (InterfaceC2593u) queryLocalInterface;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f7297d.n0(0, null, this.f7296c);
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f7297d.f7389p;
        synchronized (obj) {
            this.f7297d.f7390q = null;
        }
        AbstractC2564f abstractC2564f = this.f7297d;
        int i10 = this.f7296c;
        Handler handler = abstractC2564f.f7387n;
        handler.sendMessage(handler.obtainMessage(6, i10, 1));
    }
}
