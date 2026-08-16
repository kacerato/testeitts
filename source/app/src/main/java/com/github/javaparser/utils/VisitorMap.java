package com.github.javaparser.utils;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.utils.VisitorMap;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class VisitorMap<N extends Node, V> implements Map<N, V> {
    private final GenericVisitor<Boolean, Visitable> equalsVisitor;
    private final GenericVisitor<Integer, Void> hashcodeVisitor;
    private final Map<VisitorMap<N, V>.EqualsHashcodeOverridingFacade, V> innerMap = new HashMap();

    public class EqualsHashcodeOverridingFacade implements Visitable {
        private final N overridden;

        public EqualsHashcodeOverridingFacade(N overridden) {
            this.overridden = overridden;
        }

        public static Node access$200(EqualsHashcodeOverridingFacade equalsHashcodeOverridingFacade) {
            return equalsHashcodeOverridingFacade.overridden;
        }

        @Override
        public <R, A> R accept(GenericVisitor<R, A> v10, A arg) {
            throw new AssertionError();
        }

        public boolean equals(final Object obj) {
            if (obj == null || !(obj instanceof EqualsHashcodeOverridingFacade)) {
                return false;
            }
            return ((Boolean) this.overridden.accept(VisitorMap.this.equalsVisitor, ((EqualsHashcodeOverridingFacade) obj).overridden)).booleanValue();
        }

        public final int hashCode() {
            return ((Integer) this.overridden.accept(VisitorMap.this.hashcodeVisitor, null)).intValue();
        }

        @Override
        public <A> void accept(VoidVisitor<A> v10, A arg) {
            throw new AssertionError();
        }
    }

    public VisitorMap(GenericVisitor<Integer, Void> hashcodeVisitor, GenericVisitor<Boolean, Visitable> equalsVisitor) {
        this.hashcodeVisitor = hashcodeVisitor;
        this.equalsVisitor = equalsVisitor;
    }

    public static AbstractMap.SimpleEntry lambda$entrySet$1(Map.Entry e10) {
        return new AbstractMap.SimpleEntry(((EqualsHashcodeOverridingFacade) e10.getKey()).overridden, e10.getValue());
    }

    @Override
    public void clear() {
        this.innerMap.clear();
    }

    @Override
    public boolean containsKey(Object key) {
        return this.innerMap.containsKey(new EqualsHashcodeOverridingFacade((Node) key));
    }

    @Override
    public boolean containsValue(Object value) {
        return this.innerMap.containsValue(value);
    }

    @Override
    public Set<Map.Entry<N, V>> entrySet() {
        return (Set) this.innerMap.entrySet().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractMap.SimpleEntry lambda$entrySet$1;
                lambda$entrySet$1 = VisitorMap.lambda$entrySet$1((Map.Entry) obj);
                return lambda$entrySet$1;
            }
        }).collect(Collectors.toSet());
    }

    @Override
    public V get(Object key) {
        return this.innerMap.get(new EqualsHashcodeOverridingFacade((Node) key));
    }

    @Override
    public boolean isEmpty() {
        return this.innerMap.isEmpty();
    }

    @Override
    public Set<N> o() {
        return (Set) this.innerMap.o().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Node access$200;
                access$200 = VisitorMap.EqualsHashcodeOverridingFacade.access$200((VisitorMap.EqualsHashcodeOverridingFacade) obj);
                return access$200;
            }
        }).collect(Collectors.toSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object key, Object value) {
        return put((VisitorMap<N, V>) key, (Node) value);
    }

    @Override
    public void putAll(Map<? extends N, ? extends V> m10) {
        m10.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                VisitorMap.this.put((VisitorMap) obj, (Node) obj2);
            }
        });
    }

    @Override
    public V remove(Object key) {
        return this.innerMap.remove(new EqualsHashcodeOverridingFacade((Node) key));
    }

    @Override
    public int size() {
        return this.innerMap.size();
    }

    @Override
    public Collection<V> values() {
        return this.innerMap.values();
    }

    public V put(N key, V value) {
        return this.innerMap.put(new EqualsHashcodeOverridingFacade(key), value);
    }
}
