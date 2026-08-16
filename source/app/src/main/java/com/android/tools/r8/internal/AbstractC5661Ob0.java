package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.internal.AbstractC6750cQ;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC5661Ob0 {
    public static final void a(InterfaceC7584hQ interfaceC7584hQ, List list, List list2, List list3, C5430Kb0 c5430Kb0) {
        M90 m90;
        M90 m902;
        List<C8918pQ> a10 = interfaceC7584hQ.a();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            a10.add(a((C8544n90) it.next(), c5430Kb0));
        }
        List<C9919vQ> b10 = interfaceC7584hQ.b();
        Iterator<E> it2 = list2.iterator();
        while (it2.hasNext()) {
            b10.add(a((C9879v90) it2.next(), c5430Kb0));
        }
        List<C10587zQ> c10 = interfaceC7584hQ.c();
        Iterator<E> it3 = list3.iterator();
        while (it3.hasNext()) {
            P90 p90 = (P90) it3.next();
            C10587zQ c10587zQ = new C10587zQ(p90.f43139e, c5430Kb0.f41705a.a(p90.f43140f));
            List list4 = p90.f43141g;
            GJ.b(list4, "getTypeParameterList(...)");
            C5430Kb0 a11 = c5430Kb0.a(list4);
            List<T90> list5 = p90.f43141g;
            GJ.b(list5, "getTypeParameterList(...)");
            List<BQ> c11 = c10587zQ.c();
            for (T90 t90 : list5) {
                GJ.a(t90);
                c11.add(a(t90, a11));
            }
            C4951Bu0 c4951Bu0 = a11.f41706b;
            GJ.c(c4951Bu0, "typeTable");
            int i10 = p90.f43138d;
            if ((i10 & 4) == 4) {
                m90 = p90.f43142h;
                GJ.b(m90, "getUnderlyingType(...)");
            } else if ((i10 & 8) == 8) {
                m90 = (M90) c4951Bu0.f39036a.get(p90.f43143i);
            } else {
                throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias");
            }
            c10587zQ.f54377d = a(m90, a11);
            C4951Bu0 c4951Bu02 = a11.f41706b;
            GJ.c(c4951Bu02, "typeTable");
            int i11 = p90.f43138d;
            if ((i11 & 16) == 16) {
                m902 = p90.f43144j;
                GJ.b(m902, "getExpandedType(...)");
            } else if ((i11 & 32) == 32) {
                m902 = (M90) c4951Bu02.f39036a.get(p90.f43145k);
            } else {
                throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias");
            }
            c10587zQ.f54378e = a(m902, a11);
            List<O80> list6 = p90.f43146l;
            GJ.b(list6, "getAnnotationList(...)");
            List<GP> a12 = c10587zQ.a();
            for (O80 o80 : list6) {
                GJ.a(o80);
                a12.add(AbstractC5545Mb0.a(o80, a11.f41705a));
            }
            List<Integer> list7 = p90.f43147m;
            GJ.b(list7, "getVersionRequirementList(...)");
            ArrayList arrayList = c10587zQ.f54380g;
            for (Integer num : list7) {
                GJ.a(num);
                arrayList.add(a(num.intValue(), a11));
            }
            Iterator<E> it4 = a11.f41712h.iterator();
            while (it4.hasNext()) {
                ((JL) ((InterfaceC10432yW) it4.next())).getClass();
            }
            c10.add(c10587zQ);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0387 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b7 A[LOOP:8: B:125:0x02b1->B:127:0x02b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x030b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x027f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final C8918pQ a(C8544n90 c8544n90, C5430Kb0 c5430Kb0) {
        M90 m90;
        M90 m902;
        int i10;
        int i11;
        M90 m903;
        Collection collection;
        ArrayList arrayList;
        int size;
        int i12;
        Iterator it;
        M90 m904;
        String str;
        GL gl2;
        String a10;
        Integer num;
        int i13;
        int i14;
        C8918pQ c8918pQ = new C8918pQ(c8544n90.f50526e, c5430Kb0.f41705a.a(c8544n90.f50528g));
        List list = c8544n90.f50531j;
        GJ.b(list, "getTypeParameterList(...)");
        C5430Kb0 a11 = c5430Kb0.a(list);
        List<T90> list2 = c8544n90.f50531j;
        GJ.b(list2, "getTypeParameterList(...)");
        List<BQ> d10 = c8918pQ.d();
        for (T90 t90 : list2) {
            GJ.a(t90);
            d10.add(a(t90, a11));
        }
        C4951Bu0 c4951Bu0 = a11.f41706b;
        GJ.c(c4951Bu0, "typeTable");
        int i15 = c8544n90.f50525d;
        if ((i15 & 32) == 32) {
            m90 = c8544n90.f50532k;
        } else {
            m90 = (i15 & 64) == 64 ? (M90) c4951Bu0.f39036a.get(c8544n90.f50533l) : null;
        }
        c8918pQ.f51518d = m90 != null ? a(m90, a11) : null;
        C4951Bu0 c4951Bu02 = a11.f41706b;
        GJ.c(c4951Bu02, "typeTable");
        List list3 = c8544n90.f50534m;
        if (list3.isEmpty()) {
            list3 = null;
        }
        if (list3 == null) {
            List<Integer> list4 = c8544n90.f50535n;
            GJ.b(list4, "getContextReceiverTypeIdList(...)");
            ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(list4));
            for (Integer num2 : list4) {
                GJ.a(num2);
                arrayList2.add((M90) c4951Bu02.f39036a.get(num2.intValue()));
            }
            list3 = arrayList2;
        }
        ArrayList arrayList3 = c8918pQ.f51519e;
        Iterator<E> it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList3.add(a((M90) it2.next(), a11));
        }
        List<Z90> list5 = c8544n90.f50537p;
        GJ.b(list5, "getValueParameterList(...)");
        List<EQ> e10 = c8918pQ.e();
        for (Z90 z90 : list5) {
            GJ.a(z90);
            e10.add(a(z90, a11));
        }
        C4951Bu0 c4951Bu03 = a11.f41706b;
        GJ.c(c4951Bu03, "typeTable");
        int i16 = c8544n90.f50525d;
        if ((i16 & 8) == 8) {
            m902 = c8544n90.f50529h;
            GJ.b(m902, "getReturnType(...)");
        } else if ((i16 & 16) == 16) {
            m902 = (M90) c4951Bu03.f39036a.get(c8544n90.f50530i);
        } else {
            throw new IllegalStateException("No returnType in ProtoBuf.Function");
        }
        c8918pQ.f51521g = a(m902, a11);
        int i17 = 2;
        int i18 = 1;
        if ((c8544n90.f50525d & 256) == 256) {
            Y80 y80 = c8544n90.f50540s;
            GJ.b(y80, "getContract(...)");
            C7417gQ c7417gQ = new C7417gQ();
            for (C6877d90 c6877d90 : y80.f45940c) {
                if ((c6877d90.f47305c & i18) == i18) {
                    EnumC6544b90 enumC6544b90 = c6877d90.f47306d;
                    if (enumC6544b90 != null) {
                        int ordinal = enumC6544b90.ordinal();
                        if (ordinal == 0) {
                            i13 = i18;
                        } else if (ordinal == i18) {
                            i13 = 2;
                        } else {
                            if (ordinal != 2) {
                                throw new C00();
                            }
                            i13 = 3;
                        }
                        if ((c6877d90.f47305c & 4) == 4) {
                            EnumC6710c90 enumC6710c90 = c6877d90.f47309g;
                            if (enumC6710c90 == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            int ordinal2 = enumC6710c90.ordinal();
                            if (ordinal2 == 0) {
                                i14 = i18;
                            } else if (ordinal2 == i18) {
                                i14 = 2;
                            } else {
                                if (ordinal2 != 2) {
                                    throw new C00();
                                }
                                i14 = 3;
                            }
                        } else {
                            i14 = 0;
                        }
                        ArrayList arrayList4 = c7417gQ.f48260a;
                        C7751iQ c7751iQ = new C7751iQ(i13, i14);
                        List<C8043k90> list6 = c6877d90.f47307e;
                        GJ.b(list6, "getEffectConstructorArgumentList(...)");
                        ArrayList arrayList5 = c7751iQ.f48937c;
                        for (C8043k90 c8043k90 : list6) {
                            GJ.a(c8043k90);
                            arrayList5.add(a(c8043k90, a11));
                        }
                        if ((c6877d90.f47305c & 2) == 2) {
                            C8043k90 c8043k902 = c6877d90.f47308f;
                            GJ.b(c8043k902, "getConclusionOfConditionalEffect(...)");
                            c7751iQ.f48938d = a(c8043k902, a11);
                        }
                        arrayList4.add(c7751iQ);
                        i18 = 1;
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                }
            }
            c8918pQ.f51523i = c7417gQ;
        }
        List<Integer> list7 = c8544n90.f50539r;
        GJ.b(list7, "getVersionRequirementList(...)");
        ArrayList arrayList6 = c8918pQ.f51522h;
        for (Integer num3 : list7) {
            GJ.a(num3);
            arrayList6.add(a(num3.intValue(), a11));
        }
        Iterator it3 = a11.f41712h.iterator();
        while (it3.hasNext()) {
            ((JL) ((InterfaceC10432yW) it3.next())).getClass();
            EL a12 = AL.a(c8918pQ);
            C10503yv c10503yv = AbstractC8910pM.f51506a;
            VL vl2 = a11.f41705a;
            C4951Bu0 c4951Bu04 = a11.f41706b;
            GJ.c(vl2, "nameResolver");
            GJ.c(c4951Bu04, "typeTable");
            C6173Wy c6173Wy = AbstractC8743oM.f51213b;
            GJ.b(c6173Wy, "methodSignature");
            C6909dM c6909dM = (C6909dM) AbstractC7937ja0.a(c8544n90, c6173Wy);
            if (c6909dM != null && (c6909dM.f47379c & 1) == 1) {
                i10 = c6909dM.f47380d;
                if (c6909dM == null && (c6909dM.f47379c & i17) == i17) {
                    str = vl2.a(c6909dM.f47381e);
                    it = it3;
                } else {
                    i11 = c8544n90.f50525d;
                    if ((i11 & 32) != 32) {
                        m903 = c8544n90.f50532k;
                    } else {
                        m903 = (i11 & 64) == 64 ? (M90) c4951Bu04.f39036a.get(c8544n90.f50533l) : null;
                    }
                    if (m903 == null) {
                        collection = Collections.singletonList(m903);
                        GJ.b(collection, "singletonList(...)");
                    } else {
                        collection = C6049Ut.f44892b;
                    }
                    List<Z90> list8 = c8544n90.f50537p;
                    GJ.b(list8, "getValueParameterList(...)");
                    ArrayList arrayList7 = new ArrayList(AbstractC6785cf.a(list8));
                    for (Z90 z902 : list8) {
                        GJ.a(z902);
                        arrayList7.add(AbstractC5774Qa0.a(z902, c4951Bu04));
                    }
                    ArrayList arrayList8 = new ArrayList(arrayList7.size() + collection.size());
                    arrayList8.addAll(collection);
                    arrayList8.addAll(arrayList7);
                    arrayList = new ArrayList(AbstractC6785cf.a(arrayList8));
                    size = arrayList8.size();
                    i12 = 0;
                    while (true) {
                        if (i12 >= size) {
                            Object obj = arrayList8.get(i12);
                            i12++;
                            it = it3;
                            a10 = AbstractC8910pM.a((M90) obj, vl2);
                            if (a10 == null) {
                                break;
                            }
                            arrayList.add(a10);
                            it3 = it;
                        } else {
                            it = it3;
                            int i19 = c8544n90.f50525d;
                            if ((i19 & 8) == 8) {
                                m904 = c8544n90.f50529h;
                                GJ.b(m904, "getReturnType(...)");
                            } else if ((i19 & 16) == 16) {
                                m904 = (M90) c4951Bu04.f39036a.get(c8544n90.f50530i);
                            } else {
                                throw new IllegalStateException("No returnType in ProtoBuf.Function");
                            }
                            String a13 = AbstractC8910pM.a(m904, vl2);
                            if (a13 != null) {
                                str = AbstractC6303Ze.a(arrayList, "", "(", ")", null, 56) + a13;
                            }
                        }
                    }
                    gl2 = null;
                    a12.f39834a = gl2 != null ? new OL(gl2.f40466a, gl2.f40467b) : null;
                    C6173Wy c6173Wy2 = AbstractC8743oM.f51214c;
                    GJ.b(c6173Wy2, "lambdaClassOriginName");
                    num = (Integer) AbstractC7937ja0.a(c8544n90, c6173Wy2);
                    if (num != null) {
                        a12.f39835b = a11.f41705a.a(num.intValue());
                    }
                    it3 = it;
                    i17 = 2;
                }
                gl2 = new GL(vl2.a(i10), str);
                a12.f39834a = gl2 != null ? new OL(gl2.f40466a, gl2.f40467b) : null;
                C6173Wy c6173Wy22 = AbstractC8743oM.f51214c;
                GJ.b(c6173Wy22, "lambdaClassOriginName");
                num = (Integer) AbstractC7937ja0.a(c8544n90, c6173Wy22);
                if (num != null) {
                }
                it3 = it;
                i17 = 2;
            }
            i10 = c8544n90.f50528g;
            if (c6909dM == null) {
            }
            i11 = c8544n90.f50525d;
            if ((i11 & 32) != 32) {
            }
            if (m903 == null) {
            }
            List<Z90> list82 = c8544n90.f50537p;
            GJ.b(list82, "getValueParameterList(...)");
            ArrayList arrayList72 = new ArrayList(AbstractC6785cf.a(list82));
            while (r10.hasNext()) {
            }
            ArrayList arrayList82 = new ArrayList(arrayList72.size() + collection.size());
            arrayList82.addAll(collection);
            arrayList82.addAll(arrayList72);
            arrayList = new ArrayList(AbstractC6785cf.a(arrayList82));
            size = arrayList82.size();
            i12 = 0;
            while (true) {
                if (i12 >= size) {
                }
                arrayList.add(a10);
                it3 = it;
            }
            gl2 = null;
            a12.f39834a = gl2 != null ? new OL(gl2.f40466a, gl2.f40467b) : null;
            C6173Wy c6173Wy222 = AbstractC8743oM.f51214c;
            GJ.b(c6173Wy222, "lambdaClassOriginName");
            num = (Integer) AbstractC7937ja0.a(c8544n90, c6173Wy222);
            if (num != null) {
            }
            it3 = it;
            i17 = 2;
        }
        return c8918pQ;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x019b, code lost:
    
        if (r5 == null) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final C9919vQ a(C9879v90 c9879v90, C5430Kb0 c5430Kb0) {
        int a10;
        int a11;
        M90 m90;
        FL fl2;
        int i10;
        String a12;
        GJ.c(c9879v90, "<this>");
        int i11 = c9879v90.f53029e;
        String a13 = c5430Kb0.f41705a.a(c9879v90.f53031g);
        if ((c9879v90.f53028d & 256) == 256) {
            a10 = c9879v90.f53041q;
        } else {
            a10 = a(c9879v90.f53029e);
        }
        if ((c9879v90.f53028d & 512) == 512) {
            a11 = c9879v90.f53042r;
        } else {
            a11 = a(c9879v90.f53029e);
        }
        C9919vQ c9919vQ = new C9919vQ(i11, a10, a11, a13);
        List list = c9879v90.f53034j;
        GJ.b(list, "getTypeParameterList(...)");
        C5430Kb0 a14 = c5430Kb0.a(list);
        List<T90> list2 = c9879v90.f53034j;
        GJ.b(list2, "getTypeParameterList(...)");
        ArrayList arrayList = c9919vQ.f53105f;
        for (T90 t90 : list2) {
            GJ.a(t90);
            arrayList.add(a(t90, a14));
        }
        C4951Bu0 c4951Bu0 = a14.f41706b;
        GJ.c(c4951Bu0, "typeTable");
        int i12 = c9879v90.f53028d;
        if ((i12 & 32) == 32) {
            m90 = c9879v90.f53035k;
        } else {
            m90 = (i12 & 64) == 64 ? (M90) c4951Bu0.f39036a.get(c9879v90.f53036l) : null;
        }
        c9919vQ.f53106g = m90 != null ? a(m90, a14) : null;
        C4951Bu0 c4951Bu02 = a14.f41706b;
        GJ.c(c4951Bu02, "typeTable");
        List list3 = c9879v90.f53037m;
        if (list3.isEmpty()) {
            list3 = null;
        }
        if (list3 == null) {
            List<Integer> list4 = c9879v90.f53038n;
            GJ.b(list4, "getContextReceiverTypeIdList(...)");
            ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(list4));
            for (Integer num : list4) {
                GJ.a(num);
                arrayList2.add((M90) c4951Bu02.f39036a.get(num.intValue()));
            }
            list3 = arrayList2;
        }
        ArrayList arrayList3 = c9919vQ.f53107h;
        Iterator<E> it = list3.iterator();
        while (it.hasNext()) {
            arrayList3.add(a((M90) it.next(), a14));
        }
        if ((c9879v90.f53028d & 128) == 128) {
            Z90 z90 = c9879v90.f53040p;
            GJ.b(z90, "getSetterValueParameter(...)");
            c9919vQ.f53108i = a(z90, a14);
        }
        c9919vQ.f53109j = a(AbstractC5774Qa0.a(c9879v90, a14.f41706b), a14);
        List<Integer> list5 = c9879v90.f53043s;
        GJ.b(list5, "getVersionRequirementList(...)");
        ArrayList arrayList4 = c9919vQ.f53110k;
        for (Integer num2 : list5) {
            GJ.a(num2);
            arrayList4.add(a(num2.intValue(), a14));
        }
        Iterator<E> it2 = a14.f41712h.iterator();
        while (it2.hasNext()) {
            ((JL) ((InterfaceC10432yW) it2.next())).getClass();
            XL a15 = AL.a(c9919vQ);
            C10503yv c10503yv = AbstractC8910pM.f51506a;
            VL vl2 = a14.f41705a;
            C4951Bu0 c4951Bu03 = a14.f41706b;
            GJ.c(vl2, "nameResolver");
            GJ.c(c4951Bu03, "typeTable");
            C6173Wy c6173Wy = AbstractC8743oM.f51215d;
            GJ.b(c6173Wy, "propertySignature");
            C7409gM c7409gM = (C7409gM) AbstractC7937ja0.a(c9879v90, c6173Wy);
            if (c7409gM != null) {
                C6409aM c6409aM = (c7409gM.f48239c & 1) == 1 ? c7409gM.f48240d : null;
                if (c6409aM != null) {
                    int i13 = c6409aM.f46496c;
                    if ((i13 & 1) == 1) {
                        i10 = c6409aM.f46497d;
                    } else {
                        i10 = c9879v90.f53031g;
                    }
                    if ((i13 & 2) == 2) {
                        a12 = vl2.a(c6409aM.f46498e);
                    } else {
                        a12 = AbstractC8910pM.a(AbstractC5774Qa0.a(c9879v90, c4951Bu03), vl2);
                    }
                    fl2 = new FL(vl2.a(i10), a12);
                    C7409gM c7409gM2 = (C7409gM) AbstractC7937ja0.a(c9879v90, c6173Wy);
                    C6909dM c6909dM = (c7409gM2 == null && (c7409gM2.f48239c & 4) == 4) ? c7409gM2.f48242f : null;
                    C6909dM c6909dM2 = (c7409gM2 == null && (c7409gM2.f48239c & 8) == 8) ? c7409gM2.f48243g : null;
                    a15.f45664a = ((Number) c9879v90.a(AbstractC8743oM.f51216e)).intValue();
                    a15.f45665b = fl2 == null ? new CL(fl2.f40179a, fl2.f40180b) : null;
                    a15.f45666c = c6909dM == null ? new OL(a14.f41705a.a(c6909dM.f47380d), a14.f41705a.a(c6909dM.f47381e)) : null;
                    a15.f45667d = c6909dM2 == null ? new OL(a14.f41705a.a(c6909dM2.f47380d), a14.f41705a.a(c6909dM2.f47381e)) : null;
                    C6909dM c6909dM3 = (c7409gM2 == null && (c7409gM2.f48239c & 2) == 2) ? c7409gM2.f48241e : null;
                    a15.f45668e = c6909dM3 == null ? new OL(a14.f41705a.a(c6909dM3.f47380d), a14.f41705a.a(c6909dM3.f47381e)) : null;
                    C6909dM c6909dM4 = (c7409gM2 == null && (c7409gM2.f48239c & 16) == 16) ? c7409gM2.f48244h : null;
                    a15.f45669f = c6909dM4 == null ? new OL(a14.f41705a.a(c6909dM4.f47380d), a14.f41705a.a(c6909dM4.f47381e)) : null;
                }
            }
            fl2 = null;
            C7409gM c7409gM22 = (C7409gM) AbstractC7937ja0.a(c9879v90, c6173Wy);
            if (c7409gM22 == null) {
            }
            if (c7409gM22 == null) {
            }
            a15.f45664a = ((Number) c9879v90.a(AbstractC8743oM.f51216e)).intValue();
            a15.f45665b = fl2 == null ? new CL(fl2.f40179a, fl2.f40180b) : null;
            a15.f45666c = c6909dM == null ? new OL(a14.f41705a.a(c6909dM.f47380d), a14.f41705a.a(c6909dM.f47381e)) : null;
            a15.f45667d = c6909dM2 == null ? new OL(a14.f41705a.a(c6909dM2.f47380d), a14.f41705a.a(c6909dM2.f47381e)) : null;
            if (c7409gM22 == null) {
            }
            a15.f45668e = c6909dM3 == null ? new OL(a14.f41705a.a(c6909dM3.f47380d), a14.f41705a.a(c6909dM3.f47381e)) : null;
            if (c7409gM22 == null) {
            }
            a15.f45669f = c6909dM4 == null ? new OL(a14.f41705a.a(c6909dM4.f47380d), a14.f41705a.a(c6909dM4.f47381e)) : null;
        }
        return c9919vQ;
    }

    public static final EQ a(Z90 z90, C5430Kb0 c5430Kb0) {
        M90 m90;
        EQ eq = new EQ(z90.f46177e, c5430Kb0.f41705a.a(z90.f46178f));
        eq.f39851c = a(AbstractC5774Qa0.a(z90, c5430Kb0.f41706b), c5430Kb0);
        C4951Bu0 c4951Bu0 = c5430Kb0.f41706b;
        GJ.c(c4951Bu0, "typeTable");
        int i10 = z90.f46176d;
        if ((i10 & 16) == 16) {
            m90 = z90.f46181i;
        } else {
            m90 = (i10 & 32) == 32 ? (M90) c4951Bu0.f39036a.get(z90.f46182j) : null;
        }
        eq.f39852d = m90 != null ? a(m90, c5430Kb0) : null;
        Iterator<E> it = c5430Kb0.f41712h.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
        }
        return eq;
    }

    public static final C10420yQ a(M90 m90, C5430Kb0 c5430Kb0) {
        AbstractC6750cQ cVar;
        M90 m902;
        M90 m903;
        M90 m904;
        FQ fq;
        C10420yQ c10420yQ = new C10420yQ((m90.f42201f ? 1 : 0) + (m90.f42213r << 1));
        int i10 = m90.f42199d;
        if ((i10 & 16) == 16) {
            cVar = new AbstractC6750cQ.a(AbstractC5545Mb0.a(c5430Kb0.f41705a, m90.f42205j));
        } else if ((i10 & 128) == 128) {
            cVar = new AbstractC6750cQ.b(AbstractC5545Mb0.a(c5430Kb0.f41705a, m90.f42208m));
        } else if ((i10 & 32) == 32) {
            cVar = new AbstractC6750cQ.c(m90.f42206k);
        } else if ((i10 & 64) == 64) {
            Integer a10 = c5430Kb0.a(m90.f42207l);
            if (a10 != null) {
                cVar = new AbstractC6750cQ.c(a10.intValue());
            } else {
                throw new C8221lD("No type parameter id for ".concat(c5430Kb0.f41705a.a(m90.f42207l)));
            }
        } else {
            throw new C8221lD("No classifier (class, type alias or type parameter) recorded for Type");
        }
        c10420yQ.f54009b = cVar;
        Iterator it = m90.f42200e.iterator();
        while (true) {
            C8751oQ c8751oQ = null;
            M90 m905 = null;
            if (it.hasNext()) {
                K90 k90 = (K90) it.next();
                J90 j90 = k90.f41605d;
                if (j90 != null) {
                    int ordinal = j90.ordinal();
                    if (ordinal == 0) {
                        fq = FQ.f40194c;
                    } else if (ordinal == 1) {
                        fq = FQ.f40195d;
                    } else if (ordinal == 2) {
                        fq = FQ.f40193b;
                    } else {
                        if (ordinal != 3) {
                            throw new C00();
                        }
                        fq = null;
                    }
                    if (fq != null) {
                        C4951Bu0 c4951Bu0 = c5430Kb0.f41706b;
                        GJ.c(c4951Bu0, "typeTable");
                        int i11 = k90.f41604c;
                        if ((i11 & 2) == 2) {
                            m905 = k90.f41606e;
                        } else if ((i11 & 4) == 4) {
                            m905 = (M90) c4951Bu0.f39036a.get(k90.f41607f);
                        }
                        if (m905 != null) {
                            c10420yQ.b().add(new DQ(fq, a(m905, c5430Kb0)));
                        } else {
                            throw new C8221lD("No type argument for non-STAR projection in Type");
                        }
                    } else {
                        c10420yQ.b().add(DQ.f39511c);
                    }
                } else {
                    throw new IllegalArgumentException("Required value was null.");
                }
            } else {
                C4951Bu0 c4951Bu02 = c5430Kb0.f41706b;
                GJ.c(c4951Bu02, "typeTable");
                int i12 = m90.f42199d;
                if ((i12 & 1024) == 1024) {
                    m902 = m90.f42211p;
                } else {
                    m902 = (i12 & 2048) == 2048 ? (M90) c4951Bu02.f39036a.get(m90.f42212q) : null;
                }
                c10420yQ.f54011d = m902 != null ? a(m902, c5430Kb0) : null;
                C4951Bu0 c4951Bu03 = c5430Kb0.f41706b;
                GJ.c(c4951Bu03, "typeTable");
                int i13 = m90.f42199d;
                if ((i13 & 256) == 256) {
                    m903 = m90.f42209n;
                } else {
                    m903 = (i13 & 512) == 512 ? (M90) c4951Bu03.f39036a.get(m90.f42210o) : null;
                }
                c10420yQ.f54012e = m903 != null ? a(m903, c5430Kb0) : null;
                C4951Bu0 c4951Bu04 = c5430Kb0.f41706b;
                GJ.c(c4951Bu04, "typeTable");
                int i14 = m90.f42199d;
                if ((i14 & 4) == 4) {
                    m904 = m90.f42203h;
                } else {
                    m904 = (i14 & 8) == 8 ? (M90) c4951Bu04.f39036a.get(m90.f42204i) : null;
                }
                if (m904 != null) {
                    c8751oQ = new C8751oQ(a(m904, c5430Kb0), (m90.f42199d & 2) == 2 ? c5430Kb0.f41705a.a(m90.f42202g) : null);
                }
                c10420yQ.f54013f = c8751oQ;
                Iterator<E> it2 = c5430Kb0.f41712h.iterator();
                while (it2.hasNext()) {
                    ((JL) ((InterfaceC10432yW) it2.next())).getClass();
                    C9410sM a11 = AL.a(c10420yQ);
                    a11.f52343a = ((Boolean) m90.a(AbstractC8743oM.f51218g)).booleanValue();
                    for (O80 o80 : (List) m90.a(AbstractC8743oM.f51217f)) {
                        ArrayList arrayList = a11.f52344b;
                        GJ.a(o80);
                        arrayList.add(AbstractC5545Mb0.a(o80, c5430Kb0.f41705a));
                    }
                }
                return c10420yQ;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final HQ a(int i10, C5430Kb0 c5430Kb0) {
        C6227Xw0 c6227Xw0;
        C6227Xw0 c6227Xw02;
        int ordinal;
        int i11;
        C6284Yw0 c6284Yw0;
        int i12;
        C6227Xw0 c6227Xw03;
        HQ hq = new HQ();
        VL vl2 = c5430Kb0.f41705a;
        C6341Zw0 c6341Zw0 = c5430Kb0.f41707c;
        GJ.c(vl2, "nameResolver");
        GJ.c(c6341Zw0, "table");
        List list = c6341Zw0.f46381a;
        GJ.c(list, "<this>");
        C7104ea0 c7104ea0 = (C7104ea0) ((i10 < 0 || i10 >= list.size()) ? null : list.get(i10));
        int i13 = 3;
        if (c7104ea0 == null) {
            c6284Yw0 = null;
        } else {
            Integer valueOf = (c7104ea0.f47712c & 1) == 1 ? Integer.valueOf(c7104ea0.f47713d) : null;
            Integer valueOf2 = (c7104ea0.f47712c & 2) == 2 ? Integer.valueOf(c7104ea0.f47714e) : null;
            if (valueOf2 != null) {
                c6227Xw0 = new C6227Xw0(valueOf2.intValue() & 255, (valueOf2.intValue() >> 8) & 255, (valueOf2.intValue() >> 16) & 255);
            } else if (valueOf != null) {
                c6227Xw02 = new C6227Xw0(valueOf.intValue() & 7, (valueOf.intValue() >> 3) & 15, (valueOf.intValue() >> 7) & 127);
                EnumC6771ca0 enumC6771ca0 = c7104ea0.f47715f;
                GJ.a(enumC6771ca0);
                ordinal = enumC6771ca0.ordinal();
                if (ordinal != 0) {
                    i11 = 1;
                } else if (ordinal == 1) {
                    i11 = 2;
                } else {
                    if (ordinal != 2) {
                        throw new C00();
                    }
                    i11 = 3;
                }
                Integer valueOf3 = (c7104ea0.f47712c & 8) != 8 ? Integer.valueOf(c7104ea0.f47716g) : null;
                String a10 = (c7104ea0.f47712c & 16) != 16 ? vl2.a(c7104ea0.f47717h) : null;
                EnumC6938da0 enumC6938da0 = c7104ea0.f47718i;
                GJ.b(enumC6938da0, "getVersionKind(...)");
                c6284Yw0 = new C6284Yw0(c6227Xw02, enumC6938da0, i11, valueOf3, a10);
            } else {
                c6227Xw0 = C6227Xw0.f45870d;
            }
            c6227Xw02 = c6227Xw0;
            EnumC6771ca0 enumC6771ca02 = c7104ea0.f47715f;
            GJ.a(enumC6771ca02);
            ordinal = enumC6771ca02.ordinal();
            if (ordinal != 0) {
            }
            if ((c7104ea0.f47712c & 8) != 8) {
            }
            if ((c7104ea0.f47712c & 16) != 16) {
            }
            EnumC6938da0 enumC6938da02 = c7104ea0.f47718i;
            GJ.b(enumC6938da02, "getVersionKind(...)");
            c6284Yw0 = new C6284Yw0(c6227Xw02, enumC6938da02, i11, valueOf3, a10);
        }
        if (c6284Yw0 == null && !c5430Kb0.f41708d) {
            throw new C8221lD("No VersionRequirement with the given id in the table");
        }
        EnumC6938da0 enumC6938da03 = c6284Yw0 != null ? c6284Yw0.f46121b : null;
        int i14 = enumC6938da03 == null ? -1 : AbstractC5603Nb0.f42636a[enumC6938da03.ordinal()];
        if (i14 == -1) {
            i12 = 4;
        } else if (i14 == 1) {
            i12 = 1;
        } else if (i14 == 2) {
            i12 = 2;
        } else {
            if (i14 != 3) {
                throw new C00();
            }
            i12 = 3;
        }
        int i15 = c6284Yw0 != null ? c6284Yw0.f46122c : 0;
        int i16 = i15 == 0 ? -1 : AbstractC5603Nb0.f42637b[AbstractC4291c.b(i15)];
        if (i16 != -1) {
            if (i16 == 1) {
                i13 = 1;
            } else if (i16 == 2) {
                i13 = 2;
            } else if (i16 != 3) {
                throw new C00();
            }
        }
        hq.f40755a = i12;
        hq.f40756b = i13;
        hq.f40757c = c6284Yw0 != null ? c6284Yw0.f46123d : null;
        hq.f40758d = c6284Yw0 != null ? c6284Yw0.f46124e : null;
        if (c6284Yw0 == null || (c6227Xw03 = c6284Yw0.f46120a) == null) {
            c6227Xw03 = C6227Xw0.f45870d;
        }
        hq.f40759e = new GQ(c6227Xw03.f45871a, c6227Xw03.f45872b, c6227Xw03.f45873c);
        return hq;
    }

    public static final C7916jQ a(C8043k90 c8043k90, C5430Kb0 c5430Kb0) {
        M90 m90;
        Boolean bool;
        C7916jQ c7916jQ = new C7916jQ();
        c7916jQ.f49228a = c8043k90.f49499d;
        c7916jQ.f49229b = (c8043k90.f49498c & 2) == 2 ? Integer.valueOf(c8043k90.f49500e) : null;
        if ((c8043k90.f49498c & 4) == 4) {
            EnumC7876j90 enumC7876j90 = c8043k90.f49501f;
            if (enumC7876j90 != null) {
                int ordinal = enumC7876j90.ordinal();
                if (ordinal == 0) {
                    bool = Boolean.TRUE;
                } else if (ordinal == 1) {
                    bool = Boolean.FALSE;
                } else {
                    if (ordinal != 2) {
                        throw new C00();
                    }
                    bool = null;
                }
                c7916jQ.f49230c = new C6917dQ(bool);
            } else {
                throw new IllegalArgumentException("Required value was null.");
            }
        }
        C4951Bu0 c4951Bu0 = c5430Kb0.f41706b;
        GJ.c(c4951Bu0, "typeTable");
        int i10 = c8043k90.f49498c;
        if ((i10 & 8) == 8) {
            m90 = c8043k90.f49502g;
        } else {
            m90 = (i10 & 16) == 16 ? (M90) c4951Bu0.f39036a.get(c8043k90.f49503h) : null;
        }
        c7916jQ.f49231d = m90 != null ? a(m90, c5430Kb0) : null;
        List<C8043k90> list = c8043k90.f49504i;
        GJ.b(list, "getAndArgumentList(...)");
        ArrayList arrayList = c7916jQ.f49232e;
        for (C8043k90 c8043k902 : list) {
            GJ.a(c8043k902);
            arrayList.add(a(c8043k902, c5430Kb0));
        }
        List<C8043k90> list2 = c8043k90.f49505j;
        GJ.b(list2, "getOrArgumentList(...)");
        ArrayList arrayList2 = c7916jQ.f49233f;
        for (C8043k90 c8043k903 : list2) {
            GJ.a(c8043k903);
            arrayList2.add(a(c8043k903, c5430Kb0));
        }
        return c7916jQ;
    }

    public static final int a(int i10) {
        C10008vx c10008vx = AbstractC10509yx.f54219b;
        boolean z10 = ((1 << c10008vx.f53898a) & i10) != 0;
        C10175wx c10175wx = AbstractC10509yx.f54220c;
        EnumC7772ia0 enumC7772ia0 = (EnumC7772ia0) c10175wx.a(i10);
        C10175wx c10175wx2 = AbstractC10509yx.f54221d;
        EnumC8878p90 enumC8878p90 = (EnumC8878p90) c10175wx2.a(i10);
        if (enumC7772ia0 == null) {
            AbstractC10509yx.a(10);
            throw null;
        }
        if (enumC8878p90 != null) {
            int i11 = (enumC8878p90.f51463b << c10175wx2.f53898a) | (z10 ? 1 << c10008vx.f53898a : 0) | (enumC7772ia0.f48975b << c10175wx.f53898a);
            AbstractC10509yx.f54212J.getClass();
            AbstractC10509yx.f54213K.getClass();
            AbstractC10509yx.f54214L.getClass();
            return i11;
        }
        AbstractC10509yx.a(11);
        throw null;
    }

    public static final BQ a(T90 t90, C5430Kb0 c5430Kb0) {
        FQ fq;
        S90 s90 = t90.f44407h;
        if (s90 != null) {
            int ordinal = s90.ordinal();
            if (ordinal == 0) {
                fq = FQ.f40194c;
            } else if (ordinal == 1) {
                fq = FQ.f40195d;
            } else if (ordinal == 2) {
                fq = FQ.f40193b;
            } else {
                throw new C00();
            }
            boolean z10 = t90.f44406g;
            BQ bq = new BQ(z10 ? 1 : 0, c5430Kb0.f41705a.a(t90.f44405f), t90.f44404e, fq);
            C4951Bu0 c4951Bu0 = c5430Kb0.f41706b;
            GJ.c(c4951Bu0, "typeTable");
            List list = t90.f44408i;
            if (list.isEmpty()) {
                list = null;
            }
            if (list == null) {
                List<Integer> list2 = t90.f44409j;
                GJ.b(list2, "getUpperBoundIdList(...)");
                ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list2));
                for (Integer num : list2) {
                    GJ.a(num);
                    arrayList.add((M90) c4951Bu0.f39036a.get(num.intValue()));
                }
                list = arrayList;
            }
            List<C10420yQ> c10 = bq.c();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                c10.add(a((M90) it.next(), c5430Kb0));
            }
            Iterator<E> it2 = c5430Kb0.f41712h.iterator();
            while (it2.hasNext()) {
                ((JL) ((InterfaceC10432yW) it2.next())).getClass();
                C8584nQ c8584nQ = C9577tM.f52588b;
                GJ.c(c8584nQ, "type");
                C9577tM c9577tM = (C9577tM) ((CQ) AbstractC9668tv.a(bq.f38900f, c8584nQ));
                for (O80 o80 : (List) t90.a(AbstractC8743oM.f51219h)) {
                    ArrayList arrayList2 = c9577tM.f52589a;
                    GJ.a(o80);
                    arrayList2.add(AbstractC5545Mb0.a(o80, c5430Kb0.f41705a));
                }
            }
            return bq;
        }
        throw new IllegalArgumentException("Required value was null.");
    }
}
