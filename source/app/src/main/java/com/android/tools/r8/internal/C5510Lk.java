package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C5510Lk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f42057b;

    public Serializable f42058c;

    public Serializable f42059d;

    public InterfaceC10589zR f42060e;

    public TI f42061f;

    public TI f42062g;

    public List f42063h;

    public C4862Af0 f42064i;

    public List f42065j;

    public C4862Af0 f42066k;

    public List f42067l;

    public C4862Af0 f42068m;

    public List f42069n;

    public C4862Af0 f42070o;

    public C5799Qk f42071p;

    public C5109Em0 f42072q;

    public C9471sl f42073r;

    public C5109Em0 f42074s;

    public Serializable f42075t;

    public C5510Lk() {
        super(null);
        this.f42058c = "";
        this.f42059d = "";
        this.f42060e = C10255xR.f53759d;
        this.f42061f = AbstractC10181wz.emptyIntList();
        this.f42062g = AbstractC10181wz.emptyIntList();
        List list = Collections.EMPTY_LIST;
        this.f42063h = list;
        this.f42065j = list;
        this.f42067l = list;
        this.f42069n = list;
        this.f42075t = "";
        c();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5510Lk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5567Mk c5567Mk = null;
        try {
            try {
                a((C5567Mk) C5567Mk.f42361q.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5567Mk c5567Mk2 = (C5567Mk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5567Mk = c5567Mk2;
                    if (c5567Mk != null) {
                        a(c5567Mk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5567Mk != null) {
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
    public final C5567Mk m1181buildPartial() {
        C5567Mk c5567Mk = new C5567Mk(this);
        int i10 = this.f42057b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c5567Mk.f42363c = this.f42058c;
        if ((i10 & 2) != 0) {
            i11 |= 2;
        }
        c5567Mk.f42364d = this.f42059d;
        if ((this.f42057b & 4) != 0) {
            this.f42060e = this.f42060e.e();
            this.f42057b &= -5;
        }
        c5567Mk.f42365e = this.f42060e;
        int i12 = this.f42057b;
        if ((i12 & 8) != 0) {
            ((AbstractC9353s1) this.f42061f).f52249b = false;
            this.f42057b = i12 & (-9);
        }
        c5567Mk.f42366f = this.f42061f;
        int i13 = this.f42057b;
        if ((i13 & 16) != 0) {
            ((AbstractC9353s1) this.f42062g).f52249b = false;
            this.f42057b = i13 & (-17);
        }
        c5567Mk.f42367g = this.f42062g;
        C4862Af0 c4862Af0 = this.f42064i;
        if (c4862Af0 == null) {
            if ((this.f42057b & 32) != 0) {
                this.f42063h = Collections.unmodifiableList(this.f42063h);
                this.f42057b &= -33;
            }
            c5567Mk.f42368h = this.f42063h;
        } else {
            c5567Mk.f42368h = c4862Af0.b();
        }
        C4862Af0 c4862Af02 = this.f42066k;
        if (c4862Af02 == null) {
            if ((this.f42057b & 64) != 0) {
                this.f42065j = Collections.unmodifiableList(this.f42065j);
                this.f42057b &= -65;
            }
            c5567Mk.f42369i = this.f42065j;
        } else {
            c5567Mk.f42369i = c4862Af02.b();
        }
        C4862Af0 c4862Af03 = this.f42068m;
        if (c4862Af03 == null) {
            if ((this.f42057b & 128) != 0) {
                this.f42067l = Collections.unmodifiableList(this.f42067l);
                this.f42057b &= -129;
            }
            c5567Mk.f42370j = this.f42067l;
        } else {
            c5567Mk.f42370j = c4862Af03.b();
        }
        C4862Af0 c4862Af04 = this.f42070o;
        if (c4862Af04 == null) {
            if ((this.f42057b & 256) != 0) {
                this.f42069n = Collections.unmodifiableList(this.f42069n);
                this.f42057b &= -257;
            }
            c5567Mk.f42371k = this.f42069n;
        } else {
            c5567Mk.f42371k = c4862Af04.b();
        }
        if ((i10 & 512) != 0) {
            C5109Em0 c5109Em0 = this.f42072q;
            if (c5109Em0 == null) {
                c5567Mk.f42372l = this.f42071p;
            } else {
                c5109Em0.f40016d = true;
                c5567Mk.f42372l = (C5799Qk) c5109Em0.d();
            }
            i11 |= 4;
        }
        if ((i10 & 1024) != 0) {
            C5109Em0 c5109Em02 = this.f42074s;
            if (c5109Em02 == null) {
                c5567Mk.f42373m = this.f42073r;
            } else {
                c5109Em02.f40016d = true;
                c5567Mk.f42373m = (C9471sl) c5109Em02.d();
            }
            i11 |= 8;
        }
        if ((i10 & 2048) != 0) {
            i11 |= 16;
        }
        c5567Mk.f42374n = this.f42075t;
        c5567Mk.f42362b = i11;
        onBuilt();
        return c5567Mk;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5567Mk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final void c() {
        C9471sl c9471sl;
        C5799Qk c5799Qk;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            if (this.f42064i == null) {
                this.f42064i = new C4862Af0(this.f42063h, (this.f42057b & 32) != 0, getParentForChildren(), isClean());
                this.f42063h = null;
            }
            if (this.f42066k == null) {
                this.f42066k = new C4862Af0(this.f42065j, (this.f42057b & 64) != 0, getParentForChildren(), isClean());
                this.f42065j = null;
            }
            if (this.f42068m == null) {
                this.f42068m = new C4862Af0(this.f42067l, (this.f42057b & 128) != 0, getParentForChildren(), isClean());
                this.f42067l = null;
            }
            if (this.f42070o == null) {
                this.f42070o = new C4862Af0(this.f42069n, (this.f42057b & 256) != 0, getParentForChildren(), isClean());
                this.f42069n = null;
            }
            C5109Em0 c5109Em0 = this.f42072q;
            if (c5109Em0 == null) {
                if (c5109Em0 == null) {
                    c5799Qk = this.f42071p;
                    if (c5799Qk == null) {
                        c5799Qk = C5799Qk.f43701z;
                    }
                } else {
                    c5799Qk = (C5799Qk) c5109Em0.d();
                }
                this.f42072q = new C5109Em0(c5799Qk, getParentForChildren(), isClean());
                this.f42071p = null;
            }
            C5109Em0 c5109Em02 = this.f42074s;
            if (c5109Em02 == null) {
                if (c5109Em02 == null) {
                    c9471sl = this.f42073r;
                    if (c9471sl == null) {
                        c9471sl = C9471sl.f52446d;
                    }
                } else {
                    c9471sl = (C9471sl) c5109Em02.d();
                }
                this.f42074s = new C5109Em0(c9471sl, getParentForChildren(), isClean());
                this.f42073r = null;
            }
        }
    }

    public final Object clone() {
        return (C5510Lk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5567Mk.f42360p;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54506a;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54507b.a(C5567Mk.class, C5510Lk.class);
    }

    @Override
    public final boolean isInitialized() {
        C5799Qk c5799Qk;
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f42064i;
            if (i10 < (c4862Af0 == null ? this.f42063h.size() : c4862Af0.f38676b.size())) {
                C4862Af0 c4862Af02 = this.f42064i;
                if (!(c4862Af02 == null ? (C7634hk) this.f42063h.get(i10) : (C7634hk) c4862Af02.a(i10, false)).isInitialized()) {
                    return false;
                }
                i10++;
            } else {
                int i11 = 0;
                while (true) {
                    C4862Af0 c4862Af03 = this.f42066k;
                    if (i11 < (c4862Af03 == null ? this.f42065j.size() : c4862Af03.f38676b.size())) {
                        C4862Af0 c4862Af04 = this.f42066k;
                        if (!(c4862Af04 == null ? (C8634nk) this.f42065j.get(i11) : (C8634nk) c4862Af04.a(i11, false)).isInitialized()) {
                            return false;
                        }
                        i11++;
                    } else {
                        int i12 = 0;
                        while (true) {
                            C4862Af0 c4862Af05 = this.f42068m;
                            if (i12 < (c4862Af05 == null ? this.f42067l.size() : c4862Af05.f38676b.size())) {
                                C4862Af0 c4862Af06 = this.f42068m;
                                if (!(c4862Af06 == null ? (C7969jl) this.f42067l.get(i12) : (C7969jl) c4862Af06.a(i12, false)).isInitialized()) {
                                    return false;
                                }
                                i12++;
                            } else {
                                int i13 = 0;
                                while (true) {
                                    C4862Af0 c4862Af07 = this.f42070o;
                                    if (i13 >= (c4862Af07 == null ? this.f42069n.size() : c4862Af07.f38676b.size())) {
                                        if ((this.f42057b & 512) == 0) {
                                            return true;
                                        }
                                        C5109Em0 c5109Em0 = this.f42072q;
                                        if (c5109Em0 == null) {
                                            c5799Qk = this.f42071p;
                                            if (c5799Qk == null) {
                                                c5799Qk = C5799Qk.f43701z;
                                            }
                                        } else {
                                            c5799Qk = (C5799Qk) c5109Em0.d();
                                        }
                                        return c5799Qk.isInitialized();
                                    }
                                    C4862Af0 c4862Af08 = this.f42070o;
                                    if (!(c4862Af08 == null ? (C5104Ek) this.f42069n.get(i13) : (C5104Ek) c4862Af08.a(i13, false)).isInitialized()) {
                                        return false;
                                    }
                                    i13++;
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
        return (C5510Lk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5510Lk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5567Mk.f42360p;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5510Lk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5567Mk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5567Mk) {
            return a((C5567Mk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5567Mk) {
            return a((C5567Mk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C5510Lk a(C5567Mk c5567Mk) {
        C4862Af0 c4862Af0;
        C4862Af0 c4862Af02;
        C4862Af0 c4862Af03;
        C9471sl c9471sl;
        C9471sl c9471sl2;
        C5799Qk c5799Qk;
        C5799Qk c5799Qk2;
        if (c5567Mk == C5567Mk.f42360p) {
            return this;
        }
        if ((c5567Mk.f42362b & 1) != 0) {
            this.f42057b |= 1;
            this.f42058c = c5567Mk.f42363c;
            onChanged();
        }
        if ((c5567Mk.f42362b & 2) != 0) {
            this.f42057b |= 2;
            this.f42059d = c5567Mk.f42364d;
            onChanged();
        }
        if (!c5567Mk.f42365e.isEmpty()) {
            if (this.f42060e.isEmpty()) {
                this.f42060e = c5567Mk.f42365e;
                this.f42057b &= -5;
            } else {
                if ((this.f42057b & 4) == 0) {
                    this.f42060e = new C10255xR(this.f42060e);
                    this.f42057b |= 4;
                }
                this.f42060e.addAll(c5567Mk.f42365e);
            }
            onChanged();
        }
        if (!c5567Mk.f42366f.isEmpty()) {
            if (this.f42061f.isEmpty()) {
                this.f42061f = c5567Mk.f42366f;
                this.f42057b &= -9;
            } else {
                if ((this.f42057b & 8) == 0) {
                    this.f42061f = AbstractC10181wz.mutableCopy(this.f42061f);
                    this.f42057b |= 8;
                }
                ((DH) this.f42061f).addAll(c5567Mk.f42366f);
            }
            onChanged();
        }
        if (!c5567Mk.f42367g.isEmpty()) {
            if (this.f42062g.isEmpty()) {
                this.f42062g = c5567Mk.f42367g;
                this.f42057b &= -17;
            } else {
                if ((this.f42057b & 16) == 0) {
                    this.f42062g = AbstractC10181wz.mutableCopy(this.f42062g);
                    this.f42057b |= 16;
                }
                ((DH) this.f42062g).addAll(c5567Mk.f42367g);
            }
            onChanged();
        }
        C4862Af0 c4862Af04 = null;
        if (this.f42064i == null) {
            if (!c5567Mk.f42368h.isEmpty()) {
                if (this.f42063h.isEmpty()) {
                    this.f42063h = c5567Mk.f42368h;
                    this.f42057b &= -33;
                } else {
                    if ((this.f42057b & 32) == 0) {
                        this.f42063h = new ArrayList(this.f42063h);
                        this.f42057b |= 32;
                    }
                    this.f42063h.addAll(c5567Mk.f42368h);
                }
                onChanged();
            }
        } else if (!c5567Mk.f42368h.isEmpty()) {
            if (this.f42064i.f38676b.isEmpty()) {
                this.f42064i.f38675a = null;
                this.f42064i = null;
                List list = c5567Mk.f42368h;
                this.f42063h = list;
                this.f42057b &= -33;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af0 = new C4862Af0(list, false, getParentForChildren(), isClean());
                    this.f42064i = c4862Af0;
                    this.f42063h = null;
                } else {
                    c4862Af0 = null;
                }
                this.f42064i = c4862Af0;
            } else {
                this.f42064i.a(c5567Mk.f42368h);
            }
        }
        if (this.f42066k == null) {
            if (!c5567Mk.f42369i.isEmpty()) {
                if (this.f42065j.isEmpty()) {
                    this.f42065j = c5567Mk.f42369i;
                    this.f42057b &= -65;
                } else {
                    if ((this.f42057b & 64) == 0) {
                        this.f42065j = new ArrayList(this.f42065j);
                        this.f42057b |= 64;
                    }
                    this.f42065j.addAll(c5567Mk.f42369i);
                }
                onChanged();
            }
        } else if (!c5567Mk.f42369i.isEmpty()) {
            if (this.f42066k.f38676b.isEmpty()) {
                this.f42066k.f38675a = null;
                this.f42066k = null;
                List list2 = c5567Mk.f42369i;
                this.f42065j = list2;
                this.f42057b &= -65;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af02 = new C4862Af0(list2, false, getParentForChildren(), isClean());
                    this.f42066k = c4862Af02;
                    this.f42065j = null;
                } else {
                    c4862Af02 = null;
                }
                this.f42066k = c4862Af02;
            } else {
                this.f42066k.a(c5567Mk.f42369i);
            }
        }
        if (this.f42068m == null) {
            if (!c5567Mk.f42370j.isEmpty()) {
                if (this.f42067l.isEmpty()) {
                    this.f42067l = c5567Mk.f42370j;
                    this.f42057b &= -129;
                } else {
                    if ((this.f42057b & 128) == 0) {
                        this.f42067l = new ArrayList(this.f42067l);
                        this.f42057b |= 128;
                    }
                    this.f42067l.addAll(c5567Mk.f42370j);
                }
                onChanged();
            }
        } else if (!c5567Mk.f42370j.isEmpty()) {
            if (this.f42068m.f38676b.isEmpty()) {
                this.f42068m.f38675a = null;
                this.f42068m = null;
                List list3 = c5567Mk.f42370j;
                this.f42067l = list3;
                this.f42057b &= -129;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    c4862Af03 = new C4862Af0(list3, false, getParentForChildren(), isClean());
                    this.f42068m = c4862Af03;
                    this.f42067l = null;
                } else {
                    c4862Af03 = null;
                }
                this.f42068m = c4862Af03;
            } else {
                this.f42068m.a(c5567Mk.f42370j);
            }
        }
        if (this.f42070o == null) {
            if (!c5567Mk.f42371k.isEmpty()) {
                if (this.f42069n.isEmpty()) {
                    this.f42069n = c5567Mk.f42371k;
                    this.f42057b &= -257;
                } else {
                    if ((this.f42057b & 256) == 0) {
                        this.f42069n = new ArrayList(this.f42069n);
                        this.f42057b |= 256;
                    }
                    this.f42069n.addAll(c5567Mk.f42371k);
                }
                onChanged();
            }
        } else if (!c5567Mk.f42371k.isEmpty()) {
            if (this.f42070o.f38676b.isEmpty()) {
                this.f42070o.f38675a = null;
                this.f42070o = null;
                List list4 = c5567Mk.f42371k;
                this.f42069n = list4;
                this.f42057b &= -257;
                if (AbstractC10181wz.alwaysUseFieldBuilders) {
                    C4862Af0 c4862Af05 = new C4862Af0(list4, false, getParentForChildren(), isClean());
                    this.f42070o = c4862Af05;
                    this.f42069n = null;
                    c4862Af04 = c4862Af05;
                }
                this.f42070o = c4862Af04;
            } else {
                this.f42070o.a(c5567Mk.f42371k);
            }
        }
        if (c5567Mk.b()) {
            C5799Qk c5799Qk3 = c5567Mk.f42372l;
            if (c5799Qk3 == null) {
                c5799Qk3 = C5799Qk.f43701z;
            }
            C5109Em0 c5109Em0 = this.f42072q;
            if (c5109Em0 == null) {
                if ((this.f42057b & 512) != 0 && (c5799Qk = this.f42071p) != null && c5799Qk != (c5799Qk2 = C5799Qk.f43701z)) {
                    this.f42071p = c5799Qk2.toBuilder().a(c5799Qk).a(c5799Qk3).m1181buildPartial();
                } else {
                    this.f42071p = c5799Qk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c5799Qk3);
            }
            this.f42057b |= 512;
        }
        if ((c5567Mk.f42362b & 8) != 0) {
            C9471sl c9471sl3 = c5567Mk.f42373m;
            if (c9471sl3 == null) {
                c9471sl3 = C9471sl.f52446d;
            }
            C5109Em0 c5109Em02 = this.f42074s;
            if (c5109Em02 == null) {
                if ((this.f42057b & 1024) != 0 && (c9471sl = this.f42073r) != null && c9471sl != (c9471sl2 = C9471sl.f52446d)) {
                    this.f42073r = c9471sl2.toBuilder().a(c9471sl).a(c9471sl3).m1181buildPartial();
                } else {
                    this.f42073r = c9471sl3;
                }
                onChanged();
            } else {
                c5109Em02.a(c9471sl3);
            }
            this.f42057b |= 1024;
        }
        if ((c5567Mk.f42362b & 16) != 0) {
            this.f42057b |= 2048;
            this.f42075t = c5567Mk.f42374n;
            onChanged();
        }
        onChanged();
        return this;
    }

    public C5510Lk(C7011dz c7011dz) {
        super(c7011dz);
        this.f42058c = "";
        this.f42059d = "";
        this.f42060e = C10255xR.f53759d;
        this.f42061f = AbstractC10181wz.emptyIntList();
        this.f42062g = AbstractC10181wz.emptyIntList();
        List list = Collections.EMPTY_LIST;
        this.f42063h = list;
        this.f42065j = list;
        this.f42067l = list;
        this.f42069n = list;
        this.f42075t = "";
        c();
    }
}
