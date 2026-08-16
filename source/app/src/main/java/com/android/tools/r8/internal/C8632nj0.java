package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8632nj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f51044b;

    public List f51045c;

    public C4862Af0 f51046d;

    public String f51047e;

    public String f51048f;

    public List f51049g;

    public C4862Af0 f51050h;

    public List f51051i;

    public C4862Af0 f51052j;

    public C8632nj0() {
        boolean z10;
        List list = Collections.EMPTY_LIST;
        this.f51045c = list;
        this.f51047e = "";
        this.f51048f = "";
        this.f51049g = list;
        this.f51051i = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            if (this.f51046d == null) {
                this.f51046d = new C4862Af0(this.f51045c, (this.f51044b & 1) != 0, getParentForChildren(), isClean());
                this.f51045c = null;
            }
            if (this.f51050h == null) {
                this.f51050h = new C4862Af0(this.f51049g, (this.f51044b & 2) != 0, getParentForChildren(), isClean());
                this.f51049g = null;
            }
            if (this.f51052j == null) {
                this.f51052j = new C4862Af0(this.f51051i, (this.f51044b & 4) != 0, getParentForChildren(), isClean());
                this.f51051i = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8632nj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8799oj0 c8799oj0 = null;
        try {
            try {
                C8799oj0.f51328i.getClass();
                a(new C8799oj0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8799oj0 c8799oj02 = (C8799oj0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8799oj0 = c8799oj02;
                    if (c8799oj0 != null) {
                        a(c8799oj0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8799oj0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8632nj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C8799oj0 m1181buildPartial() {
        C8799oj0 c8799oj0 = new C8799oj0(this);
        int i10 = this.f51044b;
        C4862Af0 c4862Af0 = this.f51046d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f51045c = Collections.unmodifiableList(this.f51045c);
                this.f51044b &= -2;
            }
            c8799oj0.f51329b = this.f51045c;
        } else {
            c8799oj0.f51329b = c4862Af0.b();
        }
        c8799oj0.f51330c = this.f51047e;
        c8799oj0.f51331d = this.f51048f;
        C4862Af0 c4862Af02 = this.f51050h;
        if (c4862Af02 == null) {
            if ((this.f51044b & 2) != 0) {
                this.f51049g = Collections.unmodifiableList(this.f51049g);
                this.f51044b &= -3;
            }
            c8799oj0.f51332e = this.f51049g;
        } else {
            c8799oj0.f51332e = c4862Af02.b();
        }
        C4862Af0 c4862Af03 = this.f51052j;
        if (c4862Af03 == null) {
            if ((this.f51044b & 4) != 0) {
                this.f51051i = Collections.unmodifiableList(this.f51051i);
                this.f51044b &= -5;
            }
            c8799oj0.f51333f = this.f51051i;
        } else {
            c8799oj0.f51333f = c4862Af03.b();
        }
        onBuilt();
        return c8799oj0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8799oj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8632nj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8799oj0.f51327h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53228I0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53230J0.a(C8799oj0.class, C8632nj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8632nj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8632nj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8632nj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8799oj0.f51327h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8632nj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8799oj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8799oj0) {
            return a((C8799oj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8799oj0) {
            return a((C8799oj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8632nj0 a(C8799oj0 c8799oj0) {
        C4862Af0 c4862Af0;
        C4862Af0 c4862Af02;
        if (c8799oj0 == C8799oj0.f51327h) {
            return this;
        }
        C4862Af0 c4862Af03 = null;
        if (this.f51046d == null) {
            if (!c8799oj0.f51329b.isEmpty()) {
                if (this.f51045c.isEmpty()) {
                    this.f51045c = c8799oj0.f51329b;
                    this.f51044b &= -2;
                } else {
                    if ((this.f51044b & 1) == 0) {
                        this.f51045c = new ArrayList(this.f51045c);
                        this.f51044b |= 1;
                    }
                    this.f51045c.addAll(c8799oj0.f51329b);
                }
                onChanged();
            }
        } else if (!c8799oj0.f51329b.isEmpty()) {
            if (this.f51046d.f38676b.isEmpty()) {
                this.f51046d.f38675a = null;
                this.f51046d = null;
                List list = c8799oj0.f51329b;
                this.f51045c = list;
                this.f51044b &= -2;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f51046d = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f51045c = null;
                    c4862Af0 = this.f51046d;
                } else {
                    c4862Af0 = null;
                }
                this.f51046d = c4862Af0;
            } else {
                this.f51046d.a(c8799oj0.f51329b);
            }
        }
        String str = c8799oj0.f51330c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c8799oj0.f51330c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f51047e = c8799oj0.f51330c;
            onChanged();
        }
        if (!c8799oj0.getName().isEmpty()) {
            this.f51048f = c8799oj0.f51331d;
            onChanged();
        }
        if (this.f51050h == null) {
            if (!c8799oj0.f51332e.isEmpty()) {
                if (this.f51049g.isEmpty()) {
                    this.f51049g = c8799oj0.f51332e;
                    this.f51044b &= -3;
                } else {
                    if ((this.f51044b & 2) == 0) {
                        this.f51049g = new ArrayList(this.f51049g);
                        this.f51044b |= 2;
                    }
                    this.f51049g.addAll(c8799oj0.f51332e);
                }
                onChanged();
            }
        } else if (!c8799oj0.f51332e.isEmpty()) {
            if (this.f51050h.f38676b.isEmpty()) {
                this.f51050h.f38675a = null;
                this.f51050h = null;
                List list2 = c8799oj0.f51332e;
                this.f51049g = list2;
                this.f51044b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f51050h = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f51049g = null;
                    c4862Af02 = this.f51050h;
                } else {
                    c4862Af02 = null;
                }
                this.f51050h = c4862Af02;
            } else {
                this.f51050h.a(c8799oj0.f51332e);
            }
        }
        if (this.f51052j == null) {
            if (!c8799oj0.f51333f.isEmpty()) {
                if (this.f51051i.isEmpty()) {
                    this.f51051i = c8799oj0.f51333f;
                    this.f51044b &= -5;
                } else {
                    if ((this.f51044b & 4) == 0) {
                        this.f51051i = new ArrayList(this.f51051i);
                        this.f51044b |= 4;
                    }
                    this.f51051i.addAll(c8799oj0.f51333f);
                }
                onChanged();
            }
        } else if (!c8799oj0.f51333f.isEmpty()) {
            if (this.f51052j.f38676b.isEmpty()) {
                this.f51052j.f38675a = null;
                this.f51052j = null;
                List list3 = c8799oj0.f51333f;
                this.f51051i = list3;
                this.f51044b &= -5;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f51052j = new C4862Af0(list3, false, getParentForChildren(), isClean());
                    this.f51051i = null;
                    c4862Af03 = this.f51052j;
                }
                this.f51052j = c4862Af03;
            } else {
                this.f51052j.a(c8799oj0.f51333f);
            }
        }
        onChanged();
        return this;
    }

    public C8632nj0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        List list = Collections.EMPTY_LIST;
        this.f51045c = list;
        this.f51047e = "";
        this.f51048f = "";
        this.f51049g = list;
        this.f51051i = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            if (this.f51046d == null) {
                this.f51046d = new C4862Af0(this.f51045c, (this.f51044b & 1) != 0, getParentForChildren(), isClean());
                this.f51045c = null;
            }
            if (this.f51050h == null) {
                this.f51050h = new C4862Af0(this.f51049g, (this.f51044b & 2) != 0, getParentForChildren(), isClean());
                this.f51049g = null;
            }
            if (this.f51052j == null) {
                this.f51052j = new C4862Af0(this.f51051i, (this.f51044b & 4) != 0, getParentForChildren(), isClean());
                this.f51051i = null;
            }
        }
    }
}
