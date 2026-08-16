package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;

public final class C6865d50 implements InterfaceC8811on0 {

    public static final boolean f47273f = true;

    public final W40 f47274a;

    public final com.android.tools.r8.graph.A2 f47275b;

    public int f47276c;

    public int f47277d = 0;

    public final C7198f50 f47278e;

    public C6865d50(C7198f50 c7198f50, W40 w40, com.android.tools.r8.graph.A2 a22) {
        this.f47278e = c7198f50;
        this.f47274a = w40;
        this.f47275b = a22;
    }

    @Override
    public final C4515j0 a(int i10, int i11) {
        return null;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final int c(int i10) {
        return i10;
    }

    @Override
    public final void clear() {
    }

    @Override
    public final C4515j0 d(int i10) {
        return null;
    }

    @Override
    public final C4515j0 e(int i10) {
        return null;
    }

    @Override
    public final int f() {
        return this.f47274a.f45283d.size() + 1;
    }

    @Override
    public final int g(int i10) {
        return i10;
    }

    @Override
    public final void a(C6382aB c6382aB) {
    }

    @Override
    public final boolean b(int i10) {
        return true;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final void d() {
    }

    @Override
    public final N8 e() {
        return null;
    }

    @Override
    public final int f(int i10) {
        throw new C5417Jv0();
    }

    @Override
    public final B60 g() {
        com.android.tools.r8.graph.A2 a22 = this.f47275b;
        boolean z10 = A60.f38532i;
        C10538z60 c10538z60 = new C10538z60();
        c10538z60.f54285h = a22;
        C10538z60 c10538z602 = (C10538z60) ((C10538z60) c10538z60.a(this.f47276c)).a(this.f47275b);
        c10538z602.f38816e = true;
        boolean z11 = C10538z60.f54284i;
        return new A60(c10538z602.f38812a, c10538z602.f38813b, c10538z602.f38814c, c10538z602.f38815d, c10538z602.f54285h);
    }

    @Override
    public final int a(int i10, C6382aB c6382aB) {
        if (i10 == this.f47274a.f45283d.size()) {
            return i10;
        }
        return -1;
    }

    @Override
    public final void b(C6382aB c6382aB) {
        if (!f47273f && !c6382aB.f46459r.c()) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < this.f47274a.f45281b.size(); i10++) {
            if (((com.android.tools.r8.graph.M2) this.f47274a.f45281b.get(i10)).F0()) {
                C8024k3 c8024k3 = new C8024k3(c6382aB.a(i10, AbstractC8999pu0.k(), 1, c6382aB.c() ? c6382aB.f46462u.d(i10) : null), c6382aB.f46451j.f45293f.size(), true);
                if (c6382aB.f46461t == null) {
                    c6382aB.f46461t = new ArrayList();
                }
                c6382aB.a(c6382aB.f46462u.g(), c8024k3);
                c6382aB.f46461t.add(c8024k3.d());
            } else {
                c6382aB.a(i10, AbstractC8999pu0.a((com.android.tools.r8.graph.M2) this.f47274a.f45281b.get(i10), C8854p10.h(), (C4798y<?>) this.f47278e.f47856d));
            }
        }
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, int i11, boolean z10) {
        throw new C5417Jv0("Outliner does not support control flow");
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, boolean z10) {
        if (i10 == this.f47274a.f45283d.size()) {
            if (this.f47274a.f45284e.S0()) {
                c6382aB.a();
                return;
            } else {
                c6382aB.d(this.f47274a.f45281b.size());
                return;
            }
        }
        this.f47276c = i10;
        this.f47277d = ((Z40) this.f47274a.f45283d.get(i10)).a(c6382aB, this.f47274a, this.f47277d);
    }

    @Override
    public final void a(int i10, int i11, int i12, C6382aB c6382aB) {
        throw new C5417Jv0("Unexpected call to resolveAndBuildSwitch");
    }

    @Override
    public final void a(int i10, int i11, C6382aB c6382aB) {
        throw new C5417Jv0("Unexpected call to resolveAndBuildNewArrayFilledData");
    }

    @Override
    public final B60 a(int i10) {
        boolean z10 = B60.f38806g;
        return B60.c.f38822h;
    }
}
