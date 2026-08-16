package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class VL {

    public static final List f45022d;

    public static final LinkedHashMap f45023e;

    public final String[] f45024a;

    public final Set f45025b;

    public final ArrayList f45026c;

    static {
        String a10 = AbstractC6303Ze.a(AbstractC6619bf.a('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);
        List a11 = AbstractC6619bf.a(AbstractC9349s.a(a10, "/Any"), AbstractC9349s.a(a10, "/Nothing"), AbstractC9349s.a(a10, "/Unit"), AbstractC9349s.a(a10, "/Throwable"), AbstractC9349s.a(a10, "/Number"), AbstractC9349s.a(a10, "/Byte"), AbstractC9349s.a(a10, "/Double"), AbstractC9349s.a(a10, "/Float"), AbstractC9349s.a(a10, "/Int"), AbstractC9349s.a(a10, "/Long"), AbstractC9349s.a(a10, "/Short"), AbstractC9349s.a(a10, "/Boolean"), AbstractC9349s.a(a10, "/Char"), AbstractC9349s.a(a10, "/CharSequence"), AbstractC9349s.a(a10, "/String"), AbstractC9349s.a(a10, "/Comparable"), AbstractC9349s.a(a10, "/Enum"), AbstractC9349s.a(a10, "/Array"), AbstractC9349s.a(a10, "/ByteArray"), AbstractC9349s.a(a10, "/DoubleArray"), AbstractC9349s.a(a10, "/FloatArray"), AbstractC9349s.a(a10, "/IntArray"), AbstractC9349s.a(a10, "/LongArray"), AbstractC9349s.a(a10, "/ShortArray"), AbstractC9349s.a(a10, "/BooleanArray"), AbstractC9349s.a(a10, "/CharArray"), AbstractC9349s.a(a10, "/Cloneable"), AbstractC9349s.a(a10, "/Annotation"), AbstractC9349s.a(a10, "/collections/Iterable"), AbstractC9349s.a(a10, "/collections/MutableIterable"), AbstractC9349s.a(a10, "/collections/Collection"), AbstractC9349s.a(a10, "/collections/MutableCollection"), AbstractC9349s.a(a10, "/collections/List"), AbstractC9349s.a(a10, "/collections/MutableList"), AbstractC9349s.a(a10, "/collections/Set"), AbstractC9349s.a(a10, "/collections/MutableSet"), AbstractC9349s.a(a10, "/collections/Map"), AbstractC9349s.a(a10, "/collections/MutableMap"), AbstractC9349s.a(a10, "/collections/Map.Entry"), AbstractC9349s.a(a10, "/collections/MutableMap.MutableEntry"), AbstractC9349s.a(a10, "/collections/Iterator"), AbstractC9349s.a(a10, "/collections/MutableIterator"), AbstractC9349s.a(a10, "/collections/ListIterator"), AbstractC9349s.a(a10, "/collections/MutableListIterator"));
        f45022d = a11;
        C8889pD a12 = AbstractC6303Ze.a(a11);
        int a13 = AbstractC9762uV.a(AbstractC6785cf.a(a12));
        if (a13 < 16) {
            a13 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(a13);
        Iterator it = a12.iterator();
        while (true) {
            C9056qD c9056qD = (C9056qD) it;
            if (!c9056qD.f51738b.hasNext()) {
                f45023e = linkedHashMap;
                return;
            } else {
                C8722oD c8722oD = (C8722oD) c9056qD.next();
                linkedHashMap.put((String) c8722oD.f51195b, Integer.valueOf(c8722oD.f51194a));
            }
        }
    }

    public VL(C8576nM c8576nM, String[] strArr) {
        Set set;
        List list = c8576nM.f50934d;
        if (list.isEmpty()) {
            set = C6277Yt.f46102b;
        } else {
            int size = list.size();
            if (size == 0) {
                set = C6277Yt.f46102b;
            } else if (size != 1) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC9762uV.a(list.size()));
                Iterator<E> it = list.iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(it.next());
                }
                set = linkedHashSet;
            } else {
                set = Collections.singleton(list.get(0));
                GJ.b(set, "singleton(...)");
            }
        }
        List<C8409mM> list2 = c8576nM.f50933c;
        GJ.b(list2, "getRecordList(...)");
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(list2.size());
        for (C8409mM c8409mM : list2) {
            int i10 = c8409mM.f50268d;
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(c8409mM);
            }
        }
        arrayList.trimToSize();
        this.f45024a = strArr;
        this.f45025b = set;
        this.f45026c = arrayList;
    }

    public final String a(int i10) {
        String str;
        C8409mM c8409mM = (C8409mM) this.f45026c.get(i10);
        int i11 = c8409mM.f50267c;
        if ((i11 & 4) == 4) {
            Object obj = c8409mM.f50270f;
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                AbstractC8206l8 abstractC8206l8 = (AbstractC8206l8) obj;
                String i12 = abstractC8206l8.i();
                if (abstractC8206l8.c()) {
                    c8409mM.f50270f = i12;
                }
                str = i12;
            }
        } else {
            if ((i11 & 2) == 2) {
                List list = f45022d;
                int size = list.size();
                int i13 = c8409mM.f50269e;
                if (i13 >= 0 && i13 < size) {
                    str = (String) list.get(i13);
                }
            }
            str = this.f45024a[i10];
        }
        if (c8409mM.f50272h.size() >= 2) {
            List list2 = c8409mM.f50272h;
            GJ.a(list2);
            Integer num = (Integer) list2.get(0);
            Integer num2 = (Integer) list2.get(1);
            if (num.intValue() >= 0 && num.intValue() <= num2.intValue() && num2.intValue() <= str.length()) {
                str = str.substring(num.intValue(), num2.intValue());
                GJ.b(str, "substring(...)");
            }
        }
        if (c8409mM.f50274j.size() >= 2) {
            List list3 = c8409mM.f50274j;
            GJ.a(list3);
            Integer num3 = (Integer) list3.get(0);
            Integer num4 = (Integer) list3.get(1);
            GJ.a((Object) str);
            str = AbstractC5349Iq0.a(str, (char) num3.intValue(), (char) num4.intValue());
        }
        EnumC8242lM enumC8242lM = c8409mM.f50271g;
        if (enumC8242lM == null) {
            enumC8242lM = EnumC8242lM.f49954c;
        }
        int ordinal = enumC8242lM.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                GJ.a((Object) str);
                str = AbstractC5349Iq0.a(str, '$', '.');
            } else {
                if (ordinal != 2) {
                    throw new C00();
                }
                if (str.length() >= 2) {
                    str = str.substring(1, str.length() - 1);
                    GJ.b(str, "substring(...)");
                }
                str = AbstractC5349Iq0.a(str, '$', '.');
            }
        }
        GJ.a((Object) str);
        return str;
    }
}
