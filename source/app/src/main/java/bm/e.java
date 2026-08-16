package bm;

import am.AbstractC3681e;
import am.C3678b;

public abstract class e extends i {
    public e(int i10, int i11, int i12, int i13, int i14) {
        super(i10, i11, i12, i13, i14);
    }

    @Override
    public AbstractC3681e a() {
        return new C3678b(this);
    }

    @Override
    public int o() {
        return q() + p();
    }

    @Override
    public int r() {
        return q() + p();
    }

    public int u() {
        return (n() / 8) - 2;
    }
}
