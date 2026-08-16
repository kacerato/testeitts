package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class C5433Kc0 extends AbstractC9687u1 implements InterfaceC5317Ic0, Cloneable {

    public final com.android.tools.r8.graph.M2 f41713b;

    public transient K30 f41714c;

    public transient C6130Wd0 f41715d;

    public transient C8203l7 f41716e;

    public C5433Kc0(com.android.tools.r8.graph.M2 m22) {
        this.f41713b = m22;
    }

    @Override
    public final boolean a(Object obj) {
        return this.f41713b == obj;
    }

    public final Object clone() {
        return this;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f41713b == obj;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return ((Boolean) obj).booleanValue();
    }

    @Override
    public final Set entrySet() {
        return g();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (map.size() != 1) {
            return false;
        }
        return ((Map.Entry) map.entrySet().iterator().next()).equals(((K30) g()).iterator().next());
    }

    @Override
    public final I30 g() {
        if (this.f41714c == null) {
            C9854v1 c9854v1 = new C9854v1(this.f41713b);
            J30 j30 = L30.f41855a;
            this.f41714c = new K30(c9854v1);
        }
        return this.f41714c;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f41713b) ^ 1231;
    }

    @Override
    public final boolean isEmpty() {
        return false;
    }

    @Override
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int size() {
        return 1;
    }

    public final String toString() {
        return "{" + ((Object) this.f41713b) + "=>true}";
    }

    @Override
    public final Collection values() {
        if (this.f41716e == null) {
            C8036k7 c8036k7 = AbstractC8370m7.f50202a;
            this.f41716e = new C8203l7();
        }
        return this.f41716e;
    }

    @Override
    public final InterfaceC6015Ud0 o() {
        if (this.f41715d == null) {
            com.android.tools.r8.graph.M2 m22 = this.f41713b;
            C6073Vd0 c6073Vd0 = AbstractC6187Xd0.f45776a;
            this.f41715d = new C6130Wd0(m22);
        }
        return this.f41715d;
    }
}
