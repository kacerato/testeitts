package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public final class SK extends VB {

    public final transient AbstractC7552hC f44182f;

    public final HashMap f44183g;

    public final HashMap f44184h;

    public transient SK f44185i;

    public SK(AbstractC7552hC abstractC7552hC, HashMap hashMap, HashMap hashMap2) {
        this.f44182f = abstractC7552hC;
        this.f44183g = hashMap;
        this.f44184h = hashMap2;
    }

    public static SK a(int i10, Map.Entry[] entryArr) {
        HashMap hashMap = new HashMap(AbstractC9595tV.a(i10));
        HashMap hashMap2 = new HashMap(AbstractC9595tV.a(i10));
        for (int i11 = 0; i11 < i10; i11++) {
            Map.Entry entry = entryArr[i11];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            C6620bf0 c6620bf0 = C6620bf0.f46817i;
            C9053qC a10 = C6620bf0.a(entry2, entry2.getKey(), entry2.getValue());
            entryArr[i11] = a10;
            Object putIfAbsent = hashMap.putIfAbsent(a10.f46190b, a10.f46191c);
            if (putIfAbsent != null) {
                throw AbstractC8552nC.a("key", a10.f46190b + "=" + putIfAbsent, entryArr[i11]);
            }
            Object putIfAbsent2 = hashMap2.putIfAbsent(a10.f46191c, a10.f46190b);
            if (putIfAbsent2 != null) {
                throw AbstractC8552nC.a("value", putIfAbsent2 + "=" + a10.f46191c, entryArr[i11]);
            }
        }
        return new SK(AbstractC7552hC.b(i10, entryArr), hashMap, hashMap2);
    }

    @Override
    public final QC e() {
        return new C9219rC(this, this.f44182f);
    }

    @Override
    public final Object get(Object obj) {
        return this.f44183g.get(obj);
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
        SK sk2 = this.f44185i;
        if (sk2 != null) {
            return sk2;
        }
        SK sk3 = new SK(new RK(this), this.f44184h, this.f44183g);
        this.f44185i = sk3;
        sk3.f44185i = this;
        return sk3;
    }

    @Override
    public final int size() {
        return this.f44182f.size();
    }
}
