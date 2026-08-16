package com.google.common.collect;

import com.google.common.collect.P1;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;
import w2.AbstractC15896m;
import w2.C15883c;
import w2.z;

@X
@v2.b(emulated = true)
public final class O1 {

    public static final int f65895g = 16;

    public static final int f65896h = 4;

    public static final int f65897i = -1;

    public boolean f65898a;

    public int f65899b = -1;

    public int f65900c = -1;

    @CheckForNull
    public P1.q f65901d;

    @CheckForNull
    public P1.q f65902e;

    @CheckForNull
    public AbstractC15896m<Object> f65903f;

    public enum a {
        VALUE
    }

    @I2.a
    public O1 a(int i10) {
        int i11 = this.f65900c;
        w2.H.n0(i11 == -1, "concurrency level was already set to %s", i11);
        w2.H.d(i10 > 0);
        this.f65900c = i10;
        return this;
    }

    public int b() {
        int i10 = this.f65900c;
        if (i10 == -1) {
            return 4;
        }
        return i10;
    }

    public int c() {
        int i10 = this.f65899b;
        if (i10 == -1) {
            return 16;
        }
        return i10;
    }

    public AbstractC15896m<Object> d() {
        return (AbstractC15896m) w2.z.a(this.f65903f, e().b());
    }

    public P1.q e() {
        return (P1.q) w2.z.a(this.f65901d, P1.q.STRONG);
    }

    public P1.q f() {
        return (P1.q) w2.z.a(this.f65902e, P1.q.STRONG);
    }

    @I2.a
    public O1 g(int i10) {
        int i11 = this.f65899b;
        w2.H.n0(i11 == -1, "initial capacity was already set to %s", i11);
        w2.H.d(i10 >= 0);
        this.f65899b = i10;
        return this;
    }

    @I2.a
    @v2.c
    public O1 h(AbstractC15896m<Object> abstractC15896m) {
        AbstractC15896m<Object> abstractC15896m2 = this.f65903f;
        w2.H.x0(abstractC15896m2 == null, "key equivalence was already set to %s", abstractC15896m2);
        this.f65903f = (AbstractC15896m) w2.H.E(abstractC15896m);
        this.f65898a = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> i() {
        return !this.f65898a ? new ConcurrentHashMap(c(), 0.75f, b()) : P1.c(this);
    }

    public O1 j(P1.q qVar) {
        P1.q qVar2 = this.f65901d;
        w2.H.x0(qVar2 == null, "Key strength was already set to %s", qVar2);
        this.f65901d = (P1.q) w2.H.E(qVar);
        if (qVar != P1.q.STRONG) {
            this.f65898a = true;
        }
        return this;
    }

    public O1 k(P1.q qVar) {
        P1.q qVar2 = this.f65902e;
        w2.H.x0(qVar2 == null, "Value strength was already set to %s", qVar2);
        this.f65902e = (P1.q) w2.H.E(qVar);
        if (qVar != P1.q.STRONG) {
            this.f65898a = true;
        }
        return this;
    }

    @I2.a
    @v2.c
    public O1 l() {
        return j(P1.q.WEAK);
    }

    @I2.a
    @v2.c
    public O1 m() {
        return k(P1.q.WEAK);
    }

    public String toString() {
        z.b c10 = w2.z.c(this);
        int i10 = this.f65899b;
        if (i10 != -1) {
            c10.d("initialCapacity", i10);
        }
        int i11 = this.f65900c;
        if (i11 != -1) {
            c10.d("concurrencyLevel", i11);
        }
        P1.q qVar = this.f65901d;
        if (qVar != null) {
            c10.f("keyStrength", C15883c.g(qVar.toString()));
        }
        P1.q qVar2 = this.f65902e;
        if (qVar2 != null) {
            c10.f("valueStrength", C15883c.g(qVar2.toString()));
        }
        if (this.f65903f != null) {
            c10.s("keyEquivalence");
        }
        return c10.toString();
    }
}
