package com.android.tools.r8.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C5713Oz {

    public final ThreadLocal f43091a;

    public final ConcurrentHashMap f43092b;

    public final C6139Wh f43093c;

    public final C6407aL f43094d;

    public final List f43095e;

    public final boolean f43096f;

    public final boolean f43097g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C5713Oz() {
        this(r1, r2, r3, false, true, true, 1, r11, EnumC9493ss0.f52474b, EnumC9493ss0.f52475c, r11);
        C9001pv c9001pv = C9001pv.f51661e;
        C8336lw c8336lw = EnumC9504sw.f52486b;
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
    }

    public final Object a(String str, Class cls) {
        Object obj;
        C5009Cu0 c5009Cu0 = new C5009Cu0(cls);
        if (str == null) {
            obj = null;
        } else {
            C8240lL c8240lL = new C8240lL(new StringReader(str));
            c8240lL.f49939b = false;
            Object a10 = a(c8240lL, c5009Cu0);
            if (a10 != null) {
                try {
                    if (c8240lL.u() != 10) {
                        throw new C8407mL("JSON document was not fully consumed.");
                    }
                } catch (GU e10) {
                    throw new C8407mL(e10);
                } catch (IOException e11) {
                    throw new C7073eL(e11);
                }
            }
            obj = a10;
        }
        if (cls == Integer.TYPE) {
            cls = Integer.class;
        } else if (cls == Float.TYPE) {
            cls = Float.class;
        } else if (cls == Byte.TYPE) {
            cls = Byte.class;
        } else if (cls == Double.TYPE) {
            cls = Double.class;
        } else if (cls == Long.TYPE) {
            cls = Long.class;
        } else if (cls == Character.TYPE) {
            cls = Character.class;
        } else if (cls == Boolean.TYPE) {
            cls = Boolean.class;
        } else if (cls == Short.TYPE) {
            cls = Short.class;
        } else if (cls == Void.TYPE) {
            cls = Void.class;
        }
        return cls.cast(obj);
    }

    public final String toString() {
        return "{serializeNulls:" + this.f43096f + ",factories:" + ((Object) this.f43095e) + ",instanceCreators:" + ((Object) this.f43093c) + VectorFormat.DEFAULT_SUFFIX;
    }

    public C5713Oz(C9001pv c9001pv, EnumC9504sw enumC9504sw, Map map, boolean z10, boolean z11, boolean z12, int i10, List list, EnumC9493ss0 enumC9493ss0, EnumC9493ss0 enumC9493ss02, List list2) {
        S30 s30;
        AbstractC9997vt0 c5482Kz;
        B10 b10;
        this.f43091a = new ThreadLocal();
        this.f43092b = new ConcurrentHashMap();
        C6139Wh c6139Wh = new C6139Wh(map, z12, list2);
        this.f43093c = c6139Wh;
        this.f43096f = z10;
        this.f43097g = z11;
        ArrayList arrayList = new ArrayList();
        arrayList.add(AbstractC8164ku0.f49807A);
        if (enumC9493ss0 == EnumC9493ss0.f52474b) {
            s30 = T30.f44381c;
        } else {
            s30 = new S30(enumC9493ss0);
        }
        arrayList.add(s30);
        arrayList.add(c9001pv);
        arrayList.addAll(list);
        arrayList.add(AbstractC8164ku0.f49824p);
        arrayList.add(AbstractC8164ku0.f49815g);
        arrayList.add(AbstractC8164ku0.f49812d);
        arrayList.add(AbstractC8164ku0.f49813e);
        arrayList.add(AbstractC8164ku0.f49814f);
        if (i10 == 1) {
            c5482Kz = AbstractC8164ku0.f49819k;
        } else {
            c5482Kz = new C5482Kz();
        }
        arrayList.add(new C6221Xt0(Long.TYPE, Long.class, c5482Kz));
        arrayList.add(new C6221Xt0(Double.TYPE, Double.class, new C5366Iz()));
        arrayList.add(new C6221Xt0(Float.TYPE, Float.class, new C5424Jz()));
        if (enumC9493ss02 == EnumC9493ss0.f52475c) {
            b10 = C10.f39059b;
        } else {
            b10 = new B10(new C10(enumC9493ss02));
        }
        arrayList.add(b10);
        arrayList.add(AbstractC8164ku0.f49816h);
        arrayList.add(AbstractC8164ku0.f49817i);
        arrayList.add(new C6164Wt0(AtomicLong.class, new C9830ut0(new C5539Lz(c5482Kz))));
        arrayList.add(new C6164Wt0(AtomicLongArray.class, new C9830ut0(new C5597Mz(c5482Kz))));
        arrayList.add(AbstractC8164ku0.f49818j);
        arrayList.add(AbstractC8164ku0.f49820l);
        arrayList.add(AbstractC8164ku0.f49825q);
        arrayList.add(AbstractC8164ku0.f49826r);
        arrayList.add(new C6164Wt0(BigDecimal.class, AbstractC8164ku0.f49821m));
        arrayList.add(new C6164Wt0(BigInteger.class, AbstractC8164ku0.f49822n));
        arrayList.add(new C6164Wt0(C9253rR.class, AbstractC8164ku0.f49823o));
        arrayList.add(AbstractC8164ku0.f49827s);
        arrayList.add(AbstractC8164ku0.f49828t);
        arrayList.add(AbstractC8164ku0.f49830v);
        arrayList.add(AbstractC8164ku0.f49831w);
        arrayList.add(AbstractC8164ku0.f49833y);
        arrayList.add(AbstractC8164ku0.f49829u);
        arrayList.add(AbstractC8164ku0.f49810b);
        arrayList.add(C6464aj.f46592b);
        arrayList.add(AbstractC8164ku0.f49832x);
        if (AbstractC5632Nn0.f42693a) {
            arrayList.add(AbstractC5632Nn0.f42697e);
            arrayList.add(AbstractC5632Nn0.f42696d);
            arrayList.add(AbstractC5632Nn0.f42698f);
        }
        arrayList.add(V3.f44946c);
        arrayList.add(AbstractC8164ku0.f49809a);
        arrayList.add(new C6189Xe(c6139Wh));
        arrayList.add(new SU(c6139Wh));
        C6407aL c6407aL = new C6407aL(c6139Wh);
        this.f43094d = c6407aL;
        arrayList.add(c6407aL);
        arrayList.add(AbstractC8164ku0.f49808B);
        arrayList.add(new C5265He0(c6139Wh, enumC9504sw, c9001pv, c6407aL, list2));
        this.f43095e = Collections.unmodifiableList(arrayList);
    }

    public final AbstractC9997vt0 a(C5009Cu0 c5009Cu0) {
        boolean z10;
        AbstractC9997vt0 abstractC9997vt0 = (AbstractC9997vt0) this.f43092b.get(c5009Cu0);
        if (abstractC9997vt0 != null) {
            return abstractC9997vt0;
        }
        Map map = (Map) this.f43091a.get();
        if (map == null) {
            map = new HashMap();
            this.f43091a.set(map);
            z10 = true;
        } else {
            AbstractC9997vt0 abstractC9997vt02 = (AbstractC9997vt0) map.get(c5009Cu0);
            if (abstractC9997vt02 != null) {
                return abstractC9997vt02;
            }
            z10 = false;
        }
        try {
            C5655Nz c5655Nz = new C5655Nz();
            map.put(c5009Cu0, c5655Nz);
            Iterator it = this.f43095e.iterator();
            AbstractC9997vt0 abstractC9997vt03 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                abstractC9997vt03 = ((InterfaceC10164wt0) it.next()).a(this, c5009Cu0);
                if (abstractC9997vt03 != null) {
                    if (c5655Nz.f42750a == null) {
                        c5655Nz.f42750a = abstractC9997vt03;
                        map.put(c5009Cu0, abstractC9997vt03);
                    } else {
                        throw new AssertionError((Object) "Delegate is already set");
                    }
                }
            }
            if (z10) {
                this.f43091a.remove();
            }
            if (abstractC9997vt03 != null) {
                if (z10) {
                    this.f43092b.putAll(map);
                }
                return abstractC9997vt03;
            }
            throw new IllegalArgumentException("GSON (2.10.1) cannot handle " + ((Object) c5009Cu0));
        } catch (Throwable th2) {
            if (z10) {
                this.f43091a.remove();
            }
            throw th2;
        }
    }

    public final AbstractC9997vt0 a(InterfaceC10164wt0 interfaceC10164wt0, C5009Cu0 c5009Cu0) {
        if (!this.f43095e.contains(interfaceC10164wt0)) {
            interfaceC10164wt0 = this.f43094d;
        }
        boolean z10 = false;
        for (InterfaceC10164wt0 interfaceC10164wt02 : this.f43095e) {
            if (z10) {
                AbstractC9997vt0 a10 = interfaceC10164wt02.a(this, c5009Cu0);
                if (a10 != null) {
                    return a10;
                }
            } else if (interfaceC10164wt02 == interfaceC10164wt0) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + ((Object) c5009Cu0));
    }

    public final String a(Object obj) {
        Class<?> cls = obj.getClass();
        StringWriter stringWriter = new StringWriter();
        try {
            C9075qL c9075qL = new C9075qL(stringWriter);
            c9075qL.f51762f = this.f43097g;
            c9075qL.f51761e = false;
            c9075qL.f51764h = this.f43096f;
            a(obj, cls, c9075qL);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new C7073eL(e10);
        }
    }

    public final void a(Object obj, Class cls, C9075qL c9075qL) {
        AbstractC9997vt0 a10 = a(new C5009Cu0(cls));
        boolean z10 = c9075qL.f51761e;
        c9075qL.f51761e = true;
        boolean z11 = c9075qL.f51762f;
        c9075qL.f51762f = this.f43097g;
        boolean z12 = c9075qL.f51764h;
        c9075qL.f51764h = this.f43096f;
        try {
            try {
                a10.a(c9075qL, obj);
            } catch (IOException e10) {
                throw new C7073eL(e10);
            } catch (AssertionError e11) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e11.getMessage(), e11);
            }
        } finally {
            c9075qL.f51761e = z10;
            c9075qL.f51762f = z11;
            c9075qL.f51764h = z12;
        }
    }

    public final Object a(C8240lL c8240lL, C5009Cu0 c5009Cu0) {
        boolean z10 = c8240lL.f49939b;
        boolean z11 = true;
        c8240lL.f49939b = true;
        try {
            try {
                try {
                    try {
                        c8240lL.u();
                        z11 = false;
                        return a(c5009Cu0).a(c8240lL);
                    } catch (EOFException e10) {
                        if (z11) {
                            c8240lL.f49939b = z10;
                            return null;
                        }
                        throw new C8407mL(e10);
                    }
                } catch (IllegalStateException e11) {
                    throw new C8407mL(e11);
                }
            } catch (IOException e12) {
                throw new C8407mL(e12);
            } catch (AssertionError e13) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e13.getMessage(), e13);
            }
        } finally {
            c8240lL.f49939b = z10;
        }
    }
}
