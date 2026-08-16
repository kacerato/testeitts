package com.android.tools.r8.graph;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;

public abstract class G0<D extends AbstractC4479h1<D, R>, R extends AbstractC4744v2<D, R>> implements InterfaceC4610o0 {

    public static final boolean f36316d = true;

    public final E0 f36317b;

    public final AbstractC4479h1 f36318c;

    public G0() {
        this.f36317b = null;
        this.f36318c = null;
    }

    @Override
    public final M2 S() {
        return p();
    }

    @Override
    public E0 a() {
        return getHolder();
    }

    public final boolean equals(Object obj) {
        throw new C5417Jv0("Unsupported attempt at comparing Class and DexClassAndMember");
    }

    public E0 getHolder() {
        return this.f36317b;
    }

    @Override
    public final Origin getOrigin() {
        return this.f36317b.f36244d;
    }

    public final int hashCode() {
        throw new C5417Jv0("Unsupported attempt at computing the hash code of DexClassAndMember");
    }

    public M2 p() {
        return this.f36317b.f36245e;
    }

    @Override
    public R getReference() {
        return (R) this.f36318c.getReference();
    }

    public String r() {
        return getReference().j0();
    }

    public String toString() {
        return r();
    }

    @Override
    public D d() {
        return (D) this.f36318c;
    }

    public G0(E0 e02, AbstractC4479h1 abstractC4479h1) {
        boolean z10 = f36316d;
        if (!z10 && e02 == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC4479h1 == null) {
            throw new AssertionError();
        }
        if (!z10 && e02.f36245e != abstractC4479h1.B0()) {
            throw new AssertionError();
        }
        this.f36317b = e02;
        this.f36318c = abstractC4479h1;
    }
}
