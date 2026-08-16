package u1;

import G0.A;
import G0.F;
import T0.C3041k;
import T0.D;
import T0.InterfaceC3037g;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.stats.zzi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
import k1.C13913b;

@F
@ThreadSafe
@C0.a
public class d {

    public static final long f118330r = TimeUnit.DAYS.toMillis(366);

    public static volatile ScheduledExecutorService f118331s = null;

    public static final Object f118332t = new Object();

    public static volatile h f118333u = new f();

    public final Object f118334a;

    @GuardedBy("acquireReleaseLock")
    public final PowerManager.WakeLock f118335b;

    @GuardedBy("acquireReleaseLock")
    public int f118336c;

    @GuardedBy("acquireReleaseLock")
    public Future<?> f118337d;

    @GuardedBy("acquireReleaseLock")
    public long f118338e;

    @GuardedBy("acquireReleaseLock")
    public final Set<i> f118339f;

    @GuardedBy("acquireReleaseLock")
    public boolean f118340g;

    @GuardedBy("acquireReleaseLock")
    public int f118341h;

    @GuardedBy("acquireReleaseLock")
    public C13913b f118342i;

    public InterfaceC3037g f118343j;

    public WorkSource f118344k;

    public final String f118345l;

    public final String f118346m;

    public final Context f118347n;

    @GuardedBy("acquireReleaseLock")
    public final Map<String, g> f118348o;

    public AtomicInteger f118349p;

    public final ScheduledExecutorService f118350q;

    @C0.a
    public d(@NonNull Context context, int i10, @NonNull String str) {
        String packageName = context.getPackageName();
        this.f118334a = new Object();
        this.f118336c = 0;
        this.f118339f = new HashSet();
        this.f118340g = true;
        this.f118343j = C3041k.e();
        this.f118348o = new HashMap();
        this.f118349p = new AtomicInteger(0);
        A.s(context, "WakeLock: context must not be null");
        A.m(str, "WakeLock: wakeLockName must not be empty");
        this.f118347n = context.getApplicationContext();
        this.f118346m = str;
        this.f118342i = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f118345l = str;
        } else {
            String valueOf = String.valueOf(str);
            this.f118345l = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        if (powerManager == null) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb2.toString());
        }
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(i10, str);
        this.f118335b = newWakeLock;
        if (T0.F.g(context)) {
            WorkSource b10 = T0.F.b(context, D.b(packageName) ? context.getPackageName() : packageName);
            this.f118344k = b10;
            if (b10 != null) {
                i(newWakeLock, b10);
            }
        }
        ScheduledExecutorService scheduledExecutorService = f118331s;
        if (scheduledExecutorService == null) {
            synchronized (f118332t) {
                try {
                    scheduledExecutorService = f118331s;
                    if (scheduledExecutorService == null) {
                        k1.h.a();
                        scheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        f118331s = scheduledExecutorService;
                    }
                } finally {
                }
            }
        }
        this.f118350q = scheduledExecutorService;
    }

    public static void e(@NonNull d dVar) {
        synchronized (dVar.f118334a) {
            try {
                if (dVar.b()) {
                    Log.e("WakeLock", String.valueOf(dVar.f118345l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                    dVar.g();
                    if (dVar.b()) {
                        dVar.f118336c = 1;
                        dVar.h(0);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void i(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e10) {
            Log.wtf("WakeLock", e10.toString());
        }
    }

    @C0.a
    public void a(long j10) {
        this.f118349p.incrementAndGet();
        long max = Math.max(Math.min(Long.MAX_VALUE, f118330r), 1L);
        if (j10 > 0) {
            max = Math.min(j10, max);
        }
        synchronized (this.f118334a) {
            try {
                if (!b()) {
                    this.f118342i = C13913b.a(false, null);
                    this.f118335b.acquire();
                    this.f118343j.c();
                }
                this.f118336c++;
                this.f118341h++;
                f(null);
                g gVar = this.f118348o.get(null);
                if (gVar == null) {
                    gVar = new g(null);
                    this.f118348o.put(null, gVar);
                }
                gVar.f118352a++;
                long c10 = this.f118343j.c();
                long j11 = Long.MAX_VALUE - c10 > max ? c10 + max : Long.MAX_VALUE;
                if (j11 > this.f118338e) {
                    this.f118338e = j11;
                    Future<?> future = this.f118337d;
                    if (future != null) {
                        future.cancel(false);
                    }
                    this.f118337d = this.f118350q.schedule(new Runnable() {
                        @Override
                        public final void run() {
                            d.e(d.this);
                        }
                    }, max, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public boolean b() {
        boolean z10;
        synchronized (this.f118334a) {
            z10 = this.f118336c > 0;
        }
        return z10;
    }

    @C0.a
    public void c() {
        if (this.f118349p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f118345l).concat(" release without a matched acquire!"));
        }
        synchronized (this.f118334a) {
            try {
                f(null);
                if (this.f118348o.containsKey(null)) {
                    g gVar = this.f118348o.get(null);
                    if (gVar != null) {
                        int i10 = gVar.f118352a - 1;
                        gVar.f118352a = i10;
                        if (i10 == 0) {
                            this.f118348o.remove(null);
                        }
                    }
                } else {
                    Log.w("WakeLock", String.valueOf(this.f118345l).concat(" counter does not exist"));
                }
                h(0);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public void d(boolean z10) {
        synchronized (this.f118334a) {
            this.f118340g = z10;
        }
    }

    @GuardedBy("acquireReleaseLock")
    public final String f(String str) {
        if (this.f118340g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GuardedBy("acquireReleaseLock")
    public final void g() {
        if (this.f118339f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f118339f);
        this.f118339f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    public final void h(int i10) {
        synchronized (this.f118334a) {
            try {
                if (b()) {
                    if (this.f118340g) {
                        int i11 = this.f118336c - 1;
                        this.f118336c = i11;
                        if (i11 > 0) {
                            return;
                        }
                    } else {
                        this.f118336c = 0;
                    }
                    g();
                    Iterator<g> it = this.f118348o.values().iterator();
                    while (it.hasNext()) {
                        it.next().f118352a = 0;
                    }
                    this.f118348o.clear();
                    Future<?> future = this.f118337d;
                    if (future != null) {
                        future.cancel(false);
                        this.f118337d = null;
                        this.f118338e = 0L;
                    }
                    this.f118341h = 0;
                    if (this.f118335b.isHeld()) {
                        try {
                            try {
                                this.f118335b.release();
                                if (this.f118342i != null) {
                                    this.f118342i = null;
                                }
                            } catch (RuntimeException e10) {
                                if (!e10.getClass().equals(RuntimeException.class)) {
                                    throw e10;
                                }
                                Log.e("WakeLock", String.valueOf(this.f118345l).concat(" failed to release!"), e10);
                                if (this.f118342i != null) {
                                    this.f118342i = null;
                                }
                            }
                        } catch (Throwable th2) {
                            if (this.f118342i != null) {
                                this.f118342i = null;
                            }
                            throw th2;
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.f118345l).concat(" should be held!"));
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
