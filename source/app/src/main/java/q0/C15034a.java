package q0;

import B0.C2324i;
import B0.C2326k;
import B0.ServiceConnectionC2317b;
import G0.A;
import G0.F;
import android.app.job.JobInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.DropBoxManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.tonyodev.fetch2.util.FetchDefaults;
import d1.e;
import d1.f;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.apache.commons.math3.geometry.VectorFormat;

@ParametersAreNonnullByDefault
@C0.a
public class C15034a {

    @Nullable
    @GuardedBy("this")
    public ServiceConnectionC2317b f105890a;

    @Nullable
    @GuardedBy("this")
    public f f105891b;

    @GuardedBy("this")
    public boolean f105892c;

    public final Object f105893d;

    @Nullable
    @GuardedBy("mAutoDisconnectTaskLock")
    public C15036c f105894e;

    @GuardedBy("this")
    public final Context f105895f;

    public final long f105896g;

    @C0.c
    public static final class C1962a {

        @Nullable
        public final String f105897a;

        public final boolean f105898b;

        @Deprecated
        public C1962a(@Nullable String str, boolean z10) {
            this.f105897a = str;
            this.f105898b = z10;
        }

        @Nullable
        public String a() {
            return this.f105897a;
        }

        public boolean b() {
            return this.f105898b;
        }

        @NonNull
        public String toString() {
            String str = this.f105897a;
            boolean z10 = this.f105898b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
            sb2.append("{");
            sb2.append(str);
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            sb2.append(z10);
            return sb2.toString();
        }
    }

    @C0.a
    public C15034a(@NonNull Context context) {
        this(context, JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS, false, false);
    }

    @NonNull
    @C0.a
    public static C1962a a(@NonNull Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        C15034a c15034a = new C15034a(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            c15034a.g(false);
            C1962a i10 = c15034a.i(-1);
            c15034a.h(i10, true, 0.0f, SystemClock.elapsedRealtime() - elapsedRealtime, "", null);
            return i10;
        } finally {
        }
    }

    @C0.a
    public static boolean c(@NonNull Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        boolean Q12;
        C15034a c15034a = new C15034a(context, -1L, false, false);
        try {
            c15034a.g(false);
            A.q("Calling this from your main thread can lead to deadlock");
            synchronized (c15034a) {
                try {
                    if (!c15034a.f105892c) {
                        synchronized (c15034a.f105893d) {
                            C15036c c15036c = c15034a.f105894e;
                            if (c15036c == null || !c15036c.f105903e) {
                                throw new IOException("AdvertisingIdClient is not connected.");
                            }
                        }
                        try {
                            c15034a.g(false);
                            if (!c15034a.f105892c) {
                                throw new IOException("AdvertisingIdClient cannot reconnect.");
                            }
                        } catch (Exception e10) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
                        }
                    }
                    A.r(c15034a.f105890a);
                    A.r(c15034a.f105891b);
                    try {
                        Q12 = c15034a.f105891b.Q1();
                    } catch (RemoteException e11) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e11);
                        throw new IOException("Remote exception");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c15034a.j();
            return Q12;
        } finally {
            c15034a.f();
        }
    }

    @F
    @C0.a
    public static void d(boolean z10) {
    }

    @NonNull
    @C0.a
    public C1962a b() throws IOException {
        return i(-1);
    }

    @C0.a
    public void e() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        g(true);
    }

    public final void f() {
        A.q("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f105895f == null || this.f105890a == null) {
                    return;
                }
                try {
                    if (this.f105892c) {
                        S0.b.b().c(this.f105895f, this.f105890a);
                    }
                } catch (Throwable th2) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th2);
                }
                this.f105892c = false;
                this.f105891b = null;
                this.f105890a = null;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void finalize() throws Throwable {
        f();
        super.finalize();
    }

    @VisibleForTesting
    public final void g(boolean z10) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        A.q("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f105892c) {
                    f();
                }
                Context context = this.f105895f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int k10 = C2324i.i().k(context, C2326k.f1252a);
                    if (k10 != 0 && k10 != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    ServiceConnectionC2317b serviceConnectionC2317b = new ServiceConnectionC2317b();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!S0.b.b().a(context, intent, serviceConnectionC2317b, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.f105890a = serviceConnectionC2317b;
                        try {
                            this.f105891b = e.h(serviceConnectionC2317b.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, TimeUnit.MILLISECONDS));
                            this.f105892c = true;
                            if (z10) {
                                j();
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th2) {
                            throw new IOException(th2);
                        }
                    } finally {
                        IOException iOException = new IOException(th2);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @VisibleForTesting
    public final boolean h(@Nullable C1962a c1962a, boolean z10, float f10, long j10, String str, @Nullable Throwable th2) {
        if (Math.random() > 0.0d) {
            return false;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("app_context", "1");
        if (c1962a != null) {
            hashMap.put("limit_ad_tracking", true != c1962a.b() ? "0" : "1");
            String a10 = c1962a.a();
            if (a10 != null) {
                hashMap.put("ad_id_size", Integer.toString(a10.length()));
            }
        }
        if (th2 != null) {
            hashMap.put("error", th2.getClass().getName());
        }
        hashMap.put(DropBoxManager.EXTRA_TAG, "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j10));
        new C15035b(this, hashMap).start();
        return true;
    }

    public final C1962a i(int i10) throws IOException {
        C1962a c1962a;
        A.q("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f105892c) {
                    synchronized (this.f105893d) {
                        C15036c c15036c = this.f105894e;
                        if (c15036c == null || !c15036c.f105903e) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        g(false);
                        if (!this.f105892c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e10) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
                    }
                }
                A.r(this.f105890a);
                A.r(this.f105891b);
                try {
                    c1962a = new C1962a(this.f105891b.P1(), this.f105891b.y(true));
                } catch (RemoteException e11) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e11);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        j();
        return c1962a;
    }

    public final void j() {
        synchronized (this.f105893d) {
            C15036c c15036c = this.f105894e;
            if (c15036c != null) {
                c15036c.f105902d.countDown();
                try {
                    this.f105894e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j10 = this.f105896g;
            if (j10 > 0) {
                this.f105894e = new C15036c(this, j10);
            }
        }
    }

    @VisibleForTesting
    public C15034a(@NonNull Context context, long j10, boolean z10, boolean z11) {
        Context applicationContext;
        this.f105893d = new Object();
        A.r(context);
        if (z10 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f105895f = context;
        this.f105892c = false;
        this.f105896g = j10;
    }
}
