package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C9083qP {

    public static final C6748cP f51776b;

    public static final boolean f51777c = true;

    public final Consumer f51778a;

    static {
        C6748cP c6748cP = C6748cP.f47035b;
        C6415aP c6415aP = new C6415aP(false);
        c6415aP.f46512b.addAll(Arrays.asList(EnumC6582bP.f46755b, EnumC6582bP.f46757d, EnumC6582bP.f46756c));
        f51776b = c6415aP.a();
    }

    public C9083qP(Consumer consumer) {
        this.f51778a = consumer;
    }

    public static C8582nP b(QM qm2, PM pm2) {
        return new C8582nP(new C8749oP(((NM) qm2.f43558a.get(pm2)).f42571a.a()));
    }

    public final void a(BN bn2) {
        ArrayList a10;
        List singletonList;
        Map map;
        PM pm2;
        int i10 = 0;
        if (bn2.a() != null) {
            TM a11 = bn2.a();
            MM mm2 = a11.f44451d;
            QM qm2 = a11.f44450c;
            boolean z10 = a11.f44449b == 1;
            a10 = new ArrayList(z10 ? 2 : 1);
            if (mm2.d()) {
                pm2 = mm2.f42280a;
                Map map2 = Collections.EMPTY_MAP;
                singletonList = Collections.EMPTY_LIST;
                map = map2;
            } else {
                LO a12 = qm2.a(mm2.b());
                PM pm3 = a12.f41952b.f42280a;
                OO oo = a12.f41953c;
                PM pm4 = mm2.f42280a;
                Map singletonMap = Collections.singletonMap(pm4, oo);
                singletonList = Collections.singletonList(pm4);
                map = singletonMap;
                pm2 = pm3;
            }
            List list = singletonList;
            C8749oP c8749oP = new C8749oP(((NM) qm2.f43558a.get(pm2)).f42571a.a());
            a10.add(new C6701c60(a11.f44448a, c8749oP, C6748cP.f47035b, map, list, EnumC6868d60.f47283f));
            if (z10) {
                EnumC6582bP[] enumC6582bPArr = {EnumC6582bP.f46755b};
                C6415aP c6415aP = new C6415aP(true);
                c6415aP.f46512b.addAll(Arrays.asList(enumC6582bPArr));
                C6748cP a13 = c6415aP.a();
                if (mm2.d()) {
                    PM pm5 = new PM("MEMBERS");
                    a10.add(new C6701c60(a11.f44448a, c8749oP, a13, Collections.singletonMap(pm5, NO.f42575d), Collections.singletonList(pm5), EnumC6868d60.f47281d));
                } else {
                    a10.add(new C6368a60(Collections.EMPTY_LIST, a11.f44448a, a13, c8749oP, map, list, EnumC6868d60.f47280c));
                }
            }
        } else {
            a10 = a(bn2.b());
        }
        AbstractC7034e60.a(a10);
        StringBuilder sb2 = new StringBuilder();
        int size = a10.size();
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            ((AbstractC7034e60) obj).b(sb2);
            sb2.append("\n");
        }
        this.f51778a.accept(sb2.toString());
    }

    public static void a(QM qm2, Map map, List list, PM pm2) {
        FO fo = ((NM) qm2.f43558a.get(pm2)).f42571a;
        if (fo.e()) {
            return;
        }
        OO oo = (OO) map.put(pm2, fo.b().f41953c);
        list.add(pm2);
        if (!f51777c && oo != null) {
            throw new AssertionError();
        }
    }

    public static void a(final QM qm2, Map map, ZM zm2) {
        PM a10 = a(zm2.f46230a, qm2);
        if (!f51777c && a10 == null) {
            throw new AssertionError();
        }
        ((C8582nP) map.computeIfAbsent(a10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9083qP.a(QM.this, (PM) obj);
            }
        })).f50950b.add(zm2.f46230a.f42280a);
    }

    public static void a(Set set, final QM qm2, Map map, C10251xP c10251xP) {
        set.addAll(c10251xP.f53756b.b());
        PM a10 = a(c10251xP.f53755a, qm2);
        if (!f51777c && a10 == null) {
            throw new AssertionError();
        }
        ((C8582nP) map.computeIfAbsent(a10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9083qP.b(QM.this, (PM) obj);
            }
        })).a(c10251xP);
    }

    public final void a(final List list, final MN mn2, final C8749oP c8749oP, C8749oP c8749oP2, QM qm2, final C6748cP c6748cP, HashSet hashSet, Set set) {
        if (c8749oP.f51239a.f45373b.f45976a.d() && c8749oP.f51239a.equals(c8749oP2.f51239a)) {
            a(list, c8749oP2, mn2, qm2, c6748cP, hashSet, set);
            return;
        }
        final HashMap hashMap = new HashMap();
        final ArrayList a10 = a(hashSet, qm2, hashMap);
        a(c8749oP2, set, qm2, hashMap, new InterfaceC8916pP() {
            @Override
            public final void a(C8749oP c8749oP3, Map map, List list2, EnumC6868d60 enumC6868d60) {
                C9083qP.this.a(list, mn2, c6748cP, c8749oP, hashMap, a10, c8749oP3, map, list2, enumC6868d60);
            }
        });
    }

    public static C8582nP a(QM qm2, PM pm2) {
        return new C8582nP(new C8749oP(((NM) qm2.f43558a.get(pm2)).f42571a.a()));
    }

    public final void a(List list, C8749oP c8749oP, DN dn2, QM qm2, C8582nP c8582nP, C6748cP c6748cP, Set set) {
        a(list, c8749oP, dn2.f39505a, qm2, c6748cP, c8582nP.f50950b, set);
    }

    public final void a(List list, C8749oP c8749oP, DN dn2, QM qm2, C6748cP c6748cP, Set set) {
        a(list, c8749oP, dn2.f39505a, qm2, c6748cP, set);
    }

    public final ArrayList a(final DN dn2) {
        final ArrayList arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        final QM qm2 = dn2.f39506b;
        final HashMap hashMap = new HashMap();
        dn2.f39507c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9083qP.a(QM.this, hashMap, (ZM) obj);
            }
        });
        C6744cN c6744cN = dn2.f39508d;
        c6744cN.f47027a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9083qP.a(Set.this, qm2, hashMap, (C10251xP) obj);
            }
        });
        if (!hashSet.isEmpty()) {
            arrayList.add(new C6535b60(dn2.f39505a, hashSet));
        }
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9083qP.this.a(arrayList, dn2, qm2, hashMap, (PM) obj, (C8582nP) obj2);
            }
        });
        if (f51777c || !arrayList.isEmpty()) {
            return arrayList;
        }
        throw new AssertionError();
    }

    public final void a(final List list, final DN dn2, final QM qm2, final Map map, PM pm2, final C8582nP c8582nP) {
        final C8749oP c8749oP = c8582nP.f50949a;
        if (!c8582nP.f50950b.isEmpty() && !c8582nP.f50951c.isEmpty()) {
            c8582nP.f50951c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C9083qP.this.a(list, c8749oP, dn2, qm2, c8582nP, (C6748cP) obj, (Set) obj2);
                }
            });
        } else {
            if (c8582nP.f50951c.isEmpty()) {
                return;
            }
            if (dn2.f39507c.a()) {
                c8582nP.f50951c.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C9083qP.this.a(list, c8749oP, dn2, qm2, (C6748cP) obj, (Set) obj2);
                    }
                });
            } else {
                c8582nP.f50951c.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C9083qP.this.a(map, list, dn2, c8749oP, qm2, (C6748cP) obj, (Set) obj2);
                    }
                });
            }
        }
    }

    public final void a(Map map, final List list, final DN dn2, final C8749oP c8749oP, final QM qm2, final C6748cP c6748cP, final Set set) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9083qP.this.a(list, dn2, c8749oP, qm2, c6748cP, set, (PM) obj, (C8582nP) obj2);
            }
        });
    }

    public final void a(List list, DN dn2, C8749oP c8749oP, QM qm2, C6748cP c6748cP, Set set, PM pm2, C8582nP c8582nP) {
        if (c8582nP.f50950b.isEmpty()) {
            return;
        }
        a(list, dn2.f39505a, c8582nP.f50949a, c8749oP, qm2, c6748cP, c8582nP.f50950b, set);
    }

    public static ArrayList a(HashSet hashSet, final QM qm2, final HashMap hashMap) {
        final ArrayList arrayList = new ArrayList();
        hashSet.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9083qP.a(QM.this, hashMap, arrayList, (PM) obj);
            }
        });
        return arrayList;
    }

    public static void a(C8749oP c8749oP, Set set, QM qm2, final HashMap hashMap, final InterfaceC8916pP interfaceC8916pP) {
        final EnumC6868d60 enumC6868d60 = EnumC6868d60.f47280c;
        final ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            PM pm2 = (PM) it.next();
            FO fo = ((NM) qm2.f43558a.get(pm2)).f42571a;
            if (fo.e()) {
                enumC6868d60 = EnumC6868d60.f47282e;
            } else if (!z10) {
                LO b10 = fo.b();
                OO oo = b10.f41953c;
                oo.getClass();
                if (oo == NO.f42575d) {
                    arrayList.clear();
                    z10 = true;
                }
                hashMap.putIfAbsent(pm2, b10.f41953c);
                arrayList.add(pm2);
            }
        }
        if (z10 && enumC6868d60 == EnumC6868d60.f47282e) {
            enumC6868d60 = EnumC6868d60.f47281d;
        }
        if (arrayList.isEmpty()) {
            enumC6868d60 = EnumC6868d60.f47281d;
        }
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8916pP.this.a((C8749oP) obj, hashMap, arrayList, enumC6868d60);
            }
        };
        CO co = (CO) c8749oP.f51239a.f45373b.f45977b;
        if (co.f39212a.c()) {
            consumer.accept(c8749oP);
            return;
        }
        if (!co.f39213b) {
            consumer.accept(c8749oP);
            return;
        }
        if (c8749oP.f51239a.f45373b.f45976a.d()) {
            YM ym2 = YM.f45975c;
            new XM();
            WM wm2 = c8749oP.f51239a;
            YM ym3 = wm2.f45373b;
            C8415mP.a();
            CO co2 = CO.f39210c;
            C8415mP c8415mP = ym3.f45976a;
            AbstractC10198x40 abstractC10198x40 = wm2.f45374c;
            if (!VM.f45027a && abstractC10198x40 == null) {
                throw new AssertionError();
            }
            if (!c8415mP.c() || !co2.f39212a.c()) {
                ym2 = new YM(c8415mP, co2);
            }
            consumer.accept(new C8749oP(new WM(ym2, abstractC10198x40)));
            return;
        }
        if (c8749oP.f51239a.f45373b.f45976a.c()) {
            YM ym4 = YM.f45975c;
            new XM();
            WM wm3 = c8749oP.f51239a;
            YM ym5 = wm3.f45373b;
            C8415mP.a();
            CO co3 = CO.f39210c;
            C8415mP c8415mP2 = ym5.f45976a;
            AbstractC10198x40 abstractC10198x402 = wm3.f45374c;
            if (!VM.f45027a && abstractC10198x402 == null) {
                throw new AssertionError();
            }
            C8415mP c8415mP3 = co.f39212a;
            if (!c8415mP3.c() || !co3.f39212a.c()) {
                ym4 = new YM(c8415mP3, co3);
            }
            C8749oP c8749oP2 = new C8749oP(new WM(ym4, abstractC10198x402));
            consumer.accept(c8749oP);
            consumer.accept(c8749oP2);
            return;
        }
        YM ym6 = YM.f45975c;
        new XM();
        WM wm4 = c8749oP.f51239a;
        YM ym7 = wm4.f45373b;
        C8415mP.a();
        CO co4 = CO.f39210c;
        C8415mP c8415mP4 = ym7.f45976a;
        AbstractC10198x40 abstractC10198x403 = wm4.f45374c;
        if (!VM.f45027a && abstractC10198x403 == null) {
            throw new AssertionError();
        }
        if (!c8415mP4.c() || !co4.f39212a.c()) {
            ym6 = new YM(c8415mP4, co4);
        }
        C8749oP c8749oP3 = new C8749oP(new WM(ym6, abstractC10198x403));
        consumer.accept(c8749oP);
        consumer.accept(c8749oP3);
    }

    public final void a(final List list, C8749oP c8749oP, final MN mn2, QM qm2, final C6748cP c6748cP, Set set) {
        a(c8749oP, set, qm2, new HashMap(), new InterfaceC8916pP() {
            @Override
            public final void a(C8749oP c8749oP2, Map map, List list2, EnumC6868d60 enumC6868d60) {
                C9083qP.this.a(list, mn2, c6748cP, c8749oP2, map, list2, enumC6868d60);
            }
        });
    }

    public final void a(List list, MN mn2, C6748cP c6748cP, C8749oP c8749oP, Map map, List list2, EnumC6868d60 enumC6868d60) {
        if (enumC6868d60.equals(EnumC6868d60.f47280c)) {
            list.add(new C6368a60(Collections.EMPTY_LIST, mn2, c6748cP, c8749oP, map, list2, enumC6868d60));
        } else {
            list.add(new C6701c60(mn2, c8749oP, c6748cP, map, list2, enumC6868d60));
        }
    }

    public final void a(List list, MN mn2, C6748cP c6748cP, C8749oP c8749oP, Map map, List list2, C8749oP c8749oP2, Map map2, List list3, EnumC6868d60 enumC6868d60) {
        list.add(new Z50(mn2, c6748cP, c8749oP, c8749oP2, map, list2, list3, enumC6868d60));
    }

    public final void a(final List list, C8749oP c8749oP, final MN mn2, QM qm2, final C6748cP c6748cP, HashSet hashSet, Set set) {
        final HashMap hashMap = new HashMap();
        final ArrayList a10 = a(hashSet, qm2, hashMap);
        a(c8749oP, set, qm2, hashMap, new InterfaceC8916pP() {
            @Override
            public final void a(C8749oP c8749oP2, Map map, List list2, EnumC6868d60 enumC6868d60) {
                C9083qP.this.a(hashMap, a10, list, mn2, c6748cP, c8749oP2, map, list2, enumC6868d60);
            }
        });
    }

    public final void a(Map map, List list, List list2, MN mn2, C6748cP c6748cP, C8749oP c8749oP, Map map2, List list3, EnumC6868d60 enumC6868d60) {
        ArrayList arrayList = new ArrayList(list3.size());
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            PM pm2 = (PM) it.next();
            OO oo = (OO) map.get(pm2);
            if (oo.g() && list.contains(pm2)) {
                HashMap hashMap = new HashMap(map);
                QO qo = QO.f43567k;
                QO c10 = ((PO) new PO().a(oo.d())).c();
                C9864v40 c9864v40 = C9864v40.f53012b;
                RO ro = RO.f43886b;
                ZO zo = XO.f45678b;
                SO so = SO.f44199a;
                ro.getClass();
                if (RO.f43887c == ro || RO.f43888d == ro) {
                    if (zo.b()) {
                        zo = YO.f45982a;
                    } else {
                        throw new FN("Method constructor pattern must match 'void' type.");
                    }
                }
                hashMap.put(pm2, new WO(c9864v40, c10, ro, zo, so));
                list2.add(new C6368a60(list, mn2, c6748cP, c8749oP, hashMap, Collections.singletonList(pm2), enumC6868d60));
                HashMap hashMap2 = new HashMap(map);
                C9748uO c9748uO = C9748uO.f52842h;
                hashMap2.put(pm2, new C10249xO(c9864v40, ((C9581tO) new C9581tO().a(oo.d())).c(), C9915vO.f53087b, C10416yO.f54005b));
                list2.add(new C6368a60(list, mn2, c6748cP, c8749oP, hashMap2, Collections.singletonList(pm2), enumC6868d60));
            }
            arrayList.add(pm2);
        }
        if (enumC6868d60.equals(EnumC6868d60.f47280c) && arrayList.isEmpty()) {
            return;
        }
        list2.add(new C6368a60(list, mn2, c6748cP, c8749oP, map, arrayList, enumC6868d60));
    }

    public static PM a(MM mm2, final QM qm2) {
        return (PM) mm2.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((UM) obj).c();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9083qP.a(QM.this, (JO) obj);
            }
        });
    }

    public static PM a(QM qm2, JO jo) {
        return qm2.a(jo).f41952b.f42280a;
    }
}
