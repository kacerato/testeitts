package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import java.util.function.ToIntFunction;

public abstract class AbstractC6153Wo<T extends AbstractC4406d4> extends AbstractC9811un {

    public static final boolean f45539h = true;

    public final short f45540f;

    public T f45541g;

    public AbstractC6153Wo(int i10, InterfaceC10042w8 interfaceC10042w8, AbstractC4406d4[] abstractC4406d4Arr) {
        super(interfaceC10042w8);
        this.f45540f = (short) i10;
        this.f45541g = (T) abstractC4406d4Arr[AbstractC5635Np.a(interfaceC10042w8)];
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC6153Wo<T>) abstractC5635Np, (InterfaceC5638Nq0<AbstractC6153Wo<T>>) new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                AbstractC6153Wo.this.b(abstractC5754Pq0);
            }
        });
    }

    public abstract void a(AbstractC5754Pq0 abstractC5754Pq0);

    public final void b(AbstractC5754Pq0 abstractC5754Pq0) {
        AbstractC5754Pq0 a10 = abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC6153Wo) obj).f45540f;
                return i10;
            }
        });
        C9522t11 c9522t11 = new C9522t11(this);
        a10.getClass();
        c9522t11.a(a10);
    }

    @Override
    public final int hashCode() {
        return ((this.f45541g.hashCode() << 8) | this.f45540f) ^ getClass().hashCode();
    }

    @Override
    public String a(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return a("v" + ((int) s10) + ", " + this.f45541g.i0());
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.f52553a.a((int) this.f45540f);
        new C9522t11(this).a(new C9380sA(this, c9547tA));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC6153Wo(int i10, AbstractC4406d4 abstractC4406d4) {
        if (!f45539h && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        this.f45540f = (short) i10;
        this.f45541g = abstractC4406d4;
    }

    @Override
    public String b(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return b("v" + ((int) s10) + ", " + c9970vk0.a(this.f45541g));
    }
}
