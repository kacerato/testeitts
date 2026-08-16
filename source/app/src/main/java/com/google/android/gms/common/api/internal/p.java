package com.google.android.gms.common.api.internal;

import B0.C2318c;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.internal.C11904b;
import java.util.Collections;
import java.util.Iterator;
import sm.InterfaceC15358c;

public final class p implements r {

    @InterfaceC15358c
    public final s f61207a;

    public p(s sVar) {
        this.f61207a = sVar;
    }

    @Override
    public final void a() {
        Iterator it = this.f61207a.f61237j.values().iterator();
        while (it.hasNext()) {
            ((C11894a.f) it.next()).j();
        }
        this.f61207a.f61245r.f61224s = Collections.emptySet();
    }

    @Override
    public final void b() {
        this.f61207a.s();
    }

    @Override
    public final void c(C2318c c2318c, C11894a c11894a, boolean z10) {
    }

    @Override
    public final void d(int i10) {
    }

    @Override
    public final C11904b.a e(C11904b.a aVar) {
        this.f61207a.f61245r.f61216k.add(aVar);
        return aVar;
    }

    @Override
    public final boolean f() {
        return true;
    }

    @Override
    public final C11904b.a g(C11904b.a aVar) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
    }
}
