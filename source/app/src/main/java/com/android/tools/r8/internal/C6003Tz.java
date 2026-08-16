package com.android.tools.r8.internal;

public final class C6003Tz extends G0 {

    public C6118Vz f44638b;

    public final C6061Uz f44639c;

    public C6003Tz(C6061Uz c6061Uz, C6118Vz c6118Vz) {
        this.f44639c = c6061Uz;
        this.f44638b = c6118Vz;
    }

    @Override
    public final Object getKey() {
        return this.f44638b.f46190b;
    }

    @Override
    public final Object getValue() {
        return this.f44638b.f46191c;
    }

    @Override
    public final Object setValue(Object obj) {
        Object obj2 = this.f44638b.f46191c;
        int a10 = AbstractC9047qA.a(obj);
        if (a10 == this.f44638b.f45243e && V30.a(obj, obj2)) {
            return obj;
        }
        C7045eA c7045eA = this.f44639c.f44927g;
        int i10 = C7045eA.f47615j;
        U60.a(c7045eA.b(a10, obj) == null, "value already present: %s", obj);
        this.f44639c.f44927g.a(this.f44638b);
        C6118Vz c6118Vz = this.f44638b;
        C6118Vz c6118Vz2 = new C6118Vz(c6118Vz.f46190b, c6118Vz.f45242d, obj, a10);
        this.f44639c.f44927g.a(c6118Vz2, c6118Vz);
        C6118Vz c6118Vz3 = this.f44638b;
        c6118Vz3.f45247i = null;
        c6118Vz3.f45246h = null;
        C6061Uz c6061Uz = this.f44639c;
        c6061Uz.f46719d = c6061Uz.f44927g.f47622h;
        if (c6061Uz.f46718c == c6118Vz3) {
            c6061Uz.f46718c = c6118Vz2;
        }
        this.f44638b = c6118Vz2;
        return obj2;
    }
}
