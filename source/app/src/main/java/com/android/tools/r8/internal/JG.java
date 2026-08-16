package com.android.tools.r8.internal;

public final class JG extends OG implements G30 {

    public MG f41364g;

    public final QG f41365h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JG(QG qg2) {
        super(qg2);
        this.f41365h = qg2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        MG mg2 = new MG(this.f41365h, b());
        this.f41364g = mg2;
        return mg2;
    }

    @Override
    public final Object previous() {
        MG mg2 = new MG(this.f41365h, d());
        this.f41364g = mg2;
        return mg2;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f41364g.f42258b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
