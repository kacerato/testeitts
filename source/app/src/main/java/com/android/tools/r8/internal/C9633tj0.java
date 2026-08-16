package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;

public final class C9633tj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f52675b;

    public Object f52676c;

    public C7795ii0 f52677d;

    public C9633tj0() {
        this.f52675b = 0;
        C9800uj0 c9800uj0 = C9800uj0.f52926f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9633tj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9800uj0 c9800uj0 = null;
        try {
            try {
                C9800uj0.f52927g.getClass();
                a(new C9800uj0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9800uj0 c9800uj02 = (C9800uj0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9800uj0 = c9800uj02;
                    if (c9800uj0 != null) {
                        a(c9800uj0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9800uj0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9633tj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C9800uj0 m1181buildPartial() {
        C9800uj0 c9800uj0 = new C9800uj0(this);
        int i10 = this.f52675b;
        if (i10 == 1) {
            c9800uj0.f52929c = this.f52676c;
        }
        if (i10 == 2) {
            c9800uj0.f52929c = this.f52676c;
        }
        c9800uj0.f52930d = this.f52677d;
        c9800uj0.f52928b = i10;
        onBuilt();
        return c9800uj0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9800uj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9633tj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9800uj0.f52926f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53224G0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53226H0.a(C9800uj0.class, C9633tj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9633tj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9633tj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9633tj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9800uj0.f52926f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9633tj0) super.setUnknownFields(c9002pv0);
    }

    public C9633tj0(C7011dz c7011dz) {
        super(c7011dz);
        this.f52675b = 0;
        C9800uj0 c9800uj0 = C9800uj0.f52926f;
    }

    @Override
    public final InterfaceC8095kW build() {
        C9800uj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9800uj0) {
            return a((C9800uj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9800uj0) {
            return a((C9800uj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C9633tj0 a(C9800uj0 c9800uj0) {
        Object obj;
        C8799oj0 c8799oj0;
        if (c9800uj0 == C9800uj0.f52926f) {
            return this;
        }
        C7795ii0 c7795ii0 = c9800uj0.f52930d;
        if (c7795ii0 != null) {
            C7795ii0 c7795ii02 = this.f52677d;
            if (c7795ii02 != null) {
                this.f52677d = C7795ii0.f49025e.toBuilder().a(c7795ii02).a(c7795ii0).m1181buildPartial();
            } else {
                this.f52677d = c7795ii0;
            }
            onChanged();
        }
        int i10 = c9800uj0.f52928b;
        int b10 = AbstractC4291c.b(i10 != 0 ? i10 != 1 ? i10 != 2 ? 0 : 2 : 1 : 3);
        if (b10 == 0) {
            C8799oj0 a10 = c9800uj0.a();
            if (this.f52675b == 1 && (obj = this.f52676c) != (c8799oj0 = C8799oj0.f51327h)) {
                this.f52676c = c8799oj0.toBuilder().a((C8799oj0) obj).a(a10).m1181buildPartial();
            } else {
                this.f52676c = a10;
            }
            onChanged();
            this.f52675b = 1;
        } else if (b10 == 1) {
            this.f52675b = 2;
            this.f52676c = c9800uj0.f52929c;
            onChanged();
        }
        onChanged();
        return this;
    }
}
