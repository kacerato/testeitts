package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class R4 {

    public static final boolean f36771f = true;

    public final Function f36774c;

    public final C4724u1 f36776e;

    public final LinkedHashMap f36772a = new LinkedHashMap();

    public final LinkedHashMap f36773b = new LinkedHashMap();

    public final Set f36775d = AbstractC5513Ll0.c();

    public R4(C4724u1 c4724u1, Function function) {
        this.f36774c = function;
        this.f36776e = c4724u1;
    }

    public final void a(M2 m22) {
        if (m22 == null) {
            return;
        }
        ((InterfaceC4364b0) this.f36774c.apply(m22)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R4.this.b((E0) obj);
            }
        });
    }

    public final void b(E0 e02) {
        boolean z10 = f36771f;
        if (!z10 && !e02.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && e02.f36247g != this.f36776e.f38068i2) {
            throw new AssertionError();
        }
        if (this.f36772a.getOrDefault(e02, C4516j1.f37311v) == null) {
            return;
        }
        this.f36772a.put(e02, null);
        this.f36773b.put(e02, null);
        for (M2 m22 : e02.f36248h.f36675b) {
            a(m22);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Z4 a(final E0 e02) {
        Map.Entry entry;
        if (this.f36772a.isEmpty() && this.f36773b.isEmpty()) {
            return Z4.b.f37018c;
        }
        LinkedHashMap linkedHashMap = this.f36772a;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            C4516j1 c4516j1 = (C4516j1) entry2.getValue();
            if (c4516j1 != null) {
                c4516j1.L0();
                if (c4516j1.r1() && !c4516j1.f37314g.H()) {
                    arrayList.add(entry2);
                }
            }
        }
        if (arrayList.size() > 1) {
            List a10 = AT.a((Collection) arrayList, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return (C4516j1) ((Map.Entry) obj).getValue();
                }
            });
            return a10.isEmpty() ? C4388c5.f37097d : new C4388c5(a10);
        }
        LinkedHashMap linkedHashMap2 = this.f36773b;
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
            C4516j1 c4516j12 = (C4516j1) entry3.getValue();
            if (c4516j12 != null) {
                c4516j12.L0();
                if (c4516j12.r1() && !c4516j12.f37314g.H()) {
                    arrayList2.add(entry3);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (arrayList.isEmpty()) {
                Iterator it = this.f36772a.entrySet().iterator();
                while (true) {
                    entry = null;
                    if (!it.hasNext()) {
                        r1 = null;
                        break;
                    }
                    r1 = (Map.Entry) it.next();
                    if (((C4516j1) r1.getValue()) != null) {
                        break;
                    }
                }
                if (r1 == null) {
                    for (Map.Entry entry4 : this.f36773b.entrySet()) {
                        if (((C4516j1) entry4.getValue()) != null) {
                        }
                    }
                    if (f36771f && (entry == null || !((C4516j1) entry.getValue()).d1())) {
                        throw new AssertionError();
                    }
                    if (e02 == null) {
                        e02 = (E0) entry.getKey();
                    }
                    return Z4.a(e02, (E0) entry.getKey(), (C4516j1) entry.getValue());
                }
                entry = entry4;
                if (f36771f) {
                }
                if (e02 == null) {
                }
                return Z4.a(e02, (E0) entry.getKey(), (C4516j1) entry.getValue());
            }
            Map.Entry entry5 = (Map.Entry) arrayList.get(0);
            if (e02 == null) {
                e02 = (E0) entry5.getKey();
            }
            return Z4.a(e02, (E0) entry5.getKey(), (C4516j1) entry5.getValue());
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        w42.f36934c = true;
        if (arrayList.isEmpty()) {
            if (!f36771f && this.f36775d.isEmpty()) {
                throw new AssertionError();
            }
            w42.a(Z4.b.f37018c);
        } else {
            arrayList.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R4.a(W4.this, e02, (Map.Entry) obj);
                }
            });
        }
        arrayList2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R4.b(W4.this, e02, (Map.Entry) obj);
            }
        });
        return w42.a(Z4.b.f37018c, this.f36775d);
    }

    public static void b(W4 w42, E0 e02, Map.Entry entry) {
        if (e02 == null) {
            e02 = (E0) entry.getKey();
        }
        w42.a(Z4.a(e02, (E0) entry.getKey(), (C4516j1) entry.getValue()));
    }

    public static void a(W4 w42, E0 e02, Map.Entry entry) {
        if (e02 == null) {
            e02 = (E0) entry.getKey();
        }
        w42.a(Z4.a(e02, (E0) entry.getKey(), (C4516j1) entry.getValue()));
    }
}
