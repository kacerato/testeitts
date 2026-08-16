package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC4987Cj0 {
    public static final String a(String str) {
        GJ.c(str, "resourceName");
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt == ':' || charAt == '.' || charAt == '-') {
                char[] cArr = new char[str.length()];
                str.getChars(0, i10, cArr, 0);
                cArr[i10] = '_';
                while (true) {
                    i10++;
                    if (i10 < length) {
                        char charAt2 = str.charAt(i10);
                        if (charAt2 == ':' || charAt2 == '.' || charAt2 == '-') {
                            charAt2 = '_';
                        }
                        cArr[i10] = charAt2;
                    } else {
                        return new String(cArr);
                    }
                }
            } else {
                i10++;
            }
        }
        return str;
    }

    public static final List a(List list, Consumer consumer) {
        GJ.c(consumer, "rootsConsumer");
        C10301xj0 c10301xj0 = new C10301xj0(consumer);
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            C8623ng0 c8623ng0 = (C8623ng0) obj;
            if (!c8623ng0.b()) {
                int i10 = c8623ng0.f51021b;
                if ((i10 & 8) == 0 && (i10 & 4) == 0) {
                }
            }
            arrayList.add(obj);
        }
        c10301xj0.a(arrayList);
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj2 = arrayList.get(i11);
            i11++;
            a(newSetFromMap, (C8623ng0) obj2, null);
        }
        return AbstractC8972pl0.d(new C6839cx(new C6839cx(new C6839cx(new C6839cx(new C7619hf(list), false, C10468yj0.f54126b), true, C10635zj0.f54475b), true, C4871Aj0.f38703b), false, C4929Bj0.f38986b));
    }

    public static final void a(Set set, C8623ng0 c8623ng0, C8623ng0 c8623ng02) {
        if (c8623ng02 != null && c8623ng02.f51027h != null) {
            C8790og0 c8790og0 = new C8790og0(c8623ng02);
            if (c8623ng0.f51027h == null) {
                c8623ng0.f51027h = new HashSet();
            }
            c8623ng0.f51027h.add(c8790og0);
        }
        if (set.contains(c8623ng0)) {
            return;
        }
        set.add(c8623ng0);
        c8623ng0.a(true);
        ArrayList arrayList = c8623ng0.f51026g;
        if (arrayList != null) {
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C8623ng0 c8623ng03 = (C8623ng0) obj;
                GJ.b(c8623ng03, "it");
                a(set, c8623ng03, c8623ng0);
            }
        }
    }
}
