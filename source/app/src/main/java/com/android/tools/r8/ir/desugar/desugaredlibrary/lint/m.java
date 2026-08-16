package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.internal.UC;
import java.util.AbstractCollection;
import java.util.HashMap;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class m {

    public final UC f54670a;

    public final AbstractCollection f54671b;

    public final AbstractCollection f54672c;

    public static class a extends b {

        public static final a f54673e = new a(-1, -1, false);

        public a(int i10, int i11, boolean z10) {
            super(i10, i11, z10);
        }
    }

    public static abstract class b {

        public static final boolean f54674d = true;

        public final boolean f54675a;

        public final int f54676b;

        public final int f54677c;

        public b(int i10, int i11, boolean z10) {
            this.f54675a = z10;
            this.f54676b = i10;
            this.f54677c = i11;
        }

        public int a() {
            return this.f54677c;
        }

        public int b() {
            return this.f54676b;
        }

        public boolean c() {
            return this.f54675a;
        }

        public final int a(b bVar) {
            int i10;
            int i11;
            boolean z10 = this.f54675a;
            if (!z10 && !bVar.f54675a) {
                i11 = -1;
                i10 = -1;
            } else if (z10 && bVar.f54675a) {
                int i12 = this.f54677c;
                i10 = bVar.f54676b;
                if (i12 == i10 - 1) {
                    int i13 = this.f54676b;
                    i11 = bVar.f54677c;
                    i10 = i13;
                } else {
                    i11 = bVar.f54677c;
                    int i14 = this.f54676b;
                    if (i11 != i14 - 1) {
                        if (i12 == 19 && i10 == 21) {
                            i10 = i14;
                        } else if (i11 != 19 || i14 != 21) {
                            throw new RuntimeException("Cannot merge ranges.");
                        }
                    }
                    i11 = i12;
                }
            } else {
                i10 = z10 ? this.f54676b : bVar.f54676b;
                i11 = z10 ? this.f54677c : bVar.f54677c;
            }
            if (f54674d || (i11 < 32768 && i10 < 32768)) {
                return (i11 << 16) + i10;
            }
            throw new AssertionError();
        }
    }

    public static class c extends b {

        public static final c f54678h = new c(false, false, true, false, -1, -1);

        public static final c f54679i = new c(false, false, false, false, -1, -1);

        public static final c f54680j = new c(true, false, false, false, -1, -1);

        public static final c f54681k = new c(false, true, false, false, -1, -1);

        public final boolean f54682e;

        public final boolean f54683f;

        public final boolean f54684g;

        public c(boolean z10, boolean z11, boolean z12, boolean z13, int i10, int i11) {
            super(i10, i11, z13);
            this.f54682e = z10;
            this.f54683f = z11;
            this.f54684g = z12;
        }
    }

    public static class d {

        public final E0 f54685a;

        public final l f54686b;

        public final UC f54687c;

        public final UC f54688d;

        public final HashMap f54689e;

        public final HashMap f54690f;

        public d(E0 e02, l lVar, UC uc2, UC uc3, HashMap hashMap, HashMap hashMap2) {
            this.f54685a = e02;
            this.f54686b = lVar;
            this.f54687c = uc2;
            this.f54688d = uc3;
            this.f54689e = hashMap;
            this.f54690f = hashMap2;
        }

        public void a(BiConsumer<C4460g1, a> biConsumer) {
            for (C4460g1 c4460g1 : this.f54688d.f44699g) {
                biConsumer.accept(c4460g1, (a) this.f54690f.get(c4460g1.getReference()));
            }
        }

        public void b(BiConsumer<C4516j1, c> biConsumer) {
            for (C4516j1 c4516j1 : this.f54687c.f44699g) {
                biConsumer.accept(c4516j1, (c) this.f54689e.get(c4516j1.getReference()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(UC uc2, List list, List list2) {
        this.f54670a = uc2;
        this.f54671b = (AbstractCollection) list;
        this.f54672c = (AbstractCollection) list2;
    }

    public void a(Consumer<d> consumer) {
        this.f54670a.f44699g.forEach(consumer);
    }
}
