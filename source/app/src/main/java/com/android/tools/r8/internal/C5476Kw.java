package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public final class C5476Kw {

    public static final C5476Kw f41820d = new C5476Kw(0);

    public final AbstractC7810in0 f41821a;

    public boolean f41822b;

    public boolean f41823c;

    public C5476Kw() {
        int i10 = AbstractC7810in0.f49055h;
        this.f41821a = new C6093Vm0(16);
    }

    public static void c(InterfaceC5360Iw interfaceC5360Iw, Object obj) {
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        EnumC6000Tx0[] enumC6000Tx0Arr = C5685Ol.f43015n;
        if (!b(enumC6000Tx0Arr[c5685Ol.f43022h.ordinal()], obj)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c5685Ol.f43017c.f39995d), enumC6000Tx0Arr[c5685Ol.f43022h.ordinal()].f44629b, obj.getClass().getName()));
        }
    }

    public final Map a() {
        if (this.f41823c) {
            C6093Vm0 a10 = a(this.f41821a, false);
            if (this.f41821a.f49059e) {
                a10.k();
            }
            return a10;
        }
        AbstractC7810in0 abstractC7810in0 = this.f41821a;
        return abstractC7810in0.f49059e ? abstractC7810in0 : Collections.unmodifiableMap(abstractC7810in0);
    }

    public final void b(InterfaceC5360Iw interfaceC5360Iw, Object obj) {
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        if (c5685Ol.k()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    c(c5685Ol, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            c(c5685Ol, obj);
        }
        this.f41821a.a(c5685Ol, obj);
    }

    public final void d() {
        if (this.f41822b) {
            return;
        }
        this.f41821a.k();
        this.f41822b = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C5476Kw) {
            return this.f41821a.equals(((C5476Kw) obj).f41821a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f41821a.hashCode();
    }

    public final C5476Kw m720clone() {
        C5476Kw c5476Kw = new C5476Kw();
        for (int i10 = 0; i10 < this.f41821a.f49057c.size(); i10++) {
            Map.Entry entry = (Map.Entry) this.f41821a.f49057c.get(i10);
            c5476Kw.b((InterfaceC5360Iw) entry.getKey(), entry.getValue());
        }
        for (Map.Entry entry2 : this.f41821a.i()) {
            c5476Kw.b((InterfaceC5360Iw) entry2.getKey(), entry2.getValue());
        }
        c5476Kw.f41823c = this.f41823c;
        return c5476Kw;
    }

    public C5476Kw(int i10) {
        int i11 = AbstractC7810in0.f49055h;
        this.f41821a = new C6093Vm0(0);
        d();
        d();
    }

    public static C6093Vm0 a(AbstractC7810in0 abstractC7810in0, boolean z10) {
        int i10 = AbstractC7810in0.f49055h;
        C6093Vm0 c6093Vm0 = new C6093Vm0(16);
        for (int i11 = 0; i11 < abstractC7810in0.f49057c.size(); i11++) {
            Map.Entry entry = (Map.Entry) abstractC7810in0.f49057c.get(i11);
            InterfaceC5360Iw interfaceC5360Iw = (InterfaceC5360Iw) entry.getKey();
            Object value = entry.getValue();
            if (z10 && (value instanceof List)) {
                c6093Vm0.a(interfaceC5360Iw, new ArrayList((List) value));
            } else {
                c6093Vm0.a(interfaceC5360Iw, value);
            }
        }
        for (Map.Entry entry2 : abstractC7810in0.i()) {
            InterfaceC5360Iw interfaceC5360Iw2 = (InterfaceC5360Iw) entry2.getKey();
            Object value2 = entry2.getValue();
            if (z10 && (value2 instanceof List)) {
                c6093Vm0.a(interfaceC5360Iw2, new ArrayList((List) value2));
            } else {
                c6093Vm0.a(interfaceC5360Iw2, value2);
            }
        }
        return c6093Vm0;
    }

    public static boolean b(EnumC6000Tx0 enumC6000Tx0, Object obj) {
        Charset charset = YI.f45964a;
        obj.getClass();
        switch (enumC6000Tx0.f44629b.ordinal()) {
            case 0:
                return obj instanceof Integer;
            case 1:
                return obj instanceof Long;
            case 2:
                return obj instanceof Float;
            case 3:
                return obj instanceof Double;
            case 4:
                return obj instanceof Boolean;
            case 5:
                return obj instanceof String;
            case 6:
                return (obj instanceof AbstractC8373m8) || (obj instanceof byte[]);
            case 7:
                return (obj instanceof Integer) || (obj instanceof QI);
            case 8:
                return (obj instanceof InterfaceC8095kW) || (obj instanceof AbstractC9921vR);
            default:
                return false;
        }
    }

    public C5476Kw(AbstractC7810in0 abstractC7810in0) {
        this.f41821a = abstractC7810in0;
        d();
    }

    public final boolean c() {
        for (int i10 = 0; i10 < this.f41821a.f49057c.size(); i10++) {
            if (!b((Map.Entry) this.f41821a.f49057c.get(i10))) {
                return false;
            }
        }
        Iterator it = this.f41821a.i().iterator();
        while (it.hasNext()) {
            if (!b((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(Map.Entry entry) {
        C5685Ol c5685Ol = (C5685Ol) ((InterfaceC5360Iw) entry.getKey());
        if (c5685Ol.g() == EnumC6115Vx0.f45235j) {
            if (c5685Ol.k()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((InterfaceC8095kW) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof InterfaceC8095kW) {
                    if (!((InterfaceC8095kW) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof AbstractC9921vR) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void c(Map.Entry entry) {
        InterfaceC5360Iw interfaceC5360Iw = (InterfaceC5360Iw) entry.getKey();
        Object value = entry.getValue();
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        if (c5685Ol.k()) {
            Object a10 = a((InterfaceC5360Iw) c5685Ol);
            if (a10 == null) {
                a10 = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) a10).add(a(it.next()));
            }
            this.f41821a.a(c5685Ol, a10);
            return;
        }
        if (c5685Ol.g() == EnumC6115Vx0.f45235j) {
            Object a11 = a((InterfaceC5360Iw) c5685Ol);
            if (a11 == null) {
                this.f41821a.a(c5685Ol, a(value));
                return;
            } else {
                this.f41821a.a(c5685Ol, ((InterfaceC7095eW) ((InterfaceC8095kW) a11).toBuilder()).mergeFrom((InterfaceC7262fW) ((InterfaceC8095kW) value)).build());
                return;
            }
        }
        this.f41821a.a(c5685Ol, a(value));
    }

    public final boolean a(C5685Ol c5685Ol) {
        if (c5685Ol.k()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.f41821a.get(c5685Ol) != null;
    }

    public final Object a(InterfaceC5360Iw interfaceC5360Iw) {
        Object obj = this.f41821a.get(interfaceC5360Iw);
        return obj instanceof AbstractC9921vR ? ((AbstractC9921vR) obj).a() : obj;
    }

    public final void a(C5476Kw c5476Kw) {
        for (int i10 = 0; i10 < c5476Kw.f41821a.f49057c.size(); i10++) {
            c((Map.Entry) c5476Kw.f41821a.f49057c.get(i10));
        }
        Iterator it = c5476Kw.f41821a.i().iterator();
        while (it.hasNext()) {
            c((Map.Entry) it.next());
        }
    }

    public final int b() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f41821a.f49057c.size(); i11++) {
            Map.Entry entry = (Map.Entry) this.f41821a.f49057c.get(i11);
            i10 += a((InterfaceC5360Iw) entry.getKey(), entry.getValue());
        }
        for (Map.Entry entry2 : this.f41821a.i()) {
            i10 += a((InterfaceC5360Iw) entry2.getKey(), entry2.getValue());
        }
        return i10;
    }

    public static Object a(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static void a(Map.Entry entry, AbstractC5322Ie abstractC5322Ie) {
        C5685Ol c5685Ol = (C5685Ol) ((InterfaceC5360Iw) entry.getKey());
        if (c5685Ol.g() == EnumC6115Vx0.f45235j && !c5685Ol.k() && !c5685Ol.j()) {
            abstractC5322Ie.c(((C5685Ol) ((InterfaceC5360Iw) entry.getKey())).f43017c.f39995d, (InterfaceC8095kW) entry.getValue());
        } else {
            a(c5685Ol, entry.getValue(), abstractC5322Ie);
        }
    }

    public static void a(AbstractC5322Ie abstractC5322Ie, EnumC6000Tx0 enumC6000Tx0, Object obj) {
        switch (enumC6000Tx0.ordinal()) {
            case 0:
                double doubleValue = ((Double) obj).doubleValue();
                abstractC5322Ie.getClass();
                abstractC5322Ie.c(Double.doubleToRawLongBits(doubleValue));
                return;
            case 1:
                float floatValue = ((Float) obj).floatValue();
                abstractC5322Ie.getClass();
                abstractC5322Ie.e(Float.floatToRawIntBits(floatValue));
                return;
            case 2:
                abstractC5322Ie.d(((Long) obj).longValue());
                return;
            case 3:
                abstractC5322Ie.d(((Long) obj).longValue());
                return;
            case 4:
                abstractC5322Ie.f(((Integer) obj).intValue());
                return;
            case 5:
                abstractC5322Ie.c(((Long) obj).longValue());
                return;
            case 6:
                abstractC5322Ie.e(((Integer) obj).intValue());
                return;
            case 7:
                abstractC5322Ie.a(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof AbstractC8373m8) {
                    abstractC5322Ie.a((AbstractC8373m8) obj);
                    return;
                } else {
                    abstractC5322Ie.b((String) obj);
                    return;
                }
            case 9:
                abstractC5322Ie.getClass();
                ((InterfaceC8095kW) obj).writeTo(abstractC5322Ie);
                return;
            case 10:
                abstractC5322Ie.a((InterfaceC8095kW) obj);
                return;
            case 11:
                if (obj instanceof AbstractC8373m8) {
                    abstractC5322Ie.a((AbstractC8373m8) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                abstractC5322Ie.getClass();
                abstractC5322Ie.a(bArr.length, bArr);
                return;
            case 12:
                abstractC5322Ie.g(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof QI) {
                    abstractC5322Ie.f(((QI) obj).getNumber());
                    return;
                } else {
                    abstractC5322Ie.f(((Integer) obj).intValue());
                    return;
                }
            case 14:
                abstractC5322Ie.e(((Integer) obj).intValue());
                return;
            case 15:
                abstractC5322Ie.c(((Long) obj).longValue());
                return;
            case 16:
                abstractC5322Ie.g(AbstractC5322Ie.d(((Integer) obj).intValue()));
                return;
            case 17:
                abstractC5322Ie.d(AbstractC5322Ie.b(((Long) obj).longValue()));
                return;
            default:
                return;
        }
    }

    public static void a(InterfaceC5360Iw interfaceC5360Iw, Object obj, AbstractC5322Ie abstractC5322Ie) {
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        EnumC6000Tx0 enumC6000Tx0 = C5685Ol.f43015n[c5685Ol.f43022h.ordinal()];
        int i10 = c5685Ol.f43017c.f39995d;
        if (c5685Ol.k()) {
            List list = (List) obj;
            if (c5685Ol.j()) {
                abstractC5322Ie.d(i10, 2);
                Iterator it = list.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    i11 += a(enumC6000Tx0, it.next());
                }
                abstractC5322Ie.g(i11);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    a(abstractC5322Ie, enumC6000Tx0, it2.next());
                }
                return;
            }
            for (Object obj2 : list) {
                if (enumC6000Tx0 == EnumC6000Tx0.f44626d) {
                    abstractC5322Ie.d(i10, 3);
                    ((InterfaceC8095kW) obj2).writeTo(abstractC5322Ie);
                    abstractC5322Ie.d(i10, 4);
                } else {
                    abstractC5322Ie.d(i10, enumC6000Tx0.f44630c);
                    a(abstractC5322Ie, enumC6000Tx0, obj2);
                }
            }
            return;
        }
        if (enumC6000Tx0 == EnumC6000Tx0.f44626d) {
            abstractC5322Ie.d(i10, 3);
            ((InterfaceC8095kW) obj).writeTo(abstractC5322Ie);
            abstractC5322Ie.d(i10, 4);
        } else {
            abstractC5322Ie.d(i10, enumC6000Tx0.f44630c);
            a(abstractC5322Ie, enumC6000Tx0, obj);
        }
    }

    public static int a(Map.Entry entry) {
        InterfaceC5360Iw interfaceC5360Iw = (InterfaceC5360Iw) entry.getKey();
        Object value = entry.getValue();
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        if (c5685Ol.g() == EnumC6115Vx0.f45235j && !c5685Ol.k() && !c5685Ol.j()) {
            return AbstractC5322Ie.a(3, (InterfaceC8095kW) value) + AbstractC5559Mg.a(((C5685Ol) ((InterfaceC5360Iw) entry.getKey())).f43017c.f39995d, AbstractC5322Ie.b(2), AbstractC5322Ie.b(1) * 2);
        }
        return a(c5685Ol, value);
    }

    public static int a(EnumC6000Tx0 enumC6000Tx0, Object obj) {
        int size;
        int c10;
        switch (enumC6000Tx0.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = AbstractC5322Ie.f41156a;
                return 8;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = AbstractC5322Ie.f41156a;
                return 4;
            case 2:
                return AbstractC5322Ie.a(((Long) obj).longValue());
            case 3:
                return AbstractC5322Ie.a(((Long) obj).longValue());
            case 4:
                int intValue = ((Integer) obj).intValue();
                if (intValue >= 0) {
                    return AbstractC5322Ie.c(intValue);
                }
                Logger logger3 = AbstractC5322Ie.f41156a;
                return 10;
            case 5:
                ((Long) obj).getClass();
                Logger logger4 = AbstractC5322Ie.f41156a;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                Logger logger5 = AbstractC5322Ie.f41156a;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                Logger logger6 = AbstractC5322Ie.f41156a;
                return 1;
            case 8:
                if (obj instanceof AbstractC8373m8) {
                    Logger logger7 = AbstractC5322Ie.f41156a;
                    size = ((AbstractC8373m8) obj).size();
                    c10 = AbstractC5322Ie.c(size);
                    break;
                } else {
                    return AbstractC5322Ie.a((String) obj);
                }
            case 9:
                Logger logger8 = AbstractC5322Ie.f41156a;
                return ((InterfaceC8095kW) obj).getSerializedSize();
            case 10:
                Logger logger9 = AbstractC5322Ie.f41156a;
                size = ((InterfaceC8095kW) obj).getSerializedSize();
                c10 = AbstractC5322Ie.c(size);
                break;
            case 11:
                if (obj instanceof AbstractC8373m8) {
                    Logger logger10 = AbstractC5322Ie.f41156a;
                    size = ((AbstractC8373m8) obj).size();
                    c10 = AbstractC5322Ie.c(size);
                    break;
                } else {
                    Logger logger11 = AbstractC5322Ie.f41156a;
                    size = ((byte[]) obj).length;
                    c10 = AbstractC5322Ie.c(size);
                    break;
                }
            case 12:
                return AbstractC5322Ie.c(((Integer) obj).intValue());
            case 13:
                if (obj instanceof QI) {
                    return AbstractC5322Ie.a(((QI) obj).getNumber());
                }
                return AbstractC5322Ie.a(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger12 = AbstractC5322Ie.f41156a;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger13 = AbstractC5322Ie.f41156a;
                return 8;
            case 16:
                return AbstractC5322Ie.c(AbstractC5322Ie.d(((Integer) obj).intValue()));
            case 17:
                return AbstractC5322Ie.a(AbstractC5322Ie.b(((Long) obj).longValue()));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return c10 + size;
    }

    public static int a(InterfaceC5360Iw interfaceC5360Iw, Object obj) {
        int b10;
        int a10;
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        EnumC6000Tx0 enumC6000Tx0 = C5685Ol.f43015n[c5685Ol.f43022h.ordinal()];
        int i10 = c5685Ol.f43017c.f39995d;
        if (c5685Ol.k()) {
            int i11 = 0;
            if (c5685Ol.j()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    i11 += a(enumC6000Tx0, it.next());
                }
                b10 = AbstractC5322Ie.b(i10) + i11;
                a10 = AbstractC5322Ie.c(i11);
            } else {
                for (Object obj2 : (List) obj) {
                    int b11 = AbstractC5322Ie.b(i10);
                    if (enumC6000Tx0 == EnumC6000Tx0.f44626d) {
                        b11 *= 2;
                    }
                    i11 += a(enumC6000Tx0, obj2) + b11;
                }
                return i11;
            }
        } else {
            b10 = AbstractC5322Ie.b(i10);
            if (enumC6000Tx0 == EnumC6000Tx0.f44626d) {
                b10 *= 2;
            }
            a10 = a(enumC6000Tx0, obj);
        }
        return a10 + b10;
    }
}
