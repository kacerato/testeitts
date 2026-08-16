package java.lang;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiFunction;

public final class WeakPairMap<K1, K2, V> {
    private final ConcurrentHashMap<Pair<K1, K2>, V> map = new ConcurrentHashMap<>();
    private final ReferenceQueue<Object> queue = new ReferenceQueue<>();

    public boolean containsKeyPair(K1 k12, K2 k22) {
        expungeStaleAssociations();
        return this.map.containsKey(Pair.lookup(k12, k22));
    }

    public V get(K1 k12, K2 k22) {
        expungeStaleAssociations();
        return this.map.get(Pair.lookup(k12, k22));
    }

    public V put(K1 k12, K2 k22, V v10) {
        expungeStaleAssociations();
        return this.map.put(Pair.weak(k12, k22, this.queue), v10);
    }

    public V putIfAbsent(K1 k12, K2 k22, V v10) {
        expungeStaleAssociations();
        return this.map.putIfAbsent(Pair.weak(k12, k22, this.queue), v10);
    }

    public V computeIfAbsent(K1 k12, K2 k22, BiFunction<? super K1, ? super K2, ? extends V> mappingFunction) {
        expungeStaleAssociations();
        try {
            V computeIfAbsent = this.map.computeIfAbsent(Pair.weak(k12, k22, this.queue), pair -> {
                return mappingFunction.apply(pair.first(), pair.second());
            });
            Reference.reachabilityFence(k12);
            Reference.reachabilityFence(k22);
            return computeIfAbsent;
        } catch (Throwable th2) {
            Reference.reachabilityFence(k12);
            Reference.reachabilityFence(k22);
            throw th2;
        }
    }

    public Collection<V> values() {
        expungeStaleAssociations();
        return this.map.values();
    }

    private void expungeStaleAssociations() {
        while (true) {
            WeakRefPeer<?> peer = (WeakRefPeer) this.queue.poll();
            if (peer != null) {
                this.map.remove(peer.weakPair());
            } else {
                return;
            }
        }
    }

    public interface Pair<K1, K2> {
        K1 first();

        K2 second();

        static <K1, K2> Pair<K1, K2> weak(K1 k12, K2 k22, ReferenceQueue<Object> queue) {
            return new Weak(k12, k22, queue);
        }

        static <K1, K2> Pair<K1, K2> lookup(K1 k12, K2 k22) {
            return new Lookup(k12, k22);
        }

        static int hashCode(Object first, Object second) {
            return System.identityHashCode(first) ^ System.identityHashCode(second);
        }

        static boolean equals(Object first, Object second, Pair<?, ?> p10) {
            return first != null && second != null && first == p10.first() && second == p10.second();
        }

        public static final class Weak<K1, K2> extends WeakRefPeer<K1> implements Pair<K1, K2> {
            private final int hash;
            private final WeakRefPeer<K2> peer;

            Weak(K1 k12, K2 k22, ReferenceQueue<Object> queue) {
                super(k12, queue);
                this.hash = Pair.hashCode(k12, k22);
                this.peer = new WeakRefPeer<K2>(this, k22, queue) {
                    final Weak this$0;

                    {
                        Objects.requireNonNull(this);
                        this.this$0 = this;
                    }

                    @Override
                    Weak<?, ?> weakPair() {
                        return this.this$0;
                    }
                };
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            Weak<?, ?> weakPair() {
                return this;
            }

            @Override
            public K1 first() {
                return get();
            }

            @Override
            public K2 second() {
                return this.peer.get();
            }

            public int hashCode() {
                return this.hash;
            }

            public boolean equals(Object obj) {
                return this == obj || ((obj instanceof Pair) && Pair.equals(first(), second(), (Pair) obj));
            }
        }

        public static final class Lookup<K1, K2> implements Pair<K1, K2> {

            private final K1 f92803k1;

            private final K2 f92804k2;

            Lookup(K1 k12, K2 k22) {
                this.f92803k1 = (K1) Objects.requireNonNull(k12);
                this.f92804k2 = (K2) Objects.requireNonNull(k22);
            }

            @Override
            public K1 first() {
                return this.f92803k1;
            }

            @Override
            public K2 second() {
                return this.f92804k2;
            }

            public int hashCode() {
                return Pair.hashCode(this.f92803k1, this.f92804k2);
            }

            public boolean equals(Object obj) {
                return (obj instanceof Pair) && Pair.equals(this.f92803k1, this.f92804k2, (Pair) obj);
            }
        }
    }

    public static abstract class WeakRefPeer<K> extends WeakReference<K> {
        abstract Pair.Weak<?, ?> weakPair();

        WeakRefPeer(K k10, ReferenceQueue<Object> queue) {
            super(Objects.requireNonNull(k10), queue);
        }
    }
}
