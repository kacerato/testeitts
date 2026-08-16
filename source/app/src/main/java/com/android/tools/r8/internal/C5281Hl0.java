package com.android.tools.r8.internal;

import java.util.BitSet;

public final class C5281Hl0 extends AbstractC7015e0 {

    public final BitSet f40864d;

    public final C5339Il0 f40865e;

    public C5281Hl0(C5339Il0 c5339Il0) {
        this.f40865e = c5339Il0;
        this.f40864d = new BitSet(c5339Il0.f41203c.size());
    }

    @Override
    public final Object a() {
        if (this.f40864d.isEmpty()) {
            this.f40864d.set(0, this.f40865e.f41202b);
        } else {
            int nextSetBit = this.f40864d.nextSetBit(0);
            int nextClearBit = this.f40864d.nextClearBit(nextSetBit);
            if (nextClearBit == this.f40865e.f41203c.size()) {
                this.f47569b = 3;
                return null;
            }
            int i10 = (nextClearBit - nextSetBit) - 1;
            this.f40864d.set(0, i10);
            this.f40864d.clear(i10, nextClearBit);
            this.f40864d.set(nextClearBit);
        }
        return new C5223Gl0(this, (BitSet) this.f40864d.clone());
    }
}
