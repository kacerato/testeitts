package com.android.tools.r8.internal;

import android.opengl.GLES30;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.internal.AbstractC6750cQ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC7176ey0 {
    public static final R90 a(C6676by0 c6676by0, BQ bq) {
        T90 t90 = T90.f44400n;
        R90 r90 = new R90();
        Iterator<C10420yQ> it = bq.c().iterator();
        while (it.hasNext()) {
            M90 a10 = a(c6676by0, it.next()).a();
            if ((r90.f43821e & 16) != 16) {
                r90.f43826j = new ArrayList(r90.f43826j);
                r90.f43821e |= 16;
            }
            r90.f43826j.add(a10);
        }
        Iterator<E> it2 = c6676by0.f46919c.iterator();
        while (it2.hasNext()) {
            ((JL) ((InterfaceC10432yW) it2.next())).getClass();
            C8584nQ c8584nQ = C9577tM.f52588b;
            GJ.c(c8584nQ, "type");
            ArrayList arrayList = ((C9577tM) ((CQ) AbstractC9668tv.a(bq.f38900f, c8584nQ))).f52589a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C6173Wy c6173Wy = AbstractC8743oM.f51219h;
                O80 c10 = AbstractC6843cy0.a((GP) obj, c6676by0.f46917a).c();
                if (c10.isInitialized()) {
                    if (c6173Wy.f45590a == r90.b()) {
                        if (!r90.f44038d) {
                            r90.f44037c = r90.f44037c.m719clone();
                            r90.f44038d = true;
                        }
                        r90.f44037c.a(c6173Wy.f45593d, c6173Wy.b(c10));
                    } else {
                        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                    }
                } else {
                    throw new C6834cv0();
                }
            }
        }
        String b10 = bq.b();
        GJ.c(b10, TypedValues.Custom.S_STRING);
        int a11 = c6676by0.f46917a.a(b10);
        r90.f43821e |= 2;
        r90.f43823g = a11;
        int a12 = bq.a();
        r90.f43821e |= 1;
        r90.f43822f = a12;
        boolean a13 = C7698i5.f48803Y.a(bq, C7698i5.f48805a[49]);
        if (a13 != T90.f44400n.f44406g) {
            r90.f43821e |= 4;
            r90.f43824h = a13;
        }
        if (bq.d() == FQ.f40194c) {
            S90 s90 = S90.IN;
            r90.f43821e |= 8;
            r90.f43825i = s90;
            return r90;
        }
        if (bq.d() == FQ.f40195d) {
            S90 s902 = S90.OUT;
            r90.f43821e |= 8;
            r90.f43825i = s902;
        }
        return r90;
    }

    public static final C7833iv0 b(C6605ba0 c6605ba0, int i10) {
        GJ.a(c6605ba0);
        c6605ba0.f46790c |= 2;
        c6605ba0.f46792e = i10;
        return C7833iv0.f49115a;
    }

    public static final L90 a(C6676by0 c6676by0, C10420yQ c10420yQ) {
        M90 m90 = M90.f42196u;
        L90 l90 = new L90();
        AbstractC6750cQ c10 = c10420yQ.c();
        if (c10 instanceof AbstractC6750cQ.a) {
            String a10 = ((AbstractC6750cQ.a) c10).a();
            c6676by0.getClass();
            GJ.c(a10, "name");
            int a11 = AbstractC6843cy0.a(c6676by0.f46917a, a10);
            l90.f41896e |= 32;
            l90.f41902k = a11;
        } else if (c10 instanceof AbstractC6750cQ.b) {
            String a12 = ((AbstractC6750cQ.b) c10).a();
            c6676by0.getClass();
            GJ.c(a12, "name");
            int a13 = AbstractC6843cy0.a(c6676by0.f46917a, a12);
            l90.f41896e |= 256;
            l90.f41905n = a13;
        } else if (c10 instanceof AbstractC6750cQ.c) {
            int a14 = ((AbstractC6750cQ.c) c10).a();
            l90.f41896e |= 64;
            l90.f41903l = a14;
        } else {
            throw new C00();
        }
        for (DQ dq : c10420yQ.b()) {
            K90 k90 = K90.f41601i;
            I90 i90 = new I90();
            if (GJ.a(dq, DQ.f39511c)) {
                J90 j90 = J90.STAR;
                i90.f40986c |= 1;
                i90.f40987d = j90;
            } else {
                FQ fq = dq.f39512a;
                C10420yQ c10420yQ2 = dq.f39513b;
                if (fq != null && c10420yQ2 != null) {
                    if (fq == FQ.f40194c) {
                        J90 j902 = J90.IN;
                        i90.f40986c |= 1;
                        i90.f40987d = j902;
                    } else if (fq == FQ.f40195d) {
                        J90 j903 = J90.OUT;
                        i90.f40986c |= 1;
                        i90.f40987d = j903;
                    }
                    i90.f40988e = a(c6676by0, c10420yQ2).a();
                    i90.f40986c |= 2;
                } else {
                    throw new C8221lD("Variance and type must be set for non-star type projection");
                }
            }
            if ((l90.f41896e & 1) != 1) {
                l90.f41897f = new ArrayList(l90.f41897f);
                l90.f41896e |= 1;
            }
            List list = l90.f41897f;
            K90 c11 = i90.c();
            if (c11.isInitialized()) {
                list.add(c11);
            } else {
                throw new C6834cv0();
            }
        }
        C10420yQ a15 = c10420yQ.a();
        if (a15 != null) {
            l90.f41908q = a(c6676by0, a15).a();
            l90.f41896e |= 2048;
        }
        C10420yQ e10 = c10420yQ.e();
        if (e10 != null) {
            l90.f41906o = a(c6676by0, e10).a();
            l90.f41896e |= 512;
        }
        C8751oQ d10 = c10420yQ.d();
        if (d10 != null) {
            L90 a16 = a(c6676by0, d10.a());
            String b10 = d10.b();
            if (b10 != null) {
                int a17 = c6676by0.f46917a.a(b10);
                l90.f41896e |= 4;
                l90.f41899h = a17;
            }
            l90.f41900i = a16.a();
            l90.f41896e |= 8;
        }
        Iterator<E> it = c6676by0.f46919c.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            C9410sM a18 = AL.a(c10420yQ);
            if (a18.f52343a) {
                l90.a(AbstractC8743oM.f51218g, Boolean.TRUE);
            }
            ArrayList arrayList = a18.f52344b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C6173Wy c6173Wy = AbstractC8743oM.f51217f;
                O80 c12 = AbstractC6843cy0.a((GP) obj, c6676by0.f46917a).c();
                if (c12.isInitialized()) {
                    if (c6173Wy.f45590a == l90.b()) {
                        if (!l90.f44038d) {
                            l90.f44037c = l90.f44037c.m719clone();
                            l90.f44038d = true;
                        }
                        l90.f44037c.a(c6173Wy.f45593d, c6173Wy.b(c12));
                    } else {
                        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                    }
                } else {
                    throw new C6834cv0();
                }
            }
        }
        if (C7698i5.f48800V.a(c10420yQ, C7698i5.f48805a[46])) {
            l90.f41896e |= 2;
            l90.f41898g = true;
        }
        int i11 = c10420yQ.f54008a >> 1;
        if (i11 != M90.f42196u.f42213r) {
            l90.f41896e |= 8192;
            l90.f41910s = i11;
        }
        return l90;
    }

    public static final C8377m90 a(C6676by0 c6676by0, C8918pQ c8918pQ) {
        C8544n90 c8544n90 = C8544n90.f50522v;
        C8377m90 c8377m90 = new C8377m90();
        List<BQ> d10 = c8918pQ.d();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(d10));
        Iterator<BQ> it = d10.iterator();
        while (it.hasNext()) {
            T90 c10 = a(c6676by0, it.next()).c();
            if (c10.isInitialized()) {
                arrayList.add(c10);
            } else {
                throw new C6834cv0();
            }
        }
        if ((c8377m90.f50213e & 32) != 32) {
            c8377m90.f50219k = new ArrayList(c8377m90.f50219k);
            c8377m90.f50213e |= 32;
        }
        AbstractC5827Qy.a(arrayList, c8377m90.f50219k);
        C10420yQ b10 = c8918pQ.b();
        if (b10 != null) {
            c8377m90.f50220l = a(c6676by0, b10).a();
            c8377m90.f50213e |= 64;
        }
        ArrayList arrayList2 = c8918pQ.f51519e;
        ArrayList arrayList3 = new ArrayList(AbstractC6785cf.a(arrayList2));
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            arrayList3.add(a(c6676by0, (C10420yQ) obj).a());
        }
        if ((c8377m90.f50213e & 256) != 256) {
            c8377m90.f50222n = new ArrayList(c8377m90.f50222n);
            c8377m90.f50213e |= 256;
        }
        AbstractC5827Qy.a(arrayList3, c8377m90.f50222n);
        List<EQ> e10 = c8918pQ.e();
        ArrayList arrayList4 = new ArrayList(AbstractC6785cf.a(e10));
        Iterator<EQ> it2 = e10.iterator();
        while (it2.hasNext()) {
            Z90 c11 = a(c6676by0, it2.next()).c();
            if (c11.isInitialized()) {
                arrayList4.add(c11);
            } else {
                throw new C6834cv0();
            }
        }
        if ((c8377m90.f50213e & 1024) != 1024) {
            c8377m90.f50224p = new ArrayList(c8377m90.f50224p);
            c8377m90.f50213e |= 1024;
        }
        AbstractC5827Qy.a(arrayList4, c8377m90.f50224p);
        c8377m90.f50217i = a(c6676by0, c8918pQ.c()).a();
        c8377m90.f50213e |= 8;
        ArrayList arrayList5 = c8918pQ.f51522h;
        ArrayList arrayList6 = new ArrayList();
        int size2 = arrayList5.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList5.get(i11);
            i11++;
            Integer a10 = a(c6676by0, (HQ) obj2);
            if (a10 != null) {
                arrayList6.add(a10);
            }
        }
        if ((c8377m90.f50213e & 4096) != 4096) {
            c8377m90.f50226r = new ArrayList(c8377m90.f50226r);
            c8377m90.f50213e |= 4096;
        }
        AbstractC5827Qy.a(arrayList6, c8377m90.f50226r);
        C7417gQ c7417gQ = c8918pQ.f51523i;
        if (c7417gQ != null) {
            Y80 y80 = Y80.f45937f;
            X80 x80 = new X80();
            ArrayList arrayList7 = c7417gQ.f48260a;
            ArrayList arrayList8 = new ArrayList(AbstractC6785cf.a(arrayList7));
            int size3 = arrayList7.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj3 = arrayList7.get(i12);
                i12++;
                C7751iQ c7751iQ = (C7751iQ) obj3;
                C6877d90 c6877d90 = C6877d90.f47302j;
                C6377a90 c6377a90 = new C6377a90();
                ArrayList arrayList9 = c7751iQ.f48937c;
                ArrayList arrayList10 = new ArrayList(AbstractC6785cf.a(arrayList9));
                int size4 = arrayList9.size();
                int i13 = 0;
                while (i13 < size4) {
                    Object obj4 = arrayList9.get(i13);
                    i13++;
                    arrayList10.add(a(c6676by0, (C7916jQ) obj4));
                }
                if ((c6377a90.f46430c & 2) != 2) {
                    c6377a90.f46432e = new ArrayList(c6377a90.f46432e);
                    c6377a90.f46430c |= 2;
                }
                AbstractC5827Qy.a(arrayList10, c6377a90.f46432e);
                C7916jQ c7916jQ = c7751iQ.f48938d;
                if (c7916jQ != null) {
                    c6377a90.f46433f = a(c6676by0, c7916jQ);
                    c6377a90.f46430c |= 4;
                }
                int b11 = AbstractC4291c.b(c7751iQ.f48935a);
                if (b11 == 0) {
                    EnumC6544b90 enumC6544b90 = EnumC6544b90.RETURNS_CONSTANT;
                    c6377a90.f46430c |= 1;
                    c6377a90.f46431d = enumC6544b90;
                } else if (b11 == 1) {
                    EnumC6544b90 enumC6544b902 = EnumC6544b90.CALLS;
                    c6377a90.f46430c |= 1;
                    c6377a90.f46431d = enumC6544b902;
                } else if (b11 == 2) {
                    EnumC6544b90 enumC6544b903 = EnumC6544b90.RETURNS_NOT_NULL;
                    c6377a90.f46430c |= 1;
                    c6377a90.f46431d = enumC6544b903;
                } else {
                    throw new C00();
                }
                int i14 = c7751iQ.f48936b;
                int i15 = i14 == 0 ? -1 : AbstractC7009dy0.f47557a[AbstractC4291c.b(i14)];
                if (i15 != -1) {
                    if (i15 == 1) {
                        EnumC6710c90 enumC6710c90 = EnumC6710c90.AT_MOST_ONCE;
                        c6377a90.f46430c |= 8;
                        c6377a90.f46434g = enumC6710c90;
                    } else if (i15 == 2) {
                        EnumC6710c90 enumC6710c902 = EnumC6710c90.EXACTLY_ONCE;
                        c6377a90.f46430c |= 8;
                        c6377a90.f46434g = enumC6710c902;
                    } else if (i15 == 3) {
                        EnumC6710c90 enumC6710c903 = EnumC6710c90.AT_LEAST_ONCE;
                        c6377a90.f46430c |= 8;
                        c6377a90.f46434g = enumC6710c903;
                    } else {
                        throw new C00();
                    }
                }
                C6877d90 c12 = c6377a90.c();
                if (c12.isInitialized()) {
                    arrayList8.add(c12);
                } else {
                    throw new C6834cv0();
                }
            }
            if ((x80.f45627c & 1) != 1) {
                x80.f45628d = new ArrayList(x80.f45628d);
                x80.f45627c |= 1;
            }
            AbstractC5827Qy.a(arrayList8, x80.f45628d);
            Y80 c13 = x80.c();
            if (c13.isInitialized()) {
                c8377m90.f50227s = c13;
                c8377m90.f50213e |= 8192;
            } else {
                throw new C6834cv0();
            }
        }
        Iterator<E> it3 = c6676by0.f46919c.iterator();
        while (it3.hasNext()) {
            ((JL) ((InterfaceC10432yW) it3.next())).getClass();
            EL a11 = AL.a(c8918pQ);
            OL ol2 = a11.f39834a;
            if (ol2 != null) {
            }
            String str = a11.f39835b;
            if (str != null) {
            }
        }
        String a12 = c8918pQ.a();
        GJ.c(a12, TypedValues.Custom.S_STRING);
        int a13 = c6676by0.f46917a.a(a12);
        int i16 = c8377m90.f50213e;
        c8377m90.f50213e = i16 | 4;
        c8377m90.f50216h = a13;
        int i17 = c8918pQ.f51515a;
        if (i17 != C8544n90.f50522v.f50526e) {
            c8377m90.f50213e = i16 | 5;
            c8377m90.f50214f = i17;
        }
        return c8377m90;
    }

    public static final C9712u90 a(C6676by0 c6676by0, C9919vQ c9919vQ) {
        boolean z10;
        OL ol2;
        GJ.c(c6676by0, "<this>");
        GJ.c(c9919vQ, "kmProperty");
        C9879v90 c9879v90 = C9879v90.f53025v;
        C9712u90 c9712u90 = new C9712u90();
        ArrayList arrayList = c9919vQ.f53105f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            T90 c10 = a(c6676by0, (BQ) obj).c();
            if (c10.isInitialized()) {
                if ((c9712u90.f52799e & 32) != 32) {
                    c9712u90.f52805k = new ArrayList(c9712u90.f52805k);
                    c9712u90.f52799e |= 32;
                }
                c9712u90.f52805k.add(c10);
            } else {
                throw new C6834cv0();
            }
        }
        C10420yQ c11 = c9919vQ.c();
        if (c11 != null) {
            c9712u90.f52806l = a(c6676by0, c11).a();
            c9712u90.f52799e |= 64;
        }
        ArrayList arrayList2 = c9919vQ.f53107h;
        ArrayList arrayList3 = new ArrayList(AbstractC6785cf.a(arrayList2));
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            arrayList3.add(a(c6676by0, (C10420yQ) obj2).a());
        }
        if ((c9712u90.f52799e & 256) != 256) {
            c9712u90.f52808n = new ArrayList(c9712u90.f52808n);
            c9712u90.f52799e |= 256;
        }
        AbstractC5827Qy.a(arrayList3, c9712u90.f52808n);
        EQ eq = c9919vQ.f53108i;
        if (eq != null) {
            Z90 c12 = a(c6676by0, eq).c();
            if (c12.isInitialized()) {
                c9712u90.f52810p = c12;
                c9712u90.f52799e |= 1024;
            } else {
                throw new C6834cv0();
            }
        }
        c9712u90.f52803i = a(c6676by0, c9919vQ.d()).a();
        c9712u90.f52799e |= 8;
        ArrayList arrayList4 = c9919vQ.f53110k;
        ArrayList arrayList5 = new ArrayList();
        int size3 = arrayList4.size();
        int i12 = 0;
        while (i12 < size3) {
            Object obj3 = arrayList4.get(i12);
            i12++;
            Integer a10 = a(c6676by0, (HQ) obj3);
            if (a10 != null) {
                arrayList5.add(a10);
            }
        }
        if ((c9712u90.f52799e & 8192) != 8192) {
            c9712u90.f52813s = new ArrayList(c9712u90.f52813s);
            c9712u90.f52799e |= 8192;
        }
        AbstractC5827Qy.a(arrayList5, c9712u90.f52813s);
        Iterator<E> it = c6676by0.f46919c.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            XL a11 = AL.a(c9919vQ);
            C7409gM c7409gM = C7409gM.f48236k;
            C7242fM c7242fM = new C7242fM();
            CL cl2 = a11.f45665b;
            boolean z11 = true;
            if (cl2 != null) {
                ZL zl2 = new ZL();
                String a12 = cl2.a();
                GJ.c(a12, TypedValues.Custom.S_STRING);
                int a13 = c6676by0.f46917a.a(a12);
                zl2.f46225c |= 1;
                zl2.f46226d = a13;
                CL cl3 = a11.f45665b;
                GJ.a(cl3);
                String str = cl3.f39191b;
                GJ.c(str, TypedValues.Custom.S_STRING);
                int a14 = c6676by0.f46917a.a(str);
                zl2.f46225c |= 2;
                zl2.f46227e = a14;
                C6409aM c13 = zl2.c();
                if (c13.isInitialized()) {
                    c7242fM.f47944d = c13;
                    c7242fM.f47943c |= 1;
                    z10 = true;
                } else {
                    throw new C6834cv0();
                }
            } else {
                z10 = false;
            }
            OL ol3 = a11.f45666c;
            if (ol3 != null) {
                c7242fM.f47946f = JL.a(ol3, c6676by0);
                c7242fM.f47943c |= 4;
                z10 = true;
            }
            OL ol4 = a11.f45667d;
            if (ol4 != null) {
                c7242fM.f47947g = JL.a(ol4, c6676by0);
                c7242fM.f47943c |= 8;
            } else {
                z11 = z10;
            }
            if (z11 && a11.a() != null) {
                OL a15 = a11.a();
                GJ.a(a15);
                c7242fM.f47945e = JL.a(a15, c6676by0);
                c7242fM.f47943c |= 2;
            }
            if (z11 && (ol2 = a11.f45669f) != null) {
                c7242fM.f47948h = JL.a(ol2, c6676by0);
                c7242fM.f47943c |= 16;
            }
            int i13 = a11.f45664a;
            C9879v90 c9879v902 = C9879v90.f53025v;
            C6173Wy c6173Wy = AbstractC8743oM.f51216e;
            Integer num = (Integer) c9879v902.a(c6173Wy);
            if (num == null || i13 != num.intValue()) {
                c9712u90.a(c6173Wy, Integer.valueOf(a11.f45664a));
            }
            if (z11) {
                C6173Wy c6173Wy2 = AbstractC8743oM.f51215d;
                C7409gM c14 = c7242fM.c();
                if (c14.isInitialized()) {
                    c9712u90.a(c6173Wy2, c14);
                } else {
                    throw new C6834cv0();
                }
            }
        }
        String b10 = c9919vQ.b();
        GJ.c(b10, TypedValues.Custom.S_STRING);
        int a16 = c6676by0.f46917a.a(b10);
        int i14 = c9712u90.f52799e;
        c9712u90.f52799e = i14 | 4;
        c9712u90.f52802h = a16;
        int i15 = c9919vQ.f53100a;
        if (i15 != C9879v90.f53025v.f53029e) {
            c9712u90.f52799e = i14 | 5;
            c9712u90.f52800f = i15;
        }
        int i16 = c9919vQ.f53103d.f53499a;
        int i17 = c9712u90.f52799e;
        c9712u90.f52799e = i17 | 2048;
        c9712u90.f52811q = i16;
        C10086wQ c10086wQ = c9919vQ.f53104e;
        if (c10086wQ != null) {
            int i18 = c10086wQ.f53499a;
            c9712u90.f52799e = i17 | GLES30.GL_COLOR;
            c9712u90.f52812r = i18;
        }
        return c9712u90;
    }

    public static final Y90 a(C6676by0 c6676by0, EQ eq) {
        Z90 z90 = Z90.f46173m;
        Y90 y90 = new Y90();
        y90.f45946h = a(c6676by0, eq.a()).a();
        y90.f45943e |= 4;
        C10420yQ b10 = eq.b();
        if (b10 != null) {
            y90.f45948j = a(c6676by0, b10).a();
            y90.f45943e |= 16;
        }
        Iterator<E> it = c6676by0.f46919c.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
        }
        int i10 = eq.f39849a;
        if (i10 != Z90.f46173m.f46177e) {
            y90.f45943e |= 1;
            y90.f45944f = i10;
        }
        String str = eq.f39850b;
        GJ.c(str, TypedValues.Custom.S_STRING);
        int a10 = c6676by0.f46917a.a(str);
        y90.f45943e |= 2;
        y90.f45945g = a10;
        return y90;
    }

    public static final O90 a(C6676by0 c6676by0, C10587zQ c10587zQ) {
        P90 p90 = P90.f43135p;
        O90 o90 = new O90();
        List<BQ> c10 = c10587zQ.c();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(c10));
        Iterator<BQ> it = c10.iterator();
        while (it.hasNext()) {
            T90 c11 = a(c6676by0, it.next()).c();
            if (c11.isInitialized()) {
                arrayList.add(c11);
            } else {
                throw new C6834cv0();
            }
        }
        if ((o90.f42798e & 4) != 4) {
            o90.f42801h = new ArrayList(o90.f42801h);
            o90.f42798e |= 4;
        }
        AbstractC5827Qy.a(arrayList, o90.f42801h);
        C10420yQ c10420yQ = c10587zQ.f54377d;
        if (c10420yQ != null) {
            o90.f42802i = a(c6676by0, c10420yQ).a();
            o90.f42798e |= 8;
            C10420yQ c10420yQ2 = c10587zQ.f54378e;
            if (c10420yQ2 != null) {
                o90.f42804k = a(c6676by0, c10420yQ2).a();
                o90.f42798e |= 32;
                List<GP> a10 = c10587zQ.a();
                ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(a10));
                Iterator<GP> it2 = a10.iterator();
                while (it2.hasNext()) {
                    O80 c12 = AbstractC6843cy0.a(it2.next(), c6676by0.f46917a).c();
                    if (c12.isInitialized()) {
                        arrayList2.add(c12);
                    } else {
                        throw new C6834cv0();
                    }
                }
                if ((o90.f42798e & 128) != 128) {
                    o90.f42806m = new ArrayList(o90.f42806m);
                    o90.f42798e |= 128;
                }
                AbstractC5827Qy.a(arrayList2, o90.f42806m);
                ArrayList arrayList3 = c10587zQ.f54380g;
                ArrayList arrayList4 = new ArrayList();
                int size = arrayList3.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList3.get(i10);
                    i10++;
                    Integer a11 = a(c6676by0, (HQ) obj);
                    if (a11 != null) {
                        arrayList4.add(a11);
                    }
                }
                if ((o90.f42798e & 256) != 256) {
                    o90.f42807n = new ArrayList(o90.f42807n);
                    o90.f42798e |= 256;
                }
                AbstractC5827Qy.a(arrayList4, o90.f42807n);
                Iterator<E> it3 = c6676by0.f46919c.iterator();
                while (it3.hasNext()) {
                    ((JL) ((InterfaceC10432yW) it3.next())).getClass();
                }
                int i11 = c10587zQ.f54374a;
                if (i11 != P90.f43135p.f43139e) {
                    o90.f42798e |= 1;
                    o90.f42799f = i11;
                }
                String b10 = c10587zQ.b();
                GJ.c(b10, TypedValues.Custom.S_STRING);
                int a12 = c6676by0.f46917a.a(b10);
                o90.f42798e |= 2;
                o90.f42800g = a12;
                return o90;
            }
            GJ.a("expandedType");
            throw null;
        }
        GJ.a("underlyingType");
        throw null;
    }

    public static final C7833iv0 a(C6605ba0 c6605ba0, int i10) {
        GJ.a(c6605ba0);
        c6605ba0.f46790c |= 1;
        c6605ba0.f46791d = i10;
        return C7833iv0.f49115a;
    }

    public static final C8043k90 a(C6676by0 c6676by0, C7916jQ c7916jQ) {
        C8043k90 c8043k90 = C8043k90.f49495m;
        C7711i90 c7711i90 = new C7711i90();
        int i10 = c7916jQ.f49228a;
        if (i10 != c8043k90.f49499d) {
            c7711i90.f48856c |= 1;
            c7711i90.f48857d = i10;
        }
        Integer num = c7916jQ.f49229b;
        if (num != null) {
            int intValue = num.intValue();
            c7711i90.f48856c |= 2;
            c7711i90.f48858e = intValue;
        }
        C6917dQ c6917dQ = c7916jQ.f49230c;
        if (c6917dQ != null) {
            Boolean bool = c6917dQ.f47402a;
            if (GJ.a(bool, Boolean.TRUE)) {
                EnumC7876j90 enumC7876j90 = EnumC7876j90.TRUE;
                c7711i90.f48856c |= 4;
                c7711i90.f48859f = enumC7876j90;
            } else if (GJ.a(bool, Boolean.FALSE)) {
                EnumC7876j90 enumC7876j902 = EnumC7876j90.FALSE;
                c7711i90.f48856c |= 4;
                c7711i90.f48859f = enumC7876j902;
            } else if (bool == null) {
                EnumC7876j90 enumC7876j903 = EnumC7876j90.NULL;
                c7711i90.f48856c |= 4;
                c7711i90.f48859f = enumC7876j903;
            } else {
                throw new IllegalArgumentException("Only true, false or null constant values are allowed for effects (was=" + ((Object) bool) + ')');
            }
        }
        C10420yQ c10420yQ = c7916jQ.f49231d;
        if (c10420yQ != null) {
            c7711i90.f48860g = a(c6676by0, c10420yQ).a();
            c7711i90.f48856c |= 8;
        }
        ArrayList arrayList = c7916jQ.f49232e;
        ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(arrayList));
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            arrayList2.add(a(c6676by0, (C7916jQ) obj));
        }
        if ((c7711i90.f48856c & 32) != 32) {
            c7711i90.f48862i = new ArrayList(c7711i90.f48862i);
            c7711i90.f48856c |= 32;
        }
        AbstractC5827Qy.a(arrayList2, c7711i90.f48862i);
        ArrayList arrayList3 = c7916jQ.f49233f;
        ArrayList arrayList4 = new ArrayList(AbstractC6785cf.a(arrayList3));
        int size2 = arrayList3.size();
        while (i11 < size2) {
            Object obj2 = arrayList3.get(i11);
            i11++;
            arrayList4.add(a(c6676by0, (C7916jQ) obj2));
        }
        if ((c7711i90.f48856c & 64) != 64) {
            c7711i90.f48863j = new ArrayList(c7711i90.f48863j);
            c7711i90.f48856c |= 64;
        }
        AbstractC5827Qy.a(arrayList4, c7711i90.f48863j);
        C8043k90 c10 = c7711i90.c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    public static final Integer a(C6676by0 c6676by0, HQ hq) {
        EnumC6938da0 enumC6938da0;
        EnumC6771ca0 enumC6771ca0;
        int i10;
        int i11 = hq.f40755a;
        if (i11 != 0) {
            int i12 = hq.f40756b;
            if (i12 != 0) {
                Integer num = hq.f40757c;
                String str = hq.f40758d;
                C7104ea0 c7104ea0 = C7104ea0.f47709l;
                final C6605ba0 c6605ba0 = new C6605ba0();
                int b10 = AbstractC4291c.b(i11);
                if (b10 == 0) {
                    enumC6938da0 = EnumC6938da0.LANGUAGE_VERSION;
                } else if (b10 == 1) {
                    enumC6938da0 = EnumC6938da0.COMPILER_VERSION;
                } else {
                    if (b10 != 2) {
                        if (b10 == 3) {
                            return null;
                        }
                        throw new C00();
                    }
                    enumC6938da0 = EnumC6938da0.API_VERSION;
                }
                if (enumC6938da0 != c7104ea0.f47718i) {
                    c6605ba0.f46790c |= 32;
                    c6605ba0.f46796i = enumC6938da0;
                }
                int b11 = AbstractC4291c.b(i12);
                if (b11 == 0) {
                    enumC6771ca0 = EnumC6771ca0.f47089c;
                } else if (b11 == 1) {
                    enumC6771ca0 = EnumC6771ca0.f47090d;
                } else if (b11 == 2) {
                    enumC6771ca0 = EnumC6771ca0.f47091e;
                } else {
                    throw new C00();
                }
                if (enumC6771ca0 != c7104ea0.f47715f) {
                    c6605ba0.f46790c |= 4;
                    c6605ba0.f46793f = enumC6771ca0;
                }
                if (num != null) {
                    int intValue = num.intValue();
                    c6605ba0.f46790c |= 8;
                    c6605ba0.f46794g = intValue;
                }
                if (str != null) {
                    c6676by0.getClass();
                    int a10 = c6676by0.f46917a.a(str);
                    c6605ba0.f46790c |= 16;
                    c6605ba0.f46795h = a10;
                }
                GQ gq = hq.f40759e;
                if (gq != null) {
                    int i13 = gq.f40479a;
                    int i14 = gq.f40480b;
                    int i15 = gq.f40481c;
                    C6227Xw0 c6227Xw0 = new C6227Xw0(i13, i14, i15);
                    InterfaceC8676ny interfaceC8676ny = new InterfaceC8676ny() {
                        @Override
                        public final Object a(Object obj) {
                            return AbstractC7176ey0.a(C6605ba0.this, ((Integer) obj).intValue());
                        }
                    };
                    InterfaceC8676ny interfaceC8676ny2 = new InterfaceC8676ny() {
                        @Override
                        public final Object a(Object obj) {
                            return AbstractC7176ey0.b(C6605ba0.this, ((Integer) obj).intValue());
                        }
                    };
                    GJ.c(interfaceC8676ny, "writeVersion");
                    GJ.c(interfaceC8676ny2, "writeVersionFull");
                    if (!c6227Xw0.equals(C6227Xw0.f45870d)) {
                        if (i13 <= 7 && i14 <= 15 && i15 <= 127) {
                            interfaceC8676ny.a(Integer.valueOf((i15 << 7) | i13 | (i14 << 3)));
                        } else {
                            interfaceC8676ny2.a(Integer.valueOf((i15 << 16) | i13 | (i14 << 8)));
                        }
                    }
                    YY yy = c6676by0.f46918b;
                    yy.getClass();
                    C10239xJ c10239xJ = yy.f46010a;
                    C9991vr0 c9991vr0 = new C9991vr0(c6605ba0);
                    Integer num2 = (Integer) c10239xJ.f53733b.get(c9991vr0);
                    if (num2 != null) {
                        i10 = num2.intValue();
                    } else {
                        int size = c10239xJ.f53732a + c10239xJ.f53733b.size();
                        c10239xJ.f53733b.put(c9991vr0, Integer.valueOf(size));
                        i10 = size;
                    }
                    return Integer.valueOf(i10);
                }
                GJ.a("version");
                throw null;
            }
            GJ.a("level");
            throw null;
        }
        GJ.a("kind");
        throw null;
    }
}
