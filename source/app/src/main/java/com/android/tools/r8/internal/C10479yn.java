package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;

public final class C10479yn implements InterfaceC6715cB {

    public static final boolean f54156e = true;

    public B60 f54157a = B60.s();

    public C7631hj f54158b = null;

    public C6899dH f54159c = null;

    public final ArrayList f54160d;

    public C10479yn(ArrayList arrayList) {
        this.f54160d = arrayList;
    }

    @Override
    public final void a(W5 w52, W5 w53, W5 w54) {
        C6899dH c6899dH;
        B60 position;
        if (w53 != null && (!w53.i().G1() || w52.u().size() != 1 || w52.u().get(0) != w53)) {
            Iterator<W5> it = w52.u().iterator();
            B60 b60 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                W5 next = it.next();
                if (next == w53) {
                    C7631hj c7631hj = this.f54158b;
                    position = c7631hj != null ? c7631hj.getPosition() : this.f54157a;
                } else {
                    position = next.i().getPosition();
                }
                if (b60 == null) {
                    b60 = position;
                } else if (!InterfaceC7166ev.a(b60, position)) {
                    b60 = B60.s();
                    break;
                }
            }
            this.f54158b = null;
            this.f54157a = b60;
        }
        C6899dH c6899dH2 = w52.f45288a;
        if (c6899dH2 != null) {
            c6899dH = new C6899dH(c6899dH2.size());
            c6899dH.putAll(c6899dH2);
        } else {
            c6899dH = new C6899dH(16);
        }
        Y5 it2 = w52.l().iterator();
        while (it2.hasNext()) {
            AbstractC10561zE next2 = it2.next();
            next2.getClass();
            if (next2 instanceof C7631hj) {
                if (this.f54158b == null && this.f54157a == next2.getPosition()) {
                    this.f54160d.add(next2.N());
                    if (!f54156e && w52.f45293f.size() == 2 && w52.i().getPosition() == this.f54157a && w52.i().G1() && R5.a(w52) == w54) {
                        throw new AssertionError((Object) "Unexpected trivial fallthrough block. This should be removed already.");
                    }
                } else {
                    C7631hj c7631hj2 = this.f54158b;
                    if (c7631hj2 != null && c7631hj2.getPosition() == next2.getPosition() && c6899dH.equals(this.f54159c)) {
                        this.f54160d.add(this.f54158b);
                        this.f54158b = next2.N();
                    } else {
                        this.f54158b = next2.N();
                        C6899dH c6899dH3 = new C6899dH(c6899dH.f47346h);
                        c6899dH3.putAll(c6899dH);
                        this.f54159c = c6899dH3;
                    }
                }
            } else {
                if (!f54156e && next2.getPosition().o()) {
                    throw new AssertionError();
                }
                boolean z10 = next2 instanceof C7297fj;
                if (z10) {
                    next2.M().a(c6899dH);
                } else if (!next2.k1() && !z10 && (!next2.w1() || next2.d().Q() || next2.d().T())) {
                    if (!next2.G1() || next2.U().v2() != w54) {
                        C7631hj c7631hj3 = this.f54158b;
                        if (c7631hj3 != null) {
                            if (c7631hj3.getPosition() == next2.getPosition() && c6899dH.equals(this.f54159c)) {
                                this.f54160d.add(this.f54158b);
                            }
                            this.f54158b = null;
                            this.f54159c = null;
                        }
                        this.f54157a = next2.getPosition();
                    }
                }
            }
        }
    }
}
