package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class MA {

    public static final boolean f42223k = true;

    public final C4514j f42224a;

    public final BU f42225b;

    public final String f42226c;

    public final boolean f42227d;

    public final AbstractC8552nC f42228e;

    public final QC f42229f;

    public final QC f42230g;

    public final AbstractC8552nC f42231h;

    public final Set f42232i = AbstractC5513Ll0.c();

    public final boolean f42233j;

    public MA(C4514j c4514j, BU bu, String str, boolean z10, String str2, IA ia2) {
        this.f42224a = c4514j;
        this.f42225b = bu;
        this.f42226c = str;
        this.f42227d = z10;
        Map<String, String> i10 = ia2.i();
        C8051kC c8051kC = new C8051kC(4);
        for (String str3 : i10.o()) {
            c8051kC.a(a(str3), a(i10.get(str3)));
        }
        this.f42228e = c8051kC.b();
        QC qc2 = ia2.f40991b;
        int i11 = QC.f43505c;
        IC ic2 = new IC();
        Iterator it = qc2.iterator();
        while (it.hasNext()) {
            ic2.a(a((String) it.next()));
        }
        this.f42230g = ic2.a();
        QC qc3 = ia2.f40992c;
        int i12 = QC.f43505c;
        IC ic3 = new IC();
        Iterator it2 = qc3.iterator();
        while (it2.hasNext()) {
            ic3.a(a((String) it2.next()));
        }
        this.f42229f = ic3.a();
        Map<String, Map<String, String>> h10 = ia2.h();
        C8051kC c8051kC2 = new C8051kC(4);
        for (String str4 : h10.o()) {
            com.android.tools.r8.graph.L2 a10 = a(str4);
            Map<String, String> map = h10.get(str4);
            C8051kC c8051kC3 = new C8051kC(4);
            for (String str5 : map.o()) {
                c8051kC3.a(a(str5), a(map.get(str5)));
            }
            c8051kC2.a(a10, c8051kC3.b());
        }
        this.f42231h = c8051kC2.b();
        this.f42233j = str2.startsWith("com.tools.android:desugar_jdk_libs:1.2.");
    }

    public final void a(BiConsumer biConsumer) {
        final Set<com.android.tools.r8.graph.L2> c10 = AbstractC5513Ll0.c();
        c10.addAll(this.f42228e.o());
        c10.addAll(this.f42229f);
        c10.addAll(this.f42231h.o());
        c10.removeAll(this.f42232i);
        if (this.f42233j) {
            final ArrayList arrayList = new ArrayList();
            for (final com.android.tools.r8.graph.L2 l22 : c10) {
                this.f42228e.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        MA.a(Set.this, l22, arrayList, (com.android.tools.r8.graph.L2) obj, (com.android.tools.r8.graph.L2) obj2);
                    }
                });
            }
            arrayList.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Set.this.remove((com.android.tools.r8.graph.L2) obj);
                }
            });
        }
        biConsumer.accept("The following prefixes do not match any type: ", c10);
    }

    public final void b(com.android.tools.r8.graph.M2 m22) {
        d(m22);
        com.android.tools.r8.graph.L2 a10 = a(m22, this.f42229f);
        if (a10 != null) {
            BU bu = this.f42225b;
            bu.getClass();
            boolean z10 = BU.f38908s;
            bu.f38910b.a(m22);
            BU bu2 = this.f42225b;
            bu2.f38911c.put(m22, a(m22));
            this.f42232i.add(a10);
        }
        c(m22);
    }

    public final void c(final com.android.tools.r8.graph.M2 m22) {
        final com.android.tools.r8.graph.L2 a10 = a(m22, this.f42231h.o());
        if (a10 == null) {
            return;
        }
        ((Map) this.f42231h.get(a10)).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                MA.this.a(m22, a10, (com.android.tools.r8.graph.L2) obj, (com.android.tools.r8.graph.L2) obj2);
            }
        });
        this.f42232i.add(a10);
    }

    public final void d(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10;
        com.android.tools.r8.graph.L2 a10 = a(m22, this.f42228e.o());
        if (a10 == null) {
            c10 = null;
        } else {
            com.android.tools.r8.graph.L2 a11 = m22.f36592f.a(a10, (com.android.tools.r8.graph.L2) this.f42228e.get(a10), this.f42224a.b());
            this.f42232i.add(a10);
            c10 = this.f42224a.b().c(a11);
        }
        if (c10 == null || a(m22, this.f42230g) != null) {
            return;
        }
        this.f42225b.b(m22, c10);
    }

    public static void a(Set set, com.android.tools.r8.graph.L2 l22, List list, com.android.tools.r8.graph.L2 l23, com.android.tools.r8.graph.L2 l24) {
        if (set.contains(l23)) {
            return;
        }
        l23.getClass();
        if (l23.b(l22.f36562f) || l22.b(l23.f36562f)) {
            list.add(l22);
        }
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        String m10 = C4932Bl.m(this.f42226c);
        String m23 = m22.toString();
        int indexOf = m23.indexOf(46);
        return this.f42224a.b().d(C4932Bl.H(m10 + m23.substring(indexOf + 1)));
    }

    public final void a(AbstractC8552nC abstractC8552nC) {
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                MA.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2[]) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2[] a2Arr) {
        for (com.android.tools.r8.graph.A2 a23 : a2Arr) {
            if (a23 != null) {
                d(a23.s0());
            }
        }
    }

    public final void a(Map map) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                MA.this.a((com.android.tools.r8.graph.M2) obj, (JA) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, JA ja2) {
        BU bu = this.f42225b;
        bu.f38911c.put(m22, ja2.f41338a);
    }

    public final void a() {
        this.f42224a.a().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                MA.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
        if (this.f42227d) {
            this.f42224a.a().b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    MA.this.b((com.android.tools.r8.graph.M2) obj);
                }
            });
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23, com.android.tools.r8.graph.L2 l24) {
        com.android.tools.r8.graph.L2 a10 = m22.f36592f.a(l22, l23, this.f42224a.b());
        com.android.tools.r8.graph.L2 a11 = m22.f36592f.a(l22, l24, this.f42224a.b());
        com.android.tools.r8.graph.M2 c10 = this.f42224a.b().c(a10);
        if (f42223k || this.f42224a.c(c10) == null) {
            this.f42225b.b(c10, this.f42224a.b().c(a11));
            return;
        }
        throw new AssertionError((Object) ("Trying to rewrite a type " + ((Object) c10) + " with different prefix that already exists."));
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, Set set) {
        byte[] bArr;
        com.android.tools.r8.graph.L2 l22 = m22.f36592f;
        C4724u1 b10 = this.f42224a.b();
        int i10 = 0;
        while (true) {
            bArr = l22.f36562f;
            if (bArr[i10] != 91) {
                break;
            }
            i10++;
        }
        if (i10 != 0) {
            int length = bArr.length - i10;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, i10, bArr2, 0, length);
            l22 = b10.a(l22.f36561e - i10, bArr2);
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.L2 l23 = (com.android.tools.r8.graph.L2) it.next();
            if (l22.b(l23.f36562f)) {
                return l23;
            }
        }
        return null;
    }

    public final com.android.tools.r8.graph.L2 a(String str) {
        return this.f42224a.b().b("L" + C4932Bl.g(str));
    }
}
