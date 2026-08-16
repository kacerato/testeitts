package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class TK extends AbstractC8552nC {

    public final transient HashMap f44433f;

    public final transient AbstractC7552hC f44434g;

    public TK(HashMap hashMap, AbstractC7552hC abstractC7552hC) {
        this.f44433f = hashMap;
        this.f44434g = abstractC7552hC;
    }

    @Override
    public final QC e() {
        return new C9219rC(this, this.f44434g);
    }

    @Override
    public final void forEach(final BiConsumer biConsumer) {
        biConsumer.getClass();
        this.f44434g.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept(r2.getKey(), ((Map.Entry) obj).getValue());
            }
        });
    }

    @Override
    public final Object get(Object obj) {
        return this.f44433f.get(obj);
    }

    @Override
    public final QC i() {
        return new C9553tC(this);
    }

    @Override
    public final XB j() {
        return new C10054wC(this);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final int size() {
        return this.f44434g.size();
    }

    public static TK a(int i10, Map.Entry[] entryArr) {
        HashMap hashMap = new HashMap(AbstractC9595tV.a(i10));
        for (int i11 = 0; i11 < i10; i11++) {
            Map.Entry entry = entryArr[i11];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            C6620bf0 c6620bf0 = C6620bf0.f46817i;
            C9053qC a10 = C6620bf0.a(entry2, entry2.getKey(), entry2.getValue());
            entryArr[i11] = a10;
            Object put = hashMap.put(a10.f46190b, a10.getValue());
            if (put != null) {
                throw AbstractC8552nC.a("key", entryArr[i11], entryArr[i11].getKey() + "=" + put);
            }
        }
        return new TK(hashMap, AbstractC7552hC.b(i10, entryArr));
    }
}
