package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9630ti0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f52670b;

    public C6311Zh0 f52671c;

    public C7295fi0 f52672d;

    public List f52673e;

    public C4862Af0 f52674f;

    public C9630ti0() {
        boolean z10;
        this.f52673e = Collections.EMPTY_LIST;
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
    public final C9630ti0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10298xi0 c10298xi0 = null;
        try {
            try {
                C10298xi0.f53821g.getClass();
                a(new C10298xi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10298xi0 c10298xi02 = (C10298xi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10298xi0 = c10298xi02;
                    if (c10298xi0 != null) {
                        a(c10298xi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10298xi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9630ti0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C10298xi0 m1181buildPartial() {
        C10298xi0 c10298xi0 = new C10298xi0(this);
        int i10 = this.f52670b;
        c10298xi0.f53822b = this.f52671c;
        c10298xi0.f53823c = this.f52672d;
        C4862Af0 c4862Af0 = this.f52674f;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f52673e = Collections.unmodifiableList(this.f52673e);
                this.f52670b &= -2;
            }
            c10298xi0.f53824d = this.f52673e;
        } else {
            c10298xi0.f53824d = c4862Af0.b();
        }
        onBuilt();
        return c10298xi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10298xi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f52674f == null) {
            this.f52674f = new C4862Af0(this.f52673e, (this.f52670b & 1) != 0, getParentForChildren(), isClean());
            this.f52673e = null;
        }
        return this.f52674f;
    }

    public final Object clone() {
        return (C9630ti0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10298xi0.f53820f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53295q0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53297r0.a(C10298xi0.class, C9630ti0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9630ti0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9630ti0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9630ti0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10298xi0.f53820f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9630ti0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10298xi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10298xi0) {
            return a((C10298xi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C9630ti0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f52673e = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10298xi0) {
            return a((C10298xi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C9630ti0 a(C10298xi0 c10298xi0) {
        if (c10298xi0 == C10298xi0.f53820f) {
            return this;
        }
        C6311Zh0 c6311Zh0 = c10298xi0.f53822b;
        if (c6311Zh0 != null) {
            C6311Zh0 c6311Zh02 = this.f52671c;
            if (c6311Zh02 != null) {
                this.f52671c = C6311Zh0.f46320j.toBuilder().a(c6311Zh02).a(c6311Zh0).m1181buildPartial();
            } else {
                this.f52671c = c6311Zh0;
            }
            onChanged();
        }
        C7295fi0 c7295fi0 = c10298xi0.f53823c;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f52672d;
            if (c7295fi02 != null) {
                this.f52672d = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f52672d = c7295fi0;
            }
            onChanged();
        }
        if (this.f52674f == null) {
            if (!c10298xi0.f53824d.isEmpty()) {
                if (this.f52673e.isEmpty()) {
                    this.f52673e = c10298xi0.f53824d;
                    this.f52670b &= -2;
                } else {
                    if ((this.f52670b & 1) == 0) {
                        this.f52673e = new ArrayList(this.f52673e);
                        this.f52670b |= 1;
                    }
                    this.f52673e.addAll(c10298xi0.f53824d);
                }
                onChanged();
            }
        } else if (!c10298xi0.f53824d.isEmpty()) {
            if (this.f52674f.f38676b.isEmpty()) {
                this.f52674f.f38675a = null;
                this.f52674f = null;
                this.f52673e = c10298xi0.f53824d;
                this.f52670b &= -2;
                this.f52674f = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f52674f.a(c10298xi0.f53824d);
            }
        }
        onChanged();
        return this;
    }
}
