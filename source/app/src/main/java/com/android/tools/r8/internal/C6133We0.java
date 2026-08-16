package com.android.tools.r8.internal;

import java.util.Map;
import java.util.function.BiConsumer;

public final class C6133We0 extends VB {

    public static final C6133We0 f45492l = new C6133We0(null, null, AbstractC8552nC.f50554e, 0, 0);

    public final transient C9053qC[] f45493f;

    public final transient C9053qC[] f45494g;

    public final transient Map.Entry[] f45495h;

    public final transient int f45496i;

    public final transient int f45497j;

    public transient C6076Ve0 f45498k;

    public C6133We0(C9053qC[] c9053qCArr, C9053qC[] c9053qCArr2, Map.Entry[] entryArr, int i10, int i11) {
        this.f45493f = c9053qCArr;
        this.f45494g = c9053qCArr2;
        this.f45495h = entryArr;
        this.f45496i = i10;
        this.f45497j = i11;
    }

    @Override
    public final QC e() {
        if (!isEmpty()) {
            return new C9219rC(this, this.f45495h);
        }
        int i10 = QC.f43505c;
        return C7119ef0.f47742j;
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        for (Map.Entry entry : this.f45495h) {
            biConsumer.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public final Object get(Object obj) {
        C9053qC[] c9053qCArr = this.f45493f;
        int i10 = this.f45496i;
        C6620bf0 c6620bf0 = C6620bf0.f46817i;
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
    public final int hashCode() {
        return this.f45497j;
    }

    @Override
    public final QC i() {
        return new C9553tC(this);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final VB f() {
        if (isEmpty()) {
            return f45492l;
        }
        C6076Ve0 c6076Ve0 = this.f45498k;
        if (c6076Ve0 != null) {
            return c6076Ve0;
        }
        C6076Ve0 c6076Ve02 = new C6076Ve0(this);
        this.f45498k = c6076Ve02;
        return c6076Ve02;
    }

    @Override
    public final int size() {
        return this.f45495h.length;
    }
}
