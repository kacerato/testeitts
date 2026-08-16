package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5966Tg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f44534b;

    public C6195Xg0 f44535c;

    public String f44536d;

    public C7798ij0 f44537e;

    public C9624tg0 f44538f;

    public C10128wh0 f44539g;

    public List f44540h;

    public C4862Af0 f44541i;

    public C8295li0 f44542j;

    public C5966Tg0() {
        boolean z10;
        this.f44536d = "";
        this.f44540h = Collections.EMPTY_LIST;
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
    public final C5966Tg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6024Ug0 c6024Ug0 = null;
        try {
            try {
                C6024Ug0.f44827k.getClass();
                a(new C6024Ug0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6024Ug0 c6024Ug02 = (C6024Ug0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6024Ug0 = c6024Ug02;
                    if (c6024Ug0 != null) {
                        a(c6024Ug0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6024Ug0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5966Tg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6024Ug0 m1181buildPartial() {
        C6024Ug0 c6024Ug0 = new C6024Ug0(this);
        c6024Ug0.f44828b = this.f44535c;
        c6024Ug0.f44829c = this.f44536d;
        c6024Ug0.f44830d = this.f44537e;
        c6024Ug0.f44831e = this.f44538f;
        c6024Ug0.f44832f = this.f44539g;
        C4862Af0 c4862Af0 = this.f44541i;
        if (c4862Af0 == null) {
            if ((this.f44534b & 1) != 0) {
                this.f44540h = Collections.unmodifiableList(this.f44540h);
                this.f44534b &= -2;
            }
            c6024Ug0.f44833g = this.f44540h;
        } else {
            c6024Ug0.f44833g = c4862Af0.b();
        }
        c6024Ug0.f44834h = this.f44542j;
        onBuilt();
        return c6024Ug0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6024Ug0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f44541i == null) {
            this.f44541i = new C4862Af0(this.f44540h, (this.f44534b & 1) != 0, getParentForChildren(), isClean());
            this.f44540h = null;
        }
        return this.f44541i;
    }

    public final Object clone() {
        return (C5966Tg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6024Ug0.f44826j;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53223G;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53225H.a(C6024Ug0.class, C5966Tg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5966Tg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5966Tg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5966Tg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6024Ug0.f44826j;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5966Tg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6024Ug0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6024Ug0) {
            return a((C6024Ug0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5966Tg0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f44536d = "";
        this.f44540h = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6024Ug0) {
            return a((C6024Ug0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5966Tg0 a(C6024Ug0 c6024Ug0) {
        if (c6024Ug0 == C6024Ug0.f44826j) {
            return this;
        }
        C6195Xg0 c6195Xg0 = c6024Ug0.f44828b;
        if (c6195Xg0 != null) {
            C6195Xg0 c6195Xg02 = this.f44535c;
            if (c6195Xg02 != null) {
                this.f44535c = C6195Xg0.f45787d.toBuilder().a(c6195Xg02).a(c6195Xg0).m1181buildPartial();
            } else {
                this.f44535c = c6195Xg0;
            }
            onChanged();
        }
        if (!c6024Ug0.getName().isEmpty()) {
            this.f44536d = c6024Ug0.f44829c;
            onChanged();
        }
        C7798ij0 c7798ij0 = c6024Ug0.f44830d;
        if (c7798ij0 != null) {
            C7798ij0 c7798ij02 = this.f44537e;
            if (c7798ij02 != null) {
                this.f44537e = C7798ij0.f49034g.toBuilder().a(c7798ij02).a(c7798ij0).m1181buildPartial();
            } else {
                this.f44537e = c7798ij0;
            }
            onChanged();
        }
        C9624tg0 c9624tg0 = c6024Ug0.f44831e;
        if (c9624tg0 != null) {
            C9624tg0 c9624tg02 = this.f44538f;
            if (c9624tg02 != null) {
                this.f44538f = C9624tg0.f52661e.toBuilder().a(c9624tg02).a(c9624tg0).m1181buildPartial();
            } else {
                this.f44538f = c9624tg0;
            }
            onChanged();
        }
        if (c6024Ug0.b()) {
            C10128wh0 c10128wh0 = c6024Ug0.f44832f;
            if (c10128wh0 == null) {
                c10128wh0 = C10128wh0.f53562i;
            }
            C10128wh0 c10128wh02 = this.f44539g;
            if (c10128wh02 != null) {
                this.f44539g = C10128wh0.f53562i.toBuilder().a(c10128wh02).a(c10128wh0).m1181buildPartial();
            } else {
                this.f44539g = c10128wh0;
            }
            onChanged();
        }
        if (this.f44541i == null) {
            if (!c6024Ug0.f44833g.isEmpty()) {
                if (this.f44540h.isEmpty()) {
                    this.f44540h = c6024Ug0.f44833g;
                    this.f44534b &= -2;
                } else {
                    if ((this.f44534b & 1) == 0) {
                        this.f44540h = new ArrayList(this.f44540h);
                        this.f44534b |= 1;
                    }
                    this.f44540h.addAll(c6024Ug0.f44833g);
                }
                onChanged();
            }
        } else if (!c6024Ug0.f44833g.isEmpty()) {
            if (this.f44541i.f38676b.isEmpty()) {
                this.f44541i.f38675a = null;
                this.f44541i = null;
                this.f44540h = c6024Ug0.f44833g;
                this.f44534b &= -2;
                this.f44541i = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f44541i.a(c6024Ug0.f44833g);
            }
        }
        C8295li0 c8295li0 = c6024Ug0.f44834h;
        if (c8295li0 != null) {
            C8295li0 c8295li02 = this.f44542j;
            if (c8295li02 != null) {
                this.f44542j = C8295li0.f50069e.toBuilder().a(c8295li02).a(c8295li0).m1181buildPartial();
            } else {
                this.f44542j = c8295li0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
