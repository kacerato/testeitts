package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public class C8051kC {

    public Comparator f49550a;

    public Map.Entry[] f49551b;

    public int f49552c = 0;

    public boolean f49553d = false;

    public C8051kC(int i10) {
        this.f49551b = new Map.Entry[i10];
    }

    public C8051kC a(Object obj, Object obj2) {
        int i10 = this.f49552c + 1;
        Map.Entry[] entryArr = this.f49551b;
        if (i10 > entryArr.length) {
            this.f49551b = (Map.Entry[]) Arrays.copyOf(entryArr, WB.a(entryArr.length, i10));
            this.f49553d = false;
        }
        C9053qC c9053qC = new C9053qC(obj, obj2);
        Map.Entry[] entryArr2 = this.f49551b;
        int i11 = this.f49552c;
        this.f49552c = i11 + 1;
        entryArr2[i11] = c9053qC;
        return this;
    }

    public AbstractC8552nC b() {
        Map.Entry[] entryArr;
        int i10 = this.f49552c;
        if (i10 == 0) {
            return C6620bf0.f46817i;
        }
        if (i10 == 1) {
            Map.Entry entry = this.f49551b[0];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            return new C5862Rm0(entry2.getKey(), entry2.getValue());
        }
        if (this.f49550a == null) {
            entryArr = this.f49551b;
        } else {
            if (this.f49553d) {
                this.f49551b = (Map.Entry[]) Arrays.copyOf(this.f49551b, i10);
            }
            Map.Entry[] entryArr2 = this.f49551b;
            Comparator comparator = this.f49550a;
            D40 c8452mf = comparator instanceof D40 ? (D40) comparator : new C8452mf(comparator);
            C8260lV c8260lV = EnumC8427mV.f50317b;
            c8452mf.getClass();
            Arrays.sort(entryArr2, 0, i10, new V7(c8260lV, c8452mf));
            entryArr = entryArr2;
        }
        this.f49553d = true;
        return C6620bf0.a(i10, entryArr);
    }

    public void a(Map.Entry entry) {
        a(entry.getKey(), entry.getValue());
    }

    public C8051kC a(Map map) {
        return a(map.entrySet());
    }

    public C8051kC a(Set set) {
        if (set instanceof Collection) {
            int size = set.size() + this.f49552c;
            Map.Entry[] entryArr = this.f49551b;
            if (size > entryArr.length) {
                this.f49551b = (Map.Entry[]) Arrays.copyOf(entryArr, WB.a(entryArr.length, size));
                this.f49553d = false;
            }
        }
        Iterator<E> it = set.iterator();
        while (it.hasNext()) {
            a((Map.Entry) it.next());
        }
        return this;
    }

    public AbstractC8552nC a() {
        return b();
    }
}
