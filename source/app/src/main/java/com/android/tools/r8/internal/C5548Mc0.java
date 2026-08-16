package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5548Mc0 extends AbstractC7515h {

    public final C6012Uc0 f42329b;

    public C5548Mc0(C6012Uc0 c6012Uc0) {
        this.f42329b = c6012Uc0;
    }

    @Override
    public final boolean b(boolean z10) {
        C6012Uc0 c6012Uc0 = this.f42329b;
        boolean[] zArr = c6012Uc0.f44801c;
        Object[] objArr = c6012Uc0.f44800b;
        if (c6012Uc0.f44803e && zArr[c6012Uc0.f44804f] == z10) {
            return true;
        }
        int i10 = c6012Uc0.f44804f;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (objArr[i11] != null && zArr[i11] == z10) {
                return true;
            }
            i10 = i11;
        }
    }

    @Override
    public final void clear() {
        this.f42329b.clear();
    }

    @Override
    public final InterfaceC6370a7 iterator() {
        return new C5954Tc0(this.f42329b);
    }

    @Override
    public final int size() {
        return this.f42329b.f44806h;
    }

    @Override
    public final Iterator iterator() {
        return new C5954Tc0(this.f42329b);
    }
}
