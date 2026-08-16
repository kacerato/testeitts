package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C9468sk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f52437b;

    public Serializable f52438c;

    public int f52439d;

    public C10136wk f52440e;

    public final C5109Em0 f52441f;

    public C9468sk() {
        super(null);
        C5109Em0 c5109Em0;
        C10136wk c10136wk;
        this.f52438c = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f52441f) == null) {
            if (c5109Em0 == null) {
                c10136wk = this.f52440e;
                if (c10136wk == null) {
                    c10136wk = C10136wk.f53587g;
                }
            } else {
                c10136wk = (C10136wk) c5109Em0.d();
            }
            this.f52441f = new C5109Em0(c10136wk, getParentForChildren(), isClean());
            this.f52440e = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9468sk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9635tk c9635tk = null;
        try {
            try {
                a((C9635tk) C9635tk.f52679h.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9635tk c9635tk2 = (C9635tk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9635tk = c9635tk2;
                    if (c9635tk != null) {
                        a(c9635tk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9635tk != null) {
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
    public final C9635tk m1181buildPartial() {
        C9635tk c9635tk = new C9635tk(this);
        int i10 = this.f52437b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c9635tk.f52681c = this.f52438c;
        if ((i10 & 2) != 0) {
            c9635tk.f52682d = this.f52439d;
            i11 |= 2;
        }
        if ((i10 & 4) != 0) {
            C5109Em0 c5109Em0 = this.f52441f;
            if (c5109Em0 == null) {
                c9635tk.f52683e = this.f52440e;
            } else {
                c5109Em0.f40016d = true;
                c9635tk.f52683e = (C10136wk) c5109Em0.d();
            }
            i11 |= 4;
        }
        c9635tk.f52680b = i11;
        onBuilt();
        return c9635tk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9635tk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9468sk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9635tk.f52678g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54524s;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54525t.a(C9635tk.class, C9468sk.class);
    }

    @Override
    public final boolean isInitialized() {
        C10136wk c10136wk;
        if ((this.f52437b & 4) == 0) {
            return true;
        }
        C5109Em0 c5109Em0 = this.f52441f;
        if (c5109Em0 == null) {
            c10136wk = this.f52440e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
        } else {
            c10136wk = (C10136wk) c5109Em0.d();
        }
        return c10136wk.isInitialized();
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9468sk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9468sk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9635tk.f52678g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9468sk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C9635tk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9635tk) {
            return a((C9635tk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9635tk) {
            return a((C9635tk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C9468sk a(C9635tk c9635tk) {
        C10136wk c10136wk;
        C10136wk c10136wk2;
        if (c9635tk == C9635tk.f52678g) {
            return this;
        }
        if ((c9635tk.f52680b & 1) != 0) {
            this.f52437b |= 1;
            this.f52438c = c9635tk.f52681c;
            onChanged();
        }
        if ((c9635tk.f52680b & 2) != 0) {
            int i10 = c9635tk.f52682d;
            this.f52437b |= 2;
            this.f52439d = i10;
            onChanged();
        }
        if (c9635tk.a()) {
            C10136wk c10136wk3 = c9635tk.f52683e;
            if (c10136wk3 == null) {
                c10136wk3 = C10136wk.f53587g;
            }
            C5109Em0 c5109Em0 = this.f52441f;
            if (c5109Em0 == null) {
                if ((this.f52437b & 4) != 0 && (c10136wk = this.f52440e) != null && c10136wk != (c10136wk2 = C10136wk.f53587g)) {
                    this.f52440e = c10136wk2.toBuilder().a(c10136wk).a(c10136wk3).m1181buildPartial();
                } else {
                    this.f52440e = c10136wk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c10136wk3);
            }
            this.f52437b |= 4;
        }
        onChanged();
        return this;
    }

    public C9468sk(C7011dz c7011dz) {
        super(c7011dz);
        C5109Em0 c5109Em0;
        C10136wk c10136wk;
        this.f52438c = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f52441f) == null) {
            if (c5109Em0 == null) {
                c10136wk = this.f52440e;
                if (c10136wk == null) {
                    c10136wk = C10136wk.f53587g;
                }
            } else {
                c10136wk = (C10136wk) c5109Em0.d();
            }
            this.f52441f = new C5109Em0(c10136wk, getParentForChildren(), isClean());
            this.f52440e = null;
        }
    }
}
