package com.google.android.gms.common.api.internal;

import B0.C2318c;
import D0.J0;
import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import java.util.Iterator;
import java.util.Set;

public final class n implements r {

    public final s f61184a;

    public boolean f61185b = false;

    public n(s sVar) {
        this.f61184a = sVar;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
        if (this.f61185b) {
            this.f61185b = false;
            this.f61184a.u(new D0.A(this, this));
        }
    }

    @Override
    public final void c(C2318c c2318c, C11894a c11894a, boolean z10) {
    }

    @Override
    public final void d(int i10) {
        this.f61184a.t(null);
        this.f61184a.f61246s.a(i10, this.f61185b);
    }

    @Override
    public final C11904b.a e(C11904b.a aVar) {
        g(aVar);
        return aVar;
    }

    @Override
    public final boolean f() {
        if (this.f61185b) {
            return false;
        }
        Set set = this.f61184a.f61245r.f61231z;
        if (set == null || set.isEmpty()) {
            this.f61184a.t(null);
            return true;
        }
        this.f61185b = true;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((J0) it.next()).k();
        }
        return false;
    }

    @Override
    public final C11904b.a g(C11904b.a aVar) {
        try {
            this.f61184a.f61245r.f61208A.a(aVar);
            q qVar = this.f61184a.f61245r;
            C11894a.f fVar = (C11894a.f) qVar.f61223r.get(aVar.y());
            G0.A.s(fVar, "Appropriate Api was not requested.");
            if (fVar.isConnected() || !this.f61184a.f61238k.containsKey(aVar.y())) {
                aVar.A(fVar);
            } else {
                aVar.b(new Status(17));
            }
        } catch (DeadObjectException unused) {
            this.f61184a.u(new m(this, this));
        }
        return aVar;
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
    }

    public final void j() {
        if (this.f61185b) {
            this.f61185b = false;
            this.f61184a.f61245r.f61208A.b();
            f();
        }
    }
}
