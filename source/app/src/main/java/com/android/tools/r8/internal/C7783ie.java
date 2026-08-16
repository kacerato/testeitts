package com.android.tools.r8.internal;

import android.net.wifi.WifiConfiguration;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b2.AbstractC3834c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class C7783ie {

    public final Q80 f49002a;

    public final C6676by0 f49003b;

    public C7783ie(C9243rM c9243rM) {
        C6049Ut c6049Ut = C6049Ut.f44892b;
        S80 s80 = S80.f44099K;
        this.f49002a = new Q80();
        this.f49003b = new C6676by0(c9243rM, c6049Ut);
    }

    public final void a(C6417aQ c6417aQ) {
        GJ.c(c6417aQ, "kmClass");
        int i10 = c6417aQ.f46513a;
        if (i10 != S80.f44099K.f44113e) {
            Q80 q80 = this.f49002a;
            q80.f43466e |= 1;
            q80.f43467f = i10;
        }
        Q80 q802 = this.f49002a;
        C6676by0 c6676by0 = this.f49003b;
        String g10 = c6417aQ.g();
        c6676by0.getClass();
        GJ.c(g10, "name");
        int a10 = AbstractC6843cy0.a(c6676by0.f46917a, g10);
        int i11 = 2;
        q802.f43466e |= 2;
        q802.f43468g = a10;
        Q80 q803 = this.f49002a;
        List<BQ> k10 = c6417aQ.k();
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(k10));
        Iterator<BQ> it = k10.iterator();
        while (it.hasNext()) {
            T90 c10 = AbstractC7176ey0.a(this.f49003b, it.next()).c();
            if (!c10.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList.add(c10);
        }
        if ((q803.f43466e & 8) != 8) {
            q803.f43470i = new ArrayList(q803.f43470i);
            q803.f43466e |= 8;
        }
        AbstractC5827Qy.a(arrayList, q803.f43470i);
        Q80 q804 = this.f49002a;
        List<C10420yQ> j10 = c6417aQ.j();
        ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(j10));
        Iterator<C10420yQ> it2 = j10.iterator();
        while (it2.hasNext()) {
            arrayList2.add(AbstractC7176ey0.a(this.f49003b, it2.next()).a());
        }
        if ((q804.f43466e & 16) != 16) {
            q804.f43471j = new ArrayList(q804.f43471j);
            q804.f43466e |= 16;
        }
        AbstractC5827Qy.a(arrayList2, q804.f43471j);
        Q80 q805 = this.f49002a;
        List<C7083eQ> e10 = c6417aQ.e();
        ArrayList arrayList3 = new ArrayList(AbstractC6785cf.a(e10));
        for (C7083eQ c7083eQ : e10) {
            C6676by0 c6676by02 = this.f49003b;
            V80 v80 = V80.f44973j;
            U80 u80 = new U80();
            Iterator<EQ> it3 = c7083eQ.a().iterator();
            while (it3.hasNext()) {
                Z90 c11 = AbstractC7176ey0.a(c6676by02, it3.next()).c();
                if (!c11.isInitialized()) {
                    throw new C6834cv0();
                }
                if ((u80.f44679e & i11) != i11) {
                    u80.f44681g = new ArrayList(u80.f44681g);
                    u80.f44679e |= i11;
                }
                u80.f44681g.add(c11);
            }
            ArrayList arrayList4 = c7083eQ.f47676c;
            ArrayList arrayList5 = new ArrayList();
            int size = arrayList4.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList4.get(i12);
                i12++;
                Integer a11 = AbstractC7176ey0.a(c6676by02, (HQ) obj);
                if (a11 != null) {
                    arrayList5.add(a11);
                }
            }
            if ((u80.f44679e & 4) != 4) {
                u80.f44682h = new ArrayList(u80.f44682h);
                u80.f44679e |= 4;
            }
            AbstractC5827Qy.a(arrayList5, u80.f44682h);
            Iterator<E> it4 = c6676by02.f46919c.iterator();
            while (it4.hasNext()) {
                ((JL) ((InterfaceC10432yW) it4.next())).getClass();
                OL ol2 = AL.a(c7083eQ).f54358a;
                if (ol2 != null) {
                    u80.a(AbstractC8743oM.f51212a, JL.a(ol2, c6676by02));
                }
            }
            int i13 = c7083eQ.f47674a;
            if (i13 != V80.f44973j.f44977e) {
                u80.f44679e |= 1;
                u80.f44680f = i13;
            }
            V80 c12 = u80.c();
            if (!c12.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList3.add(c12);
            i11 = 2;
        }
        if ((q805.f43466e & 512) != 512) {
            q805.f43476o = new ArrayList(q805.f43476o);
            q805.f43466e |= 512;
        }
        AbstractC5827Qy.a(arrayList3, q805.f43476o);
        Q80 q806 = this.f49002a;
        ArrayList arrayList6 = c6417aQ.f46517e;
        ArrayList arrayList7 = new ArrayList(AbstractC6785cf.a(arrayList6));
        int size2 = arrayList6.size();
        int i14 = 0;
        while (i14 < size2) {
            Object obj2 = arrayList6.get(i14);
            i14++;
            C8544n90 c13 = AbstractC7176ey0.a(this.f49003b, (C8918pQ) obj2).c();
            if (!c13.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList7.add(c13);
        }
        if ((q806.f43466e & 1024) != 1024) {
            q806.f43477p = new ArrayList(q806.f43477p);
            q806.f43466e |= 1024;
        }
        AbstractC5827Qy.a(arrayList7, q806.f43477p);
        Q80 q807 = this.f49002a;
        ArrayList arrayList8 = c6417aQ.f46518f;
        ArrayList arrayList9 = new ArrayList(AbstractC6785cf.a(arrayList8));
        int size3 = arrayList8.size();
        int i15 = 0;
        while (i15 < size3) {
            Object obj3 = arrayList8.get(i15);
            i15++;
            C9879v90 c14 = AbstractC7176ey0.a(this.f49003b, (C9919vQ) obj3).c();
            if (!c14.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList9.add(c14);
        }
        if ((q807.f43466e & 2048) != 2048) {
            q807.f43478q = new ArrayList(q807.f43478q);
            q807.f43466e |= 2048;
        }
        AbstractC5827Qy.a(arrayList9, q807.f43478q);
        Q80 q808 = this.f49002a;
        ArrayList arrayList10 = c6417aQ.f46519g;
        ArrayList arrayList11 = new ArrayList(AbstractC6785cf.a(arrayList10));
        int size4 = arrayList10.size();
        int i16 = 0;
        while (i16 < size4) {
            Object obj4 = arrayList10.get(i16);
            i16++;
            P90 c15 = AbstractC7176ey0.a(this.f49003b, (C10587zQ) obj4).c();
            if (!c15.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList11.add(c15);
        }
        if ((q808.f43466e & 4096) != 4096) {
            q808.f43479r = new ArrayList(q808.f43479r);
            q808.f43466e |= 4096;
        }
        AbstractC5827Qy.a(arrayList11, q808.f43479r);
        String d10 = c6417aQ.d();
        if (d10 != null) {
            Q80 q809 = this.f49002a;
            C6676by0 c6676by03 = this.f49003b;
            c6676by03.getClass();
            int a12 = c6676by03.f46917a.a(d10);
            q809.f43466e |= 4;
            q809.f43469h = a12;
        }
        for (String str : c6417aQ.h()) {
            Q80 q8010 = this.f49002a;
            C6676by0 c6676by04 = this.f49003b;
            c6676by04.getClass();
            GJ.c(str, TypedValues.Custom.S_STRING);
            int a13 = c6676by04.f46917a.a(str);
            if ((q8010.f43466e & 64) != 64) {
                q8010.f43473l = new ArrayList(q8010.f43473l);
                q8010.f43466e |= 64;
            }
            q8010.f43473l.add(Integer.valueOf(a13));
        }
        for (String str2 : c6417aQ.f()) {
            Q80 q8011 = this.f49002a;
            C7377g90 c7377g90 = C7377g90.f48196h;
            C7210f90 c7210f90 = new C7210f90();
            C6676by0 c6676by05 = this.f49003b;
            c6676by05.getClass();
            GJ.c(str2, TypedValues.Custom.S_STRING);
            int a14 = c6676by05.f46917a.a(str2);
            c7210f90.f47886e |= 1;
            c7210f90.f47887f = a14;
            if ((q8011.f43466e & 8192) != 8192) {
                q8011.f43480s = new ArrayList(q8011.f43480s);
                q8011.f43466e |= 8192;
            }
            List list = q8011.f43480s;
            C7377g90 c7377g902 = new C7377g90(c7210f90);
            int i17 = (c7210f90.f47886e & 1) == 1 ? 1 : 0;
            c7377g902.f48200e = c7210f90.f47887f;
            c7377g902.f48199d = i17;
            if (!c7377g902.isInitialized()) {
                throw new C6834cv0();
            }
            list.add(c7377g902);
        }
        Q80 q8012 = this.f49002a;
        List<String> i18 = c6417aQ.i();
        ArrayList arrayList12 = new ArrayList(AbstractC6785cf.a(i18));
        for (String str3 : i18) {
            C6676by0 c6676by06 = this.f49003b;
            c6676by06.getClass();
            GJ.c(str3, "name");
            arrayList12.add(Integer.valueOf(AbstractC6843cy0.a(c6676by06.f46917a, str3)));
        }
        if ((q8012.f43466e & 16384) != 16384) {
            q8012.f43481t = new ArrayList(q8012.f43481t);
            q8012.f43466e |= 16384;
        }
        AbstractC5827Qy.a(arrayList12, q8012.f43481t);
        String str4 = c6417aQ.f46525m;
        if (str4 != null) {
            Q80 q8013 = this.f49002a;
            C6676by0 c6676by07 = this.f49003b;
            c6676by07.getClass();
            int a15 = c6676by07.f46917a.a(str4);
            q8013.f43466e |= 32768;
            q8013.f43482u = a15;
        }
        C10420yQ c10420yQ = c6417aQ.f46526n;
        if (c10420yQ != null) {
            Q80 q8014 = this.f49002a;
            M90 a16 = AbstractC7176ey0.a(this.f49003b, c10420yQ).a();
            q8014.getClass();
            q8014.f43483v = a16;
            q8014.f43466e |= 65536;
        }
        Q80 q8015 = this.f49002a;
        ArrayList arrayList13 = c6417aQ.f46527o;
        ArrayList arrayList14 = new ArrayList(AbstractC6785cf.a(arrayList13));
        int size5 = arrayList13.size();
        int i19 = 0;
        while (i19 < size5) {
            Object obj5 = arrayList13.get(i19);
            i19++;
            arrayList14.add(AbstractC7176ey0.a(this.f49003b, (C10420yQ) obj5).a());
        }
        if ((q8015.f43466e & 128) != 128) {
            q8015.f43474m = new ArrayList(q8015.f43474m);
            q8015.f43466e |= 128;
        }
        AbstractC5827Qy.a(arrayList14, q8015.f43474m);
        Q80 q8016 = this.f49002a;
        ArrayList arrayList15 = c6417aQ.f46528p;
        ArrayList arrayList16 = new ArrayList();
        int size6 = arrayList15.size();
        int i20 = 0;
        while (i20 < size6) {
            Object obj6 = arrayList15.get(i20);
            i20++;
            Integer a17 = AbstractC7176ey0.a(this.f49003b, (HQ) obj6);
            if (a17 != null) {
                arrayList16.add(a17);
            }
        }
        if ((q8016.f43466e & 4194304) != 4194304) {
            q8016.f43464B = new ArrayList(q8016.f43464B);
            q8016.f43466e |= 4194304;
        }
        AbstractC5827Qy.a(arrayList16, q8016.f43464B);
        for (InterfaceC10432yW interfaceC10432yW : this.f49003b.f46919c) {
            Q80 q8017 = this.f49002a;
            C6676by0 c6676by08 = this.f49003b;
            ((JL) interfaceC10432yW).getClass();
            GJ.c(q8017, WifiConfiguration.Protocol.varName);
            GJ.c(c6676by08, AbstractC3834c.f32824b1);
            C10243xL a18 = AL.a(c6417aQ);
            String str5 = a18.f53739c;
            if (str5 != null) {
            }
            ArrayList arrayList17 = a18.f53737a;
            int size7 = arrayList17.size();
            int i21 = 0;
            while (i21 < size7) {
                Object obj7 = arrayList17.get(i21);
                i21++;
                C6173Wy c6173Wy = AbstractC8743oM.f51221j;
                C9879v90 c16 = AbstractC7176ey0.a(c6676by08, (C9919vQ) obj7).c();
                if (!c16.isInitialized()) {
                    throw new C6834cv0();
                }
                if (c6173Wy.f45590a != q8017.b()) {
                    throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                }
                if (!q8017.f44038d) {
                    q8017.f44037c = q8017.f44037c.m719clone();
                    q8017.f44038d = true;
                }
                q8017.f44037c.a(c6173Wy.f45593d, c6173Wy.b(c16));
            }
            String str6 = a18.f53738b;
            if (str6 != null && !str6.equals(T5.b.f24045b)) {
                q8017.a(AbstractC8743oM.f51220i, Integer.valueOf(c6676by08.f46917a.a(str6)));
            }
            int i22 = a18.f53740d;
            if (i22 != 0) {
                q8017.a(AbstractC8743oM.f51223l, Integer.valueOf(i22));
            }
        }
        C7605ha0 c7605ha0 = (C7605ha0) this.f49003b.f46918b.a();
        if (c7605ha0 != null) {
            Q80 q8018 = this.f49002a;
            q8018.getClass();
            q8018.f43465C = c7605ha0;
            q8018.f43466e |= 8388608;
        }
    }
}
