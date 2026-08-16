package com.android.tools.r8.internal;

import java.util.Map;

public final class C8300lk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f50084b;

    public int f50085c;

    public int f50086d;

    public C8300lk() {
        super(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8300lk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8467mk c8467mk = null;
        try {
            try {
                C8467mk.f50405g.getClass();
                a(new C8467mk(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8467mk c8467mk2 = (C8467mk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8467mk = c8467mk2;
                    if (c8467mk != null) {
                        a(c8467mk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8467mk != null) {
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
    public final C8467mk m1181buildPartial() {
        int i10;
        C8467mk c8467mk = new C8467mk(this);
        int i11 = this.f50084b;
        if ((i11 & 1) != 0) {
            c8467mk.f50407c = this.f50085c;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            c8467mk.f50408d = this.f50086d;
            i10 |= 2;
        }
        c8467mk.f50406b = i10;
        onBuilt();
        return c8467mk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8467mk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8300lk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8467mk.f50404f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54522q;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54523r.a(C8467mk.class, C8300lk.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8300lk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8300lk) super.setUnknownFields(c9002pv0);
    }

    public C8300lk(C7011dz c7011dz) {
        super(c7011dz);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8467mk.f50404f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8300lk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8467mk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8467mk) {
            return a((C8467mk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8467mk) {
            return a((C8467mk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C8300lk a(C8467mk c8467mk) {
        if (c8467mk == C8467mk.f50404f) {
            return this;
        }
        if ((c8467mk.f50406b & 1) != 0) {
            int i10 = c8467mk.f50407c;
            this.f50084b |= 1;
            this.f50085c = i10;
            onChanged();
        }
        if ((c8467mk.f50406b & 2) != 0) {
            int i11 = c8467mk.f50408d;
            this.f50084b |= 2;
            this.f50086d = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
