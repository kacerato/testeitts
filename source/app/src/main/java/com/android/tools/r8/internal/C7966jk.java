package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C7966jk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f49322b;

    public Serializable f49323c;

    public List f49324d;

    public C4862Af0 f49325e;

    public C9135qk f49326f;

    public final C5109Em0 f49327g;

    public List f49328h;

    public C4862Af0 f49329i;

    public InterfaceC10589zR f49330j;

    public C7966jk() {
        super(null);
        C9135qk c9135qk;
        this.f49323c = "";
        List list = Collections.EMPTY_LIST;
        this.f49324d = list;
        this.f49328h = list;
        this.f49330j = C10255xR.f53759d;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f49325e == null) {
                this.f49325e = new C4862Af0(list, (this.f49322b & 2) != 0, getParentForChildren(), isClean());
                this.f49324d = null;
            }
            C5109Em0 c5109Em0 = this.f49327g;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c9135qk = this.f49326f;
                    if (c9135qk == null) {
                        c9135qk = C9135qk.f51867h;
                    }
                } else {
                    c9135qk = (C9135qk) c5109Em0.d();
                }
                this.f49327g = new C5109Em0(c9135qk, getParentForChildren(), isClean());
                this.f49326f = null;
            }
            if (this.f49329i == null) {
                this.f49329i = new C4862Af0(this.f49328h, (this.f49322b & 8) != 0, getParentForChildren(), isClean());
                this.f49328h = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7966jk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8634nk c8634nk = null;
        try {
            try {
                a((C8634nk) C8634nk.f51055j.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8634nk c8634nk2 = (C8634nk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8634nk = c8634nk2;
                    if (c8634nk != null) {
                        a(c8634nk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8634nk != null) {
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
    public final C8634nk m1181buildPartial() {
        C8634nk c8634nk = new C8634nk(this);
        int i10 = this.f49322b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c8634nk.f51057c = this.f49323c;
        C4862Af0 c4862Af0 = this.f49325e;
        if (c4862Af0 == null) {
            if ((this.f49322b & 2) != 0) {
                this.f49324d = Collections.unmodifiableList(this.f49324d);
                this.f49322b &= -3;
            }
            c8634nk.f51058d = this.f49324d;
        } else {
            c8634nk.f51058d = c4862Af0.b();
        }
        if ((i10 & 4) != 0) {
            C5109Em0 c5109Em0 = this.f49327g;
            if (c5109Em0 == null) {
                c8634nk.f51059e = this.f49326f;
            } else {
                c5109Em0.f40016d = true;
                c8634nk.f51059e = (C9135qk) c5109Em0.d();
            }
            i11 |= 2;
        }
        C4862Af0 c4862Af02 = this.f49329i;
        if (c4862Af02 == null) {
            if ((this.f49322b & 8) != 0) {
                this.f49328h = Collections.unmodifiableList(this.f49328h);
                this.f49322b &= -9;
            }
            c8634nk.f51060f = this.f49328h;
        } else {
            c8634nk.f51060f = c4862Af02.b();
        }
        if ((this.f49322b & 16) != 0) {
            this.f49330j = this.f49330j.e();
            this.f49322b &= -17;
        }
        c8634nk.f51061g = this.f49330j;
        c8634nk.f51056b = i11;
        onBuilt();
        return c8634nk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8634nk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7966jk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8634nk.f51054i;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54520o;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54521p.a(C8634nk.class, C7966jk.class);
    }

    @Override
    public final boolean isInitialized() {
        C9135qk c9135qk;
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f49325e;
            if (i10 >= (c4862Af0 == null ? this.f49324d.size() : c4862Af0.f38676b.size())) {
                if ((this.f49322b & 4) == 0) {
                    return true;
                }
                C5109Em0 c5109Em0 = this.f49327g;
                if (c5109Em0 == null) {
                    c9135qk = this.f49326f;
                    if (c9135qk == null) {
                        c9135qk = C9135qk.f51867h;
                    }
                } else {
                    c9135qk = (C9135qk) c5109Em0.d();
                }
                return c9135qk.isInitialized();
            }
            C4862Af0 c4862Af02 = this.f49325e;
            if (!(c4862Af02 == null ? (C9635tk) this.f49324d.get(i10) : (C9635tk) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7966jk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7966jk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8634nk.f51054i;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7966jk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8634nk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8634nk) {
            return a((C8634nk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8634nk) {
            return a((C8634nk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C7966jk a(C8634nk c8634nk) {
        C4862Af0 c4862Af0;
        C9135qk c9135qk;
        C9135qk c9135qk2;
        if (c8634nk == C8634nk.f51054i) {
            return this;
        }
        if ((c8634nk.f51056b & 1) != 0) {
            this.f49322b |= 1;
            this.f49323c = c8634nk.f51057c;
            onChanged();
        }
        C4862Af0 c4862Af02 = null;
        if (this.f49325e == null) {
            if (!c8634nk.f51058d.isEmpty()) {
                if (this.f49324d.isEmpty()) {
                    this.f49324d = c8634nk.f51058d;
                    this.f49322b &= -3;
                } else {
                    if ((this.f49322b & 2) == 0) {
                        this.f49324d = new ArrayList(this.f49324d);
                        this.f49322b |= 2;
                    }
                    this.f49324d.addAll(c8634nk.f51058d);
                }
                onChanged();
            }
        } else if (!c8634nk.f51058d.isEmpty()) {
            if (this.f49325e.f38676b.isEmpty()) {
                this.f49325e.f38675a = null;
                this.f49325e = null;
                List list = c8634nk.f51058d;
                this.f49324d = list;
                this.f49322b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af0 = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f49325e = c4862Af0;
                    this.f49324d = null;
                } else {
                    c4862Af0 = null;
                }
                this.f49325e = c4862Af0;
            } else {
                this.f49325e.a(c8634nk.f51058d);
            }
        }
        if (c8634nk.a()) {
            C9135qk c9135qk3 = c8634nk.f51059e;
            if (c9135qk3 == null) {
                c9135qk3 = C9135qk.f51867h;
            }
            C5109Em0 c5109Em0 = this.f49327g;
            if (c5109Em0 == null) {
                if ((this.f49322b & 4) != 0 && (c9135qk = this.f49326f) != null && c9135qk != (c9135qk2 = C9135qk.f51867h)) {
                    this.f49326f = c9135qk2.toBuilder().a(c9135qk).a(c9135qk3).m1181buildPartial();
                } else {
                    this.f49326f = c9135qk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c9135qk3);
            }
            this.f49322b |= 4;
        }
        if (this.f49329i == null) {
            if (!c8634nk.f51060f.isEmpty()) {
                if (this.f49328h.isEmpty()) {
                    this.f49328h = c8634nk.f51060f;
                    this.f49322b &= -9;
                } else {
                    if ((this.f49322b & 8) == 0) {
                        this.f49328h = new ArrayList(this.f49328h);
                        this.f49322b |= 8;
                    }
                    this.f49328h.addAll(c8634nk.f51060f);
                }
                onChanged();
            }
        } else if (!c8634nk.f51060f.isEmpty()) {
            if (this.f49329i.f38676b.isEmpty()) {
                this.f49329i.f38675a = null;
                this.f49329i = null;
                List list2 = c8634nk.f51060f;
                this.f49328h = list2;
                this.f49322b &= -9;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    C4862Af0 c4862Af03 = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f49329i = c4862Af03;
                    this.f49328h = null;
                    c4862Af02 = c4862Af03;
                }
                this.f49329i = c4862Af02;
            } else {
                this.f49329i.a(c8634nk.f51060f);
            }
        }
        if (!c8634nk.f51061g.isEmpty()) {
            if (this.f49330j.isEmpty()) {
                this.f49330j = c8634nk.f51061g;
                this.f49322b &= -17;
            } else {
                if ((this.f49322b & 16) == 0) {
                    this.f49330j = new C10255xR(this.f49330j);
                    this.f49322b |= 16;
                }
                this.f49330j.addAll(c8634nk.f51061g);
            }
            onChanged();
        }
        onChanged();
        return this;
    }

    public C7966jk(C7011dz c7011dz) {
        super(c7011dz);
        C9135qk c9135qk;
        this.f49323c = "";
        List list = Collections.EMPTY_LIST;
        this.f49324d = list;
        this.f49328h = list;
        this.f49330j = C10255xR.f53759d;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f49325e == null) {
                this.f49325e = new C4862Af0(list, (this.f49322b & 2) != 0, getParentForChildren(), isClean());
                this.f49324d = null;
            }
            C5109Em0 c5109Em0 = this.f49327g;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c9135qk = this.f49326f;
                    if (c9135qk == null) {
                        c9135qk = C9135qk.f51867h;
                    }
                } else {
                    c9135qk = (C9135qk) c5109Em0.d();
                }
                this.f49327g = new C5109Em0(c9135qk, getParentForChildren(), isClean());
                this.f49326f = null;
            }
            if (this.f49329i == null) {
                this.f49329i = new C4862Af0(this.f49328h, (this.f49322b & 8) != 0, getParentForChildren(), isClean());
                this.f49328h = null;
            }
        }
    }
}
