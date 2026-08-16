package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C6803cl extends AbstractC7345fz implements InterfaceC8596nW {

    public int f47153b;

    public Serializable f47154c;

    public C7470gl f47155d;

    public final C5109Em0 f47156e;

    public C6803cl() {
        super(null);
        C5109Em0 c5109Em0;
        C7470gl c7470gl;
        this.f47154c = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f47156e) == null) {
            if (c5109Em0 == null) {
                c7470gl = this.f47155d;
                if (c7470gl == null) {
                    c7470gl = C7470gl.f48353e;
                }
            } else {
                c7470gl = (C7470gl) c5109Em0.d();
            }
            this.f47156e = new C5109Em0(c7470gl, getParentForChildren(), isClean());
            this.f47155d = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6803cl mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6970dl c6970dl = null;
        try {
            try {
                a((C6970dl) C6970dl.f47494g.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6970dl c6970dl2 = (C6970dl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6970dl = c6970dl2;
                    if (c6970dl != null) {
                        a(c6970dl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6970dl != null) {
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
    public final C6970dl m1181buildPartial() {
        C6970dl c6970dl = new C6970dl(this);
        int i10 = this.f47153b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c6970dl.f47496c = this.f47154c;
        if ((i10 & 2) != 0) {
            C5109Em0 c5109Em0 = this.f47156e;
            if (c5109Em0 == null) {
                c6970dl.f47497d = this.f47155d;
            } else {
                c5109Em0.f40016d = true;
                c6970dl.f47497d = (C7470gl) c5109Em0.d();
            }
            i11 |= 2;
        }
        c6970dl.f47495b = i11;
        onBuilt();
        return c6970dl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6970dl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6803cl) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6970dl.f47493f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54518m;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54519n.a(C6970dl.class, C6803cl.class);
    }

    @Override
    public final boolean isInitialized() {
        C7470gl c7470gl;
        if ((this.f47153b & 2) == 0) {
            return true;
        }
        C5109Em0 c5109Em0 = this.f47156e;
        if (c5109Em0 == null) {
            c7470gl = this.f47155d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
        } else {
            c7470gl = (C7470gl) c5109Em0.d();
        }
        return c7470gl.isInitialized();
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6803cl) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6803cl) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6970dl.f47493f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6803cl) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6970dl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6970dl) {
            return a((C6970dl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6970dl) {
            return a((C6970dl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C6803cl a(C6970dl c6970dl) {
        C7470gl c7470gl;
        C7470gl c7470gl2;
        if (c6970dl == C6970dl.f47493f) {
            return this;
        }
        if ((c6970dl.f47495b & 1) != 0) {
            this.f47153b |= 1;
            this.f47154c = c6970dl.f47496c;
            onChanged();
        }
        if (c6970dl.a()) {
            C7470gl c7470gl3 = c6970dl.f47497d;
            if (c7470gl3 == null) {
                c7470gl3 = C7470gl.f48353e;
            }
            C5109Em0 c5109Em0 = this.f47156e;
            if (c5109Em0 == null) {
                if ((this.f47153b & 2) != 0 && (c7470gl = this.f47155d) != null && c7470gl != (c7470gl2 = C7470gl.f48353e)) {
                    this.f47155d = c7470gl2.toBuilder().a(c7470gl).a(c7470gl3).m1181buildPartial();
                } else {
                    this.f47155d = c7470gl3;
                }
                onChanged();
            } else {
                c5109Em0.a(c7470gl3);
            }
            this.f47153b |= 2;
        }
        onChanged();
        return this;
    }

    public C6803cl(C7011dz c7011dz) {
        super(c7011dz);
        C5109Em0 c5109Em0;
        C7470gl c7470gl;
        this.f47154c = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f47156e) == null) {
            if (c5109Em0 == null) {
                c7470gl = this.f47155d;
                if (c7470gl == null) {
                    c7470gl = C7470gl.f48353e;
                }
            } else {
                c7470gl = (C7470gl) c5109Em0.d();
            }
            this.f47156e = new C5109Em0(c7470gl, getParentForChildren(), isClean());
            this.f47155d = null;
        }
    }
}
