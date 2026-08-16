package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4324y;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C4866Ah;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.InterfaceC7166ev;

public final class S2 extends R2 {

    public final C4866Ah f36793d;

    public S2(C4866Ah c4866Ah) {
        this.f36793d = c4866Ah;
    }

    @Override
    public final R2 E() {
        return this;
    }

    @Override
    public final Object F0() {
        throw new C5417Jv0("No boxed value for DexValueConstDynamic");
    }

    @Override
    public final V2 G0() {
        return V2.f36902u;
    }

    @Override
    public final void V0() {
    }

    @Override
    public final M2 a(C4724u1 c4724u1) {
        return null;
    }

    @Override
    public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
        return this.f36793d.a(r22.r0().f36793d, abstractC8953pf);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        this.f36793d.a(abstractC9213rA);
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof S2)) {
            return false;
        }
        C4866Ah c4866Ah = ((S2) obj).f36793d;
        C4866Ah c4866Ah2 = this.f36793d;
        c4866Ah.getClass();
        return InterfaceC7166ev.a(c4866Ah, c4866Ah2);
    }

    @Override
    public final int hashCode() {
        return this.f36793d.hashCode() * 7;
    }

    @Override
    public final Object k0() {
        throw new C5417Jv0("No ASM conversion for DexValueConstDynamic");
    }

    @Override
    public final S2 r0() {
        return this;
    }

    @Override
    public final String toString() {
        return "Item " + ((Object) V2.f36902u) + " " + ((Object) this.f36793d);
    }

    @Override
    public final int a(R2 r22, AbstractC8953pf abstractC8953pf) {
        return a(r22, abstractC8953pf);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        throw new C5325If("DexValueConstDynamic should be desugared");
    }

    @Override
    public final void a(C4324y c4324y, C4766w5 c4766w5) {
        throw new C5325If("DexValueConstDynamic should be desugared");
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        return C10504yv0.f54195b;
    }
}
