package com.android.tools.r8.graph;

import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.B60;

public class C4346a1 implements V0 {

    public static final boolean f37035f = true;

    public int f37036a = 0;

    public int f37037b;

    public A2 f37038c;

    public boolean f37039d;

    public B60 f37040e;

    public C4346a1(int i10, A2 a22, boolean z10) {
        this.f37037b = i10;
        this.f37038c = a22;
        this.f37039d = z10;
    }

    @Override
    public void a(O0.c cVar) {
    }

    public int b() {
        return this.f37036a;
    }

    public final B60 c() {
        B60 b60 = this.f37040e;
        if (b60 != null) {
            return b60.b().a(a()).a();
        }
        B60.a a10 = (a() > 0 ? B60.b.t() : B60.c.t()).a(a()).a(this.f37038c);
        a10.f38816e = this.f37039d;
        return a10.c().a();
    }

    @Override
    public void a(O0.d dVar) {
    }

    @Override
    public void a(P0 p02) {
    }

    @Override
    public void a(Q0 q02) {
    }

    @Override
    public void a(R0 r02) {
    }

    @Override
    public void a(T0 t02) {
    }

    @Override
    public final void a(O0.a aVar) {
        if (!f37035f && aVar.f36663d < 0) {
            throw new AssertionError();
        }
        this.f37036a += aVar.f36663d;
    }

    @Override
    public final void a(N0 n02) {
        this.f37037b += n02.f36628d;
    }

    @Override
    public void a(S0 s02) {
        if (!f37035f && s02.f36791d == null) {
            throw new AssertionError();
        }
        B60 b60 = s02.f36791d;
        this.f37038c = b60.f38808c;
        this.f37039d = b60.f38811f;
        this.f37040e = b60;
    }

    @Override
    public void a(O0.b bVar) {
        if (!f37035f && bVar.q0() < 0) {
            throw new AssertionError();
        }
        this.f37036a = bVar.q0() + this.f37036a;
        this.f37037b = bVar.p0() + this.f37037b;
    }

    public int a() {
        return this.f37037b;
    }
}
