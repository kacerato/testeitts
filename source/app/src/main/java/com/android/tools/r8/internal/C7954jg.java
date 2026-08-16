package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Objects;
import java.util.function.Predicate;

public final class C7954jg extends F8 {

    public static final boolean f49289d = true;

    public final int f49290a;

    public final SG f49291b;

    public final SG f49292c;

    public C7954jg(int i10, SG sg2, SG sg3) {
        boolean z10 = f49289d;
        if (!z10 && i10 <= 0) {
            throw new AssertionError();
        }
        if (!z10 && !sg3.values().stream().noneMatch(new C8573nK0())) {
            throw new AssertionError();
        }
        if (!z10 && !sg2.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10330xt) obj).l();
            }
        })) {
            throw new AssertionError();
        }
        this.f49290a = i10;
        Objects.requireNonNull(sg2);
        this.f49291b = sg2;
        Objects.requireNonNull(sg3);
        this.f49292c = sg3;
    }

    @Override
    public final C7954jg a() {
        return this;
    }

    @Override
    public final AbstractC10330xt b(int i10) {
        if (f49289d || (i10 >= 0 && i10 < this.f49290a)) {
            return (AbstractC10330xt) this.f49291b.getOrDefault(Integer.valueOf(i10), AbstractC10330xt.m());
        }
        throw new AssertionError();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C7954jg)) {
            return false;
        }
        C7954jg c7954jg = (C7954jg) obj;
        return this.f49291b.equals(c7954jg.f49291b) && this.f49292c.equals(c7954jg.f49292c);
    }

    public final int hashCode() {
        return System.identityHashCode(this.f49292c) + (System.identityHashCode(this.f49291b) * 7);
    }

    public final String toString() {
        String str;
        String obj = this.f49291b.toString();
        if (this.f49292c == null) {
            str = "";
        } else {
            str = System.lineSeparator() + ((Object) this.f49292c);
        }
        return obj + str;
    }

    public final F8 a(com.android.tools.r8.graph.proto.j jVar) {
        Collection collection;
        if (!jVar.c()) {
            com.android.tools.r8.graph.proto.c cVar = jVar.f37623b;
            if (cVar.b()) {
                if (jVar.a()) {
                    return new C7954jg(jVar.f37622a.size() + this.f49290a, this.f49291b, this.f49292c);
                }
            } else {
                if (!f49289d) {
                    int a10 = com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, cVar.f37604a);
                    if (a10 == 0) {
                        collection = WH.f45361a;
                    } else {
                        C7731iG c7731iG = cVar.f37604a;
                        if (a10 == c7731iG.f48898c) {
                            collection = c7731iG.o();
                        } else {
                            CH ch2 = new CH(a10);
                            VF vf2 = new VF(((SF) cVar.f37604a.b()).f44166c);
                            while (vf2.hasNext()) {
                                UF a11 = vf2.a();
                                if (((com.android.tools.r8.graph.proto.b) a11.getValue()).c()) {
                                    ch2.add(a11.a());
                                }
                            }
                            collection = ch2;
                        }
                    }
                    if (!collection.stream().allMatch(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C7954jg.this.a((Integer) obj);
                        }
                    })) {
                        throw new AssertionError();
                    }
                }
                int a12 = this.f49290a - com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, cVar.f37604a);
                if (a12 == 0) {
                    return C9994vs0.f53360a;
                }
                SG gg2 = new GG(a12);
                SG gg3 = new GG(a12);
                int i10 = 0;
                for (int i11 = 0; i11 < this.f49290a; i11++) {
                    if (!cVar.a(i11).c()) {
                        com.android.tools.r8.graph.proto.k b10 = cVar.a(i11).b();
                        if (b10 == null || !b10.f().Q0() || !b10.e().P0()) {
                            SG sg2 = this.f49292c;
                            Integer valueOf = Integer.valueOf(i11);
                            int i12 = F1.f40064a;
                            F1 f12 = (F1) sg2.getOrDefault(valueOf, C10504yv0.f54195b);
                            if (!f12.isUnknown()) {
                                gg2.a(i10, f12);
                            }
                            AbstractC10330xt abstractC10330xt = (AbstractC10330xt) this.f49291b.get(i11);
                            if (abstractC10330xt != null) {
                                gg3.a(i10, abstractC10330xt);
                            }
                        }
                        i10++;
                    }
                }
                int size = jVar.f37622a.size() + a12;
                if (gg2.isEmpty() && gg3.isEmpty()) {
                    return C9994vs0.f53360a;
                }
                boolean z10 = TU.f44487a;
                if (gg3.isEmpty()) {
                    gg3 = UG.f44715a;
                }
                if (gg2.isEmpty()) {
                    gg2 = UG.f44715a;
                }
                return new C7954jg(size, gg3, gg2);
            }
        }
        return this;
    }

    public final boolean a(Integer num) {
        return num.intValue() < this.f49290a;
    }

    @Override
    public final F1 a(int i10) {
        if (f49289d || (i10 >= 0 && i10 < this.f49290a)) {
            return (F1) this.f49292c.getOrDefault(Integer.valueOf(i10), C10504yv0.f54195b);
        }
        throw new AssertionError();
    }
}
