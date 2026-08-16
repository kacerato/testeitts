package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6629bi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f46833b;

    public C9296ri0 f46834c;

    public List f46835d;

    public C4862Af0 f46836e;

    public List f46837f;

    public C4862Af0 f46838g;

    public List f46839h;

    public C4862Af0 f46840i;

    public List f46841j;

    public C4862Af0 f46842k;

    public C6629bi0() {
        boolean z10;
        List list = Collections.EMPTY_LIST;
        this.f46835d = list;
        this.f46837f = list;
        this.f46839h = list;
        this.f46841j = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            d();
            if (this.f46838g == null) {
                this.f46838g = new C4862Af0(this.f46837f, (this.f46833b & 2) != 0, getParentForChildren(), isClean());
                this.f46837f = null;
            }
            if (this.f46840i == null) {
                this.f46840i = new C4862Af0(this.f46839h, (this.f46833b & 4) != 0, getParentForChildren(), isClean());
                this.f46839h = null;
            }
            if (this.f46842k == null) {
                this.f46842k = new C4862Af0(this.f46841j, (this.f46833b & 8) != 0, getParentForChildren(), isClean());
                this.f46841j = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6629bi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6795ci0 c6795ci0 = null;
        try {
            try {
                C6795ci0.f47137i.getClass();
                a(new C6795ci0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6795ci0 c6795ci02 = (C6795ci0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6795ci0 = c6795ci02;
                    if (c6795ci0 != null) {
                        a(c6795ci0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6795ci0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6629bi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6795ci0 build() {
        C6795ci0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final C6795ci0 m1181buildPartial() {
        C6795ci0 c6795ci0 = new C6795ci0(this);
        int i10 = this.f46833b;
        c6795ci0.f47138b = this.f46834c;
        C4862Af0 c4862Af0 = this.f46836e;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f46835d = Collections.unmodifiableList(this.f46835d);
                this.f46833b &= -2;
            }
            c6795ci0.f47139c = this.f46835d;
        } else {
            c6795ci0.f47139c = c4862Af0.b();
        }
        C4862Af0 c4862Af02 = this.f46838g;
        if (c4862Af02 == null) {
            if ((this.f46833b & 2) != 0) {
                this.f46837f = Collections.unmodifiableList(this.f46837f);
                this.f46833b &= -3;
            }
            c6795ci0.f47140d = this.f46837f;
        } else {
            c6795ci0.f47140d = c4862Af02.b();
        }
        C4862Af0 c4862Af03 = this.f46840i;
        if (c4862Af03 == null) {
            if ((this.f46833b & 4) != 0) {
                this.f46839h = Collections.unmodifiableList(this.f46839h);
                this.f46833b &= -5;
            }
            c6795ci0.f47141e = this.f46839h;
        } else {
            c6795ci0.f47141e = c4862Af03.b();
        }
        C4862Af0 c4862Af04 = this.f46842k;
        if (c4862Af04 == null) {
            if ((this.f46833b & 8) != 0) {
                this.f46841j = Collections.unmodifiableList(this.f46841j);
                this.f46833b &= -9;
            }
            c6795ci0.f47142f = this.f46841j;
        } else {
            c6795ci0.f47142f = c4862Af04.b();
        }
        onBuilt();
        return c6795ci0;
    }

    public final Object clone() {
        return (C6629bi0) m1188clone();
    }

    public final C4862Af0 d() {
        if (this.f46836e == null) {
            this.f46836e = new C4862Af0(this.f46835d, (this.f46833b & 1) != 0, getParentForChildren(), isClean());
            this.f46835d = null;
        }
        return this.f46836e;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6795ci0.f47136h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53282k;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53284l.a(C6795ci0.class, C6629bi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6629bi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6629bi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6629bi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6795ci0.f47136h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6629bi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6795ci0) {
            return a((C6795ci0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6795ci0) {
            return a((C6795ci0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6629bi0 a(C6795ci0 c6795ci0) {
        C4862Af0 c4862Af0;
        C4862Af0 c4862Af02;
        if (c6795ci0 == C6795ci0.f47136h) {
            return this;
        }
        C9296ri0 c9296ri0 = c6795ci0.f47138b;
        if (c9296ri0 != null) {
            C9296ri0 c9296ri02 = this.f46834c;
            if (c9296ri02 != null) {
                this.f46834c = C9296ri0.f52111d.toBuilder().a(c9296ri02).a(c9296ri0).m1181buildPartial();
            } else {
                this.f46834c = c9296ri0;
            }
            onChanged();
        }
        C4862Af0 c4862Af03 = null;
        if (this.f46836e == null) {
            if (!c6795ci0.f47139c.isEmpty()) {
                if (this.f46835d.isEmpty()) {
                    this.f46835d = c6795ci0.f47139c;
                    this.f46833b &= -2;
                } else {
                    if ((this.f46833b & 1) == 0) {
                        this.f46835d = new ArrayList(this.f46835d);
                        this.f46833b |= 1;
                    }
                    this.f46835d.addAll(c6795ci0.f47139c);
                }
                onChanged();
            }
        } else if (!c6795ci0.f47139c.isEmpty()) {
            if (this.f46836e.f38676b.isEmpty()) {
                this.f46836e.f38675a = null;
                this.f46836e = null;
                this.f46835d = c6795ci0.f47139c;
                this.f46833b &= -2;
                this.f46836e = AbstractC10181wz.alwaysUseFieldBuilders ? d() : null;
            } else {
                this.f46836e.a(c6795ci0.f47139c);
            }
        }
        if (this.f46838g == null) {
            if (!c6795ci0.f47140d.isEmpty()) {
                if (this.f46837f.isEmpty()) {
                    this.f46837f = c6795ci0.f47140d;
                    this.f46833b &= -3;
                } else {
                    if ((this.f46833b & 2) == 0) {
                        this.f46837f = new ArrayList(this.f46837f);
                        this.f46833b |= 2;
                    }
                    this.f46837f.addAll(c6795ci0.f47140d);
                }
                onChanged();
            }
        } else if (!c6795ci0.f47140d.isEmpty()) {
            if (this.f46838g.f38676b.isEmpty()) {
                this.f46838g.f38675a = null;
                this.f46838g = null;
                List list = c6795ci0.f47140d;
                this.f46837f = list;
                this.f46833b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f46838g = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f46837f = null;
                    c4862Af0 = this.f46838g;
                } else {
                    c4862Af0 = null;
                }
                this.f46838g = c4862Af0;
            } else {
                this.f46838g.a(c6795ci0.f47140d);
            }
        }
        if (this.f46840i == null) {
            if (!c6795ci0.f47141e.isEmpty()) {
                if (this.f46839h.isEmpty()) {
                    this.f46839h = c6795ci0.f47141e;
                    this.f46833b &= -5;
                } else {
                    if ((this.f46833b & 4) == 0) {
                        this.f46839h = new ArrayList(this.f46839h);
                        this.f46833b |= 4;
                    }
                    this.f46839h.addAll(c6795ci0.f47141e);
                }
                onChanged();
            }
        } else if (!c6795ci0.f47141e.isEmpty()) {
            if (this.f46840i.f38676b.isEmpty()) {
                this.f46840i.f38675a = null;
                this.f46840i = null;
                List list2 = c6795ci0.f47141e;
                this.f46839h = list2;
                this.f46833b &= -5;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f46840i = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f46839h = null;
                    c4862Af02 = this.f46840i;
                } else {
                    c4862Af02 = null;
                }
                this.f46840i = c4862Af02;
            } else {
                this.f46840i.a(c6795ci0.f47141e);
            }
        }
        if (this.f46842k == null) {
            if (!c6795ci0.f47142f.isEmpty()) {
                if (this.f46841j.isEmpty()) {
                    this.f46841j = c6795ci0.f47142f;
                    this.f46833b &= -9;
                } else {
                    if ((this.f46833b & 8) == 0) {
                        this.f46841j = new ArrayList(this.f46841j);
                        this.f46833b |= 8;
                    }
                    this.f46841j.addAll(c6795ci0.f47142f);
                }
                onChanged();
            }
        } else if (!c6795ci0.f47142f.isEmpty()) {
            if (this.f46842k.f38676b.isEmpty()) {
                this.f46842k.f38675a = null;
                this.f46842k = null;
                List list3 = c6795ci0.f47142f;
                this.f46841j = list3;
                this.f46833b &= -9;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    this.f46842k = new C4862Af0(list3, false, getParentForChildren(), isClean());
                    this.f46841j = null;
                    c4862Af03 = this.f46842k;
                }
                this.f46842k = c4862Af03;
            } else {
                this.f46842k.a(c6795ci0.f47142f);
            }
        }
        onChanged();
        return this;
    }

    public C6629bi0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        List list = Collections.EMPTY_LIST;
        this.f46835d = list;
        this.f46837f = list;
        this.f46839h = list;
        this.f46841j = list;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            d();
            if (this.f46838g == null) {
                this.f46838g = new C4862Af0(this.f46837f, (this.f46833b & 2) != 0, getParentForChildren(), isClean());
                this.f46837f = null;
            }
            if (this.f46840i == null) {
                this.f46840i = new C4862Af0(this.f46839h, (this.f46833b & 4) != 0, getParentForChildren(), isClean());
                this.f46839h = null;
            }
            if (this.f46842k == null) {
                this.f46842k = new C4862Af0(this.f46841j, (this.f46833b & 8) != 0, getParentForChildren(), isClean());
                this.f46841j = null;
            }
        }
    }
}
