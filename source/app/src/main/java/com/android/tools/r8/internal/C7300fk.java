package com.android.tools.r8.internal;

import java.util.Map;

public final class C7300fk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f48078b;

    public int f48079c;

    public int f48080d;

    public C7300fk() {
        super(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7300fk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7467gk c7467gk = null;
        try {
            try {
                C7467gk.f48346g.getClass();
                a(new C7467gk(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7467gk c7467gk2 = (C7467gk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7467gk = c7467gk2;
                    if (c7467gk != null) {
                        a(c7467gk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7467gk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this, obj);
        return this;
    }

    @Override
    public final C7467gk m1181buildPartial() {
        int i10;
        C7467gk c7467gk = new C7467gk(this);
        int i11 = this.f48078b;
        if ((i11 & 1) != 0) {
            c7467gk.f48348c = this.f48079c;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            c7467gk.f48349d = this.f48080d;
            i10 |= 2;
        }
        c7467gk.f48347b = i10;
        onBuilt();
        return c7467gk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7467gk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7300fk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7467gk.f48345f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54512g;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54513h.a(C7467gk.class, C7300fk.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7300fk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7300fk) super.setUnknownFields(c9002pv0);
    }

    public C7300fk(C7011dz c7011dz) {
        super(c7011dz);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7467gk.f48345f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7300fk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7467gk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7467gk) {
            return a((C7467gk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7467gk) {
            return a((C7467gk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C7300fk a(C7467gk c7467gk) {
        if (c7467gk == C7467gk.f48345f) {
            return this;
        }
        if ((c7467gk.f48347b & 1) != 0) {
            int i10 = c7467gk.f48348c;
            this.f48078b |= 1;
            this.f48079c = i10;
            onChanged();
        }
        if ((c7467gk.f48347b & 2) != 0) {
            int i11 = c7467gk.f48349d;
            this.f48078b |= 2;
            this.f48080d = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
