package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.util.BitSet;

public final class C6050Ut0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        BitSet bitSet = (BitSet) obj;
        c9075qL.d();
        int length = bitSet.length();
        for (int i10 = 0; i10 < length; i10++) {
            c9075qL.a(bitSet.get(i10) ? 1L : 0L);
        }
        c9075qL.f();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        boolean z10;
        BitSet bitSet = new BitSet();
        c8240lL.c();
        int u10 = c8240lL.u();
        int i10 = 0;
        while (u10 != 2) {
            int b10 = AbstractC4291c.b(u10);
            if (b10 == 5 || b10 == 6) {
                int o10 = c8240lL.o();
                if (o10 == 0) {
                    z10 = false;
                } else {
                    if (o10 != 1) {
                        StringBuilder a10 = AbstractC5413Jt0.a(o10, "Invalid bitset value ", ", expected 0 or 1; at path ");
                        a10.append(c8240lL.j());
                        throw new C8407mL(a10.toString());
                    }
                    z10 = true;
                }
            } else if (b10 == 7) {
                z10 = c8240lL.m();
            } else {
                throw new C8407mL("Invalid bitset value type: " + AbstractC8574nL.a(u10) + "; at path " + c8240lL.i());
            }
            if (z10) {
                bitSet.set(i10);
            }
            i10++;
            u10 = c8240lL.u();
        }
        c8240lL.g();
        return bitSet;
    }
}
