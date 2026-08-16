package com.android.tools.r8.internal;

public abstract class AbstractC7431gX extends AbstractC6931dX {

    public AbstractC8374m80 f48274a;

    public C7873j80 f48275b;

    public AbstractC7431gX() {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f48275b = new C7873j80();
    }

    @Override
    public boolean a(com.android.tools.r8.graph.H5 h52) {
        AbstractC8374m80 abstractC8374m80 = this.f48274a;
        return abstractC8374m80 != null && abstractC8374m80.f45165b.containsKey(h52.getReference());
    }

    @Override
    public void b(com.android.tools.r8.graph.H5 h52) {
        this.f48275b.add((C7873j80) h52);
    }

    @Override
    public E8 c() {
        return D8.f39452a;
    }

    public final void g() {
        if (this.f48275b.f45165b.isEmpty()) {
            this.f48274a = AbstractC8374m80.f50207d;
            return;
        }
        this.f48274a = this.f48275b;
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f48275b = new C7873j80();
    }
}
