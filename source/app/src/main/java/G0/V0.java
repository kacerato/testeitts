package G0;

import B0.C2318c;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.concurrent.Executor;

public final class V0 extends AbstractC2582o {

    public final HashMap f7332g = new HashMap();

    public final Context f7333h;

    public volatile Handler f7334i;

    public final T0 f7335j;

    public final S0.b f7336k;

    public final long f7337l;

    public final long f7338m;

    @Nullable
    public volatile Executor f7339n;

    public V0(Context context, Looper looper, @Nullable Executor executor) {
        T0 t02 = new T0(this, null);
        this.f7335j = t02;
        this.f7333h = context.getApplicationContext();
        this.f7334i = new h1.v(looper, t02);
        this.f7336k = S0.b.b();
        this.f7337l = 5000L;
        this.f7338m = 300000L;
        this.f7339n = executor;
    }

    @Override
    public final C2318c m(R0 r02, ServiceConnection serviceConnection, String str, @Nullable Executor executor) {
        C2318c c2318c;
        A.s(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7332g) {
            try {
                S0 s02 = (S0) this.f7332g.get(r02);
                if (executor == null) {
                    executor = this.f7339n;
                }
                if (s02 == null) {
                    s02 = new S0(this, r02);
                    s02.e(serviceConnection, serviceConnection, str);
                    c2318c = S0.d(s02, str, executor);
                    this.f7332g.put(r02, s02);
                } else {
                    this.f7334i.removeMessages(0, r02);
                    if (s02.h(serviceConnection)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + r02.toString());
                    }
                    s02.e(serviceConnection, serviceConnection, str);
                    int a10 = s02.a();
                    if (a10 == 1) {
                        serviceConnection.onServiceConnected(s02.b(), s02.c());
                    } else if (a10 == 2) {
                        c2318c = S0.d(s02, str, executor);
                    }
                    c2318c = null;
                }
                if (s02.j()) {
                    return C2318c.f1201E;
                }
                if (c2318c == null) {
                    c2318c = new C2318c(-1);
                }
                return c2318c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void n(R0 r02, ServiceConnection serviceConnection, String str) {
        A.s(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7332g) {
            try {
                S0 s02 = (S0) this.f7332g.get(r02);
                if (s02 == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: " + r02.toString());
                }
                if (!s02.h(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + r02.toString());
                }
                s02.f(serviceConnection, str);
                if (s02.i()) {
                    this.f7334i.sendMessageDelayed(this.f7334i.obtainMessage(0, r02), this.f7337l);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void u(@Nullable Executor executor) {
        synchronized (this.f7332g) {
            this.f7339n = executor;
        }
    }

    public final void v(Looper looper) {
        synchronized (this.f7332g) {
            this.f7334i = new h1.v(looper, this.f7335j);
        }
    }
}
