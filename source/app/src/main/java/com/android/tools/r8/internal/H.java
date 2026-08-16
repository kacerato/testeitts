package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;

public abstract class H {

    public final int f40639a;

    public List f40640b;

    public List f40641c;

    public H f40642d;

    public H f40643e;

    public int f40644f = -1;

    public H(int i10) {
        this.f40639a = i10;
    }

    public abstract int a();

    public final H a(H h10) {
        if (h10.f40640b != null) {
            this.f40640b = new ArrayList();
            int size = h10.f40640b.size();
            for (int i10 = 0; i10 < size; i10++) {
                C8498mu0 c8498mu0 = (C8498mu0) h10.f40640b.get(i10);
                C8498mu0 c8498mu02 = new C8498mu0(c8498mu0.f50454d, c8498mu0.f50455e, c8498mu0.f41273b);
                c8498mu0.a(c8498mu02);
                this.f40640b.add(c8498mu02);
            }
        }
        if (h10.f40641c != null) {
            this.f40641c = new ArrayList();
            int size2 = h10.f40641c.size();
            for (int i11 = 0; i11 < size2; i11++) {
                C8498mu0 c8498mu03 = (C8498mu0) h10.f40641c.get(i11);
                C8498mu0 c8498mu04 = new C8498mu0(c8498mu03.f50454d, c8498mu03.f50455e, c8498mu03.f41273b);
                c8498mu03.a(c8498mu04);
                this.f40641c.add(c8498mu04);
            }
        }
        return this;
    }

    public abstract H a(NK nk2);

    public abstract void a(DX dx);

    public final void b(DX dx) {
        List list = this.f40640b;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                C8498mu0 c8498mu0 = (C8498mu0) this.f40640b.get(i10);
                c8498mu0.a(dx.a(c8498mu0.f50454d, c8498mu0.f50455e, c8498mu0.f41273b, true));
            }
        }
        List list2 = this.f40641c;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                C8498mu0 c8498mu02 = (C8498mu0) this.f40641c.get(i11);
                c8498mu02.a(dx.a(c8498mu02.f50454d, c8498mu02.f50455e, c8498mu02.f41273b, false));
            }
        }
    }
}
