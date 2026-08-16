package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.IntUnaryOperator;
import java.util.function.Predicate;

public abstract class AbstractC9490sr0 implements InterfaceC8811on0 {

    public static final Predicate f52464g = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            return AbstractC9490sr0.c((C6382aB) obj);
        }
    };

    public static final Predicate f52465h = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            return AbstractC9490sr0.d((C6382aB) obj);
        }
    };

    public static final boolean f52466i = true;

    public int f52467a;

    public final int f52468b;

    public int[] f52469c;

    public ArrayList f52470d = new ArrayList();

    public ArrayList f52471e = new ArrayList();

    public final B60 f52472f;

    public AbstractC9490sr0(final com.android.tools.r8.graph.H5 h52, B60 b60) {
        this.f52467a = 0;
        this.f52472f = b60;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        int i10 = this.f52467a;
        this.f52467a = enumC5477Kw0.c() + i10;
        this.f52468b = i10;
        this.f52469c = X3.a(new int[h52.C().size()], new IntUnaryOperator() {
            @Override
            public final int applyAsInt(int i11) {
                return AbstractC9490sr0.this.a(h52, i11);
            }
        });
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
        this.f52470d = null;
        this.f52471e = null;
        this.f52469c = null;
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
        return this.f52470d.size();
    }

    @Override
    public final int g(int i10) {
        return i10;
    }

    public static boolean d(C6382aB c6382aB) {
        return true;
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
    public final N8 e() {
        return null;
    }

    @Override
    public final int f(int i10) {
        throw new C5417Jv0();
    }

    @Override
    public final B60 g() {
        return this.f52472f;
    }

    public static boolean c(C6382aB c6382aB) {
        return false;
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, int i11, boolean z10) {
    }

    @Override
    public final void b(C6382aB c6382aB) {
        c6382aB.a(0, c6382aB.f46455n.d(), new Uh1());
    }

    @Override
    public final void d() {
        boolean z10 = f52466i;
        if (!z10 && !this.f52470d.isEmpty()) {
            throw new AssertionError();
        }
        C6196Xh c6196Xh = (C6196Xh) this;
        if (c6196Xh.f45797m.f39474c > 1) {
            c6196Xh.h();
        } else {
            c6196Xh.i();
        }
        if (!z10 && this.f52470d.isEmpty()) {
            throw new AssertionError();
        }
    }

    public final int a(com.android.tools.r8.graph.H5 h52, int i10) {
        EnumC5477Kw0 a10 = EnumC5477Kw0.a(h52.b(i10));
        int i11 = this.f52467a;
        this.f52467a = a10.c() + i11;
        return i11;
    }

    @Override
    public final int a(int i10, C6382aB c6382aB) {
        if (((Predicate) this.f52471e.get(i10)).test(c6382aB) || i10 == this.f52470d.size() - 1) {
            return i10;
        }
        return -1;
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, boolean z10) {
        ((Consumer) this.f52470d.get(i10)).accept(c6382aB);
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
