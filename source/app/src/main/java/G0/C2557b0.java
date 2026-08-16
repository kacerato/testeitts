package G0;

import B0.C2318c;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.AbstractC11908l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import sm.InterfaceC15358c;

public final class C2557b0 implements Handler.Callback {

    @InterfaceC15358c
    public final InterfaceC2555a0 f7352c;

    public final Handler f7359j;

    public final ArrayList f7353d = new ArrayList();

    @VisibleForTesting
    public final ArrayList f7354e = new ArrayList();

    public final ArrayList f7355f = new ArrayList();

    public volatile boolean f7356g = false;

    public final AtomicInteger f7357h = new AtomicInteger(0);

    public boolean f7358i = false;

    public final Object f7360k = new Object();

    public C2557b0(Looper looper, InterfaceC2555a0 interfaceC2555a0) {
        this.f7352c = interfaceC2555a0;
        this.f7359j = new g1.u(looper, this);
    }

    public final void a() {
        this.f7356g = false;
        this.f7357h.incrementAndGet();
    }

    public final void b() {
        this.f7356g = true;
    }

    @VisibleForTesting
    public final void c(C2318c c2318c) {
        A.i(this.f7359j, "onConnectionFailure must only be called on the Handler thread");
        this.f7359j.removeMessages(1);
        synchronized (this.f7360k) {
            try {
                ArrayList arrayList = new ArrayList(this.f7355f);
                int i10 = this.f7357h.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    AbstractC11908l.c cVar = (AbstractC11908l.c) it.next();
                    if (this.f7356g && this.f7357h.get() == i10) {
                        if (this.f7355f.contains(cVar)) {
                            cVar.t(c2318c);
                        }
                    }
                    return;
                }
            } finally {
            }
        }
    }

    @VisibleForTesting
    public final void d(@Nullable Bundle bundle) {
        A.i(this.f7359j, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f7360k) {
            try {
                A.x(!this.f7358i);
                this.f7359j.removeMessages(1);
                this.f7358i = true;
                A.x(this.f7354e.isEmpty());
                ArrayList arrayList = new ArrayList(this.f7353d);
                int i10 = this.f7357h.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    AbstractC11908l.b bVar = (AbstractC11908l.b) it.next();
                    if (!this.f7356g || !this.f7352c.isConnected() || this.f7357h.get() != i10) {
                        break;
                    } else if (!this.f7354e.contains(bVar)) {
                        bVar.h(bundle);
                    }
                }
                this.f7354e.clear();
                this.f7358i = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public final void e(int i10) {
        A.i(this.f7359j, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f7359j.removeMessages(1);
        synchronized (this.f7360k) {
            try {
                this.f7358i = true;
                ArrayList arrayList = new ArrayList(this.f7353d);
                int i11 = this.f7357h.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    AbstractC11908l.b bVar = (AbstractC11908l.b) it.next();
                    if (!this.f7356g || this.f7357h.get() != i11) {
                        break;
                    } else if (this.f7353d.contains(bVar)) {
                        bVar.k(i10);
                    }
                }
                this.f7354e.clear();
                this.f7358i = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f(AbstractC11908l.b bVar) {
        A.r(bVar);
        synchronized (this.f7360k) {
            try {
                if (this.f7353d.contains(bVar)) {
                    Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + String.valueOf(bVar) + " is already registered");
                } else {
                    this.f7353d.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (this.f7352c.isConnected()) {
            Handler handler = this.f7359j;
            handler.sendMessage(handler.obtainMessage(1, bVar));
        }
    }

    public final void g(AbstractC11908l.c cVar) {
        A.r(cVar);
        synchronized (this.f7360k) {
            try {
                if (this.f7355f.contains(cVar)) {
                    Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + String.valueOf(cVar) + " is already registered");
                } else {
                    this.f7355f.add(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void h(AbstractC11908l.b bVar) {
        A.r(bVar);
        synchronized (this.f7360k) {
            try {
                if (!this.f7353d.remove(bVar)) {
                    Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + String.valueOf(bVar) + " not found");
                } else if (this.f7358i) {
                    this.f7354e.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            Log.wtf("GmsClientEvents", "Don't know how to handle message: " + i10, new Exception());
            return false;
        }
        AbstractC11908l.b bVar = (AbstractC11908l.b) message.obj;
        synchronized (this.f7360k) {
            try {
                if (this.f7356g && this.f7352c.isConnected() && this.f7353d.contains(bVar)) {
                    bVar.h(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    public final void i(AbstractC11908l.c cVar) {
        A.r(cVar);
        synchronized (this.f7360k) {
            try {
                if (!this.f7355f.remove(cVar)) {
                    Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + String.valueOf(cVar) + " not found");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean j(AbstractC11908l.b bVar) {
        boolean contains;
        A.r(bVar);
        synchronized (this.f7360k) {
            contains = this.f7353d.contains(bVar);
        }
        return contains;
    }

    public final boolean k(AbstractC11908l.c cVar) {
        boolean contains;
        A.r(cVar);
        synchronized (this.f7360k) {
            contains = this.f7355f.contains(cVar);
        }
        return contains;
    }
}
