package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10462yh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f54114b;

    public C4983Ch0 f54115c;

    public String f54116d;

    public List f54117e;

    public C4862Af0 f54118f;

    public C10462yh0() {
        boolean z10;
        this.f54116d = "";
        this.f54117e = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10462yh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10629zh0 c10629zh0 = null;
        try {
            try {
                C10629zh0.f54451g.getClass();
                a(new C10629zh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10629zh0 c10629zh02 = (C10629zh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10629zh0 = c10629zh02;
                    if (c10629zh0 != null) {
                        a(c10629zh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10629zh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C10462yh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C10629zh0 m1181buildPartial() {
        C10629zh0 c10629zh0 = new C10629zh0(this);
        c10629zh0.f54452b = this.f54115c;
        c10629zh0.f54453c = this.f54116d;
        C4862Af0 c4862Af0 = this.f54118f;
        if (c4862Af0 == null) {
            if ((this.f54114b & 1) != 0) {
                this.f54117e = Collections.unmodifiableList(this.f54117e);
                this.f54114b &= -2;
            }
            c10629zh0.f54454d = this.f54117e;
        } else {
            c10629zh0.f54454d = c4862Af0.b();
        }
        onBuilt();
        return c10629zh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10629zh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f54118f == null) {
            this.f54118f = new C4862Af0(this.f54117e, (this.f54114b & 1) != 0, getParentForChildren(), isClean());
            this.f54117e = null;
        }
        return this.f54118f;
    }

    public final Object clone() {
        return (C10462yh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10629zh0.f54450f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53290o;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53292p.a(C10629zh0.class, C10462yh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C10462yh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C10462yh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C10462yh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10629zh0.f54450f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C10462yh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10629zh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10629zh0) {
            return a((C10629zh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C10462yh0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f54116d = "";
        this.f54117e = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10629zh0) {
            return a((C10629zh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C10462yh0 a(C10629zh0 c10629zh0) {
        if (c10629zh0 == C10629zh0.f54450f) {
            return this;
        }
        C4983Ch0 c4983Ch0 = c10629zh0.f54452b;
        if (c4983Ch0 != null) {
            C4983Ch0 c4983Ch02 = this.f54115c;
            if (c4983Ch02 != null) {
                this.f54115c = C4983Ch0.f39315d.toBuilder().a(c4983Ch02).a(c4983Ch0).m1181buildPartial();
            } else {
                this.f54115c = c4983Ch0;
            }
            onChanged();
        }
        if (!c10629zh0.b().isEmpty()) {
            this.f54116d = c10629zh0.f54453c;
            onChanged();
        }
        if (this.f54118f == null) {
            if (!c10629zh0.f54454d.isEmpty()) {
                if (this.f54117e.isEmpty()) {
                    this.f54117e = c10629zh0.f54454d;
                    this.f54114b &= -2;
                } else {
                    if ((this.f54114b & 1) == 0) {
                        this.f54117e = new ArrayList(this.f54117e);
                        this.f54114b |= 1;
                    }
                    this.f54117e.addAll(c10629zh0.f54454d);
                }
                onChanged();
            }
        } else if (!c10629zh0.f54454d.isEmpty()) {
            if (this.f54118f.f38676b.isEmpty()) {
                this.f54118f.f38675a = null;
                this.f54118f = null;
                this.f54117e = c10629zh0.f54454d;
                this.f54114b &= -2;
                this.f54118f = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f54118f.a(c10629zh0.f54454d);
            }
        }
        onChanged();
        return this;
    }
}
