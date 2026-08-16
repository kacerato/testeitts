package com.android.tools.r8.internal;

public final class C9457sg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f52433b;

    public String f52434c;

    public C9457sg0() {
        this.f52434c = "";
        C9624tg0 c9624tg0 = C9624tg0.f52661e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9457sg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9624tg0 c9624tg0 = null;
        try {
            try {
                C9624tg0.f52662f.getClass();
                a(new C9624tg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9624tg0 c9624tg02 = (C9624tg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9624tg0 = c9624tg02;
                    if (c9624tg0 != null) {
                        a(c9624tg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9624tg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9457sg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C9624tg0 m1181buildPartial() {
        C9624tg0 c9624tg0 = new C9624tg0(this);
        c9624tg0.f52663b = this.f52433b;
        c9624tg0.f52664c = this.f52434c;
        onBuilt();
        return c9624tg0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9624tg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9457sg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9624tg0.f52661e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53306w;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53308x.a(C9624tg0.class, C9457sg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9457sg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9457sg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9457sg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9624tg0.f52661e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9457sg0) super.setUnknownFields(c9002pv0);
    }

    public C9457sg0(C7011dz c7011dz) {
        super(c7011dz);
        this.f52434c = "";
        C9624tg0 c9624tg0 = C9624tg0.f52661e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C9624tg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9624tg0) {
            return a((C9624tg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9624tg0) {
            return a((C9624tg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9457sg0 a(C9624tg0 c9624tg0) {
        if (c9624tg0 == C9624tg0.f52661e) {
            return this;
        }
        C7295fi0 c7295fi0 = c9624tg0.f52663b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f52433b;
            if (c7295fi02 != null) {
                this.f52433b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f52433b = c7295fi0;
            }
            onChanged();
        }
        String str = c9624tg0.f52664c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c9624tg0.f52664c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f52434c = c9624tg0.f52664c;
            onChanged();
        }
        onChanged();
        return this;
    }
}
