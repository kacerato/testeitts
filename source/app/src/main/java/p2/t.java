package p2;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.play.core.review.internal.zzu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.InterfaceC15784e;

public final class t {

    public static final Map f103434o = new HashMap();

    public final Context f103435a;

    public final i f103436b;

    public boolean f103441g;

    public final Intent f103442h;

    @Nullable
    public ServiceConnection f103446l;

    @Nullable
    public IInterface f103447m;

    public final o2.h f103448n;

    public final List f103438d = new ArrayList();

    @GuardedBy("attachedRemoteTasksLock")
    public final Set f103439e = new HashSet();

    public final Object f103440f = new Object();

    public final IBinder.DeathRecipient f103444j = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            t.h(t.this);
        }
    };

    @GuardedBy("attachedRemoteTasksLock")
    public final AtomicInteger f103445k = new AtomicInteger(0);

    public final String f103437c = "com.google.android.finsky.inappreviewservice.InAppReviewService";

    public final WeakReference f103443i = new WeakReference(null);

    public t(Context context, i iVar, String str, Intent intent, o2.h hVar, @Nullable o oVar, byte[] bArr) {
        this.f103435a = context;
        this.f103436b = iVar;
        this.f103442h = intent;
        this.f103448n = hVar;
    }

    public static void h(t tVar) {
        tVar.f103436b.d("reportBinderDeath", new Object[0]);
        o oVar = (o) tVar.f103443i.get();
        if (oVar != null) {
            tVar.f103436b.d("calling onBinderDied", new Object[0]);
            oVar.N1();
        } else {
            tVar.f103436b.d("%s : Binder has died.", tVar.f103437c);
            Iterator it = tVar.f103438d.iterator();
            while (it.hasNext()) {
                ((j) it.next()).c(tVar.s());
            }
            tVar.f103438d.clear();
        }
        tVar.t();
    }

    public static void m(t tVar, j jVar) {
        if (tVar.f103447m != null || tVar.f103441g) {
            if (!tVar.f103441g) {
                jVar.run();
                return;
            } else {
                tVar.f103436b.d("Waiting to bind to the service.", new Object[0]);
                tVar.f103438d.add(jVar);
                return;
            }
        }
        tVar.f103436b.d("Initiate binding to the service.", new Object[0]);
        tVar.f103438d.add(jVar);
        s sVar = new s(tVar, null);
        tVar.f103446l = sVar;
        tVar.f103441g = true;
        if (tVar.f103435a.bindService(tVar.f103442h, sVar, 1)) {
            return;
        }
        tVar.f103436b.d("Failed to bind to the service.", new Object[0]);
        tVar.f103441g = false;
        Iterator it = tVar.f103438d.iterator();
        while (it.hasNext()) {
            ((j) it.next()).c(new zzu());
        }
        tVar.f103438d.clear();
    }

    public static void n(t tVar) {
        tVar.f103436b.d("linkToDeath", new Object[0]);
        try {
            tVar.f103447m.asBinder().linkToDeath(tVar.f103444j, 0);
        } catch (RemoteException e10) {
            tVar.f103436b.c(e10, "linkToDeath failed", new Object[0]);
        }
    }

    public static void o(t tVar) {
        tVar.f103436b.d("unlinkToDeath", new Object[0]);
        tVar.f103447m.asBinder().unlinkToDeath(tVar.f103444j, 0);
    }

    public final Handler c() {
        Handler handler;
        Map map = f103434o;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f103437c)) {
                    HandlerThread handlerThread = new HandlerThread(this.f103437c, 10);
                    handlerThread.start();
                    map.put(this.f103437c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f103437c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return handler;
    }

    @Nullable
    public final IInterface e() {
        return this.f103447m;
    }

    public final void p(j jVar, @Nullable final C15791l c15791l) {
        synchronized (this.f103440f) {
            this.f103439e.add(c15791l);
            c15791l.a().f(new InterfaceC15784e() {
                @Override
                public final void a(AbstractC15790k abstractC15790k) {
                    t.this.q(c15791l, abstractC15790k);
                }
            });
        }
        synchronized (this.f103440f) {
            try {
                if (this.f103445k.getAndIncrement() > 0) {
                    this.f103436b.a("Already connected to the service.", new Object[0]);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        c().post(new m(this, jVar.b(), jVar));
    }

    public final void q(C15791l c15791l, AbstractC15790k abstractC15790k) {
        synchronized (this.f103440f) {
            this.f103439e.remove(c15791l);
        }
    }

    public final void r(C15791l c15791l) {
        synchronized (this.f103440f) {
            this.f103439e.remove(c15791l);
        }
        synchronized (this.f103440f) {
            try {
                if (this.f103445k.get() > 0 && this.f103445k.decrementAndGet() > 0) {
                    this.f103436b.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                } else {
                    c().post(new n(this));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final RemoteException s() {
        return new RemoteException(String.valueOf(this.f103437c).concat(" : Binder has died."));
    }

    public final void t() {
        synchronized (this.f103440f) {
            try {
                Iterator it = this.f103439e.iterator();
                while (it.hasNext()) {
                    ((C15791l) it.next()).d(s());
                }
                this.f103439e.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
