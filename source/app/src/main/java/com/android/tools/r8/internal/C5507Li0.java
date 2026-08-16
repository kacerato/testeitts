package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5507Li0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f42045b;

    public String f42046c;

    public List f42047d;

    public C4862Af0 f42048e;

    public C5507Li0() {
        this.f42046c = "";
        this.f42047d = Collections.EMPTY_LIST;
        if (C5738Pi0.access$7700()) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5507Li0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5738Pi0 c5738Pi0 = null;
        try {
            try {
                C5738Pi0.f43338f.getClass();
                a(new C5738Pi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5738Pi0 c5738Pi02 = (C5738Pi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5738Pi0 = c5738Pi02;
                    if (c5738Pi0 != null) {
                        a(c5738Pi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5738Pi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5507Li0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5738Pi0 m1181buildPartial() {
        C5738Pi0 c5738Pi0 = new C5738Pi0(this);
        c5738Pi0.f43339b = this.f42046c;
        C4862Af0 c4862Af0 = this.f42048e;
        if (c4862Af0 == null) {
            if ((this.f42045b & 1) != 0) {
                this.f42047d = Collections.unmodifiableList(this.f42047d);
                this.f42045b &= -2;
            }
            c5738Pi0.f43340c = this.f42047d;
        } else {
            c5738Pi0.f43340c = c4862Af0.b();
        }
        onBuilt();
        return c5738Pi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5738Pi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f42048e == null) {
            this.f42048e = new C4862Af0(this.f42047d, (this.f42045b & 1) != 0, getParentForChildren(), isClean());
            this.f42047d = null;
        }
        return this.f42048e;
    }

    public final Object clone() {
        return (C5507Li0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5738Pi0.f43337e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53263a0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53265b0.a(C5738Pi0.class, C5507Li0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5507Li0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5507Li0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5507Li0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5738Pi0.f43337e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5507Li0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5738Pi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5738Pi0) {
            return a((C5738Pi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5507Li0(C7011dz c7011dz) {
        super(c7011dz);
        this.f42046c = "";
        this.f42047d = Collections.EMPTY_LIST;
        if (C5738Pi0.access$7700()) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5738Pi0) {
            return a((C5738Pi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5507Li0 a(C5738Pi0 c5738Pi0) {
        if (c5738Pi0 == C5738Pi0.f43337e) {
            return this;
        }
        String str = c5738Pi0.f43339b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5738Pi0.f43339b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f42046c = c5738Pi0.f43339b;
            onChanged();
        }
        if (this.f42048e == null) {
            if (!c5738Pi0.f43340c.isEmpty()) {
                if (this.f42047d.isEmpty()) {
                    this.f42047d = c5738Pi0.f43340c;
                    this.f42045b &= -2;
                } else {
                    if ((this.f42045b & 1) == 0) {
                        this.f42047d = new ArrayList(this.f42047d);
                        this.f42045b |= 1;
                    }
                    this.f42047d.addAll(c5738Pi0.f43340c);
                }
                onChanged();
            }
        } else if (!c5738Pi0.f43340c.isEmpty()) {
            if (this.f42048e.f38676b.isEmpty()) {
                this.f42048e.f38675a = null;
                this.f42048e = null;
                this.f42047d = c5738Pi0.f43340c;
                this.f42045b &= -2;
                this.f42048e = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f42048e.a(c5738Pi0.f43340c);
            }
        }
        onChanged();
        return this;
    }
}
