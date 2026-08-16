package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.function.Predicate;

public final class C6213Xp0 {

    public static final boolean f45829c = true;

    public final ArrayList f45830a;

    public final int f45831b;

    public C6213Xp0(ArrayList arrayList) {
        this.f45830a = arrayList;
        int count = (int) arrayList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C6156Wp0) obj).a();
            }
        }).count();
        this.f45831b = count;
        if (!f45829c && count < 1 && arrayList.size() > 1) {
            throw new AssertionError();
        }
    }

    public static C6213Xp0 a(String str, boolean z10) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        String str2 = "";
        while (true) {
            int indexOf = str.indexOf(37, i10);
            if (indexOf == -1) {
                if (i10 < length) {
                    str2 = str2.concat(str.substring(i10));
                }
                if (!str2.isEmpty() || arrayList.isEmpty()) {
                    arrayList.add(new C6156Wp0(str2));
                }
                return new C6213Xp0(arrayList);
            }
            int i12 = indexOf + 1;
            if (i12 == length) {
                return null;
            }
            String concat = str2.concat(str.substring(i10, indexOf));
            char charAt = str.charAt(i12);
            if (charAt != '%') {
                if (charAt != 'b') {
                    if (charAt != 'd') {
                        if (charAt != 's') {
                            return null;
                        }
                    } else if (!z10) {
                        return null;
                    }
                }
                if (!concat.isEmpty()) {
                    arrayList.add(new C6156Wp0(concat));
                    concat = "";
                }
                arrayList.add(new C6156Wp0(charAt, i11));
                i11++;
            } else {
                concat = concat.concat(ve.j.f121589a);
            }
            str2 = concat;
            i10 = indexOf + 2;
        }
    }
}
