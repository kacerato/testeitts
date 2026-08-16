package com.android.tools.r8.internal;

public final class C5618Ng0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7291fh f42669b;

    public C7131ej0 f42670c;

    public C5618Ng0() {
        C5676Og0 c5676Og0 = C5676Og0.f42949e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5618Ng0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5676Og0 c5676Og0 = null;
        try {
            try {
                C5676Og0.f42950f.getClass();
                a(new C5676Og0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5676Og0 c5676Og02 = (C5676Og0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5676Og0 = c5676Og02;
                    if (c5676Og0 != null) {
                        a(c5676Og0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5676Og0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5618Ng0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5676Og0 c5676Og0 = new C5676Og0(this);
        c5676Og0.f42951b = this.f42669b;
        c5676Og0.f42952c = this.f42670c;
        onBuilt();
        if (c5676Og0.isInitialized()) {
            return c5676Og0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5676Og0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5676Og0 c5676Og0 = new C5676Og0(this);
        c5676Og0.f42951b = this.f42669b;
        c5676Og0.f42952c = this.f42670c;
        onBuilt();
        return c5676Og0;
    }

    public final Object clone() {
        return (C5618Ng0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5676Og0.f42949e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53227I;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53229J.a(C5676Og0.class, C5618Ng0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5618Ng0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5618Ng0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5618Ng0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5676Og0.f42949e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5618Ng0) super.setUnknownFields(c9002pv0);
    }

    public C5618Ng0(C7011dz c7011dz) {
        super(c7011dz);
        C5676Og0 c5676Og0 = C5676Og0.f42949e;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5676Og0) {
            return a((C5676Og0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5676Og0 c5676Og0 = new C5676Og0(this);
        c5676Og0.f42951b = this.f42669b;
        c5676Og0.f42952c = this.f42670c;
        onBuilt();
        if (c5676Og0.isInitialized()) {
            return c5676Og0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5676Og0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5676Og0) {
            return a((C5676Og0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5618Ng0 a(C5676Og0 c5676Og0) {
        if (c5676Og0 == C5676Og0.f42949e) {
            return this;
        }
        C7291fh c7291fh = c5676Og0.f42951b;
        if (c7291fh != null) {
            C7291fh c7291fh2 = this.f42669b;
            if (c7291fh2 != null) {
                this.f42669b = C7291fh.f48039C.toBuilder().a(c7291fh2).a(c7291fh).m1181buildPartial();
            } else {
                this.f42669b = c7291fh;
            }
            onChanged();
        }
        if (c5676Og0.a()) {
            C7131ej0 c7131ej0 = c5676Og0.f42952c;
            if (c7131ej0 == null) {
                c7131ej0 = C7131ej0.f47760h;
            }
            C7131ej0 c7131ej02 = this.f42670c;
            if (c7131ej02 != null) {
                this.f42670c = C7131ej0.f47760h.toBuilder().a(c7131ej02).a(c7131ej0).m1181buildPartial();
            } else {
                this.f42670c = c7131ej0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
