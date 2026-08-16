package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7958jh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f49305b;

    public String f49306c;

    public C5043Di0 f49307d;

    public List f49308e;

    public C4862Af0 f49309f;

    public List f49310g;

    public C4862Af0 f49311h;

    public C7795ii0 f49312i;

    public C7958jh0() {
        boolean z10;
        this.f49306c = "";
        List list = Collections.EMPTY_LIST;
        this.f49308e = list;
        this.f49310g = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            if (this.f49309f == null) {
                this.f49309f = new C4862Af0(this.f49308e, (this.f49305b & 1) != 0, getParentForChildren(), isClean());
                this.f49308e = null;
            }
            if (this.f49311h == null) {
                this.f49311h = new C4862Af0(this.f49310g, (this.f49305b & 2) != 0, getParentForChildren(), isClean());
                this.f49310g = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7958jh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8125kh0 c8125kh0 = null;
        try {
            try {
                C8125kh0.f49721i.getClass();
                a(new C8125kh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8125kh0 c8125kh02 = (C8125kh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8125kh0 = c8125kh02;
                    if (c8125kh0 != null) {
                        a(c8125kh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8125kh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7958jh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C8125kh0 m1181buildPartial() {
        C8125kh0 c8125kh0 = new C8125kh0(this);
        c8125kh0.f49722b = this.f49306c;
        c8125kh0.f49723c = this.f49307d;
        C4862Af0 c4862Af0 = this.f49309f;
        if (c4862Af0 == null) {
            if ((this.f49305b & 1) != 0) {
                this.f49308e = Collections.unmodifiableList(this.f49308e);
                this.f49305b &= -2;
            }
            c8125kh0.f49724d = this.f49308e;
        } else {
            c8125kh0.f49724d = c4862Af0.b();
        }
        C4862Af0 c4862Af02 = this.f49311h;
        if (c4862Af02 == null) {
            if ((this.f49305b & 2) != 0) {
                this.f49310g = Collections.unmodifiableList(this.f49310g);
                this.f49305b &= -3;
            }
            c8125kh0.f49725e = this.f49310g;
        } else {
            c8125kh0.f49725e = c4862Af02.b();
        }
        c8125kh0.f49726f = this.f49312i;
        onBuilt();
        return c8125kh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8125kh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7958jh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8125kh0.f49720h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53240O0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53242P0.a(C8125kh0.class, C7958jh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7958jh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7958jh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7958jh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8125kh0.f49720h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7958jh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8125kh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8125kh0) {
            return a((C8125kh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8125kh0) {
            return a((C8125kh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C7958jh0 a(C8125kh0 c8125kh0) {
        C4862Af0 c4862Af0;
        if (c8125kh0 == C8125kh0.f49720h) {
            return this;
        }
        String str = c8125kh0.f49722b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c8125kh0.f49722b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f49306c = c8125kh0.f49722b;
            onChanged();
        }
        C5043Di0 c5043Di0 = c8125kh0.f49723c;
        if (c5043Di0 != null) {
            C5043Di0 c5043Di02 = this.f49307d;
            if (c5043Di02 != null) {
                this.f49307d = C5043Di0.f39598e.toBuilder().a(c5043Di02).a(c5043Di0).m1181buildPartial();
            } else {
                this.f49307d = c5043Di0;
            }
            onChanged();
        }
        C4862Af0 c4862Af02 = null;
        if (this.f49309f == null) {
            if (!c8125kh0.f49724d.isEmpty()) {
                if (this.f49308e.isEmpty()) {
                    this.f49308e = c8125kh0.f49724d;
                    this.f49305b &= -2;
                } else {
                    if ((this.f49305b & 1) == 0) {
                        this.f49308e = new ArrayList(this.f49308e);
                        this.f49305b |= 1;
                    }
                    this.f49308e.addAll(c8125kh0.f49724d);
                }
                onChanged();
            }
        } else if (!c8125kh0.f49724d.isEmpty()) {
            if (this.f49309f.f38676b.isEmpty()) {
                this.f49309f.f38675a = null;
                this.f49309f = null;
                List list = c8125kh0.f49724d;
                this.f49308e = list;
                this.f49305b &= -2;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f49309f = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f49308e = null;
                    c4862Af0 = this.f49309f;
                } else {
                    c4862Af0 = null;
                }
                this.f49309f = c4862Af0;
            } else {
                this.f49309f.a(c8125kh0.f49724d);
            }
        }
        if (this.f49311h == null) {
            if (!c8125kh0.f49725e.isEmpty()) {
                if (this.f49310g.isEmpty()) {
                    this.f49310g = c8125kh0.f49725e;
                    this.f49305b &= -3;
                } else {
                    if ((this.f49305b & 2) == 0) {
                        this.f49310g = new ArrayList(this.f49310g);
                        this.f49305b |= 2;
                    }
                    this.f49310g.addAll(c8125kh0.f49725e);
                }
                onChanged();
            }
        } else if (!c8125kh0.f49725e.isEmpty()) {
            if (this.f49311h.f38676b.isEmpty()) {
                this.f49311h.f38675a = null;
                this.f49311h = null;
                List list2 = c8125kh0.f49725e;
                this.f49310g = list2;
                this.f49305b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f49311h = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f49310g = null;
                    c4862Af02 = this.f49311h;
                }
                this.f49311h = c4862Af02;
            } else {
                this.f49311h.a(c8125kh0.f49725e);
            }
        }
        C7795ii0 c7795ii0 = c8125kh0.f49726f;
        if (c7795ii0 != null) {
            C7795ii0 c7795ii02 = this.f49312i;
            if (c7795ii02 != null) {
                this.f49312i = C7795ii0.f49025e.toBuilder().a(c7795ii02).a(c7795ii0).m1181buildPartial();
            } else {
                this.f49312i = c7795ii0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }

    public C7958jh0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f49306c = "";
        List list = Collections.EMPTY_LIST;
        this.f49308e = list;
        this.f49310g = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            if (this.f49309f == null) {
                this.f49309f = new C4862Af0(this.f49308e, (this.f49305b & 1) != 0, getParentForChildren(), isClean());
                this.f49308e = null;
            }
            if (this.f49311h == null) {
                this.f49311h = new C4862Af0(this.f49310g, (this.f49305b & 2) != 0, getParentForChildren(), isClean());
                this.f49310g = null;
            }
        }
    }
}
