package com.google.common.collect;

import com.google.common.collect.Q1;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b
public class P2<R, C, V> extends Q2<R, C, V> implements A2<R, C, V> {

    public static final long f65983j = 0;

    public class b extends Q2<R, C, V>.h implements SortedMap<R, Map<C, V>> {
        public b() {
            super();
        }

        @Override
        @CheckForNull
        public Comparator<? super R> comparator() {
            return P2.this.r().comparator();
        }

        @Override
        public R firstKey() {
            return (R) P2.this.r().firstKey();
        }

        @Override
        public SortedMap<R, Map<C, V>> headMap(R r10) {
            w2.H.E(r10);
            return new P2(P2.this.r().headMap(r10), P2.this.f66060e).u();
        }

        @Override
        public R lastKey() {
            return (R) P2.this.r().lastKey();
        }

        @Override
        public SortedSet<R> n() {
            return new Q1.G(this);
        }

        @Override
        public SortedSet<R> o() {
            return (SortedSet) super.o();
        }

        @Override
        public SortedMap<R, Map<C, V>> subMap(R r10, R r11) {
            w2.H.E(r10);
            w2.H.E(r11);
            return new P2(P2.this.r().subMap(r10, r11), P2.this.f66060e).u();
        }

        @Override
        public SortedMap<R, Map<C, V>> tailMap(R r10) {
            w2.H.E(r10);
            return new P2(P2.this.r().tailMap(r10), P2.this.f66060e).u();
        }
    }

    public P2(SortedMap<R, Map<C, V>> sortedMap, w2.Q<? extends Map<C, V>> q10) {
        super(sortedMap, q10);
    }

    @Override
    public SortedMap<R, Map<C, V>> l() {
        return new b();
    }

    public final SortedMap<R, Map<C, V>> r() {
        return (SortedMap) this.f66059d;
    }

    @Override
    public SortedMap<R, Map<C, V>> u() {
        return (SortedMap) super.u();
    }

    @Override
    public SortedSet<R> x() {
        return (SortedSet) u().o();
    }
}
