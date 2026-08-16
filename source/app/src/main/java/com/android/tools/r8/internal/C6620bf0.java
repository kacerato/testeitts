package com.android.tools.r8.internal;

import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;

public final class C6620bf0 extends AbstractC8552nC {

    public static final C6620bf0 f46817i = new C6620bf0(AbstractC8552nC.f50554e, null, 0);

    public final transient Map.Entry[] f46818f;

    public final transient C9053qC[] f46819g;

    public final transient int f46820h;

    public C6620bf0(Map.Entry[] entryArr, C9053qC[] c9053qCArr, int i10) {
        this.f46818f = entryArr;
        this.f46819g = c9053qCArr;
        this.f46820h = i10;
    }

    public static C9053qC a(Object obj, Object obj2, C9053qC c9053qC) {
        int i10 = 0;
        while (c9053qC != null) {
            if (c9053qC.f46190b.equals(obj)) {
                throw AbstractC8552nC.a("key", c9053qC, obj + "=" + obj2);
            }
            i10++;
            if (i10 <= 8) {
                c9053qC = c9053qC.b();
            } else {
                throw new C6247Ye0();
            }
        }
        return null;
    }

    public static AbstractC8552nC b(int i10, Map.Entry[] entryArr) {
        Map.Entry[] entryArr2 = i10 == entryArr.length ? entryArr : new C9053qC[i10];
        int a10 = AbstractC9047qA.a(i10, 1.2d);
        C9053qC[] c9053qCArr = new C9053qC[a10];
        int i11 = a10 - 1;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            Map.Entry entry = entryArr[i12];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            Object key = entry2.getKey();
            Object value = entry2.getValue();
            AbstractC5496Le.a(key, value);
            int a11 = AbstractC9047qA.a(key.hashCode()) & i11;
            C9053qC c9053qC = c9053qCArr[a11];
            a(key, value, c9053qC);
            C9053qC a12 = c9053qC == null ? a(entry2, key, value) : new C8886pC(key, value, c9053qC);
            c9053qCArr[a11] = a12;
            entryArr2[i12] = a12;
        }
        return new C6620bf0(entryArr2, c9053qCArr, i11);
    }

    @Override
    public final QC e() {
        return new C9219rC(this, this.f46818f);
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        for (Map.Entry entry : this.f46818f) {
            biConsumer.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public final Object get(Object obj) {
        C9053qC[] c9053qCArr = this.f46819g;
        int i10 = this.f46820h;
        if (obj != null && c9053qCArr != null) {
            for (C9053qC c9053qC = c9053qCArr[i10 & AbstractC9047qA.a(obj.hashCode())]; c9053qC != null; c9053qC = c9053qC.b()) {
                if (obj.equals(c9053qC.f46190b)) {
                    return c9053qC.f46191c;
                }
            }
        }
        return null;
    }

    @Override
    public final QC i() {
        return new C6304Ze0(this);
    }

    @Override
    public final XB j() {
        return new C6453af0(this);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final int size() {
        return this.f46818f.length;
    }

    public static AbstractC8552nC a(int i10, Map.Entry[] entryArr) {
        U60.b(i10, entryArr.length);
        if (i10 == 0) {
            return f46817i;
        }
        try {
            return b(i10, entryArr);
        } catch (C6247Ye0 unused) {
            return TK.a(i10, entryArr);
        }
    }

    public static C9053qC a(Map.Entry entry, Object obj, Object obj2) {
        if (entry instanceof C9053qC) {
            C9053qC c9053qC = (C9053qC) entry;
            if (c9053qC.d()) {
                return c9053qC;
            }
        }
        return new C9053qC(obj, obj2);
    }
}
