package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class UB extends C8051kC {
    public UB() {
        super(4);
    }

    @Override
    public final C8051kC a(Object obj, Object obj2) {
        super.a(obj, obj2);
        return this;
    }

    @Override
    public final VB b() {
        int i10;
        int i11 = this.f49552c;
        if (i11 == 0) {
            return C6133We0.f45492l;
        }
        if (i11 == 1) {
            Map.Entry entry = this.f49551b[0];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            return new C5862Rm0(entry2.getKey(), entry2.getValue());
        }
        if (this.f49550a != null) {
            if (this.f49553d) {
                this.f49551b = (Map.Entry[]) Arrays.copyOf(this.f49551b, i11);
            }
            Map.Entry[] entryArr = this.f49551b;
            int i12 = this.f49552c;
            Comparator comparator = this.f49550a;
            D40 c8452mf = comparator instanceof D40 ? (D40) comparator : new C8452mf(comparator);
            C8260lV c8260lV = EnumC8427mV.f50317b;
            c8452mf.getClass();
            Arrays.sort(entryArr, 0, i12, new V7(c8260lV, c8452mf));
        }
        this.f49553d = true;
        int i13 = this.f49552c;
        Map.Entry[] entryArr2 = this.f49551b;
        C6133We0 c6133We0 = C6133We0.f45492l;
        U60.b(i13, entryArr2.length);
        int a10 = AbstractC9047qA.a(i13, 1.2d);
        int i14 = a10 - 1;
        C9053qC[] c9053qCArr = new C9053qC[a10];
        C9053qC[] c9053qCArr2 = new C9053qC[a10];
        Map.Entry[] entryArr3 = i13 == entryArr2.length ? entryArr2 : new C9053qC[i13];
        int i15 = 0;
        int i16 = 0;
        while (i15 < i13) {
            Map.Entry entry3 = entryArr2[i15];
            Objects.requireNonNull(entry3);
            Map.Entry entry4 = entry3;
            Object key = entry4.getKey();
            Object value = entry4.getValue();
            AbstractC5496Le.a(key, value);
            int hashCode = key.hashCode();
            int hashCode2 = value.hashCode();
            int a11 = AbstractC9047qA.a(hashCode) & i14;
            int a12 = AbstractC9047qA.a(hashCode2) & i14;
            C9053qC c9053qC = c9053qCArr[a11];
            C9053qC c9053qC2 = c9053qCArr2[a12];
            try {
                C6620bf0.a(key, value, c9053qC);
                C9053qC c9053qC3 = c9053qC2;
                int i17 = 0;
                while (c9053qC3 != null) {
                    int i18 = i14;
                    int i19 = i13;
                    if (value.equals(c9053qC3.f46191c)) {
                        throw AbstractC8552nC.a("value", entry4, c9053qC3);
                    }
                    try {
                        int i20 = i17 + 1;
                        if (i20 > 8) {
                            throw new C6247Ye0();
                        }
                        c9053qC3 = c9053qC3.c();
                        i17 = i20;
                        i14 = i18;
                        i13 = i19;
                    } catch (C6247Ye0 unused) {
                        i10 = i19;
                        return SK.a(i10, entryArr2);
                    }
                }
                int i21 = i13;
                int i22 = i14;
                C9053qC a13 = (c9053qC2 == null && c9053qC == null) ? C6620bf0.a(entry4, key, value) : new C8719oC(key, value, c9053qC, c9053qC2);
                c9053qCArr[a11] = a13;
                c9053qCArr2[a12] = a13;
                entryArr3[i15] = a13;
                i16 += hashCode ^ hashCode2;
                i15++;
                i14 = i22;
                i13 = i21;
            } catch (C6247Ye0 unused2) {
                i10 = i13;
            }
        }
        return new C6133We0(c9053qCArr, c9053qCArr2, entryArr3, i14, i16);
    }

    public final void a(String str, String str2) {
        super.a((Object) str, (Object) str2);
    }

    @Override
    public final C8051kC a(Set set) {
        super.a(set);
        return this;
    }

    @Override
    public final AbstractC8552nC a() {
        return b();
    }

    @Override
    public final void a(Map.Entry entry) {
        super.a(entry.getKey(), entry.getValue());
    }

    @Override
    public final C8051kC a(Map map) {
        super.a(map.entrySet());
        return this;
    }
}
