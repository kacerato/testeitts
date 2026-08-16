package com.android.tools.r8.internal;

import java.util.Map;

public final class C6800ck extends AbstractC7345fz implements InterfaceC8596nW {

    public int f47145b;

    public int f47146c;

    public int f47147d;

    public C10637zk f47148e;

    public final C5109Em0 f47149f;

    public C6800ck() {
        super(null);
        C5109Em0 c5109Em0;
        C10637zk c10637zk;
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f47149f) == null) {
            if (c5109Em0 == null) {
                c10637zk = this.f47148e;
                if (c10637zk == null) {
                    c10637zk = C10637zk.f54477e;
                }
            } else {
                c10637zk = (C10637zk) c5109Em0.d();
            }
            this.f47149f = new C5109Em0(c10637zk, getParentForChildren(), isClean());
            this.f47148e = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6800ck mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6967dk c6967dk = null;
        try {
            try {
                C6967dk.f47485h.getClass();
                a(new C6967dk(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6967dk c6967dk2 = (C6967dk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6967dk = c6967dk2;
                    if (c6967dk != null) {
                        a(c6967dk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6967dk != null) {
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
    public final C6967dk m1181buildPartial() {
        int i10;
        C6967dk c6967dk = new C6967dk(this);
        int i11 = this.f47145b;
        if ((i11 & 1) != 0) {
            c6967dk.f47487c = this.f47146c;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            c6967dk.f47488d = this.f47147d;
            i10 |= 2;
        }
        if ((i11 & 4) != 0) {
            C5109Em0 c5109Em0 = this.f47149f;
            if (c5109Em0 == null) {
                c6967dk.f47489e = this.f47148e;
            } else {
                c5109Em0.f40016d = true;
                c6967dk.f47489e = (C10637zk) c5109Em0.d();
            }
            i10 |= 4;
        }
        c6967dk.f47486b = i10;
        onBuilt();
        return c6967dk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6967dk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6800ck) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6967dk.f47484g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54510e;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54511f.a(C6967dk.class, C6800ck.class);
    }

    @Override
    public final boolean isInitialized() {
        C10637zk c10637zk;
        if ((this.f47145b & 4) == 0) {
            return true;
        }
        C5109Em0 c5109Em0 = this.f47149f;
        if (c5109Em0 == null) {
            c10637zk = this.f47148e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
        } else {
            c10637zk = (C10637zk) c5109Em0.d();
        }
        return c10637zk.isInitialized();
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6800ck) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6800ck) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6967dk.f47484g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6800ck) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6967dk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6967dk) {
            return a((C6967dk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6967dk) {
            return a((C6967dk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C6800ck a(C6967dk c6967dk) {
        C10637zk c10637zk;
        C10637zk c10637zk2;
        if (c6967dk == C6967dk.f47484g) {
            return this;
        }
        if ((c6967dk.f47486b & 1) != 0) {
            int i10 = c6967dk.f47487c;
            this.f47145b |= 1;
            this.f47146c = i10;
            onChanged();
        }
        if ((c6967dk.f47486b & 2) != 0) {
            int i11 = c6967dk.f47488d;
            this.f47145b |= 2;
            this.f47147d = i11;
            onChanged();
        }
        if (c6967dk.a()) {
            C10637zk c10637zk3 = c6967dk.f47489e;
            if (c10637zk3 == null) {
                c10637zk3 = C10637zk.f54477e;
            }
            C5109Em0 c5109Em0 = this.f47149f;
            if (c5109Em0 == null) {
                if ((this.f47145b & 4) != 0 && (c10637zk = this.f47148e) != null && c10637zk != (c10637zk2 = C10637zk.f54477e)) {
                    this.f47148e = c10637zk2.toBuilder().a(c10637zk).a(c10637zk3).m1181buildPartial();
                } else {
                    this.f47148e = c10637zk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c10637zk3);
            }
            this.f47145b |= 4;
        }
        onChanged();
        return this;
    }

    public C6800ck(C7011dz c7011dz) {
        super(c7011dz);
        C5109Em0 c5109Em0;
        C10637zk c10637zk;
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f47149f) == null) {
            if (c5109Em0 == null) {
                c10637zk = this.f47148e;
                if (c10637zk == null) {
                    c10637zk = C10637zk.f54477e;
                }
            } else {
                c10637zk = (C10637zk) c5109Em0.d();
            }
            this.f47149f = new C5109Em0(c10637zk, getParentForChildren(), isClean());
            this.f47148e = null;
        }
    }
}
