package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Set;

public final class NK extends AbstractMap {

    public final NK f42558b;

    public final BitSet f42559c;

    public final HashMap f42560d;

    public final YQ f42561e;

    public final OK f42562f;

    public NK(OK ok2, NK nk2, BitSet bitSet) {
        this.f42562f = ok2;
        for (NK nk3 = nk2; nk3 != null; nk3 = nk3.f42558b) {
            if (nk3.f42559c == bitSet) {
                throw new IllegalArgumentException("Recursive invocation of " + ((Object) bitSet));
            }
        }
        this.f42558b = nk2;
        this.f42559c = bitSet;
        this.f42561e = nk2 == null ? null : new YQ();
        this.f42560d = new HashMap();
        int i10 = 0;
        YQ yq = null;
        while (true) {
            OD od2 = ok2.f43609q;
            if (i10 >= od2.f42824b) {
                return;
            }
            H j10 = od2.j(i10);
            if (j10.a() == 8) {
                YQ yq2 = (YQ) j10;
                yq = yq == null ? new YQ() : yq;
                this.f42560d.put(yq2, yq);
            } else if (a(i10) == this) {
                yq = null;
            }
            i10++;
        }
    }

    public final NK a(int i10) {
        if (!this.f42559c.get(i10)) {
            return null;
        }
        if (!this.f42562f.f42853A.get(i10)) {
            return this;
        }
        NK nk2 = this;
        for (NK nk3 = this.f42558b; nk3 != null; nk3 = nk3.f42558b) {
            if (nk3.f42559c.get(i10)) {
                nk2 = nk3;
            }
        }
        return nk2;
    }

    @Override
    public final Set entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean equals(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object get(Object obj) {
        YQ yq = (YQ) obj;
        return (YQ) a(this.f42562f.f43609q.b(yq)).f42560d.get(yq);
    }

    @Override
    public final int hashCode() {
        throw new UnsupportedOperationException();
    }

    public final YQ a(YQ yq) {
        return (YQ) a(this.f42562f.f43609q.b(yq)).f42560d.get(yq);
    }
}
