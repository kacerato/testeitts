package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;

public final class C7459gh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f48336b;

    public AbstractC10181wz f48337c;

    public C7459gh0() {
        this.f48336b = 0;
        C7626hh0 c7626hh0 = C7626hh0.f48676e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7459gh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7626hh0 c7626hh0 = null;
        try {
            try {
                C7626hh0.f48677f.getClass();
                a(new C7626hh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7626hh0 c7626hh02 = (C7626hh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7626hh0 = c7626hh02;
                    if (c7626hh0 != null) {
                        a(c7626hh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7626hh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7459gh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C7626hh0 build() {
        C7626hh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final C7626hh0 m1181buildPartial() {
        C7626hh0 c7626hh0 = new C7626hh0(this);
        int i10 = this.f48336b;
        if (i10 == 1) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 2) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 3) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 4) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 5) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 6) {
            c7626hh0.f48679c = this.f48337c;
        }
        if (i10 == 7) {
            c7626hh0.f48679c = this.f48337c;
        }
        c7626hh0.f48678b = i10;
        onBuilt();
        return c7626hh0;
    }

    public final Object clone() {
        return (C7459gh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7626hh0.f48676e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53235M;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53237N.a(C7626hh0.class, C7459gh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7459gh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7459gh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7459gh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7626hh0.f48676e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7459gh0) super.setUnknownFields(c9002pv0);
    }

    public C7459gh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f48336b = 0;
        C7626hh0 c7626hh0 = C7626hh0.f48676e;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7626hh0) {
            return a((C7626hh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7626hh0) {
            return a((C7626hh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C7459gh0 a(C6311Zh0 c6311Zh0) {
        this.f48337c = c6311Zh0;
        onChanged();
        this.f48336b = 1;
        return this;
    }

    public final C7459gh0 a(C7626hh0 c7626hh0) {
        AbstractC10181wz abstractC10181wz;
        C6311Zh0 c6311Zh0;
        C8796oi0 c8796oi0;
        AbstractC10181wz abstractC10181wz2;
        C8796oi0 c8796oi02;
        C6083Vh0 c6083Vh0;
        AbstractC10181wz abstractC10181wz3;
        C6083Vh0 c6083Vh02;
        C5738Pi0 c5738Pi0;
        AbstractC10181wz abstractC10181wz4;
        C5738Pi0 c5738Pi02;
        AbstractC10181wz abstractC10181wz5;
        C6626bh0 c6626bh0;
        C7125eh0 c7125eh0;
        AbstractC10181wz abstractC10181wz6;
        C7125eh0 c7125eh02;
        C5910Sh0 c5910Sh0;
        AbstractC10181wz abstractC10181wz7;
        C5910Sh0 c5910Sh02;
        if (c7626hh0 == C7626hh0.f48676e) {
            return this;
        }
        switch (AbstractC4291c.b(c7626hh0.c())) {
            case 0:
                C6311Zh0 b10 = c7626hh0.b();
                if (this.f48336b == 1 && (abstractC10181wz = this.f48337c) != (c6311Zh0 = C6311Zh0.f46320j)) {
                    this.f48337c = c6311Zh0.toBuilder().a((C6311Zh0) abstractC10181wz).a(b10).m1181buildPartial();
                } else {
                    this.f48337c = b10;
                }
                onChanged();
                this.f48336b = 1;
                break;
            case 1:
                if (c7626hh0.f48678b == 2) {
                    c8796oi0 = (C8796oi0) c7626hh0.f48679c;
                } else {
                    c8796oi0 = C8796oi0.f51321d;
                }
                if (this.f48336b == 2 && (abstractC10181wz2 = this.f48337c) != (c8796oi02 = C8796oi0.f51321d)) {
                    this.f48337c = c8796oi02.toBuilder().a((C8796oi0) abstractC10181wz2).a(c8796oi0).m1181buildPartial();
                } else {
                    this.f48337c = c8796oi0;
                }
                onChanged();
                this.f48336b = 2;
                break;
            case 2:
                if (c7626hh0.f48678b == 3) {
                    c6083Vh0 = (C6083Vh0) c7626hh0.f48679c;
                } else {
                    c6083Vh0 = C6083Vh0.f45124d;
                }
                if (this.f48336b == 3 && (abstractC10181wz3 = this.f48337c) != (c6083Vh02 = C6083Vh0.f45124d)) {
                    this.f48337c = c6083Vh02.toBuilder().a((C6083Vh0) abstractC10181wz3).a(c6083Vh0).m1181buildPartial();
                } else {
                    this.f48337c = c6083Vh0;
                }
                onChanged();
                this.f48336b = 3;
                break;
            case 3:
                if (c7626hh0.f48678b == 4) {
                    c5738Pi0 = (C5738Pi0) c7626hh0.f48679c;
                } else {
                    c5738Pi0 = C5738Pi0.f43337e;
                }
                if (this.f48336b == 4 && (abstractC10181wz4 = this.f48337c) != (c5738Pi02 = C5738Pi0.f43337e)) {
                    this.f48337c = c5738Pi02.toBuilder().a((C5738Pi0) abstractC10181wz4).a(c5738Pi0).m1181buildPartial();
                } else {
                    this.f48337c = c5738Pi0;
                }
                onChanged();
                this.f48336b = 4;
                break;
            case 4:
                C6626bh0 a10 = c7626hh0.a();
                if (this.f48336b == 5 && (abstractC10181wz5 = this.f48337c) != (c6626bh0 = C6626bh0.f46827e)) {
                    this.f48337c = c6626bh0.toBuilder().a((C6626bh0) abstractC10181wz5).a(a10).m1181buildPartial();
                } else {
                    this.f48337c = a10;
                }
                onChanged();
                this.f48336b = 5;
                break;
            case 5:
                if (c7626hh0.f48678b == 6) {
                    c7125eh0 = (C7125eh0) c7626hh0.f48679c;
                } else {
                    c7125eh0 = C7125eh0.f47751c;
                }
                if (this.f48336b == 6 && (abstractC10181wz6 = this.f48337c) != (c7125eh02 = C7125eh0.f47751c)) {
                    this.f48337c = c7125eh02.toBuilder().a((C7125eh0) abstractC10181wz6).a(c7125eh0).b();
                } else {
                    this.f48337c = c7125eh0;
                }
                onChanged();
                this.f48336b = 6;
                break;
            case 6:
                if (c7626hh0.f48678b == 7) {
                    c5910Sh0 = (C5910Sh0) c7626hh0.f48679c;
                } else {
                    c5910Sh0 = C5910Sh0.f44272e;
                }
                if (this.f48336b == 7 && (abstractC10181wz7 = this.f48337c) != (c5910Sh02 = C5910Sh0.f44272e)) {
                    this.f48337c = c5910Sh02.toBuilder().a((C5910Sh0) abstractC10181wz7).a(c5910Sh0).m1181buildPartial();
                } else {
                    this.f48337c = c5910Sh0;
                }
                onChanged();
                this.f48336b = 7;
                break;
        }
        onChanged();
        return this;
    }
}
