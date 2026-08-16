package com.android.tools.r8.internal;

import java.io.ByteArrayInputStream;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u001e2\u00020\u0001:\u0007\u0018\u0019\u001a\u001b\u001c\u001d\u001eB\t\b\u0004\u00a2\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\u00020\rX\u00a6\u000e\u00a2\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017\u0082\u0001\u0006\u001f !\"#$\u00a8\u0006%"}, d2 = {"Lkotlin/metadata/jvm/KotlinClassMetadata;", "", ConstantDescs.INIT_NAME, "()V", "write", "Lkotlin/Metadata;", "version", "Lkotlin/metadata/jvm/JvmMetadataVersion;", "getVersion", "()Lkotlin/metadata/jvm/JvmMetadataVersion;", "setVersion", "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V", "flags", "", "getFlags", "()I", "setFlags", "(I)V", "isAllowedToWrite", "", "isAllowedToWrite$kotlin_metadata_jvm", "()Z", "setAllowedToWrite$kotlin_metadata_jvm", "(Z)V", "Class", "FileFacade", "SyntheticClass", "MultiFileClassFacade", "MultiFileClassPart", "Unknown", "Companion", "Lkotlin/metadata/jvm/KotlinClassMetadata$Class;", "Lkotlin/metadata/jvm/KotlinClassMetadata$FileFacade;", "Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassFacade;", "Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassPart;", "Lkotlin/metadata/jvm/KotlinClassMetadata$SyntheticClass;", "Lkotlin/metadata/jvm/KotlinClassMetadata$Unknown;", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NQ {

    public boolean f42580a;

    @InterfaceC9597tW(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tB\u0019\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u00a2\u0006\u0004\b\b\u0010\u000eJ\b\u0010\u001b\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a\u00a8\u0006\u001c"}, d2 = {"Lkotlin/metadata/jvm/KotlinClassMetadata$Class;", "Lkotlin/metadata/jvm/KotlinClassMetadata;", "kmClass", "Lkotlin/metadata/KmClass;", "version", "Lkotlin/metadata/jvm/JvmMetadataVersion;", "flags", "", ConstantDescs.INIT_NAME, "(Lkotlin/metadata/KmClass;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V", "annotationData", "Lkotlin/Metadata;", "lenient", "", "(Lkotlin/Metadata;Z)V", "getKmClass", "()Lkotlin/metadata/KmClass;", "setKmClass", "(Lkotlin/metadata/KmClass;)V", "getVersion", "()Lkotlin/metadata/jvm/JvmMetadataVersion;", "setVersion", "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V", "getFlags", "()I", "setFlags", "(I)V", "write", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a extends NQ {

        public C6417aQ f42581b;

        public ML f42582c;

        public final int f42583d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Code restructure failed: missing block: B:127:0x03aa, code lost:
        
            r6 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x03a8, code lost:
        
            if (r4 == false) goto L121;
         */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0242  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x024c  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0210  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(com.android.tools.r8.kotlin.S s10) {
            super(0);
            Iterator it;
            String str;
            String a10;
            GL gl2;
            String[] strArr = s10.f55165c;
            strArr = strArr.length == 0 ? null : strArr;
            if (strArr == null) {
                throw new C8221lD("Metadata is missing: kotlin.Metadata.data1 must not be an empty array");
            }
            String[] strArr2 = s10.f55166d;
            C10503yv c10503yv = AbstractC8910pM.f51506a;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(N6.a(strArr));
            VL a11 = AbstractC8910pM.a(byteArrayInputStream, strArr2);
            S80 s80 = (S80) AbstractC7851j1.a(S80.f44100L.a(byteArrayInputStream, c10503yv));
            boolean z10 = new ML(s10.f55164b).compareTo(new ML(1, 4, 0)) < 0;
            C6049Ut c6049Ut = C6049Ut.f44892b;
            GJ.c(s80, "<this>");
            C6417aQ c6417aQ = new C6417aQ();
            W90 w90 = s80.f44106F;
            GJ.b(w90, "getTypeTable(...)");
            C4951Bu0 c4951Bu0 = new C4951Bu0(w90);
            C6341Zw0 c6341Zw0 = C6341Zw0.f46380b;
            C7605ha0 c7605ha0 = s80.f44108H;
            GJ.b(c7605ha0, "getVersionRequirementTable(...)");
            if (c7605ha0.f48587c.size() != 0) {
                List list = c7605ha0.f48587c;
                GJ.b(list, "getRequirementList(...)");
                c6341Zw0 = new C6341Zw0(list);
            }
            C5430Kb0 c5430Kb0 = new C5430Kb0(a11, c4951Bu0, c6341Zw0, z10, c6049Ut, 16);
            List list2 = s80.f44116h;
            GJ.b(list2, "getTypeParameterList(...)");
            C5430Kb0 a12 = c5430Kb0.a(list2);
            c6417aQ.f46513a = s80.f44113e;
            String a13 = AbstractC5545Mb0.a(a12.f41705a, s80.f44114f);
            GJ.c(a13, "<set-?>");
            c6417aQ.f46514b = a13;
            List<T90> list3 = s80.f44116h;
            GJ.b(list3, "getTypeParameterList(...)");
            List<BQ> k10 = c6417aQ.k();
            for (T90 t90 : list3) {
                GJ.a(t90);
                k10.add(AbstractC5661Ob0.a(t90, a12));
            }
            C4951Bu0 c4951Bu02 = a12.f41706b;
            GJ.c(c4951Bu02, "typeTable");
            List list4 = s80.f44117i;
            list4 = list4.isEmpty() ? null : list4;
            if (list4 == null) {
                List<Integer> list5 = s80.f44118j;
                GJ.b(list5, "getSupertypeIdList(...)");
                ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list5));
                for (Integer num : list5) {
                    GJ.a(num);
                    arrayList.add((M90) c4951Bu02.f39036a.get(num.intValue()));
                }
                list4 = arrayList;
            }
            List<C10420yQ> j10 = c6417aQ.j();
            Iterator<E> it2 = list4.iterator();
            while (it2.hasNext()) {
                j10.add(AbstractC5661Ob0.a((M90) it2.next(), a12));
            }
            List list6 = s80.f44125q;
            GJ.b(list6, "getConstructorList(...)");
            List<C7083eQ> e10 = c6417aQ.e();
            Iterator it3 = list6.iterator();
            while (it3.hasNext()) {
                V80 v80 = (V80) it3.next();
                GJ.a(v80);
                C7083eQ c7083eQ = new C7083eQ(v80.f44977e);
                List<Z90> list7 = v80.f44978f;
                GJ.b(list7, "getValueParameterList(...)");
                List<EQ> a14 = c7083eQ.a();
                for (Z90 z90 : list7) {
                    GJ.a(z90);
                    a14.add(AbstractC5661Ob0.a(z90, a12));
                }
                List<Integer> list8 = v80.f44979g;
                GJ.b(list8, "getVersionRequirementList(...)");
                ArrayList arrayList2 = c7083eQ.f47676c;
                for (Integer num2 : list8) {
                    GJ.a(num2);
                    arrayList2.add(AbstractC5661Ob0.a(num2.intValue(), a12));
                }
                Iterator it4 = a12.f41712h.iterator();
                while (it4.hasNext()) {
                    ((JL) ((InterfaceC10432yW) it4.next())).getClass();
                    C10577zL a15 = AL.a(c7083eQ);
                    C10503yv c10503yv2 = AbstractC8910pM.f51506a;
                    VL vl2 = a12.f41705a;
                    C4951Bu0 c4951Bu03 = a12.f41706b;
                    GJ.c(vl2, "nameResolver");
                    GJ.c(c4951Bu03, "typeTable");
                    C6173Wy c6173Wy = AbstractC8743oM.f51212a;
                    Iterator it5 = it3;
                    GJ.b(c6173Wy, "constructorSignature");
                    C6909dM c6909dM = (C6909dM) AbstractC7937ja0.a(v80, c6173Wy);
                    if (c6909dM != null) {
                        it = it4;
                        if ((c6909dM.f47379c & 1) == 1) {
                            str = vl2.a(c6909dM.f47380d);
                            if (c6909dM == null && (c6909dM.f47379c & 2) == 2) {
                                a10 = vl2.a(c6909dM.f47381e);
                            } else {
                                List<Z90> list9 = v80.f44978f;
                                GJ.b(list9, "getValueParameterList(...)");
                                ArrayList arrayList3 = new ArrayList(AbstractC6785cf.a(list9));
                                for (Z90 z902 : list9) {
                                    C10503yv c10503yv3 = AbstractC8910pM.f51506a;
                                    GJ.a(z902);
                                    String a16 = AbstractC8910pM.a(AbstractC5774Qa0.a(z902, c4951Bu03), vl2);
                                    if (a16 == null) {
                                        gl2 = null;
                                        break;
                                    }
                                    arrayList3.add(a16);
                                }
                                a10 = AbstractC6303Ze.a(arrayList3, "", "(", ")V", null, 56);
                            }
                            gl2 = new GL(str, a10);
                            a15.f54358a = gl2 == null ? new OL(gl2.f40466a, gl2.f40467b) : null;
                            it3 = it5;
                            it4 = it;
                        }
                    } else {
                        it = it4;
                    }
                    str = ConstantDescs.INIT_NAME;
                    if (c6909dM == null) {
                    }
                    List<Z90> list92 = v80.f44978f;
                    GJ.b(list92, "getValueParameterList(...)");
                    ArrayList arrayList32 = new ArrayList(AbstractC6785cf.a(list92));
                    while (r0.hasNext()) {
                    }
                    a10 = AbstractC6303Ze.a(arrayList32, "", "(", ")V", null, 56);
                    gl2 = new GL(str, a10);
                    a15.f54358a = gl2 == null ? new OL(gl2.f40466a, gl2.f40467b) : null;
                    it3 = it5;
                    it4 = it;
                }
                e10.add(c7083eQ);
            }
            List list10 = s80.f44126r;
            GJ.b(list10, "getFunctionList(...)");
            List list11 = s80.f44127s;
            GJ.b(list11, "getPropertyList(...)");
            List list12 = s80.f44128t;
            GJ.b(list12, "getTypeAliasList(...)");
            AbstractC5661Ob0.a(c6417aQ, list10, list11, list12, a12);
            if ((s80.f44112d & 4) == 4) {
                c6417aQ.f46521i = a12.f41705a.a(s80.f44115g);
            }
            List<Integer> list13 = s80.f44120l;
            GJ.b(list13, "getNestedClassNameList(...)");
            List<String> h10 = c6417aQ.h();
            for (Integer num3 : list13) {
                GJ.a(num3);
                h10.add(a12.f41705a.a(num3.intValue()));
            }
            for (C7377g90 c7377g90 : s80.f44129u) {
                if ((c7377g90.f48199d & 1) != 1) {
                    throw new C8221lD("No name for EnumEntry");
                }
                c6417aQ.f().add(a12.f41705a.a(c7377g90.f48200e));
            }
            List<Integer> list14 = s80.f44130v;
            GJ.b(list14, "getSealedSubclassFqNameList(...)");
            List<String> i10 = c6417aQ.i();
            for (Integer num4 : list14) {
                GJ.a(num4);
                i10.add(AbstractC5545Mb0.a(a12.f41705a, num4.intValue()));
            }
            if ((s80.f44112d & 8) == 8) {
                c6417aQ.f46525m = a12.f41705a.a(s80.f44132x);
            }
            C4951Bu0 c4951Bu04 = a12.f41706b;
            GJ.c(c4951Bu04, "typeTable");
            int i11 = s80.f44112d;
            M90 m90 = (i11 & 16) == 16 ? s80.f44133y : (i11 & 32) == 32 ? (M90) c4951Bu04.f39036a.get(s80.f44134z) : null;
            if (m90 == null) {
                if ((s80.f44112d & 8) == 8) {
                    List list15 = s80.f44127s;
                    GJ.b(list15, "getPropertyList(...)");
                    Iterator<E> it6 = list15.iterator();
                    boolean z11 = false;
                    Object obj = null;
                    while (true) {
                        if (it6.hasNext()) {
                            Object next = it6.next();
                            C9879v90 c9879v90 = (C9879v90) next;
                            GJ.a(c9879v90);
                            C4951Bu0 c4951Bu05 = a12.f41706b;
                            GJ.c(c4951Bu05, "typeTable");
                            int i12 = c9879v90.f53028d;
                            if (((i12 & 32) == 32 ? c9879v90.f53035k : (i12 & 64) == 64 ? (M90) c4951Bu05.f39036a.get(c9879v90.f53036l) : null) == null) {
                                if (!a12.f41705a.a(c9879v90.f53031g).equals(a12.f41705a.a(s80.f44132x))) {
                                    continue;
                                } else {
                                    if (z11) {
                                        break;
                                    }
                                    obj = next;
                                    z11 = true;
                                }
                            }
                        }
                    }
                    C9879v90 c9879v902 = (C9879v90) obj;
                    if (c9879v902 != null) {
                        m90 = AbstractC5774Qa0.a(c9879v902, a12.f41706b);
                    }
                }
                m90 = null;
            }
            c6417aQ.f46526n = m90 != null ? AbstractC5661Ob0.a(m90, a12) : null;
            C4951Bu0 c4951Bu06 = a12.f41706b;
            GJ.c(c4951Bu06, "typeTable");
            List list16 = s80.f44122n;
            list16 = list16.isEmpty() ? null : list16;
            if (list16 == null) {
                List<Integer> list17 = s80.f44123o;
                GJ.b(list17, "getContextReceiverTypeIdList(...)");
                ArrayList arrayList4 = new ArrayList(AbstractC6785cf.a(list17));
                for (Integer num5 : list17) {
                    GJ.a(num5);
                    arrayList4.add((M90) c4951Bu06.f39036a.get(num5.intValue()));
                }
                list16 = arrayList4;
            }
            ArrayList arrayList5 = c6417aQ.f46527o;
            Iterator<E> it7 = list16.iterator();
            while (it7.hasNext()) {
                arrayList5.add(AbstractC5661Ob0.a((M90) it7.next(), a12));
            }
            List<Integer> list18 = s80.f44107G;
            GJ.b(list18, "getVersionRequirementList(...)");
            ArrayList arrayList6 = c6417aQ.f46528p;
            for (Integer num6 : list18) {
                GJ.a(num6);
                arrayList6.add(AbstractC5661Ob0.a(num6.intValue(), a12));
            }
            Iterator<E> it8 = a12.f41712h.iterator();
            while (it8.hasNext()) {
                ((JL) ((InterfaceC10432yW) it8.next())).getClass();
                C10243xL a17 = AL.a(c6417aQ);
                C6173Wy c6173Wy2 = AbstractC8743oM.f51222k;
                GJ.b(c6173Wy2, "anonymousObjectOriginName");
                Integer num7 = (Integer) AbstractC7937ja0.a(s80, c6173Wy2);
                if (num7 != null) {
                    a17.f53739c = a12.f41705a.a(num7.intValue());
                }
                for (C9879v90 c9879v903 : (List) s80.a(AbstractC8743oM.f51221j)) {
                    ArrayList arrayList7 = a17.f53737a;
                    GJ.a(c9879v903);
                    arrayList7.add(AbstractC5661Ob0.a(c9879v903, a12));
                }
                C6173Wy c6173Wy3 = AbstractC8743oM.f51220i;
                GJ.b(c6173Wy3, "classModuleName");
                Integer num8 = (Integer) AbstractC7937ja0.a(s80, c6173Wy3);
                a17.f53738b = num8 != null ? a12.f41705a.a(num8.intValue()) : T5.b.f24045b;
                C6173Wy c6173Wy4 = AbstractC8743oM.f51223l;
                GJ.b(c6173Wy4, "jvmClassFlags");
                Integer num9 = (Integer) AbstractC7937ja0.a(s80, c6173Wy4);
                if (num9 != null) {
                    a17.f53740d = num9.intValue();
                }
            }
            ML ml2 = new ML(s10.f55164b);
            int i13 = s10.f55167e;
            this.f42581b = c6417aQ;
            this.f42582c = ml2;
            this.f42583d = i13;
            this.f42580a = true;
        }

        @Override
        public final ML a() {
            return this.f42582c;
        }

        @Override
        public final KL b() {
            KL a10;
            OQ.a("class", this.f42580a);
            OQ.a(this.f42582c);
            try {
                C7783ie c7783ie = new C7783ie(new C9243rM());
                c7783ie.a(this.f42581b);
                S80 c10 = c7783ie.f49002a.c();
                if (!c10.isInitialized()) {
                    throw new C6834cv0();
                }
                C8866p50 a11 = AbstractC9744uM.a(c10, c7783ie.f49003b);
                String[] strArr = (String[]) a11.f51436b;
                String[] strArr2 = (String[]) a11.f51437c;
                ML ml2 = this.f42582c;
                a10 = LL.a((Integer) 1, new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, strArr, (r15 & 8) != 0 ? null : strArr2, (r15 & 16) != 0 ? null : null, (String) null, Integer.valueOf(this.f42583d));
                return a10;
            } catch (Throwable th2) {
                if ((th2 instanceof IllegalArgumentException) || (th2 instanceof VirtualMachineError) || (th2 instanceof ThreadDeath)) {
                    throw th2;
                }
                throw new IllegalArgumentException("Kotlin metadata is not correct and can not be written", th2);
            }
        }

        public final C6417aQ c() {
            return this.f42581b;
        }

        @Override
        public final void a(ML ml2) {
            GJ.c(ml2, "<set-?>");
            this.f42582c = ml2;
        }
    }

    @InterfaceC9597tW(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tB\u0019\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u00a2\u0006\u0004\b\b\u0010\u000eJ\b\u0010\u001b\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a\u00a8\u0006\u001c"}, d2 = {"Lkotlin/metadata/jvm/KotlinClassMetadata$FileFacade;", "Lkotlin/metadata/jvm/KotlinClassMetadata;", "kmPackage", "Lkotlin/metadata/KmPackage;", "version", "Lkotlin/metadata/jvm/JvmMetadataVersion;", "flags", "", ConstantDescs.INIT_NAME, "(Lkotlin/metadata/KmPackage;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V", "annotationData", "Lkotlin/Metadata;", "lenient", "", "(Lkotlin/Metadata;Z)V", "getKmPackage", "()Lkotlin/metadata/KmPackage;", "setKmPackage", "(Lkotlin/metadata/KmPackage;)V", "getVersion", "()Lkotlin/metadata/jvm/JvmMetadataVersion;", "setVersion", "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V", "getFlags", "()I", "setFlags", "(I)V", "write", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b extends NQ {

        public C9418sQ f42584b;

        public ML f42585c;

        public final int f42586d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.android.tools.r8.kotlin.S s10) {
            super(0);
            C9418sQ a10 = AbstractC9077qM.a(s10);
            ML ml2 = new ML(s10.f55164b);
            int i10 = s10.f55167e;
            this.f42584b = a10;
            this.f42585c = ml2;
            this.f42586d = i10;
            this.f42580a = true;
        }

        @Override
        public final ML a() {
            return this.f42585c;
        }

        @Override
        public final KL b() {
            KL a10;
            OQ.a("file facade", this.f42580a);
            OQ.a(this.f42585c);
            try {
                C8532n50 c8532n50 = new C8532n50(new C9243rM());
                c8532n50.a(this.f42584b);
                C9378s90 c10 = c8532n50.f50503a.c();
                if (!c10.isInitialized()) {
                    throw new C6834cv0();
                }
                C8866p50 a11 = AbstractC9744uM.a(c10, c8532n50.f50504b);
                String[] strArr = (String[]) a11.f51436b;
                String[] strArr2 = (String[]) a11.f51437c;
                ML ml2 = this.f42585c;
                a10 = LL.a((Integer) 2, new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, strArr, (r15 & 8) != 0 ? null : strArr2, (r15 & 16) != 0 ? null : null, (String) null, Integer.valueOf(this.f42586d));
                return a10;
            } catch (Throwable th2) {
                if ((th2 instanceof IllegalArgumentException) || (th2 instanceof VirtualMachineError) || (th2 instanceof ThreadDeath)) {
                    throw th2;
                }
                throw new IllegalArgumentException("Kotlin metadata is not correct and can not be written", th2);
            }
        }

        public final C9418sQ c() {
            return this.f42584b;
        }

        @Override
        public final void a(ML ml2) {
            GJ.c(ml2, "<set-?>");
            this.f42585c = ml2;
        }
    }

    @InterfaceC9597tW(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u00a2\u0006\u0004\b\t\u0010\nB\u0019\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\b\t\u0010\u000fJ\b\u0010\u001c\u001a\u00020\fH\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b\u00a8\u0006\u001d"}, d2 = {"Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassFacade;", "Lkotlin/metadata/jvm/KotlinClassMetadata;", "partClassNames", "", "", "version", "Lkotlin/metadata/jvm/JvmMetadataVersion;", "flags", "", ConstantDescs.INIT_NAME, "(Ljava/util/List;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V", "annotationData", "Lkotlin/Metadata;", "lenient", "", "(Lkotlin/Metadata;Z)V", "getPartClassNames", "()Ljava/util/List;", "setPartClassNames", "(Ljava/util/List;)V", "getVersion", "()Lkotlin/metadata/jvm/JvmMetadataVersion;", "setVersion", "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V", "getFlags", "()I", "setFlags", "(I)V", "write", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class c extends NQ {

        public List f42587b;

        public ML f42588c;

        public final int f42589d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.android.tools.r8.kotlin.S s10) {
            super(0);
            List a10 = AbstractC6361a4.a(s10.f55165c);
            ML ml2 = new ML(s10.f55164b);
            int i10 = s10.f55167e;
            this.f42587b = a10;
            this.f42588c = ml2;
            this.f42589d = i10;
            this.f42580a = true;
        }

        @Override
        public final ML a() {
            return this.f42588c;
        }

        @Override
        public final KL b() {
            KL a10;
            OQ.a("multi-file class facade", this.f42580a);
            OQ.a(this.f42588c);
            ML ml2 = this.f42588c;
            a10 = LL.a((Integer) 4, new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, (String[]) this.f42587b.toArray(new String[0]), (r15 & 8) != 0 ? null : null, (r15 & 16) != 0 ? null : null, (String) null, Integer.valueOf(this.f42589d));
            return a10;
        }

        public final List<String> c() {
            return this.f42587b;
        }

        @Override
        public final void a(ML ml2) {
            GJ.c(ml2, "<set-?>");
            this.f42588c = ml2;
        }
    }

    @InterfaceC9597tW(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u00a2\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\b\n\u0010\u0010J\b\u0010!\u001a\u00020\rH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\b\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 \u00a8\u0006\""}, d2 = {"Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassPart;", "Lkotlin/metadata/jvm/KotlinClassMetadata;", "kmPackage", "Lkotlin/metadata/KmPackage;", "facadeClassName", "", "version", "Lkotlin/metadata/jvm/JvmMetadataVersion;", "flags", "", ConstantDescs.INIT_NAME, "(Lkotlin/metadata/KmPackage;Ljava/lang/String;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V", "annotationData", "Lkotlin/Metadata;", "lenient", "", "(Lkotlin/Metadata;Z)V", "getKmPackage", "()Lkotlin/metadata/KmPackage;", "setKmPackage", "(Lkotlin/metadata/KmPackage;)V", "getFacadeClassName", "()Ljava/lang/String;", "setFacadeClassName", "(Ljava/lang/String;)V", "getVersion", "()Lkotlin/metadata/jvm/JvmMetadataVersion;", "setVersion", "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V", "getFlags", "()I", "setFlags", "(I)V", "write", "kotlin-metadata-jvm"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class d extends NQ {

        public C9418sQ f42590b;

        public final String f42591c;

        public ML f42592d;

        public final int f42593e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.android.tools.r8.kotlin.S s10) {
            super(0);
            C9418sQ a10 = AbstractC9077qM.a(s10);
            String str = s10.f55168f;
            ML ml2 = new ML(s10.f55164b);
            int i10 = s10.f55167e;
            this.f42590b = a10;
            this.f42591c = str;
            this.f42592d = ml2;
            this.f42593e = i10;
            this.f42580a = true;
        }

        @Override
        public final ML a() {
            return this.f42592d;
        }

        @Override
        public final KL b() {
            KL a10;
            OQ.a("multi-file class part", this.f42580a);
            OQ.a(this.f42592d);
            try {
                C8532n50 c8532n50 = new C8532n50(new C9243rM());
                c8532n50.a(this.f42590b);
                C9378s90 c10 = c8532n50.f50503a.c();
                if (!c10.isInitialized()) {
                    throw new C6834cv0();
                }
                C8866p50 a11 = AbstractC9744uM.a(c10, c8532n50.f50504b);
                String[] strArr = (String[]) a11.f51436b;
                String[] strArr2 = (String[]) a11.f51437c;
                ML ml2 = this.f42592d;
                a10 = LL.a((Integer) 5, new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, strArr, (r15 & 8) != 0 ? null : strArr2, (r15 & 16) != 0 ? null : this.f42591c, (String) null, Integer.valueOf(this.f42593e));
                return a10;
            } catch (Throwable th2) {
                if ((th2 instanceof IllegalArgumentException) || (th2 instanceof VirtualMachineError) || (th2 instanceof ThreadDeath)) {
                    throw th2;
                }
                throw new IllegalArgumentException("Kotlin metadata is not correct and can not be written", th2);
            }
        }

        public final C9418sQ c() {
            return this.f42590b;
        }

        @Override
        public final void a(ML ml2) {
            GJ.c(ml2, "<set-?>");
            this.f42592d = ml2;
        }
    }

    public NQ(int i10) {
        this();
    }

    public static final NQ a(com.android.tools.r8.kotlin.S s10) {
        String str;
        int i10;
        if (s10.f55164b.length != 0) {
            boolean z10 = false;
            NL nl2 = new NL(s10.f55164b, (s10.f55167e & 8) != 0);
            int i11 = nl2.f52526b;
            boolean z11 = i11 > 1 || (i11 >= 1 && ((i10 = nl2.f52527c) > 1 || (i10 >= 1 && nl2.f52528d >= 0)));
            NL nl3 = nl2.f42568f ? NL.f42566g : NL.f42567h;
            if ((i11 != 1 || nl2.f52527c != 0) && i11 != 0) {
                int i12 = nl3.f52526b;
                if (i11 > i12 || (i11 >= i12 && nl2.f52527c > nl3.f52527c)) {
                    z10 = true;
                }
                z10 = !z10;
            }
            if (!z10) {
                if (z11) {
                    StringBuilder sb2 = new StringBuilder("while maximum supported version is ");
                    sb2.append((Object) (nl2.f42568f ? NL.f42566g : NL.f42567h));
                    sb2.append(". To support newer versions, update the kotlin-metadata-jvm library.");
                    str = sb2.toString();
                } else {
                    str = "while minimum supported version is 1.1.0 (Kotlin 1.0).";
                }
                throw new IllegalArgumentException("Provided Metadata instance has version " + ((Object) nl2) + ", " + str);
            }
            try {
                int i13 = s10.f55163a;
                if (i13 == 1) {
                    return new a(s10);
                }
                if (i13 == 2) {
                    return new b(s10);
                }
                if (i13 == 3) {
                    return new PQ(s10);
                }
                if (i13 == 4) {
                    return new c(s10);
                }
                if (i13 != 5) {
                    return new QQ(s10);
                }
                return new d(s10);
            } finally {
            }
        } else {
            throw new IllegalArgumentException("Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.");
        }
    }

    public abstract ML a();

    public abstract void a(ML ml2);

    public abstract KL b();

    private NQ() {
        this.f42580a = true;
    }
}
