package com.android.tools.r8.internal;

public class C8324ls extends AbstractC7981jp {
    public C8324ls(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final boolean J() {
        return true;
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int u10 = u();
        int i10 = this.f49364g + u10;
        short s10 = this.f49363f;
        c6382aB.f46462u.a(s10, u10 + 3, i10, c6382aB);
    }

    @Override
    public final String t() {
        return "SparseSwitch";
    }

    @Override
    public final int v() {
        return 44;
    }

    @Override
    public final String z() {
        return "sparse-switch";
    }

    public C8324ls(int i10) {
        super(i10);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f49363f;
        return a("v" + ((int) s10) + ", :label_" + (u() + this.f49364g));
    }
}
