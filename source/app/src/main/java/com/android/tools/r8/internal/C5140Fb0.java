package com.android.tools.r8.internal;

import java.io.UTFDataFormatException;
import java.util.NoSuchElementException;

public final class C5140Fb0 extends AbstractC6331Zr0 {

    public final com.android.tools.r8.graph.K2 f40254a;

    public C5140Fb0(com.android.tools.r8.graph.L2 l22) {
        l22.getClass();
        this.f40254a = new com.android.tools.r8.graph.K2(0, l22);
    }

    @Override
    public final boolean a() {
        return this.f40254a.a();
    }

    @Override
    public final int b() {
        if (!this.f40254a.a()) {
            throw new NoSuchElementException();
        }
        int i10 = 0;
        int i11 = 0;
        do {
            try {
                char b10 = this.f40254a.b();
                if (b10 >= '\ud800' && b10 < '\ue000') {
                    throw new C5198Gb0();
                }
                if (b10 < '\ud800') {
                    return i10 | (b10 << i11);
                }
                i10 |= (b10 & '\u1fff') << i11;
                i11 += 13;
            } catch (UTFDataFormatException unused) {
                throw new C5198Gb0();
            }
        } while (this.f40254a.a());
        throw new C5198Gb0();
    }
}
