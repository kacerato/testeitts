package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;

public final class C9243rM {

    public final ArrayList f52027a = new ArrayList();

    public final ArrayList f52028b = new ArrayList();

    public final HashMap f52029c = new HashMap();

    public final LinkedHashSet f52030d = new LinkedHashSet();

    public final int a(String str) {
        GJ.c(str, TypedValues.Custom.S_STRING);
        HashMap hashMap = this.f52029c;
        Object obj = hashMap.get(str);
        if (obj == null) {
            int size = this.f52027a.size();
            this.f52027a.add(str);
            ArrayList arrayList = this.f52028b;
            GJ.c(arrayList, "<this>");
            C8075kM c8075kM = (C8075kM) (arrayList.isEmpty() ? null : J6.a(arrayList, 1));
            if (c8075kM != null) {
                int i10 = c8075kM.f49594c;
                if ((i10 & 2) != 2 && (i10 & 8) != 8 && c8075kM.f49599h.size() == 0 && c8075kM.f49600i.size() == 0) {
                    int i11 = c8075kM.f49595d + 1;
                    c8075kM.f49594c = 1 | c8075kM.f49594c;
                    c8075kM.f49595d = i11;
                    obj = Integer.valueOf(size);
                    hashMap.put(str, obj);
                }
            }
            ArrayList arrayList2 = this.f52028b;
            C8409mM c8409mM = C8409mM.f50264n;
            arrayList2.add(new C8075kM());
            obj = Integer.valueOf(size);
            hashMap.put(str, obj);
        }
        return ((Number) obj).intValue();
    }

    public final int a(String str, boolean z10) {
        GJ.c(str, "className");
        Integer num = (Integer) this.f52029c.get(str);
        if (num != null) {
            int intValue = num.intValue();
            if (z10 == this.f52030d.contains(Integer.valueOf(intValue))) {
                return intValue;
            }
        }
        int size = this.f52027a.size();
        if (z10) {
            this.f52030d.add(Integer.valueOf(size));
        }
        C8409mM c8409mM = C8409mM.f50264n;
        C8075kM c8075kM = new C8075kM();
        if (!z10 && AbstractC5349Iq0.a(str, '$', 2) < 0) {
            Integer num2 = (Integer) VL.f45023e.get(str);
            if (num2 != null) {
                int intValue2 = num2.intValue();
                c8075kM.f49594c = 2 | c8075kM.f49594c;
                c8075kM.f49596e = intValue2;
                this.f52027a.add("");
            } else {
                EnumC8242lM enumC8242lM = EnumC8242lM.f49956e;
                c8075kM.f49594c |= 8;
                c8075kM.f49598g = enumC8242lM;
                this.f52027a.add("L" + AbstractC5349Iq0.a(str, '.', '$') + ';');
            }
        } else {
            this.f52027a.add(str);
        }
        this.f52028b.add(c8075kM);
        this.f52029c.put(str, Integer.valueOf(size));
        return size;
    }
}
