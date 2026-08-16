package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public abstract class AbstractC9762uV {
    public static int a(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Map a(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return C6106Vt.f45199b;
        }
        int i10 = 0;
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(a(arrayList.size()));
            int size2 = arrayList.size();
            while (i10 < size2) {
                Object obj = arrayList.get(i10);
                i10++;
                C8866p50 c8866p50 = (C8866p50) obj;
                linkedHashMap.put(c8866p50.f51436b, c8866p50.f51437c);
            }
            return linkedHashMap;
        }
        C8866p50 c8866p502 = (C8866p50) arrayList.get(0);
        GJ.c(c8866p502, "pair");
        Map singletonMap = Collections.singletonMap(c8866p502.f51436b, c8866p502.f51437c);
        GJ.b(singletonMap, "singletonMap(...)");
        return singletonMap;
    }
}
