package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5157Fh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f40283b;

    public List f40284c;

    public C4862Af0 f40285d;

    public C5157Fh0() {
        boolean z10;
        this.f40284c = Collections.EMPTY_LIST;
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
    public final C5157Fh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5389Jh0 c5389Jh0 = null;
        try {
            try {
                C5389Jh0.f41454e.getClass();
                a(new C5389Jh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5389Jh0 c5389Jh02 = (C5389Jh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5389Jh0 = c5389Jh02;
                    if (c5389Jh0 != null) {
                        a(c5389Jh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5389Jh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5157Fh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5389Jh0 m1181buildPartial() {
        C5389Jh0 c5389Jh0 = new C5389Jh0(this);
        int i10 = this.f40283b;
        C4862Af0 c4862Af0 = this.f40285d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f40284c = Collections.unmodifiableList(this.f40284c);
                this.f40283b &= -2;
            }
            c5389Jh0.f41455b = this.f40284c;
        } else {
            c5389Jh0.f41455b = c4862Af0.b();
        }
        onBuilt();
        return c5389Jh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5389Jh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f40285d == null) {
            this.f40285d = new C4862Af0(this.f40284c, (this.f40283b & 1) != 0, getParentForChildren(), isClean());
            this.f40284c = null;
        }
        return this.f40285d;
    }

    public final Object clone() {
        return (C5157Fh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5389Jh0.f41453d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53216C0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53218D0.a(C5389Jh0.class, C5157Fh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5157Fh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5157Fh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5157Fh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5389Jh0.f41453d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5157Fh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5389Jh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5389Jh0) {
            return a((C5389Jh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5157Fh0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f40284c = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5389Jh0) {
            return a((C5389Jh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5157Fh0 a(C5389Jh0 c5389Jh0) {
        if (c5389Jh0 == C5389Jh0.f41453d) {
            return this;
        }
        if (this.f40285d == null) {
            if (!c5389Jh0.f41455b.isEmpty()) {
                if (this.f40284c.isEmpty()) {
                    this.f40284c = c5389Jh0.f41455b;
                    this.f40283b &= -2;
                } else {
                    if ((this.f40283b & 1) == 0) {
                        this.f40284c = new ArrayList(this.f40284c);
                        this.f40283b |= 1;
                    }
                    this.f40284c.addAll(c5389Jh0.f41455b);
                }
                onChanged();
            }
        } else if (!c5389Jh0.f41455b.isEmpty()) {
            if (this.f40285d.f38676b.isEmpty()) {
                this.f40285d.f38675a = null;
                this.f40285d = null;
                this.f40284c = c5389Jh0.f41455b;
                this.f40283b &= -2;
                this.f40285d = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f40285d.a(c5389Jh0.f41455b);
            }
        }
        onChanged();
        return this;
    }
}
