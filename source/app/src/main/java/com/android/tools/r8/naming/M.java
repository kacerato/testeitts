package com.android.tools.r8.naming;

import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Uc;
import com.android.tools.r8.internal.AbstractC10622zf;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5349Iq0;
import com.android.tools.r8.internal.AbstractC5827Qy;
import com.android.tools.r8.internal.AbstractC6303Ze;
import com.android.tools.r8.internal.AbstractC6785cf;
import com.android.tools.r8.internal.AbstractC7510gy0;
import com.android.tools.r8.internal.C10088wR;
import com.android.tools.r8.internal.C5264He;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6834cv0;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C8031k50;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C8866p50;
import com.android.tools.r8.internal.C9752uQ;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.J6;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NL;
import com.android.tools.r8.internal.QL;
import com.android.tools.r8.internal.RL;
import com.android.tools.r8.internal.TL;
import com.android.tools.r8.internal.UL;
import com.android.tools.r8.kotlin.InterfaceC10835p;
import com.android.tools.r8.origin.Origin;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class M {

    public static final boolean f55692i = true;

    public final String f55693a;

    public final AbstractC5308Hz f55694b;

    public final AbstractC10992r0 f55695c;

    public final C4724u1 f55696d;

    public final HashMap f55697e = new HashMap();

    public final LinkedHashMap f55698f = new LinkedHashMap();

    public final HashMap f55699g = new HashMap();

    public final C7 f55700h = new C7();

    public M(String str, C4798y c4798y) {
        this.f55693a = str;
        this.f55694b = c4798y.v();
        this.f55695c = c4798y.s();
        this.f55696d = c4798y.b();
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 type = h22.getType();
        final InterfaceC10835p interfaceC10835p = h22.f36369x;
        com.android.tools.r8.graph.M2 a10 = this.f55695c.a(this.f55696d, type);
        if (interfaceC10835p.o()) {
            this.f55700h.a(new Supplier() {
                @Override
                public final Object get() {
                    return InterfaceC10835p.this.u();
                }
            });
            ((List) this.f55697e.computeIfAbsent(a10.A0(), C5480Ky.a(new Uc()))).add(a10.U0());
            return;
        }
        if (interfaceC10835p.n()) {
            this.f55700h.a(new Supplier() {
                @Override
                public final Object get() {
                    return InterfaceC10835p.this.u();
                }
            });
            ((List) this.f55698f.computeIfAbsent(a10.A0(), C5480Ky.a(new Uc()))).add(C8699o50.a(this.f55694b.a(type).U0(), a10.U0()));
        } else {
            if (!f55692i && !interfaceC10835p.t()) {
                throw new AssertionError();
            }
            this.f55700h.a(new Supplier() {
                @Override
                public final Object get() {
                    return InterfaceC10835p.this.u();
                }
            });
            ((List) this.f55699g.computeIfAbsent(interfaceC10835p.m().f55298a.f42591c, C5480Ky.a(new Uc()))).add(a10.U0());
        }
    }

    public final Optional a() {
        Iterator it;
        if (this.f55697e.isEmpty() && this.f55698f.isEmpty()) {
            return Optional.empty();
        }
        if (!f55692i && !this.f55700h.b()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(this.f55697e.o());
        for (String str : this.f55698f.o()) {
            if (!this.f55697e.containsKey(str)) {
                arrayList.add(str);
            }
        }
        Collections.sort(arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        new ArrayList(0);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str2 = (String) obj;
            final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = this.f55698f;
            List list = Collections.EMPTY_LIST;
            ((List) linkedHashMap3.getOrDefault(str2, list)).forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    M.this.a(linkedHashMap2, (C8699o50) obj2);
                }
            });
            linkedHashMap.put(str2, new C9752uQ((List) this.f55697e.getOrDefault(str2, list), linkedHashMap2));
        }
        ML ml2 = (ML) this.f55700h.a();
        GJ.c(ml2, "version");
        RL rl2 = RL.f43865m;
        QL ql2 = new QL();
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            String str3 = (String) entry.getKey();
            C9752uQ c9752uQ = (C9752uQ) entry.getValue();
            GJ.c(str3, "packageFqName");
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (String str4 : c9752uQ.f52848a) {
                GJ.c(str4, "partInternalName");
                linkedHashMap4.put(str4, null);
            }
            for (Map.Entry entry2 : c9752uQ.f52849b.entrySet()) {
                String str5 = (String) entry2.getKey();
                String str6 = (String) entry2.getValue();
                GJ.c(str5, "partInternalName");
                linkedHashMap4.put(str5, str6);
            }
            Set o10 = linkedHashMap4.o();
            GJ.b(o10, "<get-keys>(...)");
            if (o10.isEmpty()) {
                it = it2;
            } else {
                UL ul2 = UL.f44725p;
                TL tl2 = new TL();
                tl2.f44436c |= 1;
                tl2.f44437d = str3;
                String a10 = AbstractC5349Iq0.a(str3, '.', '/');
                Set o11 = linkedHashMap4.o();
                GJ.b(o11, "<get-keys>(...)");
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : o11) {
                    Iterator it3 = it2;
                    if (AbstractC5349Iq0.a((String) obj2, '/', "").equals(a10)) {
                        arrayList2.add(obj2);
                    } else {
                        arrayList3.add(obj2);
                    }
                    it2 = it3;
                }
                it = it2;
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                int size2 = arrayList2.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj3 = arrayList2.get(i11);
                    i11++;
                    ArrayList arrayList4 = arrayList2;
                    String str7 = (String) obj3;
                    GJ.c(str7, "partInternalName");
                    String str8 = (String) linkedHashMap4.get(str7);
                    Object obj4 = linkedHashMap6.get(str8);
                    int i12 = size2;
                    if (obj4 == null) {
                        ArrayList arrayList5 = new ArrayList();
                        linkedHashMap6.put(str8, arrayList5);
                        obj4 = arrayList5;
                    }
                    ((List) obj4).add(obj3);
                    arrayList2 = arrayList4;
                    size2 = i12;
                }
                Comparator a11 = AbstractC10622zf.a();
                GJ.c(a11, "comparator");
                TreeMap treeMap = new TreeMap(a11);
                treeMap.putAll(linkedHashMap6);
                Iterator it4 = treeMap.entrySet().iterator();
                while (it4.hasNext()) {
                    Map.Entry entry3 = (Map.Entry) it4.next();
                    String str9 = (String) entry3.getKey();
                    List list2 = (List) entry3.getValue();
                    GJ.a(list2);
                    Iterator it5 = AbstractC6303Ze.a((Collection) list2).iterator();
                    while (it5.hasNext()) {
                        Iterator it6 = it4;
                        String b10 = AbstractC5349Iq0.b((String) it5.next(), '/');
                        Iterator it7 = it5;
                        if ((tl2.f44436c & 2) != 2) {
                            tl2.f44438e = new C10088wR(tl2.f44438e);
                            tl2.f44436c |= 2;
                        }
                        tl2.f44438e.add(b10);
                        if (str9 != null) {
                            String b11 = AbstractC5349Iq0.b(str9, '/');
                            Object obj5 = linkedHashMap5.get(b11);
                            if (obj5 == null) {
                                obj5 = Integer.valueOf(linkedHashMap5.size());
                                linkedHashMap5.put(b11, obj5);
                            }
                            int intValue = ((Number) obj5).intValue() + 1;
                            if ((tl2.f44436c & 4) != 4) {
                                tl2.f44439f = new ArrayList(tl2.f44439f);
                                tl2.f44436c |= 4;
                            }
                            tl2.f44439f.add(Integer.valueOf(intValue));
                        }
                        it4 = it6;
                        it5 = it7;
                    }
                }
                ArrayList arrayList6 = new ArrayList();
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                int size3 = arrayList3.size();
                int i13 = 0;
                while (i13 < size3) {
                    int i14 = size3;
                    Object obj6 = arrayList3.get(i13);
                    int i15 = i13 + 1;
                    ArrayList arrayList7 = arrayList3;
                    String a12 = AbstractC5349Iq0.a((String) obj6, '/', "");
                    Object obj7 = linkedHashMap7.get(a12);
                    if (obj7 == null) {
                        obj7 = new ArrayList();
                        linkedHashMap7.put(a12, obj7);
                    }
                    ((List) obj7).add(obj6);
                    size3 = i14;
                    arrayList3 = arrayList7;
                    i13 = i15;
                }
                Iterator it8 = new TreeMap(linkedHashMap7).entrySet().iterator();
                while (it8.hasNext()) {
                    Map.Entry entry4 = (Map.Entry) it8.next();
                    String str10 = (String) entry4.getKey();
                    List list3 = (List) entry4.getValue();
                    GJ.a((Object) str10);
                    String a13 = AbstractC5349Iq0.a(str10, '/', '.');
                    if (!ql2.f43550f.e().contains(a13)) {
                        if ((ql2.f43547c & 4) != 4) {
                            ql2.f43550f = new C10088wR(ql2.f43550f);
                            ql2.f43547c |= 4;
                        }
                        ql2.f43550f.add(a13);
                    }
                    int indexOf = ql2.f43550f.e().indexOf(a13);
                    GJ.a(list3);
                    LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                    Iterator it9 = list3.iterator();
                    while (it9.hasNext()) {
                        Object next = it9.next();
                        Iterator it10 = it8;
                        String str11 = (String) next;
                        GJ.c(str11, "partInternalName");
                        String str12 = (String) linkedHashMap4.get(str11);
                        Object obj8 = linkedHashMap8.get(str12);
                        Iterator it11 = it9;
                        if (obj8 == null) {
                            ArrayList arrayList8 = new ArrayList();
                            linkedHashMap8.put(str12, arrayList8);
                            obj8 = arrayList8;
                        }
                        ((List) obj8).add(next);
                        it8 = it10;
                        it9 = it11;
                    }
                    Iterator it12 = it8;
                    Comparator a14 = AbstractC10622zf.a();
                    GJ.c(a14, "comparator");
                    TreeMap treeMap2 = new TreeMap(a14);
                    treeMap2.putAll(linkedHashMap8);
                    Iterator it13 = treeMap2.entrySet().iterator();
                    while (it13.hasNext()) {
                        Map.Entry entry5 = (Map.Entry) it13.next();
                        String str13 = (String) entry5.getKey();
                        List list4 = (List) entry5.getValue();
                        GJ.a(list4);
                        Iterator it14 = AbstractC6303Ze.a((Collection) list4).iterator();
                        while (it14.hasNext()) {
                            Iterator it15 = it13;
                            String b12 = AbstractC5349Iq0.b((String) it14.next(), '/');
                            Iterator it16 = it14;
                            if ((tl2.f44436c & 16) != 16) {
                                tl2.f44441h = new C10088wR(tl2.f44441h);
                                tl2.f44436c |= 16;
                            }
                            tl2.f44441h.add(b12);
                            if (str13 != null) {
                                String b13 = AbstractC5349Iq0.b(str13, '/');
                                Object obj9 = linkedHashMap5.get(b13);
                                if (obj9 == null) {
                                    obj9 = Integer.valueOf(linkedHashMap5.size());
                                    linkedHashMap5.put(b13, obj9);
                                }
                                int intValue2 = ((Number) obj9).intValue() + 1;
                                if ((tl2.f44436c & 32) != 32) {
                                    tl2.f44442i = new ArrayList(tl2.f44442i);
                                    tl2.f44436c |= 32;
                                }
                                tl2.f44442i.add(Integer.valueOf(intValue2));
                            }
                            arrayList6.add(Integer.valueOf(indexOf));
                            it13 = it15;
                            it14 = it16;
                        }
                    }
                    it8 = it12;
                }
                while (arrayList6.size() > 1 && ((Number) J6.a(arrayList6, 1)).intValue() == ((Number) J6.a(arrayList6, 2)).intValue()) {
                    arrayList6.remove(arrayList6.size() - 1);
                }
                if ((tl2.f44436c & 64) != 64) {
                    tl2.f44443j = new ArrayList(tl2.f44443j);
                    tl2.f44436c |= 64;
                }
                AbstractC5827Qy.a(arrayList6, tl2.f44443j);
                Collection values = linkedHashMap5.values();
                Set o12 = linkedHashMap5.o();
                GJ.c(values, "<this>");
                GJ.c(o12, "other");
                Iterator<E> it17 = values.iterator();
                Iterator<E> it18 = o12.iterator();
                ArrayList arrayList9 = new ArrayList(Math.min(AbstractC6785cf.a(values), AbstractC6785cf.a(o12)));
                while (it17.hasNext() && it18.hasNext()) {
                    arrayList9.add(new C8866p50(it17.next(), it18.next()));
                }
                for (C8866p50 c8866p50 : AbstractC6303Ze.a(arrayList9, new C8031k50())) {
                    int intValue3 = ((Number) c8866p50.f51436b).intValue();
                    String str14 = (String) c8866p50.f51437c;
                    boolean z10 = intValue3 == tl2.f44440g.size();
                    if (AbstractC7510gy0.f48402a && !z10) {
                        throw new AssertionError((Object) ("Multifile facades are loaded incorrectly: " + ((Object) linkedHashMap5)));
                    }
                    str14.getClass();
                    if ((tl2.f44436c & 8) != 8) {
                        tl2.f44440g = new C10088wR(tl2.f44440g);
                        tl2.f44436c |= 8;
                    }
                    tl2.f44440g.add(str14);
                }
                if ((ql2.f43547c & 1) != 1) {
                    ql2.f43548d = new ArrayList(ql2.f43548d);
                    ql2.f43547c |= 1;
                }
                List list5 = ql2.f43548d;
                UL c10 = tl2.c();
                if (c10.isInitialized()) {
                    list5.add(c10);
                } else {
                    throw new C6834cv0();
                }
            }
            if (!linkedHashSet.isEmpty()) {
                UL ul3 = UL.f44725p;
                TL tl3 = new TL();
                tl3.f44436c |= 1;
                tl3.f44437d = str3;
                List a15 = AbstractC6303Ze.a((Collection) linkedHashSet);
                if ((tl3.f44436c & 2) != 2) {
                    tl3.f44438e = new C10088wR(tl3.f44438e);
                    tl3.f44436c |= 2;
                }
                AbstractC5827Qy.a(a15, tl3.f44438e);
                if ((ql2.f43547c & 2) != 2) {
                    ql2.f43549e = new ArrayList(ql2.f43549e);
                    ql2.f43547c |= 2;
                }
                List list6 = ql2.f43549e;
                UL c11 = tl3.c();
                if (c11.isInitialized()) {
                    list6.add(c11);
                } else {
                    throw new C6834cv0();
                }
            }
            it2 = it;
        }
        RL c12 = ql2.c();
        if (c12.isInitialized()) {
            NL nl2 = new NL(new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, false);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            int[] iArr = nl2.f52525a;
            dataOutputStream.writeInt(iArr.length);
            for (int i16 : iArr) {
                dataOutputStream.writeInt(i16);
            }
            int i17 = nl2.f52526b;
            if ((i17 == 1 && nl2.f52527c >= 4) || i17 > 1) {
                dataOutputStream.writeInt(0);
            }
            int a16 = c12.a();
            C5264He c5264He = new C5264He(dataOutputStream, new byte[a16 <= 4096 ? a16 : 4096]);
            c12.a(c5264He);
            c5264He.a();
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            GJ.b(byteArray, "toByteArray(...)");
            return Optional.of(DataEntryResource.fromBytes(byteArray, "META-INF/" + this.f55693a + ".kotlin_module", Origin.unknown()));
        }
        throw new C6834cv0();
    }

    public final void a(final Map map, C8699o50 c8699o50) {
        String str = (String) c8699o50.a();
        final String str2 = (String) c8699o50.b();
        ((List) this.f55699g.getOrDefault(str, Collections.EMPTY_LIST)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Map.this.put((String) obj, str2);
            }
        });
    }
}
