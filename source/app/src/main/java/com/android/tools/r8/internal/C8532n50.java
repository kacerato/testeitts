package com.android.tools.r8.internal;

import android.net.wifi.WifiConfiguration;
import b2.AbstractC3834c;
import java.util.ArrayList;

public final class C8532n50 {

    public final C9211r90 f50503a;

    public final C6676by0 f50504b;

    public C8532n50(C9243rM c9243rM) {
        C6049Ut c6049Ut = C6049Ut.f44892b;
        C9378s90 c9378s90 = C9378s90.f52295l;
        this.f50503a = new C9211r90();
        this.f50504b = new C6676by0(c9243rM, c6049Ut);
    }

    public final void a(C9418sQ c9418sQ) {
        GJ.c(c9418sQ, "kmPackage");
        C9211r90 c9211r90 = this.f50503a;
        ArrayList arrayList = c9418sQ.f52354a;
        ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(arrayList));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C8544n90 c10 = AbstractC7176ey0.a(this.f50504b, (C8918pQ) obj).c();
            if (!c10.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList2.add(c10);
        }
        if ((c9211r90.f51992e & 1) != 1) {
            c9211r90.f51993f = new ArrayList(c9211r90.f51993f);
            c9211r90.f51992e |= 1;
        }
        AbstractC5827Qy.a(arrayList2, c9211r90.f51993f);
        C9211r90 c9211r902 = this.f50503a;
        ArrayList arrayList3 = c9418sQ.f52355b;
        ArrayList arrayList4 = new ArrayList(AbstractC6785cf.a(arrayList3));
        int size2 = arrayList3.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList3.get(i11);
            i11++;
            C9879v90 c11 = AbstractC7176ey0.a(this.f50504b, (C9919vQ) obj2).c();
            if (!c11.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList4.add(c11);
        }
        if ((c9211r902.f51992e & 2) != 2) {
            c9211r902.f51994g = new ArrayList(c9211r902.f51994g);
            c9211r902.f51992e |= 2;
        }
        AbstractC5827Qy.a(arrayList4, c9211r902.f51994g);
        C9211r90 c9211r903 = this.f50503a;
        ArrayList arrayList5 = c9418sQ.f52356c;
        ArrayList arrayList6 = new ArrayList(AbstractC6785cf.a(arrayList5));
        int size3 = arrayList5.size();
        int i12 = 0;
        while (i12 < size3) {
            Object obj3 = arrayList5.get(i12);
            i12++;
            P90 c12 = AbstractC7176ey0.a(this.f50504b, (C10587zQ) obj3).c();
            if (!c12.isInitialized()) {
                throw new C6834cv0();
            }
            arrayList6.add(c12);
        }
        if ((c9211r903.f51992e & 4) != 4) {
            c9211r903.f51995h = new ArrayList(c9211r903.f51995h);
            c9211r903.f51992e |= 4;
        }
        AbstractC5827Qy.a(arrayList6, c9211r903.f51995h);
        for (InterfaceC10432yW interfaceC10432yW : this.f50504b.f46919c) {
            C9211r90 c9211r904 = this.f50503a;
            C6676by0 c6676by0 = this.f50504b;
            ((JL) interfaceC10432yW).getClass();
            GJ.c(c9211r904, WifiConfiguration.Protocol.varName);
            GJ.c(c6676by0, AbstractC3834c.f32824b1);
            WL a10 = AL.a(c9418sQ);
            ArrayList arrayList7 = a10.f45370a;
            int size4 = arrayList7.size();
            int i13 = 0;
            while (i13 < size4) {
                Object obj4 = arrayList7.get(i13);
                i13++;
                C6173Wy c6173Wy = AbstractC8743oM.f51225n;
                C9879v90 c13 = AbstractC7176ey0.a(c6676by0, (C9919vQ) obj4).c();
                if (!c13.isInitialized()) {
                    throw new C6834cv0();
                }
                if (c6173Wy.f45590a != c9211r904.b()) {
                    throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                }
                if (!c9211r904.f44038d) {
                    c9211r904.f44037c = c9211r904.f44037c.m719clone();
                    c9211r904.f44038d = true;
                }
                c9211r904.f44037c.a(c6173Wy.f45593d, c6173Wy.b(c13));
            }
            String str = a10.f45371b;
            if (str != null && !str.equals(T5.b.f24045b)) {
                c9211r904.a(AbstractC8743oM.f51224m, Integer.valueOf(c6676by0.f46917a.a(str)));
            }
        }
        C7605ha0 c7605ha0 = (C7605ha0) this.f50504b.f46918b.a();
        if (c7605ha0 != null) {
            C9211r90 c9211r905 = this.f50503a;
            c9211r905.getClass();
            c9211r905.f51997j = c7605ha0;
            c9211r905.f51992e |= 16;
        }
    }
}
