package com.android.tools.r8.internal;

public final class C6175Wz extends G0 {

    public C6118Vz f45595b;

    public final C6232Xz f45596c;

    public C6175Wz(C6232Xz c6232Xz, C6118Vz c6118Vz) {
        this.f45596c = c6232Xz;
        this.f45595b = c6118Vz;
    }

    @Override
    public final Object getKey() {
        return this.f45595b.f46191c;
    }

    @Override
    public final Object getValue() {
        return this.f45595b.f46190b;
    }

    @Override
    public final Object setValue(Object obj) {
        Object obj2 = this.f45595b.f46190b;
        int a10 = AbstractC9047qA.a(obj);
        if (a10 == this.f45595b.f45242d && V30.a(obj, obj2)) {
            return obj;
        }
        C7045eA c7045eA = this.f45596c.f45880g.f46435b;
        int i10 = C7045eA.f47615j;
        U60.a(c7045eA.a(a10, obj) == null, "value already present: %s", obj);
        this.f45596c.f45880g.f46435b.a(this.f45595b);
        C6118Vz c6118Vz = this.f45595b;
        C6118Vz c6118Vz2 = new C6118Vz(obj, a10, c6118Vz.f46191c, c6118Vz.f45243e);
        this.f45595b = c6118Vz2;
        this.f45596c.f45880g.f46435b.a(c6118Vz2, (C6118Vz) null);
        C6232Xz c6232Xz = this.f45596c;
        c6232Xz.f46719d = c6232Xz.f45880g.f46435b.f47622h;
        return obj2;
    }
}
