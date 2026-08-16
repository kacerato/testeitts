package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C7803il extends AbstractC7345fz implements InterfaceC8596nW {

    public int f49043b;

    public Serializable f49044c;

    public List f49045d;

    public C4862Af0 f49046e;

    public C8470ml f49047f;

    public final C5109Em0 f49048g;

    public C7803il() {
        super(null);
        C8470ml c8470ml;
        this.f49044c = "";
        List list = Collections.EMPTY_LIST;
        this.f49045d = list;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f49046e == null) {
                this.f49046e = new C4862Af0(list, (this.f49043b & 2) != 0, getParentForChildren(), isClean());
                this.f49045d = null;
            }
            C5109Em0 c5109Em0 = this.f49048g;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c8470ml = this.f49047f;
                    if (c8470ml == null) {
                        c8470ml = C8470ml.f50412g;
                    }
                } else {
                    c8470ml = (C8470ml) c5109Em0.d();
                }
                this.f49048g = new C5109Em0(c8470ml, getParentForChildren(), isClean());
                this.f49047f = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7803il mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7969jl c7969jl = null;
        try {
            try {
                a((C7969jl) C7969jl.f49334h.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7969jl c7969jl2 = (C7969jl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7969jl = c7969jl2;
                    if (c7969jl != null) {
                        a(c7969jl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7969jl != null) {
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
    public final C7969jl m1181buildPartial() {
        C7969jl c7969jl = new C7969jl(this);
        int i10 = this.f49043b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c7969jl.f49336c = this.f49044c;
        C4862Af0 c4862Af0 = this.f49046e;
        if (c4862Af0 == null) {
            if ((this.f49043b & 2) != 0) {
                this.f49045d = Collections.unmodifiableList(this.f49045d);
                this.f49043b &= -3;
            }
            c7969jl.f49337d = this.f49045d;
        } else {
            c7969jl.f49337d = c4862Af0.b();
        }
        if ((i10 & 4) != 0) {
            C5109Em0 c5109Em0 = this.f49048g;
            if (c5109Em0 == null) {
                c7969jl.f49338e = this.f49047f;
            } else {
                c5109Em0.f40016d = true;
                c7969jl.f49338e = (C8470ml) c5109Em0.d();
            }
            i11 |= 2;
        }
        c7969jl.f49335b = i11;
        onBuilt();
        return c7969jl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7969jl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7803il) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7969jl.f49333g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54526u;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54527v.a(C7969jl.class, C7803il.class);
    }

    @Override
    public final boolean isInitialized() {
        C8470ml c8470ml;
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f49046e;
            if (i10 >= (c4862Af0 == null ? this.f49045d.size() : c4862Af0.f38676b.size())) {
                if ((this.f49043b & 4) == 0) {
                    return true;
                }
                C5109Em0 c5109Em0 = this.f49048g;
                if (c5109Em0 == null) {
                    c8470ml = this.f49047f;
                    if (c8470ml == null) {
                        c8470ml = C8470ml.f50412g;
                    }
                } else {
                    c8470ml = (C8470ml) c5109Em0.d();
                }
                return c8470ml.isInitialized();
            }
            C4862Af0 c4862Af02 = this.f49046e;
            if (!(c4862Af02 == null ? (C6145Wk) this.f49045d.get(i10) : (C6145Wk) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7803il) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7803il) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7969jl.f49333g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7803il) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7969jl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7969jl) {
            return a((C7969jl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7969jl) {
            return a((C7969jl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C7803il a(C7969jl c7969jl) {
        C8470ml c8470ml;
        C8470ml c8470ml2;
        if (c7969jl == C7969jl.f49333g) {
            return this;
        }
        if ((c7969jl.f49335b & 1) != 0) {
            this.f49043b |= 1;
            this.f49044c = c7969jl.f49336c;
            onChanged();
        }
        if (this.f49046e == null) {
            if (!c7969jl.f49337d.isEmpty()) {
                if (this.f49045d.isEmpty()) {
                    this.f49045d = c7969jl.f49337d;
                    this.f49043b &= -3;
                } else {
                    if ((this.f49043b & 2) == 0) {
                        this.f49045d = new ArrayList(this.f49045d);
                        this.f49043b |= 2;
                    }
                    this.f49045d.addAll(c7969jl.f49337d);
                }
                onChanged();
            }
        } else if (!c7969jl.f49337d.isEmpty()) {
            if (this.f49046e.f38676b.isEmpty()) {
                C4862Af0 c4862Af0 = null;
                this.f49046e.f38675a = null;
                this.f49046e = null;
                List list = c7969jl.f49337d;
                this.f49045d = list;
                this.f49043b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    C4862Af0 c4862Af02 = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f49046e = c4862Af02;
                    this.f49045d = null;
                    c4862Af0 = c4862Af02;
                }
                this.f49046e = c4862Af0;
            } else {
                this.f49046e.a(c7969jl.f49337d);
            }
        }
        if (c7969jl.a()) {
            C8470ml c8470ml3 = c7969jl.f49338e;
            if (c8470ml3 == null) {
                c8470ml3 = C8470ml.f50412g;
            }
            C5109Em0 c5109Em0 = this.f49048g;
            if (c5109Em0 == null) {
                if ((this.f49043b & 4) != 0 && (c8470ml = this.f49047f) != null && c8470ml != (c8470ml2 = C8470ml.f50412g)) {
                    this.f49047f = c8470ml2.toBuilder().a(c8470ml).a(c8470ml3).m1181buildPartial();
                } else {
                    this.f49047f = c8470ml3;
                }
                onChanged();
            } else {
                c5109Em0.a(c8470ml3);
            }
            this.f49043b |= 4;
        }
        onChanged();
        return this;
    }

    public C7803il(C7011dz c7011dz) {
        super(c7011dz);
        C8470ml c8470ml;
        this.f49044c = "";
        List list = Collections.EMPTY_LIST;
        this.f49045d = list;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f49046e == null) {
                this.f49046e = new C4862Af0(list, (this.f49043b & 2) != 0, getParentForChildren(), isClean());
                this.f49045d = null;
            }
            C5109Em0 c5109Em0 = this.f49048g;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c8470ml = this.f49047f;
                    if (c8470ml == null) {
                        c8470ml = C8470ml.f50412g;
                    }
                } else {
                    c8470ml = (C8470ml) c5109Em0.d();
                }
                this.f49048g = new C5109Em0(c8470ml, getParentForChildren(), isClean());
                this.f49047f = null;
            }
        }
    }
}
