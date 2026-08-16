package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C6467ak extends AbstractC7345fz implements InterfaceC8596nW {

    public int f46596b;

    public Serializable f46597c;

    public List f46598d;

    public C4862Af0 f46599e;

    public List f46600f;

    public C4862Af0 f46601g;

    public List f46602h;

    public C4862Af0 f46603i;

    public List f46604j;

    public C4862Af0 f46605k;

    public List f46606l;

    public C4862Af0 f46607m;

    public List f46608n;

    public C4862Af0 f46609o;

    public C5973Tk f46610p;

    public final C5109Em0 f46611q;

    public List f46612r;

    public C4862Af0 f46613s;

    public InterfaceC10589zR f46614t;

    public C6467ak() {
        super(null);
        C5973Tk c5973Tk;
        this.f46597c = "";
        List list = Collections.EMPTY_LIST;
        this.f46598d = list;
        this.f46600f = list;
        this.f46602h = list;
        this.f46604j = list;
        this.f46606l = list;
        this.f46608n = list;
        this.f46612r = list;
        this.f46614t = C10255xR.f53759d;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f46599e == null) {
                this.f46599e = new C4862Af0(list, (this.f46596b & 2) != 0, getParentForChildren(), isClean());
                this.f46598d = null;
            }
            if (this.f46601g == null) {
                this.f46601g = new C4862Af0(this.f46600f, (this.f46596b & 4) != 0, getParentForChildren(), isClean());
                this.f46600f = null;
            }
            if (this.f46603i == null) {
                this.f46603i = new C4862Af0(this.f46602h, (this.f46596b & 8) != 0, getParentForChildren(), isClean());
                this.f46602h = null;
            }
            if (this.f46605k == null) {
                this.f46605k = new C4862Af0(this.f46604j, (this.f46596b & 16) != 0, getParentForChildren(), isClean());
                this.f46604j = null;
            }
            if (this.f46607m == null) {
                this.f46607m = new C4862Af0(this.f46606l, (this.f46596b & 32) != 0, getParentForChildren(), isClean());
                this.f46606l = null;
            }
            if (this.f46609o == null) {
                this.f46609o = new C4862Af0(this.f46608n, (this.f46596b & 64) != 0, getParentForChildren(), isClean());
                this.f46608n = null;
            }
            C5109Em0 c5109Em0 = this.f46611q;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c5973Tk = this.f46610p;
                    if (c5973Tk == null) {
                        c5973Tk = C5973Tk.f44563j;
                    }
                } else {
                    c5973Tk = (C5973Tk) c5109Em0.d();
                }
                this.f46611q = new C5109Em0(c5973Tk, getParentForChildren(), isClean());
                this.f46610p = null;
            }
            if (this.f46613s == null) {
                this.f46613s = new C4862Af0(this.f46612r, (this.f46596b & 256) != 0, getParentForChildren(), isClean());
                this.f46612r = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6467ak mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7634hk c7634hk = null;
        try {
            try {
                a((C7634hk) C7634hk.f48690o.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7634hk c7634hk2 = (C7634hk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7634hk = c7634hk2;
                    if (c7634hk != null) {
                        a(c7634hk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7634hk != null) {
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
    public final C7634hk m1181buildPartial() {
        C7634hk c7634hk = new C7634hk(this);
        int i10 = this.f46596b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c7634hk.f48692c = this.f46597c;
        C4862Af0 c4862Af0 = this.f46599e;
        if (c4862Af0 == null) {
            if ((this.f46596b & 2) != 0) {
                this.f46598d = Collections.unmodifiableList(this.f46598d);
                this.f46596b &= -3;
            }
            c7634hk.f48693d = this.f46598d;
        } else {
            c7634hk.f48693d = c4862Af0.b();
        }
        C4862Af0 c4862Af02 = this.f46601g;
        if (c4862Af02 == null) {
            if ((this.f46596b & 4) != 0) {
                this.f46600f = Collections.unmodifiableList(this.f46600f);
                this.f46596b &= -5;
            }
            c7634hk.f48694e = this.f46600f;
        } else {
            c7634hk.f48694e = c4862Af02.b();
        }
        C4862Af0 c4862Af03 = this.f46603i;
        if (c4862Af03 == null) {
            if ((this.f46596b & 8) != 0) {
                this.f46602h = Collections.unmodifiableList(this.f46602h);
                this.f46596b &= -9;
            }
            c7634hk.f48695f = this.f46602h;
        } else {
            c7634hk.f48695f = c4862Af03.b();
        }
        C4862Af0 c4862Af04 = this.f46605k;
        if (c4862Af04 == null) {
            if ((this.f46596b & 16) != 0) {
                this.f46604j = Collections.unmodifiableList(this.f46604j);
                this.f46596b &= -17;
            }
            c7634hk.f48696g = this.f46604j;
        } else {
            c7634hk.f48696g = c4862Af04.b();
        }
        C4862Af0 c4862Af05 = this.f46607m;
        if (c4862Af05 == null) {
            if ((this.f46596b & 32) != 0) {
                this.f46606l = Collections.unmodifiableList(this.f46606l);
                this.f46596b &= -33;
            }
            c7634hk.f48697h = this.f46606l;
        } else {
            c7634hk.f48697h = c4862Af05.b();
        }
        C4862Af0 c4862Af06 = this.f46609o;
        if (c4862Af06 == null) {
            if ((this.f46596b & 64) != 0) {
                this.f46608n = Collections.unmodifiableList(this.f46608n);
                this.f46596b &= -65;
            }
            c7634hk.f48698i = this.f46608n;
        } else {
            c7634hk.f48698i = c4862Af06.b();
        }
        if ((i10 & 128) != 0) {
            C5109Em0 c5109Em0 = this.f46611q;
            if (c5109Em0 == null) {
                c7634hk.f48699j = this.f46610p;
            } else {
                c5109Em0.f40016d = true;
                c7634hk.f48699j = (C5973Tk) c5109Em0.d();
            }
            i11 |= 2;
        }
        C4862Af0 c4862Af07 = this.f46613s;
        if (c4862Af07 == null) {
            if ((this.f46596b & 256) != 0) {
                this.f46612r = Collections.unmodifiableList(this.f46612r);
                this.f46596b &= -257;
            }
            c7634hk.f48700k = this.f46612r;
        } else {
            c7634hk.f48700k = c4862Af07.b();
        }
        if ((this.f46596b & 512) != 0) {
            this.f46614t = this.f46614t.e();
            this.f46596b &= -513;
        }
        c7634hk.f48701l = this.f46614t;
        c7634hk.f48691b = i11;
        onBuilt();
        return c7634hk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7634hk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6467ak) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7634hk.f48689n;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54508c;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54509d.a(C7634hk.class, C6467ak.class);
    }

    @Override
    public final boolean isInitialized() {
        C5973Tk c5973Tk;
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f46599e;
            if (i10 < (c4862Af0 == null ? this.f46598d.size() : c4862Af0.f38676b.size())) {
                C4862Af0 c4862Af02 = this.f46599e;
                if (!(c4862Af02 == null ? (C5104Ek) this.f46598d.get(i10) : (C5104Ek) c4862Af02.a(i10, false)).isInitialized()) {
                    return false;
                }
                i10++;
            } else {
                int i11 = 0;
                while (true) {
                    C4862Af0 c4862Af03 = this.f46601g;
                    if (i11 < (c4862Af03 == null ? this.f46600f.size() : c4862Af03.f38676b.size())) {
                        C4862Af0 c4862Af04 = this.f46601g;
                        if (!(c4862Af04 == null ? (C5104Ek) this.f46600f.get(i11) : (C5104Ek) c4862Af04.a(i11, false)).isInitialized()) {
                            return false;
                        }
                        i11++;
                    } else {
                        int i12 = 0;
                        while (true) {
                            C4862Af0 c4862Af05 = this.f46603i;
                            if (i12 < (c4862Af05 == null ? this.f46602h.size() : c4862Af05.f38676b.size())) {
                                C4862Af0 c4862Af06 = this.f46603i;
                                if (!(c4862Af06 == null ? (C7634hk) this.f46602h.get(i12) : (C7634hk) c4862Af06.a(i12, false)).isInitialized()) {
                                    return false;
                                }
                                i12++;
                            } else {
                                int i13 = 0;
                                while (true) {
                                    C4862Af0 c4862Af07 = this.f46605k;
                                    if (i13 < (c4862Af07 == null ? this.f46604j.size() : c4862Af07.f38676b.size())) {
                                        C4862Af0 c4862Af08 = this.f46605k;
                                        if (!(c4862Af08 == null ? (C8634nk) this.f46604j.get(i13) : (C8634nk) c4862Af08.a(i13, false)).isInitialized()) {
                                            return false;
                                        }
                                        i13++;
                                    } else {
                                        int i14 = 0;
                                        while (true) {
                                            C4862Af0 c4862Af09 = this.f46607m;
                                            if (i14 < (c4862Af09 == null ? this.f46606l.size() : c4862Af09.f38676b.size())) {
                                                C4862Af0 c4862Af010 = this.f46607m;
                                                if (!(c4862Af010 == null ? (C6967dk) this.f46606l.get(i14) : (C6967dk) c4862Af010.a(i14, false)).isInitialized()) {
                                                    return false;
                                                }
                                                i14++;
                                            } else {
                                                int i15 = 0;
                                                while (true) {
                                                    C4862Af0 c4862Af011 = this.f46609o;
                                                    if (i15 >= (c4862Af011 == null ? this.f46608n.size() : c4862Af011.f38676b.size())) {
                                                        if ((this.f46596b & 128) == 0) {
                                                            return true;
                                                        }
                                                        C5109Em0 c5109Em0 = this.f46611q;
                                                        if (c5109Em0 == null) {
                                                            c5973Tk = this.f46610p;
                                                            if (c5973Tk == null) {
                                                                c5973Tk = C5973Tk.f44563j;
                                                            }
                                                        } else {
                                                            c5973Tk = (C5973Tk) c5109Em0.d();
                                                        }
                                                        return c5973Tk.isInitialized();
                                                    }
                                                    C4862Af0 c4862Af012 = this.f46609o;
                                                    if (!(c4862Af012 == null ? (C6970dl) this.f46608n.get(i15) : (C6970dl) c4862Af012.a(i15, false)).isInitialized()) {
                                                        return false;
                                                    }
                                                    i15++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6467ak) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6467ak) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7634hk.f48689n;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6467ak) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7634hk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7634hk) {
            return a((C7634hk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7634hk) {
            return a((C7634hk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C6467ak a(C7634hk c7634hk) {
        C4862Af0 c4862Af0;
        C4862Af0 c4862Af02;
        C4862Af0 c4862Af03;
        C4862Af0 c4862Af04;
        C4862Af0 c4862Af05;
        C4862Af0 c4862Af06;
        C5973Tk c5973Tk;
        C5973Tk c5973Tk2;
        if (c7634hk == C7634hk.f48689n) {
            return this;
        }
        if ((c7634hk.f48691b & 1) != 0) {
            this.f46596b |= 1;
            this.f46597c = c7634hk.f48692c;
            onChanged();
        }
        C4862Af0 c4862Af07 = null;
        if (this.f46599e == null) {
            if (!c7634hk.f48693d.isEmpty()) {
                if (this.f46598d.isEmpty()) {
                    this.f46598d = c7634hk.f48693d;
                    this.f46596b &= -3;
                } else {
                    if ((this.f46596b & 2) == 0) {
                        this.f46598d = new ArrayList(this.f46598d);
                        this.f46596b |= 2;
                    }
                    this.f46598d.addAll(c7634hk.f48693d);
                }
                onChanged();
            }
        } else if (!c7634hk.f48693d.isEmpty()) {
            if (this.f46599e.f38676b.isEmpty()) {
                this.f46599e.f38675a = null;
                this.f46599e = null;
                List list = c7634hk.f48693d;
                this.f46598d = list;
                this.f46596b &= -3;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af0 = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f46599e = c4862Af0;
                    this.f46598d = null;
                } else {
                    c4862Af0 = null;
                }
                this.f46599e = c4862Af0;
            } else {
                this.f46599e.a(c7634hk.f48693d);
            }
        }
        if (this.f46601g == null) {
            if (!c7634hk.f48694e.isEmpty()) {
                if (this.f46600f.isEmpty()) {
                    this.f46600f = c7634hk.f48694e;
                    this.f46596b &= -5;
                } else {
                    if ((this.f46596b & 4) == 0) {
                        this.f46600f = new ArrayList(this.f46600f);
                        this.f46596b |= 4;
                    }
                    this.f46600f.addAll(c7634hk.f48694e);
                }
                onChanged();
            }
        } else if (!c7634hk.f48694e.isEmpty()) {
            if (this.f46601g.f38676b.isEmpty()) {
                this.f46601g.f38675a = null;
                this.f46601g = null;
                List list2 = c7634hk.f48694e;
                this.f46600f = list2;
                this.f46596b &= -5;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af02 = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f46601g = c4862Af02;
                    this.f46600f = null;
                } else {
                    c4862Af02 = null;
                }
                this.f46601g = c4862Af02;
            } else {
                this.f46601g.a(c7634hk.f48694e);
            }
        }
        if (this.f46603i == null) {
            if (!c7634hk.f48695f.isEmpty()) {
                if (this.f46602h.isEmpty()) {
                    this.f46602h = c7634hk.f48695f;
                    this.f46596b &= -9;
                } else {
                    if ((this.f46596b & 8) == 0) {
                        this.f46602h = new ArrayList(this.f46602h);
                        this.f46596b |= 8;
                    }
                    this.f46602h.addAll(c7634hk.f48695f);
                }
                onChanged();
            }
        } else if (!c7634hk.f48695f.isEmpty()) {
            if (this.f46603i.f38676b.isEmpty()) {
                this.f46603i.f38675a = null;
                this.f46603i = null;
                List list3 = c7634hk.f48695f;
                this.f46602h = list3;
                this.f46596b &= -9;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af03 = new C4862Af0(list3, false, getParentForChildren(), isClean());
                    this.f46603i = c4862Af03;
                    this.f46602h = null;
                } else {
                    c4862Af03 = null;
                }
                this.f46603i = c4862Af03;
            } else {
                this.f46603i.a(c7634hk.f48695f);
            }
        }
        if (this.f46605k == null) {
            if (!c7634hk.f48696g.isEmpty()) {
                if (this.f46604j.isEmpty()) {
                    this.f46604j = c7634hk.f48696g;
                    this.f46596b &= -17;
                } else {
                    if ((this.f46596b & 16) == 0) {
                        this.f46604j = new ArrayList(this.f46604j);
                        this.f46596b |= 16;
                    }
                    this.f46604j.addAll(c7634hk.f48696g);
                }
                onChanged();
            }
        } else if (!c7634hk.f48696g.isEmpty()) {
            if (this.f46605k.f38676b.isEmpty()) {
                this.f46605k.f38675a = null;
                this.f46605k = null;
                List list4 = c7634hk.f48696g;
                this.f46604j = list4;
                this.f46596b &= -17;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af04 = new C4862Af0(list4, false, getParentForChildren(), isClean());
                    this.f46605k = c4862Af04;
                    this.f46604j = null;
                } else {
                    c4862Af04 = null;
                }
                this.f46605k = c4862Af04;
            } else {
                this.f46605k.a(c7634hk.f48696g);
            }
        }
        if (this.f46607m == null) {
            if (!c7634hk.f48697h.isEmpty()) {
                if (this.f46606l.isEmpty()) {
                    this.f46606l = c7634hk.f48697h;
                    this.f46596b &= -33;
                } else {
                    if ((this.f46596b & 32) == 0) {
                        this.f46606l = new ArrayList(this.f46606l);
                        this.f46596b |= 32;
                    }
                    this.f46606l.addAll(c7634hk.f48697h);
                }
                onChanged();
            }
        } else if (!c7634hk.f48697h.isEmpty()) {
            if (this.f46607m.f38676b.isEmpty()) {
                this.f46607m.f38675a = null;
                this.f46607m = null;
                List list5 = c7634hk.f48697h;
                this.f46606l = list5;
                this.f46596b &= -33;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af05 = new C4862Af0(list5, false, getParentForChildren(), isClean());
                    this.f46607m = c4862Af05;
                    this.f46606l = null;
                } else {
                    c4862Af05 = null;
                }
                this.f46607m = c4862Af05;
            } else {
                this.f46607m.a(c7634hk.f48697h);
            }
        }
        if (this.f46609o == null) {
            if (!c7634hk.f48698i.isEmpty()) {
                if (this.f46608n.isEmpty()) {
                    this.f46608n = c7634hk.f48698i;
                    this.f46596b &= -65;
                } else {
                    if ((this.f46596b & 64) == 0) {
                        this.f46608n = new ArrayList(this.f46608n);
                        this.f46596b |= 64;
                    }
                    this.f46608n.addAll(c7634hk.f48698i);
                }
                onChanged();
            }
        } else if (!c7634hk.f48698i.isEmpty()) {
            if (this.f46609o.f38676b.isEmpty()) {
                this.f46609o.f38675a = null;
                this.f46609o = null;
                List list6 = c7634hk.f48698i;
                this.f46608n = list6;
                this.f46596b &= -65;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af06 = new C4862Af0(list6, false, getParentForChildren(), isClean());
                    this.f46609o = c4862Af06;
                    this.f46608n = null;
                } else {
                    c4862Af06 = null;
                }
                this.f46609o = c4862Af06;
            } else {
                this.f46609o.a(c7634hk.f48698i);
            }
        }
        if (c7634hk.a()) {
            C5973Tk c5973Tk3 = c7634hk.f48699j;
            if (c5973Tk3 == null) {
                c5973Tk3 = C5973Tk.f44563j;
            }
            C5109Em0 c5109Em0 = this.f46611q;
            if (c5109Em0 == null) {
                if ((this.f46596b & 128) != 0 && (c5973Tk = this.f46610p) != null && c5973Tk != (c5973Tk2 = C5973Tk.f44563j)) {
                    this.f46610p = c5973Tk2.toBuilder().a(c5973Tk).a(c5973Tk3).m1181buildPartial();
                } else {
                    this.f46610p = c5973Tk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c5973Tk3);
            }
            this.f46596b |= 128;
        }
        if (this.f46613s == null) {
            if (!c7634hk.f48700k.isEmpty()) {
                if (this.f46612r.isEmpty()) {
                    this.f46612r = c7634hk.f48700k;
                    this.f46596b &= -257;
                } else {
                    if ((this.f46596b & 256) == 0) {
                        this.f46612r = new ArrayList(this.f46612r);
                        this.f46596b |= 256;
                    }
                    this.f46612r.addAll(c7634hk.f48700k);
                }
                onChanged();
            }
        } else if (!c7634hk.f48700k.isEmpty()) {
            if (this.f46613s.f38676b.isEmpty()) {
                this.f46613s.f38675a = null;
                this.f46613s = null;
                List list7 = c7634hk.f48700k;
                this.f46612r = list7;
                this.f46596b &= -257;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    C4862Af0 c4862Af08 = new C4862Af0(list7, false, getParentForChildren(), isClean());
                    this.f46613s = c4862Af08;
                    this.f46612r = null;
                    c4862Af07 = c4862Af08;
                }
                this.f46613s = c4862Af07;
            } else {
                this.f46613s.a(c7634hk.f48700k);
            }
        }
        if (!c7634hk.f48701l.isEmpty()) {
            if (this.f46614t.isEmpty()) {
                this.f46614t = c7634hk.f48701l;
                this.f46596b &= -513;
            } else {
                if ((this.f46596b & 512) == 0) {
                    this.f46614t = new C10255xR(this.f46614t);
                    this.f46596b |= 512;
                }
                this.f46614t.addAll(c7634hk.f48701l);
            }
            onChanged();
        }
        onChanged();
        return this;
    }

    public C6467ak(C7011dz c7011dz) {
        super(c7011dz);
        C5973Tk c5973Tk;
        this.f46597c = "";
        List list = Collections.EMPTY_LIST;
        this.f46598d = list;
        this.f46600f = list;
        this.f46602h = list;
        this.f46604j = list;
        this.f46606l = list;
        this.f46608n = list;
        this.f46612r = list;
        this.f46614t = C10255xR.f53759d;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f46599e == null) {
                this.f46599e = new C4862Af0(list, (this.f46596b & 2) != 0, getParentForChildren(), isClean());
                this.f46598d = null;
            }
            if (this.f46601g == null) {
                this.f46601g = new C4862Af0(this.f46600f, (this.f46596b & 4) != 0, getParentForChildren(), isClean());
                this.f46600f = null;
            }
            if (this.f46603i == null) {
                this.f46603i = new C4862Af0(this.f46602h, (this.f46596b & 8) != 0, getParentForChildren(), isClean());
                this.f46602h = null;
            }
            if (this.f46605k == null) {
                this.f46605k = new C4862Af0(this.f46604j, (this.f46596b & 16) != 0, getParentForChildren(), isClean());
                this.f46604j = null;
            }
            if (this.f46607m == null) {
                this.f46607m = new C4862Af0(this.f46606l, (this.f46596b & 32) != 0, getParentForChildren(), isClean());
                this.f46606l = null;
            }
            if (this.f46609o == null) {
                this.f46609o = new C4862Af0(this.f46608n, (this.f46596b & 64) != 0, getParentForChildren(), isClean());
                this.f46608n = null;
            }
            C5109Em0 c5109Em0 = this.f46611q;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c5973Tk = this.f46610p;
                    if (c5973Tk == null) {
                        c5973Tk = C5973Tk.f44563j;
                    }
                } else {
                    c5973Tk = (C5973Tk) c5109Em0.d();
                }
                this.f46611q = new C5109Em0(c5973Tk, getParentForChildren(), isClean());
                this.f46610p = null;
            }
            if (this.f46613s == null) {
                this.f46613s = new C4862Af0(this.f46612r, (this.f46596b & 256) != 0, getParentForChildren(), isClean());
                this.f46612r = null;
            }
        }
    }
}
