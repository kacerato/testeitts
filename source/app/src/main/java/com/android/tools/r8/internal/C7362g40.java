package com.android.tools.r8.internal;

import java.util.Set;

public final class C7362g40 {

    public final AA f48179a;

    public final Set f48180b;

    public final Set f48181c;

    public final Set f48182d;

    public C7362g40(Set set, com.android.tools.r8.graph.H2 h22, Set set2) {
        AA aa2 = new AA();
        aa2.f38553b.add(h22);
        this.f48179a = aa2;
        Set c10 = AbstractC5513Ll0.c();
        c10.add(h22);
        this.f48180b = c10;
        this.f48181c = set;
        this.f48182d = set2;
    }

    public final void a(Set set, com.android.tools.r8.graph.H2 h22, Set set2) {
        this.f48179a.f38553b.add(h22);
        this.f48180b.add(h22);
        AbstractC9907vK.a(AbstractC9907vK.c(set, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7362g40.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }), this.f48181c);
        this.f48181c.remove(h22);
        AbstractC9907vK.a(AbstractC9907vK.c(set2, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7362g40.this.b((com.android.tools.r8.graph.H2) obj);
            }
        }), this.f48182d);
        this.f48182d.remove(h22);
    }

    public final boolean b(com.android.tools.r8.graph.H2 h22) {
        return !this.f48180b.contains(h22);
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !this.f48180b.contains(h22);
    }
}
