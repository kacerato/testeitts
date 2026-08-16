package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5302Hw {

    public C6093Vm0 f40917a;

    public boolean f40918b;

    public boolean f40919c;

    public C5302Hw() {
        int i10 = AbstractC7810in0.f49055h;
        this.f40917a = new C6093Vm0(16);
        this.f40918b = true;
    }

    public static Object a(InterfaceC5360Iw interfaceC5360Iw, Object obj) {
        if (obj == null) {
            return obj;
        }
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        if (c5685Ol.g() == EnumC6115Vx0.f45235j) {
            if (c5685Ol.k()) {
                if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        Object obj2 = list.get(i10);
                        Object build = obj2 instanceof InterfaceC7928jW ? ((InterfaceC7928jW) obj2).build() : obj2;
                        if (build != obj2) {
                            if (list == obj) {
                                list = new ArrayList(list);
                            }
                            list.set(i10, build);
                        }
                    }
                    return list;
                }
                throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + ((Object) obj.getClass()));
            }
            if (obj instanceof InterfaceC7928jW) {
                return ((InterfaceC7928jW) obj).build();
            }
        }
        return obj;
    }

    public static void b(C5685Ol c5685Ol, Object obj) {
        EnumC6000Tx0[] enumC6000Tx0Arr = C5685Ol.f43015n;
        if (C5476Kw.b(enumC6000Tx0Arr[c5685Ol.f43022h.ordinal()], obj)) {
            return;
        }
        if (enumC6000Tx0Arr[c5685Ol.f43022h.ordinal()].f44629b != EnumC6115Vx0.f45235j || !(obj instanceof InterfaceC7928jW)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c5685Ol.f43017c.f39995d), enumC6000Tx0Arr[c5685Ol.f43022h.ordinal()].f44629b, obj.getClass().getName()));
        }
    }

    public final void a() {
        if (this.f40918b) {
            return;
        }
        this.f40917a = C5476Kw.a((AbstractC7810in0) this.f40917a, true);
        this.f40918b = true;
    }

    public final void a(C5685Ol c5685Ol, Object obj) {
        a();
        boolean z10 = true;
        if (c5685Ol.k()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList((List) obj);
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    b(c5685Ol, obj2);
                    this.f40919c = this.f40919c || (obj2 instanceof InterfaceC7928jW);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            b(c5685Ol, obj);
        }
        if (!this.f40919c && !(obj instanceof InterfaceC7928jW)) {
            z10 = false;
        }
        this.f40919c = z10;
        this.f40917a.a(c5685Ol, obj);
    }

    public final void a(Map.Entry entry) {
        InterfaceC5360Iw interfaceC5360Iw = (InterfaceC5360Iw) entry.getKey();
        Object value = entry.getValue();
        C5685Ol c5685Ol = (C5685Ol) interfaceC5360Iw;
        if (c5685Ol.k()) {
            Object a10 = a((InterfaceC5360Iw) c5685Ol, this.f40917a.get(c5685Ol));
            if (a10 == null) {
                a10 = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) a10).add(C5476Kw.a(it.next()));
            }
            this.f40917a.a(c5685Ol, a10);
            return;
        }
        if (c5685Ol.g() == EnumC6115Vx0.f45235j) {
            Object a11 = a((InterfaceC5360Iw) c5685Ol, this.f40917a.get(c5685Ol));
            if (a11 == null) {
                this.f40917a.a(c5685Ol, C5476Kw.a(value));
                return;
            } else if (a11 instanceof InterfaceC7928jW) {
                ((InterfaceC7095eW) ((InterfaceC7928jW) a11)).mergeFrom((InterfaceC7262fW) ((InterfaceC8095kW) value));
                return;
            } else {
                this.f40917a.a(c5685Ol, ((InterfaceC7095eW) ((InterfaceC8095kW) a11).toBuilder()).mergeFrom((InterfaceC7262fW) ((InterfaceC8095kW) value)).build());
                return;
            }
        }
        this.f40917a.a(c5685Ol, C5476Kw.a(value));
    }
}
