package com.android.tools.r8.internal;

public final class C9964vi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f53205b;

    public String f53206c;

    public C6311Zh0 f53207d;

    public C7626hh0 f53208e;

    public C9964vi0() {
        this.f53206c = "";
        C10131wi0 c10131wi0 = C10131wi0.f53573g;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9964vi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10131wi0 c10131wi0 = null;
        try {
            try {
                C10131wi0.f53574h.getClass();
                a(new C10131wi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10131wi0 c10131wi02 = (C10131wi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10131wi0 = c10131wi02;
                    if (c10131wi0 != null) {
                        a(c10131wi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10131wi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9964vi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C10131wi0 m1181buildPartial() {
        C10131wi0 c10131wi0 = new C10131wi0(this);
        c10131wi0.f53575b = this.f53205b;
        c10131wi0.f53576c = this.f53206c;
        c10131wi0.f53577d = this.f53207d;
        c10131wi0.f53578e = this.f53208e;
        onBuilt();
        return c10131wi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10131wi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9964vi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10131wi0.f53573g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53299s0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53301t0.a(C10131wi0.class, C9964vi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9964vi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9964vi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9964vi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10131wi0.f53573g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9964vi0) super.setUnknownFields(c9002pv0);
    }

    public C9964vi0(C7011dz c7011dz) {
        super(c7011dz);
        this.f53206c = "";
        C10131wi0 c10131wi0 = C10131wi0.f53573g;
    }

    @Override
    public final InterfaceC8095kW build() {
        C10131wi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10131wi0) {
            return a((C10131wi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10131wi0) {
            return a((C10131wi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9964vi0 a(C10131wi0 c10131wi0) {
        if (c10131wi0 == C10131wi0.f53573g) {
            return this;
        }
        C7295fi0 c7295fi0 = c10131wi0.f53575b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f53205b;
            if (c7295fi02 != null) {
                this.f53205b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f53205b = c7295fi0;
            }
            onChanged();
        }
        String str = c10131wi0.f53576c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c10131wi0.f53576c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f53206c = c10131wi0.f53576c;
            onChanged();
        }
        C6311Zh0 c6311Zh0 = c10131wi0.f53577d;
        if (c6311Zh0 != null) {
            C6311Zh0 c6311Zh02 = this.f53207d;
            if (c6311Zh02 != null) {
                this.f53207d = C6311Zh0.f46320j.toBuilder().a(c6311Zh02).a(c6311Zh0).m1181buildPartial();
            } else {
                this.f53207d = c6311Zh0;
            }
            onChanged();
        }
        C7626hh0 c7626hh0 = c10131wi0.f53578e;
        if (c7626hh0 != null) {
            C7626hh0 c7626hh02 = this.f53208e;
            if (c7626hh02 != null) {
                this.f53208e = C7626hh0.f48676e.toBuilder().a(c7626hh02).a(c7626hh0).m1181buildPartial();
            } else {
                this.f53208e = c7626hh0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
