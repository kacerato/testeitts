package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;

public final class C6965dj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f47479b;

    public AbstractC10181wz f47480c;

    public C7295fi0 f47481d;

    public String f47482e;

    public boolean f47483f;

    public C6965dj0() {
        this.f47479b = 0;
        this.f47482e = "";
        C7131ej0 c7131ej0 = C7131ej0.f47760h;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6965dj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7131ej0 c7131ej0 = null;
        try {
            try {
                C7131ej0.f47761i.getClass();
                a(new C7131ej0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7131ej0 c7131ej02 = (C7131ej0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7131ej0 = c7131ej02;
                    if (c7131ej0 != null) {
                        a(c7131ej0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7131ej0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6965dj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C7131ej0 m1181buildPartial() {
        C7131ej0 c7131ej0 = new C7131ej0(this);
        c7131ej0.f47764d = this.f47481d;
        c7131ej0.f47765e = this.f47482e;
        c7131ej0.f47766f = this.f47483f;
        int i10 = this.f47479b;
        if (i10 == 4) {
            c7131ej0.f47763c = this.f47480c;
        }
        if (i10 == 5) {
            c7131ej0.f47763c = this.f47480c;
        }
        c7131ej0.f47762b = i10;
        onBuilt();
        return c7131ej0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7131ej0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6965dj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7131ej0.f47760h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53231K;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53233L.a(C7131ej0.class, C6965dj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6965dj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6965dj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6965dj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7131ej0.f47760h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6965dj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7131ej0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7131ej0) {
            return a((C7131ej0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C6965dj0(C7011dz c7011dz) {
        super(c7011dz);
        this.f47479b = 0;
        this.f47482e = "";
        C7131ej0 c7131ej0 = C7131ej0.f47760h;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7131ej0) {
            return a((C7131ej0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C6965dj0 a(C7131ej0 c7131ej0) {
        AbstractC10181wz abstractC10181wz;
        C7626hh0 c7626hh0;
        C5503Lg0 c5503Lg0;
        AbstractC10181wz abstractC10181wz2;
        C5503Lg0 c5503Lg02;
        if (c7131ej0 == C7131ej0.f47760h) {
            return this;
        }
        C7295fi0 c7295fi0 = c7131ej0.f47764d;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f47481d;
            if (c7295fi02 != null) {
                this.f47481d = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f47481d = c7295fi0;
            }
            onChanged();
        }
        String str = c7131ej0.f47765e;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c7131ej0.f47765e = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f47482e = c7131ej0.f47765e;
            onChanged();
        }
        boolean z10 = c7131ej0.f47766f;
        if (z10) {
            this.f47483f = z10;
            onChanged();
        }
        int i10 = c7131ej0.f47762b;
        int b10 = AbstractC4291c.b(i10 != 0 ? i10 != 4 ? i10 != 5 ? 0 : 2 : 1 : 3);
        if (b10 == 0) {
            C7626hh0 a10 = c7131ej0.a();
            if (this.f47479b == 4 && (abstractC10181wz = this.f47480c) != (c7626hh0 = C7626hh0.f48676e)) {
                this.f47480c = c7626hh0.toBuilder().a((C7626hh0) abstractC10181wz).a(a10).m1181buildPartial();
            } else {
                this.f47480c = a10;
            }
            onChanged();
            this.f47479b = 4;
        } else if (b10 == 1) {
            if (c7131ej0.f47762b == 5) {
                c5503Lg0 = (C5503Lg0) c7131ej0.f47763c;
            } else {
                c5503Lg0 = C5503Lg0.f42036e;
            }
            if (this.f47479b == 5 && (abstractC10181wz2 = this.f47480c) != (c5503Lg02 = C5503Lg0.f42036e)) {
                this.f47480c = c5503Lg02.toBuilder().a((C5503Lg0) abstractC10181wz2).a(c5503Lg0).m1181buildPartial();
            } else {
                this.f47480c = c5503Lg0;
            }
            onChanged();
            this.f47479b = 5;
        }
        onChanged();
        return this;
    }
}
