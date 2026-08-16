package com.android.tools.r8.internal;

public final class C6197Xh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f45798b;

    public int f45799c;

    public String f45800d;

    public boolean f45801e;

    public C5329Ig0 f45802f;

    public int f45803g;

    public boolean f45804h;

    public C6197Xh0() {
        this.f45798b = 0;
        this.f45800d = "";
        C6311Zh0 c6311Zh0 = C6311Zh0.f46320j;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6197Xh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6311Zh0 c6311Zh0 = null;
        try {
            try {
                C6311Zh0.f46321k.getClass();
                a(new C6311Zh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6311Zh0 c6311Zh02 = (C6311Zh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6311Zh0 = c6311Zh02;
                    if (c6311Zh0 != null) {
                        a(c6311Zh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6311Zh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6197Xh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6311Zh0 m1181buildPartial() {
        C6311Zh0 c6311Zh0 = new C6311Zh0(this);
        c6311Zh0.f46322b = this.f45798b;
        c6311Zh0.f46323c = this.f45799c;
        c6311Zh0.f46324d = this.f45800d;
        c6311Zh0.f46325e = this.f45801e;
        c6311Zh0.f46326f = this.f45802f;
        c6311Zh0.f46327g = this.f45803g;
        c6311Zh0.f46328h = this.f45804h;
        onBuilt();
        return c6311Zh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6311Zh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6197Xh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6311Zh0.f46320j;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53247S;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53249T.a(C6311Zh0.class, C6197Xh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6197Xh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6197Xh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6197Xh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6311Zh0.f46320j;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6197Xh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6311Zh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6311Zh0) {
            return a((C6311Zh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C6197Xh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f45798b = 0;
        this.f45800d = "";
        C6311Zh0 c6311Zh0 = C6311Zh0.f46320j;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6311Zh0) {
            return a((C6311Zh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6197Xh0 a(C6311Zh0 c6311Zh0) {
        if (c6311Zh0 == C6311Zh0.f46320j) {
            return this;
        }
        int i10 = c6311Zh0.f46322b;
        if (i10 != 0) {
            this.f45798b = i10;
            onChanged();
        }
        int i11 = c6311Zh0.f46323c;
        if (i11 != 0) {
            this.f45799c = i11;
            onChanged();
        }
        if (!c6311Zh0.getName().isEmpty()) {
            this.f45800d = c6311Zh0.f46324d;
            onChanged();
        }
        boolean z10 = c6311Zh0.f46325e;
        if (z10) {
            this.f45801e = z10;
            onChanged();
        }
        C5329Ig0 c5329Ig0 = c6311Zh0.f46326f;
        if (c5329Ig0 != null) {
            C5329Ig0 c5329Ig02 = this.f45802f;
            if (c5329Ig02 != null) {
                this.f45802f = C5329Ig0.f41166d.toBuilder().a(c5329Ig02).a(c5329Ig0).m1181buildPartial();
            } else {
                this.f45802f = c5329Ig0;
            }
            onChanged();
        }
        int i12 = c6311Zh0.f46327g;
        if (i12 != 0) {
            this.f45803g = i12;
            onChanged();
        }
        boolean z11 = c6311Zh0.f46328h;
        if (z11) {
            this.f45804h = z11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
