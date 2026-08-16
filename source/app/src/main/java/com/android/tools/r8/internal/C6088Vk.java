package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C6088Vk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f45144b;

    public Serializable f45145c;

    public Serializable f45146d;

    public Serializable f45147e;

    public C6470al f45148f;

    public final C5109Em0 f45149g;

    public boolean f45150h;

    public boolean f45151i;

    public C6088Vk() {
        super(null);
        C5109Em0 c5109Em0;
        C6470al c6470al;
        this.f45145c = "";
        this.f45146d = "";
        this.f45147e = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f45149g) == null) {
            if (c5109Em0 == null) {
                c6470al = this.f45148f;
                if (c6470al == null) {
                    c6470al = C6470al.f46617h;
                }
            } else {
                c6470al = (C6470al) c5109Em0.d();
            }
            this.f45149g = new C5109Em0(c6470al, getParentForChildren(), isClean());
            this.f45148f = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6088Vk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6145Wk c6145Wk = null;
        try {
            try {
                a((C6145Wk) C6145Wk.f45522k.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6145Wk c6145Wk2 = (C6145Wk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6145Wk = c6145Wk2;
                    if (c6145Wk != null) {
                        a(c6145Wk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6145Wk != null) {
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
    public final C6145Wk m1181buildPartial() {
        C6145Wk c6145Wk = new C6145Wk(this);
        int i10 = this.f45144b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c6145Wk.f45524c = this.f45145c;
        if ((i10 & 2) != 0) {
            i11 |= 2;
        }
        c6145Wk.f45525d = this.f45146d;
        if ((i10 & 4) != 0) {
            i11 |= 4;
        }
        c6145Wk.f45526e = this.f45147e;
        if ((i10 & 8) != 0) {
            C5109Em0 c5109Em0 = this.f45149g;
            if (c5109Em0 == null) {
                c6145Wk.f45527f = this.f45148f;
            } else {
                c5109Em0.f40016d = true;
                c6145Wk.f45527f = (C6470al) c5109Em0.d();
            }
            i11 |= 8;
        }
        if ((i10 & 16) != 0) {
            c6145Wk.f45528g = this.f45150h;
            i11 |= 16;
        }
        if ((i10 & 32) != 0) {
            c6145Wk.f45529h = this.f45151i;
            i11 |= 32;
        }
        c6145Wk.f45523b = i11;
        onBuilt();
        return c6145Wk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6145Wk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6088Vk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6145Wk.f45521j;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54528w;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54529x.a(C6145Wk.class, C6088Vk.class);
    }

    @Override
    public final boolean isInitialized() {
        C6470al c6470al;
        if ((this.f45144b & 8) == 0) {
            return true;
        }
        C5109Em0 c5109Em0 = this.f45149g;
        if (c5109Em0 == null) {
            c6470al = this.f45148f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
        } else {
            c6470al = (C6470al) c5109Em0.d();
        }
        return c6470al.isInitialized();
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6088Vk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6088Vk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6145Wk.f45521j;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6088Vk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6145Wk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6145Wk) {
            return a((C6145Wk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6145Wk) {
            return a((C6145Wk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C6088Vk a(C6145Wk c6145Wk) {
        C6470al c6470al;
        C6470al c6470al2;
        if (c6145Wk == C6145Wk.f45521j) {
            return this;
        }
        if ((c6145Wk.f45523b & 1) != 0) {
            this.f45144b |= 1;
            this.f45145c = c6145Wk.f45524c;
            onChanged();
        }
        if ((c6145Wk.f45523b & 2) != 0) {
            this.f45144b |= 2;
            this.f45146d = c6145Wk.f45525d;
            onChanged();
        }
        if ((c6145Wk.f45523b & 4) != 0) {
            this.f45144b |= 4;
            this.f45147e = c6145Wk.f45526e;
            onChanged();
        }
        if (c6145Wk.c()) {
            C6470al c6470al3 = c6145Wk.f45527f;
            if (c6470al3 == null) {
                c6470al3 = C6470al.f46617h;
            }
            C5109Em0 c5109Em0 = this.f45149g;
            if (c5109Em0 == null) {
                if ((this.f45144b & 8) != 0 && (c6470al = this.f45148f) != null && c6470al != (c6470al2 = C6470al.f46617h)) {
                    this.f45148f = c6470al2.toBuilder().a(c6470al).a(c6470al3).m1181buildPartial();
                } else {
                    this.f45148f = c6470al3;
                }
                onChanged();
            } else {
                c5109Em0.a(c6470al3);
            }
            this.f45144b |= 8;
        }
        if ((c6145Wk.f45523b & 16) != 0) {
            boolean z10 = c6145Wk.f45528g;
            this.f45144b |= 16;
            this.f45150h = z10;
            onChanged();
        }
        if ((c6145Wk.f45523b & 32) != 0) {
            boolean z11 = c6145Wk.f45529h;
            this.f45144b |= 32;
            this.f45151i = z11;
            onChanged();
        }
        onChanged();
        return this;
    }

    public C6088Vk(C7011dz c7011dz) {
        super(c7011dz);
        C5109Em0 c5109Em0;
        C6470al c6470al;
        this.f45145c = "";
        this.f45146d = "";
        this.f45147e = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f45149g) == null) {
            if (c5109Em0 == null) {
                c6470al = this.f45148f;
                if (c6470al == null) {
                    c6470al = C6470al.f46617h;
                }
            } else {
                c6470al = (C6470al) c5109Em0.d();
            }
            this.f45149g = new C5109Em0(c6470al, getParentForChildren(), isClean());
            this.f45148f = null;
        }
    }
}
