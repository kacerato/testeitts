package com.android.tools.r8.graph;

import java.util.BitSet;

public final class S5 {

    public final com.android.tools.r8.graph.proto.j f36799a;

    public S5(com.android.tools.r8.graph.proto.j jVar) {
        this.f36799a = jVar;
    }

    public final BitSet a(BitSet bitSet) {
        if (this.f36799a.f37623b.b() || bitSet == null) {
            return bitSet;
        }
        int length = bitSet.length();
        BitSet bitSet2 = new BitSet(length);
        for (int i10 = 0; i10 < length; i10++) {
            if (bitSet.get(i10)) {
                com.android.tools.r8.graph.proto.b a10 = this.f36799a.f37623b.a(i10);
                if (!a10.c() && !(a10 instanceof com.android.tools.r8.graph.proto.k)) {
                    bitSet2.set(this.f36799a.f37623b.b(i10));
                }
            }
        }
        if (bitSet2.isEmpty()) {
            return null;
        }
        return bitSet2;
    }
}
