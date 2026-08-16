package fi;

import oh.AbstractC14506b;
import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.J;
import oh.K;
import oh.M;
import oh.M0;
import oh.Q;
import oh.S;

public class C13226b extends AbstractC14545v implements InterfaceC14514f, J {

    public J f86383b;

    public C13226b(String str) {
        this.f86383b = new M0(str);
    }

    public static C13226b u(Object obj) {
        if (obj == null || (obj instanceof C13226b)) {
            return (C13226b) obj;
        }
        if (obj instanceof K) {
            return new C13226b((K) obj);
        }
        if (obj instanceof C) {
            return new C13226b((C) obj);
        }
        if (obj instanceof S) {
            return new C13226b((S) obj);
        }
        if (obj instanceof Q) {
            return new C13226b((Q) obj);
        }
        if (obj instanceof AbstractC14506b) {
            return new C13226b((AbstractC14506b) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static C13226b v(M m10, boolean z10) {
        if (z10) {
            return u(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public String getString() {
        return this.f86383b.getString();
    }

    @Override
    public B r() {
        return ((InterfaceC14516g) this.f86383b).r();
    }

    public String toString() {
        return this.f86383b.getString();
    }

    public C13226b(AbstractC14506b abstractC14506b) {
        this.f86383b = abstractC14506b;
    }

    public C13226b(C c10) {
        this.f86383b = c10;
    }

    public C13226b(K k10) {
        this.f86383b = k10;
    }

    public C13226b(Q q10) {
        this.f86383b = q10;
    }

    public C13226b(S s10) {
        this.f86383b = s10;
    }
}
