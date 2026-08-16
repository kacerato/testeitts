package D0;

import B0.C2318c;
import B0.C2320e;
import G0.AbstractC2564f;
import G0.AbstractC2582o;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

@C0.a
public final class ServiceConnectionC2450j implements C11894a.f, ServiceConnection {

    public static final String f4668n = "j";

    @Nullable
    public final String f4669c;

    @Nullable
    public final String f4670d;

    @Nullable
    public final ComponentName f4671e;

    public final Context f4672f;

    public final InterfaceC2438d f4673g;

    public final Handler f4674h;

    public final InterfaceC2452k f4675i;

    @Nullable
    public IBinder f4676j;

    public boolean f4677k;

    @Nullable
    public String f4678l;

    @Nullable
    public String f4679m;

    @C0.a
    public ServiceConnectionC2450j(@NonNull Context context, @NonNull Looper looper, @NonNull ComponentName componentName, @NonNull InterfaceC2438d interfaceC2438d, @NonNull InterfaceC2452k interfaceC2452k) {
        this(context, looper, null, null, componentName, interfaceC2438d, interfaceC2452k);
    }

    @WorkerThread
    public final void A() {
        if (Thread.currentThread() != this.f4674h.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override
    public final boolean a() {
        return false;
    }

    @Override
    public final boolean b() {
        return false;
    }

    public final void d() {
        this.f4677k = false;
        this.f4676j = null;
        this.f4673g.k(1);
    }

    @Override
    @WorkerThread
    public final void e(@NonNull String str) {
        A();
        this.f4678l = str;
        j();
    }

    @Override
    @WorkerThread
    public final boolean f() {
        A();
        return this.f4677k;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    @Nullable
    public final IBinder h() {
        return null;
    }

    @Override
    @NonNull
    public final Set<Scope> i() {
        return Collections.emptySet();
    }

    @Override
    @WorkerThread
    public final boolean isConnected() {
        A();
        return this.f4676j != null;
    }

    @Override
    @WorkerThread
    public final void j() {
        A();
        String.valueOf(this.f4676j);
        try {
            this.f4672f.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f4677k = false;
        this.f4676j = null;
    }

    @Override
    public final void k(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Override
    public final int l() {
        return 0;
    }

    @Override
    @NonNull
    public final Intent m() {
        return new Intent();
    }

    @Override
    @NonNull
    public final String n() {
        String str = this.f4669c;
        if (str != null) {
            return str;
        }
        G0.A.r(this.f4671e);
        return this.f4671e.getPackageName();
    }

    @Override
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull final IBinder iBinder) {
        this.f4674h.post(new Runnable() {
            @Override
            public final void run() {
                ServiceConnectionC2450j.this.y(iBinder);
            }
        });
    }

    @Override
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.f4674h.post(new Runnable() {
            @Override
            public final void run() {
                ServiceConnectionC2450j.this.d();
            }
        });
    }

    @Override
    @NonNull
    public final C2320e[] p() {
        return new C2320e[0];
    }

    @Override
    public final boolean q() {
        return false;
    }

    @Override
    public final void r(@NonNull AbstractC2564f.e eVar) {
    }

    @Override
    @WorkerThread
    public final void s(@NonNull AbstractC2564f.c cVar) {
        A();
        String.valueOf(this.f4676j);
        if (isConnected()) {
            try {
                e("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f4671e;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f4669c).setAction(this.f4670d);
            }
            boolean bindService = this.f4672f.bindService(intent, this, AbstractC2582o.d());
            this.f4677k = bindService;
            if (!bindService) {
                this.f4676j = null;
                this.f4675i.t(new C2318c(16));
            }
            String.valueOf(this.f4676j);
        } catch (SecurityException e10) {
            this.f4677k = false;
            this.f4676j = null;
            throw e10;
        }
    }

    @Override
    public final void t(@Nullable G0.r rVar, @Nullable Set<Scope> set) {
    }

    @Override
    @NonNull
    public final C2320e[] v() {
        return new C2320e[0];
    }

    @Override
    @Nullable
    public final String w() {
        return this.f4678l;
    }

    @Nullable
    @C0.a
    @WorkerThread
    public IBinder x() {
        A();
        return this.f4676j;
    }

    public final void y(IBinder iBinder) {
        this.f4677k = false;
        this.f4676j = iBinder;
        String.valueOf(iBinder);
        this.f4673g.h(new Bundle());
    }

    public final void z(@Nullable String str) {
        this.f4679m = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r6 != null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ServiceConnectionC2450j(Context context, Looper looper, @Nullable String str, @Nullable String str2, @Nullable ComponentName componentName, InterfaceC2438d interfaceC2438d, InterfaceC2452k interfaceC2452k) {
        this.f4677k = false;
        this.f4678l = null;
        this.f4672f = context;
        this.f4674h = new g1.u(looper);
        this.f4673g = interfaceC2438d;
        this.f4675i = interfaceC2452k;
        if (str != null && str2 != null) {
            if (componentName == null) {
                componentName = null;
                this.f4669c = str;
                this.f4670d = str2;
                this.f4671e = componentName;
                return;
            }
            throw new AssertionError((Object) "Must specify either package or component, but not both");
        }
    }

    @C0.a
    public ServiceConnectionC2450j(@NonNull Context context, @NonNull Looper looper, @NonNull String str, @NonNull String str2, @NonNull InterfaceC2438d interfaceC2438d, @NonNull InterfaceC2452k interfaceC2452k) {
        this(context, looper, str, str2, null, interfaceC2438d, interfaceC2452k);
    }
}
