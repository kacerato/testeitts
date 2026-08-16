package r1;

import B0.C2324i;
import B0.C2326k;
import G0.A;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.dynamite.DynamiteModule;
import h1.w;
import h1.x;
import h1.z;
import java.lang.reflect.Method;

public class C15144a {

    @NonNull
    public static final String f108541a = "GmsCore_OpenSSL";

    public static final C2324i f108542b = C2324i.i();

    public static final Object f108543c = new Object();

    @Nullable
    @GuardedBy("ProviderInstaller.lock")
    public static Method f108544d = null;

    @GuardedBy("ProviderInstaller.lock")
    public static boolean f108545e = false;

    public interface InterfaceC1973a {
        void a(int i10, @Nullable Intent intent);

        void b();
    }

    public static void a(@NonNull Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Context context2;
        A.s(context, "Context must not be null");
        f108542b.p(context, 11925000);
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (f108543c) {
            Context context3 = null;
            if (!f108545e) {
                try {
                    context2 = DynamiteModule.e(context, DynamiteModule.f61441j, "com.google.android.gms.providerinstaller.dynamite").b();
                } catch (DynamiteModule.LoadingException e10) {
                    Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e10.getMessage())));
                    context2 = null;
                }
                if (context2 != null) {
                    d(context2, context, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                    return;
                }
            }
            boolean z10 = f108545e;
            Context i10 = C2326k.i(context);
            if (i10 != null) {
                f108545e = true;
                if (!z10) {
                    try {
                        z.b("com.google.android.gms.common.security.ProviderInstallerImpl", "reportRequestStats2", i10.getClassLoader(), x.a(Context.class, context), w.d(uptimeMillis), w.d(SystemClock.uptimeMillis()));
                    } catch (Exception e11) {
                        Log.w("ProviderInstaller", "Failed to report request stats: ".concat(e11.toString()));
                    }
                }
                context3 = i10;
            }
            if (context3 != null) {
                d(context3, context, "com.google.android.gms.common.security.ProviderInstallerImpl");
            } else {
                Log.e("ProviderInstaller", "Failed to get remote context");
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void b(@NonNull Context context, @NonNull InterfaceC1973a interfaceC1973a) {
        A.s(context, "Context must not be null");
        A.s(interfaceC1973a, "Listener must not be null");
        A.k("Must be called on the UI thread");
        new b(context, interfaceC1973a).execute(new Void[0]);
    }

    @GuardedBy("ProviderInstaller.lock")
    public static void d(Context context, Context context2, String str) throws GooglePlayServicesNotAvailableException {
        try {
            if (f108544d == null) {
                f108544d = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f108544d.invoke(null, context);
        } catch (Exception e10) {
            Throwable cause = e10.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(cause == null ? e10.toString() : cause.toString())));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
