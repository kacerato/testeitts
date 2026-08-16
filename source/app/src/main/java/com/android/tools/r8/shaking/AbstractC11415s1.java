package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C8570nJ;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC11415s1 {

    public static final boolean f57789d = true;

    public final AbstractC11398r1 f57790a;

    public final HashSet f57791b = new HashSet();

    public final Set f57792c = AbstractC5513Ll0.c();

    public AbstractC11415s1(AbstractC11398r1 abstractC11398r1) {
        this.f57790a = abstractC11398r1;
    }

    public C11280k1 a() {
        return null;
    }

    public C11365p1 b() {
        return null;
    }

    public E1 c() {
        return null;
    }

    public H1 d() {
        return null;
    }

    public final AbstractC11415s1 e() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57753b = false;
        abstractC11398r1.j();
        return m();
    }

    public final AbstractC11415s1 f() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57754c = false;
        abstractC11398r1.j();
        return m();
    }

    public AbstractC11415s1 g() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57755d = false;
        abstractC11398r1.j();
        return m();
    }

    public AbstractC11415s1 h() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57756e = false;
        abstractC11398r1.j();
        return m();
    }

    public AbstractC11415s1 i() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57757f = false;
        abstractC11398r1.j();
        return m();
    }

    public final AbstractC11415s1 j() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57758g = false;
        abstractC11398r1.j();
        return m();
    }

    public final boolean k() {
        return this.f57790a.f57759h;
    }

    public final AbstractC11432t1 l() {
        AbstractC11432t1 a10 = this.f57790a.a();
        AbstractC11432t1 abstractC11432t1 = this.f57790a.f57752a;
        if (f57789d) {
            return a10;
        }
        if ((abstractC11432t1.f57831a || !a10.f57831a) && ((abstractC11432t1.f57832b || !a10.f57832b) && ((abstractC11432t1.f57833c || !a10.f57833c) && ((abstractC11432t1.f57834d || !a10.f57834d) && ((abstractC11432t1.f57835e || !a10.f57835e) && ((abstractC11432t1.f57836f || !a10.f57836f) && ((!abstractC11432t1.f57837g || a10.f57837g) && abstractC11432t1.f57838h.a(a10.f57838h) && abstractC11432t1.f57839i.a(a10.f57839i)))))))) {
            return a10;
        }
        throw new AssertionError();
    }

    public abstract AbstractC11415s1 m();

    public final AbstractC11415s1 n() {
        AbstractC11398r1 abstractC11398r1 = this.f57790a;
        abstractC11398r1.f57759h = true;
        abstractC11398r1.j();
        return m();
    }

    public final AbstractC11415s1 o() {
        this.f57790a.i();
        return m();
    }

    public final AbstractC11415s1 a(boolean z10, Consumer consumer) {
        if (z10) {
            consumer.accept(m());
        }
        return m();
    }

    public AbstractC11415s1 a(AbstractC11415s1 abstractC11415s1) {
        AbstractC11398r1 abstractC11398r1 = abstractC11415s1.f57790a;
        a(!abstractC11398r1.f57753b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).e();
            }
        });
        a(!abstractC11398r1.f57754c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).f();
            }
        });
        a(!abstractC11398r1.e(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).g();
            }
        });
        a(!abstractC11398r1.f(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).h();
            }
        });
        a(!abstractC11398r1.g(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).i();
            }
        });
        a(!abstractC11398r1.f57758g, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).j();
            }
        });
        a(abstractC11398r1.f57759h, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).n();
            }
        });
        this.f57790a.f57760i.a(abstractC11398r1.f57760i);
        this.f57790a.f57761j.a(abstractC11398r1.f57761j);
        this.f57791b.addAll(abstractC11415s1.f57791b);
        this.f57792c.addAll(abstractC11415s1.f57792c);
        return m();
    }

    public final void a(C8570nJ c8570nJ) {
        boolean z10 = f57789d;
        if (!z10 && this.f57790a.g()) {
            throw new AssertionError();
        }
        if (!z10 && this.f57791b.isEmpty() && this.f57792c.isEmpty() && c8570nJ.W()) {
            throw new AssertionError();
        }
    }
}
