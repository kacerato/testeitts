package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class AbstractC5905Sf0 {
    public static final boolean a(C7789ig0 c7789ig0, String str) {
        GJ.c(c7789ig0, "<this>");
        GJ.c(str, "path");
        List b10 = AbstractC5349Iq0.b(str, new char[]{'/'}, 3);
        String str2 = (String) b10.get(1);
        String str3 = (String) b10.get(2);
        EnumC5789Qf0 a10 = EnumC5789Qf0.a(str2);
        if (a10 == null) {
            return true;
        }
        String c10 = AbstractC5349Iq0.c(str3, '.');
        List list = (List) AbstractC6171Wx.f45588b.get(a10);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        GJ.b(list, "getRelatedResourceTypes(folderType)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((EnumC8289lg0) obj) != EnumC8289lg0.ID) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj2 = arrayList.get(i10);
            i10++;
            EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) obj2;
            GJ.b(enumC8289lg0, "it");
            arrayList2.addAll(c7789ig0.a(enumC8289lg0, c10));
        }
        if (arrayList2.isEmpty()) {
            return false;
        }
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj3 = arrayList2.get(i11);
            i11++;
            if (((C8623ng0) obj3).b()) {
                return true;
            }
        }
        return false;
    }
}
