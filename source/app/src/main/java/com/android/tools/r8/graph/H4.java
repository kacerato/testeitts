package com.android.tools.r8.graph;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class H4 {

    public static class a extends H4 {

        public static final a f36407e;

        public final Map f36408a;

        public final List f36409b;

        public final List f36410c;

        public int f36411d;

        static {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            List list = Collections.EMPTY_LIST;
            f36407e = new a(identityHashMap, list, list, 2);
        }

        public a(Map map, List list, List list2, int i10) {
            this.f36408a = map;
            this.f36409b = list;
            this.f36410c = list2;
            this.f36411d = i10;
        }

        @Override
        public final a a() {
            return this;
        }

        @Override
        public final boolean b() {
            return !this.f36410c.isEmpty();
        }

        @Override
        public final boolean d() {
            return true;
        }

        public boolean e() {
            return !this.f36409b.isEmpty();
        }

        public boolean f() {
            return this.f36411d == 1;
        }

        public boolean g() {
            return this.f36411d == 2;
        }

        @Override
        public void a(final Consumer<? super D4> consumer, Consumer<? super C4> consumer2) {
            this.f36408a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Consumer.this.accept((D4) obj2);
                }
            });
            this.f36409b.forEach(consumer2);
        }

        public boolean a(C4516j1 c4516j1) {
            return this.f36408a.containsKey(c4516j1.getReference());
        }
    }

    public a a() {
        return null;
    }

    public abstract void a(Consumer<? super D4> consumer, Consumer<? super C4> consumer2);

    public abstract boolean b();

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }
}
