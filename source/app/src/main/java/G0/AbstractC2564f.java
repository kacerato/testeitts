package G0;

import B0.C2318c;
import B0.C2320e;
import B0.C2324i;
import android.accounts.Account;
import android.app.PendingIntent;
import android.content.AttributionSource;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.C11900g;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

@C0.a
public abstract class AbstractC2564f<T extends IInterface> {

    @C0.a
    public static final int f7363G = 1;

    @C0.a
    public static final int f7364H = 4;

    @C0.a
    public static final int f7365I = 5;

    @NonNull
    @C0.a
    public static final String f7366J = "pendingIntent";

    @NonNull
    @C0.a
    public static final String f7367K = "<<default account>>";

    @Nullable
    public volatile String f7370A;

    @Nullable
    public volatile V0.a f7371B;

    @Nullable
    public C2318c f7372C;

    public boolean f7373D;

    @Nullable
    public volatile N0 f7374E;

    @NonNull
    @VisibleForTesting
    public AtomicInteger f7375F;

    public int f7376c;

    public long f7377d;

    public long f7378e;

    public int f7379f;

    public long f7380g;

    @Nullable
    public volatile String f7381h;

    @VisibleForTesting
    public Y0 f7382i;

    public final Context f7383j;

    public final Looper f7384k;

    public final AbstractC2582o f7385l;

    public final C2324i f7386m;

    public final Handler f7387n;

    public final Object f7388o;

    public final Object f7389p;

    @Nullable
    public InterfaceC2593u f7390q;

    @NonNull
    @VisibleForTesting
    public c f7391r;

    @Nullable
    public IInterface f7392s;

    public final ArrayList f7393t;

    @Nullable
    public H0 f7394u;

    public int f7395v;

    @Nullable
    public final a f7396w;

    @Nullable
    public final b f7397x;

    public final int f7398y;

    @Nullable
    public final String f7399z;

    public static final C2320e[] f7369M = new C2320e[0];

    @NonNull
    @C0.a
    public static final String[] f7368L = {"service_esmobile", "service_googleme"};

    @C0.a
    public interface a {

        @C0.a
        public static final int f7400a = 1;

        @C0.a
        public static final int f7401b = 3;

        @C0.a
        void h(@Nullable Bundle bundle);

        @C0.a
        void k(int i10);
    }

    @C0.a
    public interface b {
        @C0.a
        void t(@NonNull C2318c c2318c);
    }

    @C0.a
    public interface c {
        @C0.a
        void b(@NonNull C2318c c2318c);
    }

    public class d implements c {
        @C0.a
        public d() {
        }

        @Override
        public final void b(@NonNull C2318c c2318c) {
            if (c2318c.u0()) {
                AbstractC2564f abstractC2564f = AbstractC2564f.this;
                abstractC2564f.t(null, abstractC2564f.L());
            } else if (AbstractC2564f.this.f7397x != null) {
                AbstractC2564f.this.f7397x.t(c2318c);
            }
        }
    }

    @C0.a
    public interface e {
        @C0.a
        void a();
    }

    @C0.a
    @VisibleForTesting
    public AbstractC2564f(@NonNull Context context, @NonNull Handler handler, @NonNull AbstractC2582o abstractC2582o, @NonNull C2324i c2324i, int i10, @Nullable a aVar, @Nullable b bVar) {
        this.f7381h = null;
        this.f7388o = new Object();
        this.f7389p = new Object();
        this.f7393t = new ArrayList();
        this.f7395v = 1;
        this.f7372C = null;
        this.f7373D = false;
        this.f7374E = null;
        this.f7375F = new AtomicInteger(0);
        A.s(context, "Context must not be null");
        this.f7383j = context;
        A.s(handler, "Handler must not be null");
        this.f7387n = handler;
        this.f7384k = handler.getLooper();
        A.s(abstractC2582o, "Supervisor must not be null");
        this.f7385l = abstractC2582o;
        A.s(c2324i, "API availability must not be null");
        this.f7386m = c2324i;
        this.f7398y = i10;
        this.f7396w = aVar;
        this.f7397x = bVar;
        this.f7399z = null;
    }

    public static void l0(AbstractC2564f abstractC2564f, N0 n02) {
        abstractC2564f.f7374E = n02;
        if (abstractC2564f.b0()) {
            C2572j c2572j = n02.f7308e;
            C.b().c(c2572j == null ? null : c2572j.v0());
        }
    }

    public static void m0(AbstractC2564f abstractC2564f, int i10) {
        int i11;
        int i12;
        synchronized (abstractC2564f.f7388o) {
            i11 = abstractC2564f.f7395v;
        }
        if (i11 == 3) {
            abstractC2564f.f7373D = true;
            i12 = 5;
        } else {
            i12 = 4;
        }
        Handler handler = abstractC2564f.f7387n;
        handler.sendMessage(handler.obtainMessage(i12, abstractC2564f.f7375F.get(), 16));
    }

    public static boolean p0(AbstractC2564f abstractC2564f, int i10, int i11, IInterface iInterface) {
        synchronized (abstractC2564f.f7388o) {
            try {
                if (abstractC2564f.f7395v != i10) {
                    return false;
                }
                abstractC2564f.r0(i11, iInterface);
                return true;
            } finally {
            }
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:759)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:838)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:711)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static boolean q0(G0.AbstractC2564f r2) {
        /*
            boolean r0 = r2.f7373D
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.N()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.J()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.N()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: G0.AbstractC2564f.q0(G0.f):boolean");
    }

    @C0.a
    public boolean A() {
        return false;
    }

    @Nullable
    @C0.a
    public Account B() {
        return null;
    }

    @NonNull
    @C0.a
    public C2320e[] C() {
        return f7369M;
    }

    @Nullable
    @C0.a
    public V0.a D() {
        return this.f7371B;
    }

    @Nullable
    @C0.a
    public Executor E() {
        return null;
    }

    @Nullable
    @C0.a
    public Bundle F() {
        return null;
    }

    @NonNull
    @C0.a
    public final Context G() {
        return this.f7383j;
    }

    @C0.a
    public int H() {
        return this.f7398y;
    }

    @NonNull
    @C0.a
    public Bundle I() {
        return new Bundle();
    }

    @Nullable
    @C0.a
    public String J() {
        return null;
    }

    @NonNull
    @C0.a
    public final Looper K() {
        return this.f7384k;
    }

    @NonNull
    @C0.a
    public Set<Scope> L() {
        return Collections.emptySet();
    }

    @NonNull
    @C0.a
    public final T M() throws DeadObjectException {
        T t10;
        synchronized (this.f7388o) {
            try {
                if (this.f7395v == 5) {
                    throw new DeadObjectException();
                }
                y();
                IInterface iInterface = this.f7392s;
                A.s(iInterface, "Client is connected but service is null");
                t10 = (T) iInterface;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }

    @NonNull
    @C0.a
    public abstract String N();

    @NonNull
    @C0.a
    public abstract String O();

    @NonNull
    @C0.a
    public String P() {
        return "com.google.android.gms";
    }

    @Nullable
    @C0.a
    public C2572j Q() {
        N0 n02 = this.f7374E;
        if (n02 == null) {
            return null;
        }
        return n02.f7308e;
    }

    @C0.a
    public boolean R() {
        return l() >= 211700000;
    }

    @C0.a
    public boolean S() {
        return this.f7374E != null;
    }

    @C0.a
    @CallSuper
    public void T(@NonNull T t10) {
        this.f7378e = System.currentTimeMillis();
    }

    @C0.a
    @CallSuper
    public void U(@NonNull C2318c c2318c) {
        this.f7379f = c2318c.n();
        this.f7380g = System.currentTimeMillis();
    }

    @C0.a
    @CallSuper
    public void V(int i10) {
        this.f7376c = i10;
        this.f7377d = System.currentTimeMillis();
    }

    @C0.a
    public void W(int i10, @Nullable IBinder iBinder, @Nullable Bundle bundle, int i11) {
        this.f7387n.sendMessage(this.f7387n.obtainMessage(1, i11, -1, new I0(this, i10, iBinder, bundle)));
    }

    @C0.a
    public void X(@NonNull V0.a aVar) {
        this.f7371B = aVar;
    }

    @C0.a
    public void Y(@NonNull String str) {
        this.f7370A = str;
    }

    @C0.a
    public void Z(int i10) {
        this.f7387n.sendMessage(this.f7387n.obtainMessage(6, this.f7375F.get(), i10));
    }

    @C0.a
    public boolean a() {
        return false;
    }

    @C0.a
    @VisibleForTesting
    public void a0(@NonNull c cVar, int i10, @Nullable PendingIntent pendingIntent) {
        A.s(cVar, "Connection progress callbacks cannot be null.");
        this.f7391r = cVar;
        this.f7387n.sendMessage(this.f7387n.obtainMessage(3, this.f7375F.get(), i10, pendingIntent));
    }

    @C0.a
    public boolean b() {
        return false;
    }

    @C0.a
    public boolean b0() {
        return false;
    }

    @C0.a
    public void e(@NonNull String str) {
        this.f7381h = str;
        j();
    }

    @C0.a
    public boolean f() {
        boolean z10;
        synchronized (this.f7388o) {
            int i10 = this.f7395v;
            z10 = true;
            if (i10 != 2 && i10 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    @C0.a
    public boolean g() {
        return false;
    }

    @NonNull
    public final String g0() {
        String str = this.f7399z;
        return str == null ? this.f7383j.getClass().getName() : str;
    }

    @Nullable
    @C0.a
    public IBinder h() {
        synchronized (this.f7389p) {
            try {
                InterfaceC2593u interfaceC2593u = this.f7390q;
                if (interfaceC2593u == null) {
                    return null;
                }
                return interfaceC2593u.asBinder();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public boolean isConnected() {
        boolean z10;
        synchronized (this.f7388o) {
            z10 = this.f7395v == 4;
        }
        return z10;
    }

    @C0.a
    public void j() {
        this.f7375F.incrementAndGet();
        synchronized (this.f7393t) {
            try {
                int size = this.f7393t.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((F0) this.f7393t.get(i10)).d();
                }
                this.f7393t.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.f7389p) {
            this.f7390q = null;
        }
        r0(1, null);
    }

    @C0.a
    public void k(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        int i10;
        IInterface iInterface;
        InterfaceC2593u interfaceC2593u;
        synchronized (this.f7388o) {
            i10 = this.f7395v;
            iInterface = this.f7392s;
        }
        synchronized (this.f7389p) {
            interfaceC2593u = this.f7390q;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i10 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i10 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i10 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i10 == 4) {
            printWriter.print("CONNECTED");
        } else if (i10 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) N()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (interfaceC2593u == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(interfaceC2593u.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f7378e > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j10 = this.f7378e;
            append.println(j10 + " " + simpleDateFormat.format(new Date(j10)));
        }
        if (this.f7377d > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i11 = this.f7376c;
            if (i11 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i11 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i11 != 3) {
                printWriter.append((CharSequence) String.valueOf(i11));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j11 = this.f7377d;
            append2.println(j11 + " " + simpleDateFormat.format(new Date(j11)));
        }
        if (this.f7380g > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) C11900g.a(this.f7379f));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j12 = this.f7380g;
            append3.println(j12 + " " + simpleDateFormat.format(new Date(j12)));
        }
    }

    @C0.a
    public int l() {
        return C2324i.f1242a;
    }

    @NonNull
    @C0.a
    public Intent m() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @NonNull
    @C0.a
    public String n() {
        Y0 y02;
        if (!isConnected() || (y02 = this.f7382i) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return y02.a();
    }

    public final void n0(int i10, @Nullable Bundle bundle, int i11) {
        this.f7387n.sendMessage(this.f7387n.obtainMessage(7, i11, -1, new J0(this, i10, bundle)));
    }

    @C0.a
    public boolean q() {
        return true;
    }

    @C0.a
    public void r(@NonNull e eVar) {
        eVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r0(int i10, @Nullable IInterface iInterface) {
        Y0 y02;
        A.a((i10 == 4) == (iInterface != null));
        synchronized (this.f7388o) {
            try {
                this.f7395v = i10;
                this.f7392s = iInterface;
                Bundle bundle = null;
                if (i10 == 1) {
                    H0 h02 = this.f7394u;
                    if (h02 != null) {
                        AbstractC2582o abstractC2582o = this.f7385l;
                        String b10 = this.f7382i.b();
                        A.r(b10);
                        abstractC2582o.o(b10, this.f7382i.a(), 4225, h02, g0(), this.f7382i.c());
                        this.f7394u = null;
                    }
                } else if (i10 == 2 || i10 == 3) {
                    H0 h03 = this.f7394u;
                    if (h03 != null && (y02 = this.f7382i) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + y02.b() + " on " + y02.a());
                        AbstractC2582o abstractC2582o2 = this.f7385l;
                        String b11 = this.f7382i.b();
                        A.r(b11);
                        abstractC2582o2.o(b11, this.f7382i.a(), 4225, h03, g0(), this.f7382i.c());
                        this.f7375F.incrementAndGet();
                    }
                    H0 h04 = new H0(this, this.f7375F.get());
                    this.f7394u = h04;
                    Y0 y03 = (this.f7395v != 3 || J() == null) ? new Y0(P(), O(), false, 4225, R()) : new Y0(G().getPackageName(), J(), true, 4225, false);
                    this.f7382i = y03;
                    if (y03.c() && l() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f7382i.b())));
                    }
                    AbstractC2582o abstractC2582o3 = this.f7385l;
                    String b12 = this.f7382i.b();
                    A.r(b12);
                    C2318c m10 = abstractC2582o3.m(new R0(b12, this.f7382i.a(), 4225, this.f7382i.c()), h04, g0(), E());
                    if (!m10.u0()) {
                        Log.w("GmsClient", "unable to connect to service: " + this.f7382i.b() + " on " + this.f7382i.a());
                        int n10 = m10.n() == -1 ? 16 : m10.n();
                        if (m10.b0() != null) {
                            bundle = new Bundle();
                            bundle.putParcelable(f7366J, m10.b0());
                        }
                        n0(n10, bundle, this.f7375F.get());
                    }
                } else if (i10 == 4) {
                    A.r(iInterface);
                    T(iInterface);
                }
            } finally {
            }
        }
    }

    @C0.a
    public void s(@NonNull c cVar) {
        A.s(cVar, "Connection progress callbacks cannot be null.");
        this.f7391r = cVar;
        r0(2, null);
    }

    @C0.a
    @WorkerThread
    public void t(@Nullable r rVar, @NonNull Set<Scope> set) {
        String a10;
        Bundle I10 = I();
        if (Build.VERSION.SDK_INT < 31) {
            a10 = this.f7370A;
        } else if (this.f7371B == null) {
            a10 = this.f7370A;
        } else {
            AttributionSource a11 = this.f7371B.a();
            a10 = a11 == null ? this.f7370A : C2562e.a(a11) == null ? this.f7370A : C2562e.a(a11);
        }
        String str = a10;
        int i10 = this.f7398y;
        int i11 = C2324i.f1242a;
        Scope[] scopeArr = C2578m.f7441p;
        Bundle bundle = new Bundle();
        C2320e[] c2320eArr = C2578m.f7442q;
        C2578m c2578m = new C2578m(6, i10, i11, null, null, scopeArr, bundle, null, c2320eArr, c2320eArr, true, 0, false, str);
        c2578m.f7446e = this.f7383j.getPackageName();
        c2578m.f7449h = I10;
        if (set != null) {
            c2578m.f7448g = (Scope[]) set.toArray(new Scope[0]);
        }
        if (g()) {
            Account B10 = B();
            if (B10 == null) {
                B10 = new Account("<<default account>>", "com.google");
            }
            c2578m.f7450i = B10;
            if (rVar != null) {
                c2578m.f7447f = rVar.asBinder();
            }
        } else if (a()) {
            c2578m.f7450i = B();
        }
        c2578m.f7451j = f7369M;
        c2578m.f7452k = C();
        if (b0()) {
            c2578m.f7455n = true;
        }
        try {
            synchronized (this.f7389p) {
                try {
                    InterfaceC2593u interfaceC2593u = this.f7390q;
                    if (interfaceC2593u != null) {
                        interfaceC2593u.T0(new G0(this, this.f7375F.get()), c2578m);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } finally {
                }
            }
        } catch (DeadObjectException e10) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
            Z(3);
        } catch (RemoteException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            W(8, null, null, this.f7375F.get());
        } catch (SecurityException e12) {
            throw e12;
        } catch (RuntimeException e13) {
            e = e13;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            W(8, null, null, this.f7375F.get());
        }
    }

    @Nullable
    @C0.a
    public final C2320e[] v() {
        N0 n02 = this.f7374E;
        if (n02 == null) {
            return null;
        }
        return n02.f7306c;
    }

    @Nullable
    @C0.a
    public String w() {
        return this.f7381h;
    }

    @C0.a
    public void x() {
        int k10 = this.f7386m.k(this.f7383j, l());
        if (k10 == 0) {
            s(new d());
        } else {
            r0(1, null);
            a0(new d(), k10, null);
        }
    }

    @C0.a
    public final void y() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @Nullable
    @C0.a
    public abstract T z(@NonNull IBinder iBinder);

    /* JADX WARN: Illegal instructions before constructor call */
    @C0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC2564f(@NonNull Context context, @NonNull Looper looper, int i10, @Nullable a aVar, @Nullable b bVar, @Nullable String str) {
        this(context, looper, r3, r4, i10, aVar, bVar, str);
        AbstractC2582o e10 = AbstractC2582o.e(context);
        C2324i i11 = C2324i.i();
        A.r(aVar);
        A.r(bVar);
    }

    @C0.a
    @VisibleForTesting
    public AbstractC2564f(@NonNull Context context, @NonNull Looper looper, @NonNull AbstractC2582o abstractC2582o, @NonNull C2324i c2324i, int i10, @Nullable a aVar, @Nullable b bVar, @Nullable String str) {
        this.f7381h = null;
        this.f7388o = new Object();
        this.f7389p = new Object();
        this.f7393t = new ArrayList();
        this.f7395v = 1;
        this.f7372C = null;
        this.f7373D = false;
        this.f7374E = null;
        this.f7375F = new AtomicInteger(0);
        A.s(context, "Context must not be null");
        this.f7383j = context;
        A.s(looper, "Looper must not be null");
        this.f7384k = looper;
        A.s(abstractC2582o, "Supervisor must not be null");
        this.f7385l = abstractC2582o;
        A.s(c2324i, "API availability must not be null");
        this.f7386m = c2324i;
        this.f7387n = new E0(this, looper);
        this.f7398y = i10;
        this.f7396w = aVar;
        this.f7397x = bVar;
        this.f7399z = str;
    }
}
