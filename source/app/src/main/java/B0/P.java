package B0;

import G0.AbstractBinderC2600x0;
import G0.InterfaceC2602y0;
import T0.C3031a;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

public final class P {

    public static volatile InterfaceC2602y0 f1147e;

    public static Context f1149g;

    public static final N f1143a = new H(L.t("0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bs\u00f9/\u008eQ\u00ed"));

    public static final N f1144b = new I(L.t("0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"));

    public static final N f1145c = new J(L.t("0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"));

    public static final N f1146d = new K(L.t("0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"));

    public static final Object f1148f = new Object();

    public static Z a(String str, L l10, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return h(str, l10, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static Z b(String str, boolean z10, boolean z11, boolean z12) {
        return i(str, z10, false, false, true);
    }

    public static Z c(String str, boolean z10, boolean z11, boolean z12) {
        return i(str, z10, false, false, false);
    }

    public static String d(boolean z10, String str, L l10) throws Exception {
        String str2 = (z10 || !h(str, l10, true, false).f1166a) ? "not allowed" : "debug cert rejected";
        MessageDigest b10 = C3031a.b("SHA-256");
        G0.A.r(b10);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, T0.n.a(b10.digest(l10.l0())), Boolean.valueOf(z10), "12451000.false");
    }

    public static synchronized void e(Context context) {
        synchronized (P.class) {
            if (f1149g != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                f1149g = context.getApplicationContext();
            }
        }
    }

    public static boolean f() {
        boolean z10;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                j();
                z10 = f1147e.T1();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            z10 = false;
        }
        return z10;
    }

    public static boolean g() {
        boolean z10;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                j();
                z10 = f1147e.b();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            z10 = false;
        }
        return z10;
    }

    public static Z h(final String str, final L l10, final boolean z10, boolean z11) {
        try {
            j();
            G0.A.r(f1149g);
            try {
                return f1147e.W1(new V(str, l10, z10, z11), W0.f.l0(f1149g.getPackageManager())) ? Z.b() : new X(new Callable() {
                    @Override
                    public final Object call() {
                        return P.d(z10, str, l10);
                    }
                }, null);
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return Z.d("module call", e10);
            }
        } catch (DynamiteModule.LoadingException e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return Z.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [W0.d, android.os.IBinder] */
    public static Z i(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        Z d10;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            G0.A.r(f1149g);
            try {
                j();
                Q q10 = new Q(str, z10, false, W0.f.l0(f1149g), false, true);
                try {
                    T U12 = z13 ? f1147e.U1(q10) : f1147e.V1(q10);
                    if (U12.t()) {
                        d10 = Z.f(U12.b0());
                    } else {
                        String n10 = U12.n();
                        PackageManager.NameNotFoundException nameNotFoundException = U12.n0() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (n10 == null) {
                            n10 = "error checking package certificate";
                        }
                        d10 = Z.g(U12.b0(), U12.n0(), n10, nameNotFoundException);
                    }
                } catch (RemoteException e10) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                    d10 = Z.d("module call", e10);
                }
            } catch (DynamiteModule.LoadingException e11) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
                d10 = Z.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return d10;
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th2;
        }
    }

    public static void j() throws DynamiteModule.LoadingException {
        if (f1147e != null) {
            return;
        }
        G0.A.r(f1149g);
        synchronized (f1148f) {
            try {
                if (f1147e == null) {
                    f1147e = AbstractBinderC2600x0.k(DynamiteModule.e(f1149g, DynamiteModule.f61441j, "com.google.android.gms.googlecertificates").d("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
