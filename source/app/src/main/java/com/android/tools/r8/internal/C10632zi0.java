package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10632zi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f54469b;

    public String f54470c;

    public List f54471d;

    public C4862Af0 f54472e;

    public C10632zi0() {
        boolean z10;
        this.f54470c = "";
        this.f54471d = Collections.EMPTY_LIST;
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
    public final C10632zi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5043Di0 c5043Di0 = null;
        try {
            try {
                C5043Di0.f39599f.getClass();
                a(new C5043Di0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5043Di0 c5043Di02 = (C5043Di0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5043Di0 = c5043Di02;
                    if (c5043Di0 != null) {
                        a(c5043Di0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5043Di0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C10632zi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5043Di0 m1181buildPartial() {
        C5043Di0 c5043Di0 = new C5043Di0(this);
        c5043Di0.f39600b = this.f54470c;
        C4862Af0 c4862Af0 = this.f54472e;
        if (c4862Af0 == null) {
            if ((this.f54469b & 1) != 0) {
                this.f54471d = Collections.unmodifiableList(this.f54471d);
                this.f54469b &= -2;
            }
            c5043Di0.f39601c = this.f54471d;
        } else {
            c5043Di0.f39601c = c4862Af0.b();
        }
        onBuilt();
        return c5043Di0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5043Di0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f54472e == null) {
            this.f54472e = new C4862Af0(this.f54471d, (this.f54469b & 1) != 0, getParentForChildren(), isClean());
            this.f54471d = null;
        }
        return this.f54472e;
    }

    public final Object clone() {
        return (C10632zi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5043Di0.f39598e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53248S0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53250T0.a(C5043Di0.class, C10632zi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C10632zi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C10632zi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C10632zi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5043Di0.f39598e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C10632zi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5043Di0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5043Di0) {
            return a((C5043Di0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C10632zi0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f54470c = "";
        this.f54471d = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5043Di0) {
            return a((C5043Di0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C10632zi0 a(C5043Di0 c5043Di0) {
        if (c5043Di0 == C5043Di0.f39598e) {
            return this;
        }
        String str = c5043Di0.f39600b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5043Di0.f39600b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f54470c = c5043Di0.f39600b;
            onChanged();
        }
        if (this.f54472e == null) {
            if (!c5043Di0.f39601c.isEmpty()) {
                if (this.f54471d.isEmpty()) {
                    this.f54471d = c5043Di0.f39601c;
                    this.f54469b &= -2;
                } else {
                    if ((this.f54469b & 1) == 0) {
                        this.f54471d = new ArrayList(this.f54471d);
                        this.f54469b |= 1;
                    }
                    this.f54471d.addAll(c5043Di0.f39601c);
                }
                onChanged();
            }
        } else if (!c5043Di0.f39601c.isEmpty()) {
            if (this.f54472e.f38676b.isEmpty()) {
                this.f54472e.f38675a = null;
                this.f54472e = null;
                this.f54471d = c5043Di0.f39601c;
                this.f54469b &= -2;
                this.f54472e = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f54472e.a(c5043Di0.f39601c);
            }
        }
        onChanged();
        return this;
    }
}
