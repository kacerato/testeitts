package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2324i;
import D0.InterfaceC2451j0;
import D0.InterfaceC2460o;
import D0.V;
import D0.W;
import D0.Y0;
import D0.Z0;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.C11904b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import sm.InterfaceC15358c;

public final class s implements x, Z0 {

    public final Lock f61232e;

    public final Condition f61233f;

    public final Context f61234g;

    public final C2324i f61235h;

    public final W f61236i;

    public final Map f61237j;

    @Nullable
    public final C2570i f61239l;

    public final Map f61240m;

    @Nullable
    public final C11894a.AbstractC0948a f61241n;

    @InterfaceC15358c
    public volatile r f61242o;

    public int f61244q;

    public final q f61245r;

    public final InterfaceC2451j0 f61246s;

    public final Map f61238k = new HashMap();

    @Nullable
    public C2318c f61243p = null;

    /* JADX WARN: Multi-variable type inference failed */
    public s(Context context, q qVar, Lock lock, Looper looper, C2324i c2324i, Map map, @Nullable C2570i c2570i, Map map2, @Nullable C11894a.AbstractC0948a abstractC0948a, ArrayList arrayList, InterfaceC2451j0 interfaceC2451j0) {
        this.f61234g = context;
        this.f61232e = lock;
        this.f61235h = c2324i;
        this.f61237j = map;
        this.f61239l = c2570i;
        this.f61240m = map2;
        this.f61241n = abstractC0948a;
        this.f61245r = qVar;
        this.f61246s = interfaceC2451j0;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((Y0) arrayList.get(i10)).a(this);
        }
        this.f61236i = new W(this, looper);
        this.f61233f = lock.newCondition();
        this.f61242o = new p(this);
    }

    public final void c() {
        this.f61232e.lock();
        try {
            this.f61245r.R();
            this.f61242o = new n(this);
            this.f61242o.a();
            this.f61233f.signalAll();
        } finally {
            this.f61232e.unlock();
        }
    }

    @Override
    @J2.a("lock")
    public final C2318c d() {
        i();
        while (this.f61242o instanceof o) {
            try {
                this.f61233f.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new C2318c(15, null);
            }
        }
        if (this.f61242o instanceof n) {
            return C2318c.f1201E;
        }
        C2318c c2318c = this.f61243p;
        return c2318c != null ? c2318c : new C2318c(13, null);
    }

    @Override
    @J2.a("lock")
    public final C11904b.a e(@NonNull C11904b.a aVar) {
        aVar.s();
        this.f61242o.e(aVar);
        return aVar;
    }

    @Override
    @J2.a("lock")
    public final C11904b.a f(@NonNull C11904b.a aVar) {
        aVar.s();
        return this.f61242o.g(aVar);
    }

    @Override
    public final boolean g(InterfaceC2460o interfaceC2460o) {
        return false;
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
        this.f61232e.lock();
        try {
            this.f61242o.h(bundle);
        } finally {
            this.f61232e.unlock();
        }
    }

    @Override
    @J2.a("lock")
    public final void i() {
        this.f61242o.b();
    }

    @Override
    @J2.a("lock")
    public final void j() {
        if (this.f61242o instanceof n) {
            ((n) this.f61242o).j();
        }
    }

    @Override
    public final void k(int i10) {
        this.f61232e.lock();
        try {
            this.f61242o.d(i10);
        } finally {
            this.f61232e.unlock();
        }
    }

    @Override
    public final void l() {
    }

    @Override
    public final void l0(@NonNull C2318c c2318c, @NonNull C11894a c11894a, boolean z10) {
        this.f61232e.lock();
        try {
            this.f61242o.c(c2318c, c11894a, z10);
        } finally {
            this.f61232e.unlock();
        }
    }

    @Override
    @J2.a("lock")
    public final void m() {
        if (this.f61242o.f()) {
            this.f61238k.clear();
        }
    }

    @Override
    public final void n(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("mState=").println(this.f61242o);
        for (C11894a c11894a : this.f61240m.o()) {
            String valueOf = String.valueOf(str);
            printWriter.append((CharSequence) str).append((CharSequence) c11894a.d()).println(b3.s.f32937c);
            ((C11894a.f) G0.A.r((C11894a.f) this.f61237j.get(c11894a.b()))).k(valueOf.concat(GlideException.a.f59088e), fileDescriptor, printWriter, strArr);
        }
    }

    @Override
    @Nullable
    @J2.a("lock")
    public final C2318c o(@NonNull C11894a c11894a) {
        Map map = this.f61237j;
        C11894a.c b10 = c11894a.b();
        if (!map.containsKey(b10)) {
            return null;
        }
        if (((C11894a.f) this.f61237j.get(b10)).isConnected()) {
            return C2318c.f1201E;
        }
        if (this.f61238k.containsKey(b10)) {
            return (C2318c) this.f61238k.get(b10);
        }
        return null;
    }

    @Override
    public final boolean p() {
        return this.f61242o instanceof o;
    }

    @Override
    @J2.a("lock")
    public final C2318c q(long j10, TimeUnit timeUnit) {
        i();
        long nanos = timeUnit.toNanos(j10);
        while (this.f61242o instanceof o) {
            if (nanos <= 0) {
                m();
                return new C2318c(14, null);
            }
            try {
                nanos = this.f61233f.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new C2318c(15, null);
            }
            Thread.currentThread().interrupt();
            return new C2318c(15, null);
        }
        if (this.f61242o instanceof n) {
            return C2318c.f1201E;
        }
        C2318c c2318c = this.f61243p;
        return c2318c != null ? c2318c : new C2318c(13, null);
    }

    @Override
    public final boolean r() {
        return this.f61242o instanceof n;
    }

    public final void s() {
        this.f61232e.lock();
        try {
            this.f61242o = new o(this, this.f61239l, this.f61240m, this.f61235h, this.f61241n, this.f61232e, this.f61234g);
            this.f61242o.a();
            this.f61233f.signalAll();
        } finally {
            this.f61232e.unlock();
        }
    }

    public final void t(@Nullable C2318c c2318c) {
        this.f61232e.lock();
        try {
            this.f61243p = c2318c;
            this.f61242o = new p(this);
            this.f61242o.a();
            this.f61233f.signalAll();
        } finally {
            this.f61232e.unlock();
        }
    }

    public final void u(V v10) {
        W w10 = this.f61236i;
        w10.sendMessage(w10.obtainMessage(1, v10));
    }

    public final void v(RuntimeException runtimeException) {
        W w10 = this.f61236i;
        w10.sendMessage(w10.obtainMessage(2, runtimeException));
    }
}
