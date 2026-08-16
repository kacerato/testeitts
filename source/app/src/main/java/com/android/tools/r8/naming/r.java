package com.android.tools.r8.naming;

import com.android.tools.r8.graph.Uc;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5105Ek0;
import com.android.tools.r8.internal.C5163Fk0;
import com.android.tools.r8.internal.C5371Jb;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C8137kl0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.InterfaceC5429Kb;
import com.android.tools.r8.internal.InterfaceC6046Ur0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.M40;
import com.android.tools.r8.internal.O40;
import com.android.tools.r8.internal.QE;
import com.android.tools.r8.internal.RE;
import com.android.tools.r8.internal.WE;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;
import ei.C13155a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class r {

    public static final boolean f56033l = true;

    public final String f56034a;

    public final String f56035b;

    public final HashMap f56036c = new HashMap();

    public final HashMap f56037d = new HashMap();

    public final HashMap f56038e = new HashMap();

    public final ArrayList f56039f = new ArrayList();

    public final C10996s f56040g;

    public final C10996s f56041h;

    public final HashMap f56042i;

    public final r f56043j;

    public final C8570nJ f56044k;

    public r(String str, String str2, C10996s c10996s, C10996s c10996s2, C8570nJ c8570nJ) {
        this.f56034a = str;
        this.f56035b = str2;
        this.f56041h = c10996s2;
        this.f56040g = c10996s;
        this.f56044k = c8570nJ;
        HashMap hashMap = c10996s.f56051a;
        this.f56042i = hashMap;
        this.f56043j = (r) hashMap.get(str);
    }

    public static C8137kl0 a(C8137kl0 c8137kl0, C8137kl0 c8137kl02) {
        return c8137kl02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x0259, code lost:
    
        if (r12.f55703b != r12.f55702a) goto L108;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02c0  */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v35, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v46, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(C10912b c10912b, C10957k c10957k) {
        V.c a10;
        r rVar;
        Iterator<Map.Entry<String, C10957k.c>> it;
        Iterator it2;
        List list;
        Map<String, String> map;
        C10957k.c cVar;
        ArrayList arrayList;
        int i10;
        ArrayList<C10957k.b> arrayList2;
        int i11;
        C10977o c10977o;
        ArrayList<C10957k.b> arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        int i12;
        List list2;
        C10977o c10977o2;
        C10957k.c cVar2;
        C10957k.b bVar;
        C10982p c10982p;
        int i13;
        ArrayList arrayList6;
        int i14;
        r rVar2;
        int i15;
        int i16;
        ArrayList arrayList7;
        C10957k.b bVar2;
        M0 m02;
        r rVar3 = this;
        Map<String, String> map2 = c10912b.d().f48186b;
        Iterator<Map.Entry<String, C10957k.c>> it3 = c10957k.f55955e.entrySet().iterator();
        while (it3.hasNext()) {
            Iterator it4 = it3.next().getValue().b().iterator();
            while (it4.hasNext()) {
                C10957k.c cVar3 = (C10957k.c) it4.next();
                List<C10957k.b> a11 = cVar3.a();
                ArrayList arrayList8 = new ArrayList();
                C10977o c10977o3 = new C10977o();
                int i17 = Integer.MIN_VALUE;
                ArrayList arrayList9 = new ArrayList();
                int i18 = Integer.MAX_VALUE;
                int i19 = 0;
                while (i19 < a11.size()) {
                    C10957k.b bVar3 = a11.get(i19);
                    M0 m03 = bVar3.f55969b;
                    if (m03 != null) {
                        i18 = Math.min(i18, m03.f55702a);
                        i17 = Math.max(i17, m03.f55703b);
                    }
                    int i20 = i18;
                    int i21 = i17;
                    rVar3.b(bVar3);
                    V.b b10 = bVar3.f55970c.b();
                    if (b10.d()) {
                        rVar = (r) rVar3.f56042i.get(b10.f());
                    } else {
                        rVar = rVar3.f56043j;
                    }
                    r rVar4 = rVar;
                    if (rVar4 != null) {
                        if (b10.d()) {
                            it = it3;
                            it2 = it4;
                            b10 = new V.b(b10.g(), b10.f55774c, b10.f55775d);
                        } else {
                            it = it3;
                            it2 = it4;
                        }
                        rVar3.f56041h.a(rVar4, b10.b());
                        list = rVar4.a(bVar3);
                        if (!f56033l && list == null) {
                            if (i20 >= Integer.MAX_VALUE) {
                                M0 m04 = bVar3.f55971d;
                                if (m04 == null) {
                                    m04 = bVar3.f55969b;
                                }
                                if (m04 != null) {
                                    throw new AssertionError();
                                }
                            }
                        }
                    } else {
                        it = it3;
                        it2 = it4;
                        list = null;
                    }
                    boolean z10 = !arrayList9.isEmpty();
                    boolean z11 = f56033l;
                    if (list != null && !list.isEmpty()) {
                        C10957k.b bVar4 = (C10957k.b) AT.b(list);
                        M0 m05 = bVar3.f55971d;
                        if (m05 == null) {
                            m05 = bVar3.f55969b;
                        }
                        if (m05 == null) {
                            map = map2;
                            cVar = cVar3;
                            arrayList = arrayList8;
                            i10 = i19;
                            arrayList2 = arrayList9;
                            i11 = i20;
                            c10977o = c10977o3;
                            arrayList3 = Collections.singletonList(a(rVar4, bVar3, bVar4));
                        } else {
                            C10982p a12 = C10982p.a(list);
                            ArrayList arrayList10 = new ArrayList();
                            if (!z11 && bVar3.f55969b == null) {
                                throw new AssertionError();
                            }
                            M0 m06 = bVar3.f55969b;
                            int i22 = i19;
                            int i23 = m06.f55702a;
                            int i24 = m06.f55703b;
                            map = map2;
                            int a13 = bVar3.a(i24);
                            while (true) {
                                if (i23 > i24) {
                                    cVar = cVar3;
                                    arrayList = arrayList8;
                                    arrayList2 = arrayList9;
                                    i11 = i20;
                                    c10977o = c10977o3;
                                    i10 = i22;
                                    arrayList3 = arrayList10;
                                    break;
                                }
                                ArrayList arrayList11 = arrayList9;
                                int a14 = bVar3.a(i23);
                                List a15 = a12.a(a14);
                                if (a15 == null || a15.isEmpty()) {
                                    i12 = i20;
                                } else {
                                    i12 = i20;
                                    if (((C10957k.b) AT.b(a15)).f55969b == null || ((C10957k.b) AT.b(a15)).f55969b.f55703b >= a14) {
                                        list2 = a15;
                                        if (list2 == null && (((C10957k.b) AT.b(list2)).f55969b == null || a13 >= ((C10957k.b) AT.b(list2)).f55969b.f55702a)) {
                                            i13 = a13;
                                            M0 m07 = ((C10957k.b) AT.b(list2)).f55969b;
                                            if (m07 == null) {
                                                cVar = cVar3;
                                                c10977o = c10977o3;
                                                i10 = i22;
                                                arrayList2 = arrayList11;
                                                i11 = i12;
                                                arrayList = arrayList8;
                                                arrayList3 = Collections.singletonList(a(rVar4, bVar3, bVar4));
                                                break;
                                            }
                                            c10982p = a12;
                                            int i25 = m07.f55702a;
                                            if (a14 < i25) {
                                                int i26 = ((i25 - a14) - 1) + i23;
                                                M0 m08 = new M0(i23, i26, false);
                                                M0 m09 = new M0(a14, r14.f55969b.f55702a - 1, false);
                                                if (m09.f55702a != 0 || m09.f55703b != 0) {
                                                    m09 = m08;
                                                }
                                                C10957k.b bVar5 = new C10957k.b(m08, bVar3.f55970c, m09, bVar3.f55972e);
                                                if (m08.f55702a <= bVar3.f55969b.f55702a) {
                                                    bVar5.f55976i = new ArrayList(bVar3.f55976i);
                                                }
                                                arrayList10.add(bVar5);
                                                i23 = i26 + 1;
                                                arrayList9 = arrayList11;
                                                a13 = i13;
                                                a12 = c10982p;
                                                i20 = i12;
                                            } else {
                                                int i27 = i24 - i23;
                                                if (i27 >= 1) {
                                                    M0 m010 = bVar3.f55971d;
                                                    if (m010 == null) {
                                                        m010 = bVar3.f55969b;
                                                    }
                                                    if (!m010.f55704c) {
                                                    }
                                                    int i28 = i23 + i27;
                                                    i16 = i24;
                                                    bVar = bVar4;
                                                    cVar2 = cVar3;
                                                    i15 = i22;
                                                    int i29 = i23;
                                                    List list3 = list2;
                                                    bVar2 = bVar3;
                                                    arrayList7 = arrayList11;
                                                    arrayList6 = arrayList8;
                                                    rVar2 = rVar4;
                                                    i14 = i12;
                                                    c10977o2 = c10977o3;
                                                    a(rVar4, arrayList10, bVar3, list3, c10977o3, i29, i28, z10);
                                                    i23 = i29 + i27 + 1;
                                                }
                                                i27 = Math.min(i27, m07.f55703b - bVar3.a(i23));
                                                int i282 = i23 + i27;
                                                i16 = i24;
                                                bVar = bVar4;
                                                cVar2 = cVar3;
                                                i15 = i22;
                                                int i292 = i23;
                                                List list32 = list2;
                                                bVar2 = bVar3;
                                                arrayList7 = arrayList11;
                                                arrayList6 = arrayList8;
                                                rVar2 = rVar4;
                                                i14 = i12;
                                                c10977o2 = c10977o3;
                                                a(rVar4, arrayList10, bVar3, list32, c10977o3, i292, i282, z10);
                                                i23 = i292 + i27 + 1;
                                            }
                                        } else {
                                            i13 = a13;
                                            c10982p = a12;
                                            cVar2 = cVar3;
                                            i16 = i24;
                                            bVar = bVar4;
                                            bVar2 = bVar3;
                                            rVar2 = rVar4;
                                            c10977o2 = c10977o3;
                                            i15 = i22;
                                            arrayList7 = arrayList11;
                                            i14 = i12;
                                            arrayList6 = arrayList8;
                                            m02 = new M0(i23, i16, false);
                                            C10957k.b bVar6 = new C10957k.b(m02, bVar2.f55970c, m02, bVar2.f55972e);
                                            if (m02.f55702a <= bVar2.f55969b.f55702a) {
                                                bVar6.f55976i = new ArrayList(bVar2.f55976i);
                                            }
                                            arrayList10.add(bVar6);
                                            i23 = i16 + 1;
                                        }
                                        bVar3 = bVar2;
                                        arrayList9 = arrayList7;
                                        i24 = i16;
                                        i22 = i15;
                                        rVar4 = rVar2;
                                        i20 = i14;
                                        arrayList8 = arrayList6;
                                        a13 = i13;
                                        a12 = c10982p;
                                        bVar4 = bVar;
                                        cVar3 = cVar2;
                                        c10977o3 = c10977o2;
                                    }
                                }
                                Integer num = (Integer) a12.f56025a.ceilingKey(Integer.valueOf(a14));
                                list2 = num == null ? null : (List) a12.f56025a.get(num);
                                if (list2 == null) {
                                }
                                i13 = a13;
                                c10982p = a12;
                                cVar2 = cVar3;
                                i16 = i24;
                                bVar = bVar4;
                                bVar2 = bVar3;
                                rVar2 = rVar4;
                                c10977o2 = c10977o3;
                                i15 = i22;
                                arrayList7 = arrayList11;
                                i14 = i12;
                                arrayList6 = arrayList8;
                                m02 = new M0(i23, i16, false);
                                C10957k.b bVar62 = new C10957k.b(m02, bVar2.f55970c, m02, bVar2.f55972e);
                                if (m02.f55702a <= bVar2.f55969b.f55702a) {
                                }
                                arrayList10.add(bVar62);
                                i23 = i16 + 1;
                                bVar3 = bVar2;
                                arrayList9 = arrayList7;
                                i24 = i16;
                                i22 = i15;
                                rVar4 = rVar2;
                                i20 = i14;
                                arrayList8 = arrayList6;
                                a13 = i13;
                                a12 = c10982p;
                                bVar4 = bVar;
                                cVar3 = cVar2;
                                c10977o3 = c10977o2;
                            }
                        }
                    } else {
                        map = map2;
                        cVar = cVar3;
                        arrayList = arrayList8;
                        i10 = i19;
                        arrayList2 = arrayList9;
                        i11 = i20;
                        c10977o = c10977o3;
                        arrayList3 = Collections.singletonList(bVar3);
                    }
                    if (arrayList2.isEmpty()) {
                        arrayList4 = arrayList3;
                    } else {
                        ArrayList arrayList12 = new ArrayList();
                        M0 m011 = ((C10957k.b) arrayList2.get(0)).f55969b;
                        for (C10957k.b bVar7 : arrayList2) {
                            if (!m011.equals(bVar7.f55969b)) {
                                for (C10957k.b bVar8 : arrayList3) {
                                    if (!m011.equals(bVar8.f55969b)) {
                                        C10957k.b bVar9 = new C10957k.b(m011, bVar8.f55970c, new M0(bVar8.a(m011.f55702a), bVar8.a(m011.f55703b), false), bVar8.f55972e);
                                        if (m011.f55702a <= bVar8.f55969b.f55702a) {
                                            bVar9.f55976i = new ArrayList(bVar8.f55976i);
                                        }
                                        bVar8 = bVar9;
                                    }
                                    arrayList12.add(bVar8);
                                }
                                m011 = bVar7.f55969b;
                            }
                            if (!m011.equals(bVar7.f55969b)) {
                                C10957k.b bVar10 = new C10957k.b(m011, bVar7.f55970c, new M0(bVar7.a(m011.f55702a), bVar7.a(m011.f55703b), false), bVar7.f55972e);
                                if (m011.f55702a <= bVar7.f55969b.f55702a) {
                                    bVar10.f55976i = new ArrayList(bVar7.f55976i);
                                }
                                bVar7 = bVar10;
                            }
                            arrayList12.add(bVar7);
                        }
                        for (C10957k.b bVar11 : arrayList3) {
                            if (!m011.equals(bVar11.f55969b)) {
                                C10957k.b bVar12 = new C10957k.b(m011, bVar11.f55970c, new M0(bVar11.a(m011.f55702a), bVar11.a(m011.f55703b), false), bVar11.f55972e);
                                if (m011.f55702a <= bVar11.f55969b.f55702a) {
                                    bVar12.f55976i = new ArrayList(bVar11.f55976i);
                                }
                                bVar11 = bVar12;
                            }
                            arrayList12.add(bVar11);
                        }
                        arrayList4 = arrayList12;
                    }
                    i19 = i10 + 1;
                    if (i19 < a11.size()) {
                        C10957k.b bVar13 = a11.get(i10);
                        C10957k.b bVar14 = a11.get(i19);
                        M0 m012 = bVar13.f55969b;
                        if (m012 != null) {
                            M0 m013 = bVar14.f55971d;
                            if ((m013 != null ? m013 : bVar14.f55969b) != null) {
                                if (m013 == null) {
                                    m013 = bVar14.f55969b;
                                }
                                if (m013.f55704c && m012.equals(bVar14.f55969b)) {
                                    arrayList9 = arrayList4;
                                    arrayList5 = arrayList;
                                    arrayList8 = arrayList5;
                                    i17 = i21;
                                    it3 = it;
                                    it4 = it2;
                                    i18 = i11;
                                    map2 = map;
                                    cVar3 = cVar;
                                    c10977o3 = c10977o;
                                    rVar3 = this;
                                }
                            }
                        }
                    }
                    arrayList5 = arrayList;
                    arrayList5.addAll(arrayList4);
                    arrayList9 = Collections.EMPTY_LIST;
                    arrayList8 = arrayList5;
                    i17 = i21;
                    it3 = it;
                    it4 = it2;
                    i18 = i11;
                    map2 = map;
                    cVar3 = cVar;
                    c10977o3 = c10977o;
                    rVar3 = this;
                }
                r rVar5 = rVar3;
                final Map<String, String> map3 = map2;
                Iterator<Map.Entry<String, C10957k.c>> it5 = it3;
                Iterator it6 = it4;
                C10957k.c cVar4 = cVar3;
                C10977o c10977o4 = c10977o3;
                List a16 = rVar5.a(c10977o4, arrayList8);
                if (!c10977o4.f56021b.isEmpty()) {
                    rVar5.f56041h.a(rVar5.f56043j.f56035b, ((C10957k.b) AT.b(a11)).f55970c.c(), ((C10957k.b) AT.b(a16)).c()).f56073a = a11;
                }
                rVar5.a(c10977o4, a16);
                V v10 = (V) c10957k.f55953c.get(((C10957k.b) AT.b(cVar4.f55979a)).b());
                if (!C10957k.c.f55978c && v10 == null) {
                    throw new AssertionError();
                }
                Function function = new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return r.b(Map.this, (String) obj);
                    }
                };
                if (v10.e()) {
                    a10 = v10.b();
                } else {
                    a10 = v10.a().a(function, v10.c());
                }
                V.b b11 = a10.b();
                if (((C10957k.b) AT.b(a16)).f55969b != null) {
                    C8137kl0 c8137kl0 = (C8137kl0) rVar5.f56037d.computeIfAbsent(b11, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return r.a((V.b) obj);
                        }
                    });
                    int i30 = i18 < Integer.MAX_VALUE ? i18 : -1;
                    if (i18 >= Integer.MAX_VALUE) {
                        i17 = -1;
                    }
                    c8137kl0.a(i30, i17, a16);
                } else {
                    if (!f56033l && a16.size() != 1) {
                        throw new AssertionError();
                    }
                    rVar5.f56038e.put(b11, (C10957k.b) AT.b(a16));
                }
                rVar3 = rVar5;
                map2 = map3;
                it3 = it5;
                it4 = it6;
            }
        }
    }

    public final void c(final C5371Jb c5371Jb) {
        this.f56038e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                r.a(InterfaceC5429Kb.this, (V.b) obj, (C10957k.b) obj2);
            }
        });
        ArrayList arrayList = new ArrayList(this.f56037d.o());
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((V.b) obj).c();
            }
        }));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((C8137kl0) this.f56037d.get((V.b) obj)).a(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ((List) obj2).forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj3) {
                            r.a(InterfaceC5429Kb.this, (C10957k.b) obj3);
                        }
                    });
                }
            });
        }
    }

    public static String a(M40 m40) {
        return m40.f42157b.toString();
    }

    public final void a(M40 m40, V.b bVar, Consumer consumer) {
        r rVar;
        WE we2 = m40.f42156a;
        if (bVar.d()) {
            rVar = (r) this.f56042i.get(bVar.f());
        } else {
            rVar = this.f56043j;
        }
        if (rVar != null) {
            C8137kl0 c8137kl0 = (C8137kl0) rVar.f56037d.get((bVar.d() ? new V.b(bVar.g(), bVar.f55774c, bVar.f55775d) : bVar).b());
            if (c8137kl0 != null) {
                if (we2.f45352n == null) {
                    we2.f45352n = new RE(we2);
                }
                QE qe2 = new QE(we2.f45352n.f43850b);
                while (qe2.hasNext()) {
                    Integer num = (Integer) qe2.next();
                    int intValue = num.intValue();
                    int i10 = we2.get(intValue);
                    List list = (List) c8137kl0.a(i10);
                    if (list != null) {
                        List a10 = C10982p.a(list).a(i10);
                        if (a10 != null && !a10.isEmpty() && ((C10957k.b) a10.get(0)).f55969b.a(i10)) {
                            consumer.accept(new C10967m(intValue, i10, a10));
                        } else {
                            throw new MappingComposeException("Could not find ranges for outline position '" + ((Object) num) + "' with original signature '" + ((Object) bVar) + "'.");
                        }
                    } else {
                        throw new MappingComposeException("Could not find ranges for outline position '" + ((Object) num) + "' with original signature '" + ((Object) bVar) + "'.");
                    }
                }
                return;
            }
            throw new MappingComposeException("Could not find method positions for original signature '" + ((Object) bVar) + "'.");
        }
        throw new MappingComposeException("Could not find builder with original signature '" + ((Object) bVar) + "'.");
    }

    public final String a() {
        return this.f56034a;
    }

    public final void a(C10912b c10912b, C10957k c10957k) {
        final Map<String, String> map = c10912b.d().f48186b;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                r.this.a(map, (V) obj);
            }
        };
        AbstractC4895Av0 it = c10957k.f55954d.values().iterator();
        while (it.hasNext()) {
            interfaceC6160Wr0.accept((V) it.next());
        }
    }

    public final void a(final Map map, V v10) {
        V.c a10;
        r rVar;
        V v11;
        V.a a11 = v10.a().a();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return r.a(Map.this, (String) obj);
            }
        };
        if (v10.e()) {
            a10 = v10.b();
        } else {
            a10 = v10.a().a(function, v10.c());
        }
        V.a a12 = a10.a();
        if (a11.d()) {
            rVar = (r) this.f56042i.get(a11.f());
        } else {
            rVar = this.f56043j;
        }
        if (rVar == null) {
            v11 = null;
        } else {
            V.a aVar = a11.d() ? new V.a(a11.g(), a11.f55772c) : a11;
            this.f56041h.a(rVar, aVar);
            v11 = (V) rVar.f56036c.get(aVar);
        }
        if (v11 != null) {
            V.c a13 = v11.a();
            if (!a13.d() && a11.d()) {
                r rVar2 = (r) this.f56042i.get(a11.f());
                String str = rVar2 != null ? rVar2.f56034a : null;
                if (str != null) {
                    a13 = a13.b(str);
                }
            }
            v10 = new V(a13, a12, Position.UNKNOWN);
        }
        V v12 = (V) this.f56036c.put(a12, v10);
        if (!f56033l && v12 != null) {
            throw new AssertionError();
        }
    }

    public static String a(Map map, String str) {
        return (String) map.getOrDefault(str, str);
    }

    public static C8137kl0 a(V.b bVar) {
        return new C8137kl0(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
    
        r17 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01d9, code lost:
    
        r0 = r22;
        r5 = r17;
        r3 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List a(C10977o c10977o, ArrayList arrayList) {
        final M0 m02;
        int i10;
        HashMap hashMap;
        C10957k.b bVar;
        int i11;
        C10977o c10977o2 = c10977o;
        if (c10977o2.f56021b.isEmpty() || c10977o2.f56020a.isEmpty()) {
            return arrayList;
        }
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        int i12 = 0;
        ArrayList arrayList2 = arrayList;
        int i13 = 0;
        while (i13 < arrayList2.size() - 1) {
            int i14 = i13 + 1;
            C10957k.b bVar2 = (C10957k.b) arrayList2.get(i13);
            final C10957k.b bVar3 = (C10957k.b) arrayList2.get(i14);
            Iterator it = bVar2.f55976i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.android.tools.r8.naming.mappinginformation.e eVar = (com.android.tools.r8.naming.mappinginformation.e) it.next();
                eVar.getClass();
                if (eVar instanceof O40) {
                    M0 m03 = bVar2.f55969b;
                    if (m03 != null) {
                        M0 m04 = bVar3.f55971d;
                        if ((m04 != null ? m04 : bVar3.f55969b) != null) {
                            if (m04 == null) {
                                m04 = bVar3.f55969b;
                            }
                            if (m04.f55704c && m03.equals(bVar3.f55969b)) {
                                if (bVar3.d().size() == 1) {
                                    M40 m40 = (M40) bVar3.d().get(i12);
                                    C10972n a10 = c10977o2.a(bVar3, m40);
                                    if (a10 != null) {
                                        final HashMap hashMap2 = new HashMap(m40.f42156a.f45350l);
                                        a(m40, a10.f56013a.f55970c, new Consumer() {
                                            @Override
                                            public final void accept(Object obj) {
                                                r.a(Map.this, (InterfaceC10987q) obj);
                                            }
                                        });
                                        final ArrayList arrayList3 = new ArrayList();
                                        int size = arrayList2.size();
                                        int i15 = i12;
                                        while (i15 < size) {
                                            Object obj = arrayList2.get(i15);
                                            i15++;
                                            C10957k.b bVar4 = (C10957k.b) obj;
                                            if (bVar4 == bVar2) {
                                                break;
                                            }
                                            arrayList3.add(bVar4);
                                        }
                                        C10972n a11 = c10977o2.a(bVar2, bVar2.e());
                                        if (a11 != null) {
                                            C10957k.b bVar5 = a11.f56013a;
                                            int i16 = bVar2.f55969b.f55702a;
                                            M0 m05 = bVar5.f55971d;
                                            if (m05 == null) {
                                                m05 = bVar5.f55969b;
                                            }
                                            int i17 = m05.f55702a;
                                            while (true) {
                                                M0 m06 = bVar5.f55971d;
                                                if (m06 == null) {
                                                    m06 = bVar5.f55969b;
                                                }
                                                if (i17 > m06.f55703b) {
                                                    break;
                                                }
                                                if (bVar2.f55971d.f55704c) {
                                                    m02 = bVar2.f55969b;
                                                    i10 = i14;
                                                } else {
                                                    i10 = i14;
                                                    m02 = new M0(i16, i16, false);
                                                }
                                                final List list = (List) hashMap2.get(Integer.valueOf(i17));
                                                C10957k.b bVar6 = bVar5;
                                                if (list != null) {
                                                    list.forEach(new Consumer() {
                                                        @Override
                                                        public final void accept(Object obj2) {
                                                            r.a(List.this, arrayList3, m02, bVar3, (C10957k.b) obj2);
                                                        }
                                                    });
                                                    hashMap = hashMap2;
                                                    arrayList3.add(new C10957k.b(m02, bVar3.f55970c.b(), ((C10957k.b) AT.b(list)).f55971d, bVar3.c()));
                                                } else {
                                                    hashMap = hashMap2;
                                                }
                                                int i18 = i13 + 2;
                                                while (i18 < arrayList2.size()) {
                                                    C10957k.b bVar7 = (C10957k.b) arrayList2.get(i18);
                                                    if (!bVar7.f55969b.equals(bVar3.f55969b)) {
                                                        break;
                                                    }
                                                    if (m02.equals(bVar7.f55969b)) {
                                                        i11 = i13;
                                                        bVar = bVar7;
                                                    } else {
                                                        i11 = i13;
                                                        bVar = new C10957k.b(m02, bVar7.f55970c, bVar7.f55971d, bVar7.f55972e);
                                                    }
                                                    bVar.f55976i = Collections.unmodifiableList(bVar7.f55976i);
                                                    arrayList3.add(bVar);
                                                    i18++;
                                                    i13 = i11;
                                                }
                                                i16++;
                                                i17++;
                                                i14 = i10;
                                                bVar5 = bVar6;
                                                hashMap2 = hashMap;
                                                i13 = i13;
                                            }
                                            int i19 = i14;
                                            int size2 = arrayList2.size();
                                            int i20 = 0;
                                            boolean z10 = false;
                                            while (i20 < size2) {
                                                Object obj2 = arrayList2.get(i20);
                                                i20++;
                                                C10957k.b bVar8 = (C10957k.b) obj2;
                                                if (bVar8.f55969b.equals(bVar2.f55969b)) {
                                                    z10 = true;
                                                } else if (z10) {
                                                    arrayList3.add(bVar8);
                                                }
                                            }
                                            c10.add(m40);
                                            c11.add(bVar2.e());
                                            arrayList2 = arrayList3;
                                        }
                                    }
                                } else {
                                    throw new MappingComposeException("Expected exactly one outline call site for a mapped range with signature '" + ((Object) bVar3.f55970c) + "'.");
                                }
                            }
                        }
                    }
                } else {
                    c10977o2 = c10977o;
                }
            }
        }
        final IdentityHashMap identityHashMap = c10977o2.f56020a;
        Objects.requireNonNull(identityHashMap);
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj3) {
                Map.this.remove((M40) obj3);
            }
        });
        final IdentityHashMap identityHashMap2 = c10977o2.f56021b;
        Objects.requireNonNull(identityHashMap2);
        c11.forEach(new Consumer() {
            @Override
            public final void accept(Object obj3) {
                Map.this.remove((O40) obj3);
            }
        });
        return arrayList2;
    }

    public static C10957k.b a(r rVar, C10957k.b bVar, C10957k.b bVar2) {
        M0 m02;
        M0 m03 = bVar.f55971d;
        if (m03 == null) {
            m03 = bVar.f55969b;
        }
        if (m03 == null) {
            m02 = null;
        } else {
            m02 = bVar2.f55971d;
            if (m02 == null || (!m02.f55704c && m02.f55703b != m02.f55702a)) {
                m02 = C11011v.f56080e;
            }
        }
        final C10957k.b bVar3 = new C10957k.b(bVar.f55969b, a(bVar.f55970c, bVar2.f55970c, rVar.f56034a), m02, bVar.f55972e);
        a(Collections.unmodifiableList(bVar3.f55976i), Collections.unmodifiableList(bVar2.f55976i), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10957k.b.this.a(C6628bi.b(), (com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        });
        return bVar3;
    }

    public final List a(C10957k.b bVar) {
        int i10;
        M0 m02;
        int i11;
        V.b bVar2 = bVar.f55970c;
        if (bVar2.d()) {
            bVar2 = new V.b(bVar2.g(), bVar2.f55774c, bVar2.f55775d);
        }
        C8137kl0 c8137kl0 = (C8137kl0) this.f56037d.get(bVar2);
        if (c8137kl0 == null) {
            C10957k.b bVar3 = (C10957k.b) this.f56038e.get(bVar2);
            if (bVar3 == null) {
                return null;
            }
            return Collections.singletonList(bVar3);
        }
        M0 m03 = bVar.f55971d;
        if (m03 == null) {
            M0 m04 = bVar.f55969b;
            i10 = m04 != null ? m04.f55702a : -1;
        } else {
            i10 = m03.f55702a;
        }
        Map.Entry a10 = c8137kl0.a(Integer.valueOf(i10));
        if (a10 != null) {
            return (List) a10.getValue();
        }
        if (i10 == 0 && ((m02 = bVar.f55971d) == null || m02.f55702a != 0 || m02.f55703b != 0)) {
            if (m02 == null) {
                M0 m05 = bVar.f55969b;
                i11 = m05 != null ? m05.f55703b : Integer.MAX_VALUE;
            } else {
                i11 = m02.f55703b;
            }
            Map.Entry a11 = c8137kl0.a(Integer.valueOf(i11));
            if (a11 != null) {
                return (List) a11.getValue();
            }
        }
        M0 m06 = bVar.f55971d;
        if ((m06 != null && m06.f55702a == 0 && m06.f55703b == 0) || this.f56044k.X().f50785c) {
            return null;
        }
        throw new MappingComposeException("Could not find original starting position of '" + bVar.f55969b.f55702a + "' which should be " + i10);
    }

    public static String b(Map map, String str) {
        return (String) map.getOrDefault(str, str);
    }

    public final void b(C10957k.b bVar) {
        for (com.android.tools.r8.naming.mappinginformation.e eVar : Collections.unmodifiableList(bVar.f55976i)) {
            eVar.getClass();
            if (eVar instanceof C5163Fk0) {
                final C5163Fk0 j10 = eVar.j();
                j10.f40299a.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        r.this.a(j10, (C5105Ek0) obj);
                    }
                });
            } else if (eVar instanceof M40) {
                M40 c10 = eVar.c();
                MethodReference methodReference = c10.f42157b;
                if (methodReference != null) {
                    this.f56041h.f56053c.put(new C10962l(methodReference.getHolderClass().getTypeName(), methodReference.getMethodName()), c10);
                } else {
                    throw new MappingComposeException("Unable to compose outline call site information without outline key: " + c10.r());
                }
            } else {
                continue;
            }
        }
    }

    public static void a(Map map, InterfaceC10987q interfaceC10987q) {
        C10967m c10967m = (C10967m) interfaceC10987q;
        map.put(Integer.valueOf(c10967m.f55997a), c10967m.f55999c);
    }

    public final void b(final C5371Jb c5371Jb) {
        ArrayList arrayList = new ArrayList(this.f56036c.values());
        arrayList.sort(Comparator.comparing(new C10994r2()));
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5429Kb.this.a(C13155a.f85806a).a(((V) obj).toString()).a("\n");
            }
        });
    }

    public static void a(List list, List list2, M0 m02, C10957k.b bVar, C10957k.b bVar2) {
        if (bVar2 != AT.b(list)) {
            list2.add(new C10957k.b(m02, bVar2.f55970c.b(), bVar2.f55971d, bVar.c()));
        }
    }

    public final void a(C10977o c10977o, final List list) {
        IdentityHashMap identityHashMap = c10977o.f56020a;
        if (identityHashMap.isEmpty()) {
            return;
        }
        final C10957k.b bVar = (C10957k.b) AT.b(list);
        Set o10 = identityHashMap.o();
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return r.a((M40) obj);
            }
        });
        ArrayList arrayList = new ArrayList(o10);
        arrayList.sort(comparing);
        final IH ih2 = new IH(bVar.f55969b.f55703b + 1);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            M40 m40 = (M40) obj;
            List list2 = (List) identityHashMap.get(m40);
            if (!f56033l) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    for (M40 m402 : ((C10972n) it.next()).f56014b.d()) {
                        if (!f56033l && m40 != m402) {
                            throw new AssertionError();
                        }
                    }
                }
            }
            C10972n c10972n = (C10972n) AT.a(list2);
            final WE we2 = new WE(m40.f42156a.f45350l);
            a(m40, c10972n.f56013a.f55970c, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    r.a(IH.this, bVar, list, we2, (InterfaceC10987q) obj2);
                }
            });
            m40.f42156a = we2;
        }
    }

    public static void a(IH ih2, C10957k.b bVar, List list, WE we2, InterfaceC10987q interfaceC10987q) {
        M0 m02;
        int b10 = ih2.b();
        M0 m03 = new M0(b10, b10, false);
        C10967m c10967m = (C10967m) interfaceC10987q;
        boolean z10 = false;
        for (C10957k.b bVar2 : c10967m.f55999c) {
            int a10 = bVar2.a(c10967m.f55998b);
            if (z10) {
                m02 = new M0(a10, a10, true);
            } else {
                m02 = new M0(a10, a10, false);
            }
            C10957k.b bVar3 = new C10957k.b(m03, bVar2.f55970c, m02, bVar.c());
            if (!Collections.unmodifiableList(bVar2.f55976i).isEmpty()) {
                bVar3.f55976i = Collections.unmodifiableList(bVar2.f55976i);
            }
            list.add(bVar3);
            z10 = true;
        }
        we2.b(c10967m.f55997a, b10);
    }

    public final void a(C5163Fk0 c5163Fk0, C5105Ek0 c5105Ek0) {
        c5105Ek0.getClass();
        this.f56041h.f56052b.add(c5163Fk0);
    }

    public static void a(r rVar, ArrayList arrayList, final C10957k.b bVar, List list, final C10977o c10977o, int i10, int i11, boolean z10) {
        final M0 m02 = ((C10957k.b) list.get(0)).f55969b;
        if (!f56033l && !list.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean equals;
                equals = ((C10957k.b) obj).f55969b.equals(M0.this);
                return equals;
            }
        })) {
            throw new AssertionError();
        }
        M0 m03 = new M0(i10, i11, false);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C10957k.b bVar2 = (C10957k.b) it.next();
            M0 m04 = bVar2.f55971d;
            if (m04 == null) {
                m04 = bVar2.f55969b;
            }
            if (bVar.f55969b.equals(m03)) {
                M0 m05 = bVar.f55971d;
                if (m05 == null) {
                    m05 = bVar.f55969b;
                }
                if (m05.equals(m04)) {
                    continue;
                } else if (!m05.f55704c) {
                    if (m04 == null) {
                        continue;
                    } else if (m04.a() == 1) {
                        continue;
                    }
                }
                final C10957k.b bVar3 = new C10957k.b(m03, a(bVar.f55970c, bVar2.f55970c, rVar.f56034a), m04, bVar.f55972e);
                final ArrayList arrayList2 = new ArrayList();
                Collections.unmodifiableList(bVar2.f55976i).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        r.a(C10977o.this, bVar, bVar3, arrayList2, (com.android.tools.r8.naming.mappinginformation.e) obj);
                    }
                });
                a(Collections.unmodifiableList(bVar3.f55976i), arrayList2, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10957k.b.this.a(C6628bi.b(), (com.android.tools.r8.naming.mappinginformation.e) obj);
                    }
                });
                arrayList.add(bVar3);
            }
            int a10 = bVar2.a(bVar.a(i10));
            if (!z10 && !m04.f55704c) {
                M0 m06 = bVar.f55971d;
                if (m06 == null) {
                    m06 = bVar.f55969b;
                }
                if (m06.a() == 1) {
                    m04 = new M0(a10, a10, false);
                } else {
                    if (!f56033l && m03.a() > m04.a()) {
                        throw new AssertionError();
                    }
                    m04 = new M0(a10, (m03.a() + a10) - 1, false);
                }
            } else {
                m04 = new M0(a10, a10, true);
            }
            final C10957k.b bVar32 = new C10957k.b(m03, a(bVar.f55970c, bVar2.f55970c, rVar.f56034a), m04, bVar.f55972e);
            final List arrayList22 = new ArrayList();
            Collections.unmodifiableList(bVar2.f55976i).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    r.a(C10977o.this, bVar, bVar32, arrayList22, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            });
            a(Collections.unmodifiableList(bVar32.f55976i), arrayList22, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10957k.b.this.a(C6628bi.b(), (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            });
            arrayList.add(bVar32);
        }
    }

    public static void a(C10977o c10977o, C10957k.b bVar, C10957k.b bVar2, List list, com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        if (eVar instanceof O40) {
            ((List) c10977o.f56021b.computeIfAbsent(eVar.d(), C5480Ky.a(new Uc()))).add(new C10972n(bVar, bVar2));
        } else if (eVar instanceof M40) {
            ((List) c10977o.f56020a.computeIfAbsent(eVar.c(), C5480Ky.a(new Uc()))).add(new C10972n(bVar, bVar2));
        }
        list.add(eVar);
    }

    public static void a(List list, List list2, final Consumer consumer) {
        final Set c10 = AbstractC5513Ll0.c();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.naming.mappinginformation.e eVar = (com.android.tools.r8.naming.mappinginformation.e) it.next();
            Iterator it2 = list.iterator();
            boolean z10 = false;
            while (it2.hasNext()) {
                com.android.tools.r8.naming.mappinginformation.e eVar2 = (com.android.tools.r8.naming.mappinginformation.e) it2.next();
                if (!eVar2.a(eVar)) {
                    c10.add(eVar2);
                    consumer.accept(eVar2.b(eVar));
                    z10 = true;
                }
            }
            if (!z10) {
                consumer.accept(eVar);
            }
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                r.a(Set.this, consumer, (com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        });
    }

    public static void a(Set set, Consumer consumer, com.android.tools.r8.naming.mappinginformation.e eVar) {
        if (set.contains(eVar)) {
            return;
        }
        eVar.getClass();
        if (eVar instanceof com.android.tools.r8.naming.mappinginformation.a) {
            return;
        }
        consumer.accept(eVar);
    }

    public final void a(final C5371Jb c5371Jb) {
        c5371Jb.f41428a.accept(this.f56034a);
        c5371Jb.f41428a.accept(" -> ");
        c5371Jb.f41428a.accept(this.f56035b);
        c5371Jb.f41428a.accept(":\n");
        this.f56039f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5429Kb.this.a("# " + ((com.android.tools.r8.naming.mappinginformation.e) obj).r()).a("\n");
            }
        });
        b(c5371Jb);
        c(c5371Jb);
    }

    public static void a(InterfaceC5429Kb interfaceC5429Kb, V.b bVar, C10957k.b bVar2) {
        interfaceC5429Kb.a(C13155a.f85806a).a(bVar2.toString()).a("\n");
        Iterator it = Collections.unmodifiableList(bVar2.f55976i).iterator();
        while (it.hasNext()) {
            interfaceC5429Kb.a(C13155a.f85806a).a("# ").a(((com.android.tools.r8.naming.mappinginformation.e) it.next()).r()).a("\n");
        }
    }

    public static void a(InterfaceC5429Kb interfaceC5429Kb, C10957k.b bVar) {
        interfaceC5429Kb.a(C13155a.f85806a).a(bVar.toString()).a("\n");
        Iterator it = Collections.unmodifiableList(bVar.f55976i).iterator();
        while (it.hasNext()) {
            interfaceC5429Kb.a(C13155a.f85806a).a("# ").a(((com.android.tools.r8.naming.mappinginformation.e) it.next()).r()).a("\n");
        }
    }

    public final r a(r rVar) {
        r rVar2 = new r(this.f56034a, rVar.f56035b, this.f56040g, null, this.f56044k);
        ArrayList arrayList = rVar.f56039f;
        ArrayList arrayList2 = this.f56039f;
        final ArrayList arrayList3 = rVar2.f56039f;
        Objects.requireNonNull(arrayList3);
        a(arrayList, arrayList2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((com.android.tools.r8.naming.mappinginformation.e) obj);
            }
        });
        a(rVar2.f56036c, this.f56036c, rVar.f56036c, new InterfaceC6046Ur0() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return r.a((V) obj, (V) obj2);
            }
        });
        a(rVar2.f56038e, this.f56038e, rVar.f56038e, new InterfaceC6046Ur0() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return r.this.a((C10957k.b) obj, (C10957k.b) obj2);
            }
        });
        a(rVar2.f56037d, this.f56037d, rVar.f56037d, new InterfaceC6046Ur0() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return r.a((C8137kl0) obj, (C8137kl0) obj2);
            }
        });
        return rVar2;
    }

    public static V a(V v10, V v11) {
        if (f56033l || v10 == null) {
            return v11;
        }
        throw new AssertionError();
    }

    public final C10957k.b a(C10957k.b bVar, C10957k.b bVar2) {
        if (bVar == null || bVar2 == null) {
            return bVar != null ? bVar : bVar2;
        }
        throw new MappingComposeException("Cannot compose duplicate methods without position in class '" + this.f56035b + "': '" + ((Object) bVar) + "' and '" + ((Object) bVar2));
    }

    public static void a(HashMap hashMap, HashMap hashMap2, HashMap hashMap3, InterfaceC6046Ur0 interfaceC6046Ur0) {
        if (!f56033l && !hashMap.isEmpty()) {
            throw new AssertionError();
        }
        hashMap.putAll(hashMap2);
        for (Map.Entry entry : hashMap3.entrySet()) {
            hashMap.put((V.c) entry.getKey(), interfaceC6046Ur0.apply(hashMap.get(entry.getKey()), entry.getValue()));
        }
    }

    public static V.b a(V.b bVar, V.b bVar2, String str) {
        if (!bVar.d() || bVar2.d()) {
            return bVar2;
        }
        return new V.b(str + "." + bVar2.f55777a, bVar2.f55774c, bVar2.f55775d);
    }
}
