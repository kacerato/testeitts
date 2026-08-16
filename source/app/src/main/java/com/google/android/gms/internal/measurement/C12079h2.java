package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class C12079h2 {

    @v2.d
    public final C12079h2 f62311a;

    @v2.d
    public final C12228y f62312b;

    @v2.d
    public final Map f62313c = new HashMap();

    @v2.d
    public final Map f62314d = new HashMap();

    public C12079h2(C12079h2 c12079h2, C12228y c12228y) {
        this.f62311a = c12079h2;
        this.f62312b = c12228y;
    }

    public final InterfaceC12157q a(InterfaceC12157q interfaceC12157q) {
        return this.f62312b.b(this, interfaceC12157q);
    }

    public final InterfaceC12157q b(C12058f c12058f) {
        InterfaceC12157q interfaceC12157q = InterfaceC12157q.f62394o4;
        Iterator j10 = c12058f.j();
        while (j10.hasNext()) {
            interfaceC12157q = this.f62312b.b(this, c12058f.m(((Integer) j10.next()).intValue()));
            if (interfaceC12157q instanceof C12076h) {
                break;
            }
        }
        return interfaceC12157q;
    }

    public final C12079h2 c() {
        return new C12079h2(this, this.f62312b);
    }

    public final boolean d(String str) {
        if (this.f62313c.containsKey(str)) {
            return true;
        }
        C12079h2 c12079h2 = this.f62311a;
        if (c12079h2 != null) {
            return c12079h2.d(str);
        }
        return false;
    }

    public final void e(String str, InterfaceC12157q interfaceC12157q) {
        C12079h2 c12079h2;
        Map map = this.f62313c;
        if (!map.containsKey(str) && (c12079h2 = this.f62311a) != null && c12079h2.d(str)) {
            c12079h2.e(str, interfaceC12157q);
        } else {
            if (this.f62314d.containsKey(str)) {
                return;
            }
            if (interfaceC12157q == null) {
                map.remove(str);
            } else {
                map.put(str, interfaceC12157q);
            }
        }
    }

    public final void f(String str, InterfaceC12157q interfaceC12157q) {
        if (this.f62314d.containsKey(str)) {
            return;
        }
        if (interfaceC12157q == null) {
            this.f62313c.remove(str);
        } else {
            this.f62313c.put(str, interfaceC12157q);
        }
    }

    public final void g(String str, InterfaceC12157q interfaceC12157q) {
        f(str, interfaceC12157q);
        this.f62314d.put(str, Boolean.TRUE);
    }

    public final InterfaceC12157q h(String str) {
        Map map = this.f62313c;
        if (map.containsKey(str)) {
            return (InterfaceC12157q) map.get(str);
        }
        C12079h2 c12079h2 = this.f62311a;
        if (c12079h2 != null) {
            return c12079h2.h(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }
}
