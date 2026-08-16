package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC9530t40;
import java.util.function.Consumer;

public abstract class D3 extends J4<C4460g1, C4554l1> {

    public static final boolean f36221a = true;

    public static abstract class a<T extends E0> extends D3 implements Z5 {

        public static final boolean f36222e = true;

        public final E0 f36223b;

        public final E0 f36224c;

        public final C4460g1 f36225d;

        public a(E0 e02, E0 e03, C4460g1 c4460g1) {
            if (!f36222e && e03.f36245e != c4460g1.B0()) {
                throw new AssertionError();
            }
            this.f36223b = e02;
            this.f36224c = e03;
            this.f36225d = c4460g1;
        }

        @Override
        public final E0 a() {
            return this.f36223b;
        }

        @Override
        public final AbstractC4479h1 b() {
            return this.f36225d;
        }

        @Override
        public final G0 c() {
            return F0.a(this.f36224c, this.f36225d);
        }

        @Override
        public T d() {
            return (T) this.f36224c;
        }

        @Override
        public final Z5 g() {
            return this;
        }

        @Override
        public final boolean j() {
            return true;
        }

        @Override
        public final a l() {
            return this;
        }

        @Override
        public final a g() {
            return this;
        }

        @Override
        public final F0 p() {
            return F0.a(this.f36224c, this.f36225d);
        }

        @Override
        public final C4460g1 q() {
            return this.f36225d;
        }

        @Override
        public final boolean v() {
            return true;
        }

        @Override
        public final boolean y() {
            return true;
        }

        @Override
        public final AbstractC9530t40 a(D5 d52, C4798y c4798y, C4514j c4514j) {
            return AbstractC4420e.a(F0.a(this.f36224c, this.f36225d), this.f36223b, d52, c4798y, c4514j);
        }
    }

    public static void a(AbstractC4783x3 abstractC4783x3) {
    }

    public abstract void a(Consumer consumer, Consumer consumer2, Consumer consumer3);

    public final void b(Consumer consumer) {
        a(consumer, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                D3.a((AbstractC4783x3) obj);
            }
        });
    }

    @Override
    public final D3 e() {
        return this;
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    public boolean j() {
        return false;
    }

    public C3 k() {
        return null;
    }

    public a<?> l() {
        return null;
    }

    public F3 m() {
        return null;
    }

    @Override
    public a g() {
        return null;
    }

    public F5 o() {
        return null;
    }

    public F0 p() {
        return null;
    }

    public C4460g1 q() {
        return null;
    }

    public F5 r() {
        return null;
    }

    public boolean s() {
        return false;
    }

    public boolean t() {
        return false;
    }

    public boolean u() {
        return false;
    }

    public boolean v() {
        return false;
    }

    public boolean w() {
        return false;
    }

    public boolean x() {
        return false;
    }

    public boolean y() {
        return false;
    }

    public final void a(Consumer<D3> consumer) {
        a(consumer, consumer, consumer);
    }

    public static a a(E0 e02, E0 e03, C4460g1 c4460g1) {
        if (e03.f0()) {
            return new E3(e02, e03.G(), c4460g1);
        }
        if (e03 instanceof I0) {
            return new C3(e02, e03.k(), c4460g1);
        }
        if (f36221a || e03.e0()) {
            return new F3(e02, e03.d0(), c4460g1);
        }
        throw new AssertionError();
    }
}
