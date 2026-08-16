package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C9875v8;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class C9875v8 {

    public static final C9875v8 f53017b = new C9875v8(Collections.EMPTY_MAP);

    public final Map f53018a;

    public C9875v8(Map map) {
        this.f53018a = map;
    }

    public static a a() {
        return new a();
    }

    public static C9875v8 b() {
        return f53017b;
    }

    public static class a {

        public static final boolean f53019b = true;

        public final IdentityHashMap f53020a = new IdentityHashMap();

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(AbstractC7670hw abstractC7670hw, Consumer consumer) {
            if (!f53019b && this.f53020a.containsKey(abstractC7670hw)) {
                throw new AssertionError();
            }
            consumer.accept((C9207r8) this.f53020a.computeIfAbsent(abstractC7670hw, TU.a(new Supplier() {
                @Override
                public final Object get() {
                    return C9374s8.a();
                }
            })));
        }

        public final C9875v8 a() {
            if (this.f53020a.isEmpty()) {
                return C9875v8.b();
            }
            final IdentityHashMap identityHashMap = new IdentityHashMap(this.f53020a.size());
            this.f53020a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C9875v8.a.a(Map.this, (AbstractC10561zE) obj, (C9207r8) obj2);
                }
            });
            return new C9875v8(identityHashMap);
        }

        public static void a(Map map, AbstractC10561zE abstractC10561zE, C9207r8 c9207r8) {
            if (!C9207r8.f51978c && c9207r8.f51979a.isEmpty() && !c9207r8.f51980b) {
                throw new AssertionError();
            }
            map.put(abstractC10561zE, new C9374s8(c9207r8.f51979a, c9207r8.f51980b));
        }
    }
}
