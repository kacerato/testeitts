package com.google.common.collect;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.C;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true)
public final class D2 {

    public class a<E> extends m<E> {

        public final Set f65668b;

        public final Set f65669c;

        public class C0981a extends AbstractC12503c<E> {

            public final Iterator<? extends E> f65670d;

            public final Iterator<? extends E> f65671e;

            public C0981a() {
                this.f65670d = a.this.f65668b.iterator();
                this.f65671e = a.this.f65669c.iterator();
            }

            @Override
            @CheckForNull
            public E a() {
                if (this.f65670d.hasNext()) {
                    return this.f65670d.next();
                }
                while (this.f65671e.hasNext()) {
                    E next = this.f65671e.next();
                    if (!a.this.f65668b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Set set, Set set2) {
            super(null);
            this.f65668b = set;
            this.f65669c = set2;
        }

        @Override
        public <S extends Set<E>> S a(S s10) {
            s10.addAll(this.f65668b);
            s10.addAll(this.f65669c);
            return s10;
        }

        @Override
        public AbstractC12564r1<E> b() {
            return new AbstractC12564r1.a().c(this.f65668b).c(this.f65669c).e();
        }

        @Override
        public e3<E> iterator() {
            return new C0981a();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f65668b.contains(obj) || this.f65669c.contains(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f65668b.isEmpty() && this.f65669c.isEmpty();
        }

        @Override
        public int size() {
            int size = this.f65668b.size();
            Iterator<E> it = this.f65669c.iterator();
            while (it.hasNext()) {
                if (!this.f65668b.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }
    }

    public class b<E> extends m<E> {

        public final Set f65673b;

        public final Set f65674c;

        public class a extends AbstractC12503c<E> {

            public final Iterator<E> f65675d;

            public a() {
                this.f65675d = b.this.f65673b.iterator();
            }

            @Override
            @CheckForNull
            public E a() {
                while (this.f65675d.hasNext()) {
                    E next = this.f65675d.next();
                    if (b.this.f65674c.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Set set, Set set2) {
            super(null);
            this.f65673b = set;
            this.f65674c = set2;
        }

        @Override
        public e3<E> iterator() {
            return new a();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f65673b.contains(obj) && this.f65674c.contains(obj);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return this.f65673b.containsAll(collection) && this.f65674c.containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return Collections.disjoint(this.f65674c, this.f65673b);
        }

        @Override
        public int size() {
            Iterator<E> it = this.f65673b.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.f65674c.contains(it.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    public class c<E> extends m<E> {

        public final Set f65677b;

        public final Set f65678c;

        public class a extends AbstractC12503c<E> {

            public final Iterator<E> f65679d;

            public a() {
                this.f65679d = c.this.f65677b.iterator();
            }

            @Override
            @CheckForNull
            public E a() {
                while (this.f65679d.hasNext()) {
                    E next = this.f65679d.next();
                    if (!c.this.f65678c.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Set set, Set set2) {
            super(null);
            this.f65677b = set;
            this.f65678c = set2;
        }

        @Override
        public e3<E> iterator() {
            return new a();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f65677b.contains(obj) && !this.f65678c.contains(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f65678c.containsAll(this.f65677b);
        }

        @Override
        public int size() {
            Iterator<E> it = this.f65677b.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (!this.f65678c.contains(it.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    public class d<E> extends m<E> {

        public final Set f65681b;

        public final Set f65682c;

        public class a extends AbstractC12503c<E> {

            public final Iterator f65683d;

            public final Iterator f65684e;

            public a(Iterator it, Iterator it2) {
                this.f65683d = it;
                this.f65684e = it2;
            }

            @Override
            @CheckForNull
            public E a() {
                while (this.f65683d.hasNext()) {
                    E e10 = (E) this.f65683d.next();
                    if (!d.this.f65682c.contains(e10)) {
                        return e10;
                    }
                }
                while (this.f65684e.hasNext()) {
                    E e11 = (E) this.f65684e.next();
                    if (!d.this.f65681b.contains(e11)) {
                        return e11;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Set set, Set set2) {
            super(null);
            this.f65681b = set;
            this.f65682c = set2;
        }

        @Override
        public e3<E> iterator() {
            return new a(this.f65681b.iterator(), this.f65682c.iterator());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f65682c.contains(obj) ^ this.f65681b.contains(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f65681b.equals(this.f65682c);
        }

        @Override
        public int size() {
            Iterator<E> it = this.f65681b.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (!this.f65682c.contains(it.next())) {
                    i10++;
                }
            }
            Iterator<E> it2 = this.f65682c.iterator();
            while (it2.hasNext()) {
                if (!this.f65681b.contains(it2.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    public class e<E> extends AbstractSet<Set<E>> {

        public final int f65686b;

        public final AbstractC12529i1 f65687c;

        public class a extends AbstractC12503c<Set<E>> {

            public final BitSet f65688d;

            public class C0982a extends AbstractSet<E> {

                public final BitSet f65690b;

                public class C0983a extends AbstractC12503c<E> {

                    public int f65692d = -1;

                    public C0983a() {
                    }

                    @Override
                    @CheckForNull
                    public E a() {
                        int nextSetBit = C0982a.this.f65690b.nextSetBit(this.f65692d + 1);
                        this.f65692d = nextSetBit;
                        return nextSetBit == -1 ? b() : e.this.f65687c.o().a().get(this.f65692d);
                    }
                }

                public C0982a(BitSet bitSet) {
                    this.f65690b = bitSet;
                }

                @Override
                public boolean contains(@CheckForNull Object obj) {
                    Integer num = (Integer) e.this.f65687c.get(obj);
                    return num != null && this.f65690b.get(num.intValue());
                }

                @Override
                public Iterator<E> iterator() {
                    return new C0983a();
                }

                @Override
                public int size() {
                    return e.this.f65686b;
                }
            }

            public a() {
                this.f65688d = new BitSet(e.this.f65687c.size());
            }

            @Override
            @CheckForNull
            public Set<E> a() {
                if (this.f65688d.isEmpty()) {
                    this.f65688d.set(0, e.this.f65686b);
                } else {
                    int nextSetBit = this.f65688d.nextSetBit(0);
                    int nextClearBit = this.f65688d.nextClearBit(nextSetBit);
                    if (nextClearBit == e.this.f65687c.size()) {
                        return b();
                    }
                    int i10 = (nextClearBit - nextSetBit) - 1;
                    this.f65688d.set(0, i10);
                    this.f65688d.clear(i10, nextClearBit);
                    this.f65688d.set(nextClearBit);
                }
                return new C0982a((BitSet) this.f65688d.clone());
            }
        }

        public e(int i10, AbstractC12529i1 abstractC12529i1) {
            this.f65686b = i10;
            this.f65687c = abstractC12529i1;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            return set.size() == this.f65686b && this.f65687c.o().containsAll(set);
        }

        @Override
        public Iterator<Set<E>> iterator() {
            return new a();
        }

        @Override
        public int size() {
            return E2.f.a(this.f65687c.size(), this.f65686b);
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f65687c.o());
            int i10 = this.f65686b;
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Sets.combinations(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(i10);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class f<E> extends AbstractC12563r0<List<E>> implements Set<List<E>> {

        public final transient AbstractC12521g1<AbstractC12564r1<E>> f65694b;

        public final transient C12594z<E> f65695c;

        public class a extends AbstractC12521g1<List<E>> {

            public final AbstractC12521g1 f65696d;

            public a(AbstractC12521g1 abstractC12521g1) {
                this.f65696d = abstractC12521g1;
            }

            @Override
            public List<E> get(int i10) {
                return ((AbstractC12564r1) this.f65696d.get(i10)).a();
            }

            @Override
            public boolean h() {
                return true;
            }

            @Override
            public int size() {
                return this.f65696d.size();
            }
        }

        public f(AbstractC12521g1<AbstractC12564r1<E>> abstractC12521g1, C12594z<E> c12594z) {
            this.f65694b = abstractC12521g1;
            this.f65695c = c12594z;
        }

        public static <E> Set<List<E>> D0(List<? extends Set<? extends E>> list) {
            AbstractC12521g1.a aVar = new AbstractC12521g1.a(list.size());
            Iterator<? extends Set<? extends E>> it = list.iterator();
            while (it.hasNext()) {
                AbstractC12564r1 s10 = AbstractC12564r1.s(it.next());
                if (s10.isEmpty()) {
                    return AbstractC12564r1.z();
                }
                aVar.a(s10);
            }
            AbstractC12521g1<E> e10 = aVar.e();
            return new f(e10, new C12594z(new a(e10)));
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (list.size() != this.f65694b.size()) {
                return false;
            }
            Iterator<E> it = list.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (!this.f65694b.get(i10).contains(it.next())) {
                    return false;
                }
                i10++;
            }
            return true;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return obj instanceof f ? this.f65694b.equals(((f) obj).f65694b) : super.equals(obj);
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            int size = size() - 1;
            for (int i11 = 0; i11 < this.f65694b.size(); i11++) {
                size = ~(~(size * 31));
            }
            e3<AbstractC12564r1<E>> it = this.f65694b.iterator();
            while (it.hasNext()) {
                AbstractC12564r1<E> next = it.next();
                i10 = ~(~((i10 * 31) + ((size() / next.size()) * next.hashCode())));
            }
            return ~(~(i10 + size));
        }

        @Override
        public Collection<List<E>> k0() {
            return this.f65695c;
        }
    }

    @v2.c
    public static class g<E> extends H0<E> {

        public final NavigableSet<E> f65697b;

        public g(NavigableSet<E> navigableSet) {
            this.f65697b = navigableSet;
        }

        public static <T> Ordering<T> Y0(Comparator<T> comparator) {
            return Ordering.i(comparator).F();
        }

        @Override
        public NavigableSet<E> k0() {
            return this.f65697b;
        }

        @Override
        @CheckForNull
        public E ceiling(@InterfaceC12518f2 E e10) {
            return this.f65697b.floor(e10);
        }

        @Override
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.f65697b.comparator();
            return comparator == null ? Ordering.A().F() : Y0(comparator);
        }

        @Override
        public Iterator<E> descendingIterator() {
            return this.f65697b.iterator();
        }

        @Override
        public NavigableSet<E> descendingSet() {
            return this.f65697b;
        }

        @Override
        @InterfaceC12518f2
        public E first() {
            return this.f65697b.last();
        }

        @Override
        @CheckForNull
        public E floor(@InterfaceC12518f2 E e10) {
            return this.f65697b.ceiling(e10);
        }

        @Override
        public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
            return this.f65697b.tailSet(e10, z10).descendingSet();
        }

        @Override
        @CheckForNull
        public E higher(@InterfaceC12518f2 E e10) {
            return this.f65697b.lower(e10);
        }

        @Override
        public Iterator<E> iterator() {
            return this.f65697b.descendingIterator();
        }

        @Override
        @InterfaceC12518f2
        public E last() {
            return this.f65697b.first();
        }

        @Override
        @CheckForNull
        public E lower(@InterfaceC12518f2 E e10) {
            return this.f65697b.higher(e10);
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            return this.f65697b.pollLast();
        }

        @Override
        @CheckForNull
        public E pollLast() {
            return this.f65697b.pollFirst();
        }

        @Override
        public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
            return this.f65697b.subSet(e11, z11, e10, z10).descendingSet();
        }

        @Override
        public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
            return this.f65697b.headSet(e10, z10).descendingSet();
        }

        @Override
        public Object[] toArray() {
            return z0();
        }

        @Override
        public String toString() {
            return C0();
        }

        @Override
        public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
            return O0(e10);
        }

        @Override
        public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
            return H0(e10, e11);
        }

        @Override
        public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
            return X0(e10);
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) B0(tArr);
        }
    }

    @v2.c
    public static class h<E> extends j<E> implements NavigableSet<E> {
        public h(NavigableSet<E> navigableSet, w2.I<? super E> i10) {
            super(navigableSet, i10);
        }

        public NavigableSet<E> b() {
            return (NavigableSet) this.f65605b;
        }

        @Override
        @CheckForNull
        public E ceiling(@InterfaceC12518f2 E e10) {
            return (E) D1.r(b().tailSet(e10, true), this.f65606c, null);
        }

        @Override
        public Iterator<E> descendingIterator() {
            return E1.y(b().descendingIterator(), this.f65606c);
        }

        @Override
        public NavigableSet<E> descendingSet() {
            return D2.h(b().descendingSet(), this.f65606c);
        }

        @Override
        @CheckForNull
        public E floor(@InterfaceC12518f2 E e10) {
            return (E) E1.A(b().headSet(e10, true).descendingIterator(), this.f65606c, null);
        }

        @Override
        public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
            return D2.h(b().headSet(e10, z10), this.f65606c);
        }

        @Override
        @CheckForNull
        public E higher(@InterfaceC12518f2 E e10) {
            return (E) D1.r(b().tailSet(e10, false), this.f65606c, null);
        }

        @Override
        @InterfaceC12518f2
        public E last() {
            return (E) E1.z(b().descendingIterator(), this.f65606c);
        }

        @Override
        @CheckForNull
        public E lower(@InterfaceC12518f2 E e10) {
            return (E) E1.A(b().headSet(e10, false).descendingIterator(), this.f65606c, null);
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            return (E) D1.I(b(), this.f65606c);
        }

        @Override
        @CheckForNull
        public E pollLast() {
            return (E) D1.I(b().descendingSet(), this.f65606c);
        }

        @Override
        public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
            return D2.h(b().subSet(e10, z10, e11, z11), this.f65606c);
        }

        @Override
        public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
            return D2.h(b().tailSet(e10, z10), this.f65606c);
        }
    }

    public static class i<E> extends C.a<E> implements Set<E> {
        public i(Set<E> set, w2.I<? super E> i10) {
            super(set, i10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return D2.g(this, obj);
        }

        @Override
        public int hashCode() {
            return D2.k(this);
        }
    }

    public static class j<E> extends i<E> implements SortedSet<E> {
        public j(SortedSet<E> sortedSet, w2.I<? super E> i10) {
            super(sortedSet, i10);
        }

        @Override
        @CheckForNull
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f65605b).comparator();
        }

        @Override
        @InterfaceC12518f2
        public E first() {
            return (E) E1.z(this.f65605b.iterator(), this.f65606c);
        }

        @Override
        public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
            return new j(((SortedSet) this.f65605b).headSet(e10), this.f65606c);
        }

        @InterfaceC12518f2
        public E last() {
            SortedSet sortedSet = (SortedSet) this.f65605b;
            while (true) {
                E e10 = (Object) sortedSet.last();
                if (this.f65606c.apply(e10)) {
                    return e10;
                }
                sortedSet = sortedSet.headSet(e10);
            }
        }

        @Override
        public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
            return new j(((SortedSet) this.f65605b).subSet(e10, e11), this.f65606c);
        }

        @Override
        public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
            return new j(((SortedSet) this.f65605b).tailSet(e10), this.f65606c);
        }
    }

    public static abstract class k<E> extends AbstractSet<E> {
        @Override
        public boolean removeAll(Collection<?> collection) {
            return D2.I(this, collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) w2.H.E(collection));
        }
    }

    public static final class l<E> extends AbstractSet<Set<E>> {

        public final AbstractC12529i1<E, Integer> f65698b;

        public class a extends AbstractC12499b<Set<E>> {
            public a(int i10) {
                super(i10);
            }

            @Override
            public Set<E> a(int i10) {
                return new n(l.this.f65698b, i10);
            }
        }

        public l(Set<E> set) {
            w2.H.k(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.f65698b = Q1.Q(set);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.f65698b.o().containsAll((Set) obj);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return obj instanceof l ? this.f65698b.o().equals(((l) obj).f65698b.o()) : super.equals(obj);
        }

        @Override
        public int hashCode() {
            return this.f65698b.o().hashCode() << (this.f65698b.size() - 1);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Iterator<Set<E>> iterator() {
            return new a(size());
        }

        @Override
        public int size() {
            return 1 << this.f65698b.size();
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f65698b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
            sb2.append("powerSet(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static abstract class m<E> extends AbstractSet<E> {
        public m(a aVar) {
            this();
        }

        @I2.a
        public <S extends Set<E>> S a(S s10) {
            s10.addAll(this);
            return s10;
        }

        @Override
        @I2.a
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean add(@InterfaceC12518f2 E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        @I2.a
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public AbstractC12564r1<E> b() {
            return AbstractC12564r1.s(this);
        }

        @Override
        public abstract e3<E> iterator();

        @Override
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        @I2.a
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        @I2.a
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        @I2.a
        @I2.e("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public m() {
        }
    }

    public static final class n<E> extends AbstractSet<E> {

        public final AbstractC12529i1<E, Integer> f65700b;

        public final int f65701c;

        public class a extends e3<E> {

            public final AbstractC12521g1<E> f65702b;

            public int f65703c;

            public a() {
                this.f65702b = n.this.f65700b.o().a();
                this.f65703c = n.this.f65701c;
            }

            @Override
            public boolean hasNext() {
                return this.f65703c != 0;
            }

            @Override
            public E next() {
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f65703c);
                if (numberOfTrailingZeros == 32) {
                    throw new NoSuchElementException();
                }
                this.f65703c &= ~(1 << numberOfTrailingZeros);
                return this.f65702b.get(numberOfTrailingZeros);
            }
        }

        public n(AbstractC12529i1<E, Integer> abstractC12529i1, int i10) {
            this.f65700b = abstractC12529i1;
            this.f65701c = i10;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            Integer num = this.f65700b.get(obj);
            if (num != null) {
                if (((1 << num.intValue()) & this.f65701c) != 0) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public Iterator<E> iterator() {
            return new a();
        }

        @Override
        public int size() {
            return Integer.bitCount(this.f65701c);
        }
    }

    public static final class o<E> extends O0<E> implements NavigableSet<E>, Serializable {

        public static final long f65705e = 0;

        public final NavigableSet<E> f65706b;

        public final SortedSet<E> f65707c;

        @CheckForNull
        public transient o<E> f65708d;

        public o(NavigableSet<E> navigableSet) {
            this.f65706b = (NavigableSet) w2.H.E(navigableSet);
            this.f65707c = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override
        public SortedSet<E> k0() {
            return this.f65707c;
        }

        @Override
        @CheckForNull
        public E ceiling(@InterfaceC12518f2 E e10) {
            return this.f65706b.ceiling(e10);
        }

        @Override
        public Iterator<E> descendingIterator() {
            return E1.f0(this.f65706b.descendingIterator());
        }

        @Override
        public NavigableSet<E> descendingSet() {
            o<E> oVar = this.f65708d;
            if (oVar != null) {
                return oVar;
            }
            o<E> oVar2 = new o<>(this.f65706b.descendingSet());
            this.f65708d = oVar2;
            oVar2.f65708d = this;
            return oVar2;
        }

        @Override
        @CheckForNull
        public E floor(@InterfaceC12518f2 E e10) {
            return this.f65706b.floor(e10);
        }

        @Override
        public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
            return D2.O(this.f65706b.headSet(e10, z10));
        }

        @Override
        @CheckForNull
        public E higher(@InterfaceC12518f2 E e10) {
            return this.f65706b.higher(e10);
        }

        @Override
        @CheckForNull
        public E lower(@InterfaceC12518f2 E e10) {
            return this.f65706b.lower(e10);
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override
        @CheckForNull
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override
        public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
            return D2.O(this.f65706b.subSet(e10, z10, e11, z11));
        }

        @Override
        public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
            return D2.O(this.f65706b.tailSet(e10, z10));
        }
    }

    public static <E> LinkedHashSet<E> A() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> B(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>((Collection) iterable);
        }
        LinkedHashSet<E> A10 = A();
        D1.a(A10, iterable);
        return A10;
    }

    public static <E> LinkedHashSet<E> C(int i10) {
        return new LinkedHashSet<>(Q1.o(i10));
    }

    @Deprecated
    public static <E> Set<E> D(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E extends Comparable> TreeSet<E> E() {
        return new TreeSet<>();
    }

    public static <E extends Comparable> TreeSet<E> F(Iterable<? extends E> iterable) {
        TreeSet<E> E10 = E();
        D1.a(E10, iterable);
        return E10;
    }

    public static <E> TreeSet<E> G(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) w2.H.E(comparator));
    }

    @v2.b(serializable = false)
    public static <E> Set<Set<E>> H(Set<E> set) {
        return new l(set);
    }

    public static boolean I(Set<?> set, Collection<?> collection) {
        w2.H.E(collection);
        if (collection instanceof V1) {
            collection = ((V1) collection).S1();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? J(set, collection.iterator()) : E1.V(set.iterator(), collection);
    }

    public static boolean J(Set<?> set, Iterator<?> it) {
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= set.remove(it.next());
        }
        return z10;
    }

    @v2.c
    @InterfaceC15800a
    public static <K extends Comparable<? super K>> NavigableSet<K> K(NavigableSet<K> navigableSet, C12534j2<K> c12534j2) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != Ordering.A() && c12534j2.q() && c12534j2.r()) {
            w2.H.e(navigableSet.comparator().compare(c12534j2.z(), c12534j2.L()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (c12534j2.q() && c12534j2.r()) {
            K z10 = c12534j2.z();
            EnumC12586x y10 = c12534j2.y();
            EnumC12586x enumC12586x = EnumC12586x.CLOSED;
            return navigableSet.subSet(z10, y10 == enumC12586x, c12534j2.L(), c12534j2.K() == enumC12586x);
        }
        if (c12534j2.q()) {
            return navigableSet.tailSet(c12534j2.z(), c12534j2.y() == EnumC12586x.CLOSED);
        }
        if (c12534j2.r()) {
            return navigableSet.headSet(c12534j2.L(), c12534j2.K() == EnumC12586x.CLOSED);
        }
        return (NavigableSet) w2.H.E(navigableSet);
    }

    public static <E> m<E> L(Set<? extends E> set, Set<? extends E> set2) {
        w2.H.F(set, "set1");
        w2.H.F(set2, "set2");
        return new d(set, set2);
    }

    @v2.c
    public static <E> NavigableSet<E> M(NavigableSet<E> navigableSet) {
        return R2.q(navigableSet);
    }

    public static <E> m<E> N(Set<? extends E> set, Set<? extends E> set2) {
        w2.H.F(set, "set1");
        w2.H.F(set2, "set2");
        return new a(set, set2);
    }

    public static <E> NavigableSet<E> O(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof AbstractC12505c1) || (navigableSet instanceof o)) ? navigableSet : new o(navigableSet);
    }

    public static <B> Set<List<B>> a(List<? extends Set<? extends B>> list) {
        return f.D0(list);
    }

    @SafeVarargs
    public static <B> Set<List<B>> b(Set<? extends B>... setArr) {
        return a(Arrays.asList(setArr));
    }

    @InterfaceC15800a
    public static <E> Set<Set<E>> c(Set<E> set, int i10) {
        AbstractC12529i1 Q10 = Q1.Q(set);
        B.b(i10, XMLExporter.ATTRIBUTE_SIZE);
        w2.H.m(i10 <= Q10.size(), "size (%s) must be <= set.size() (%s)", i10, Q10.size());
        return i10 == 0 ? AbstractC12564r1.A(AbstractC12564r1.z()) : i10 == Q10.size() ? AbstractC12564r1.A(Q10.o()) : new e(i10, Q10);
    }

    public static <E extends Enum<E>> EnumSet<E> d(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        w2.H.e(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return o(collection, collection.iterator().next().getDeclaringClass());
    }

    public static <E extends Enum<E>> EnumSet<E> e(Collection<E> collection, Class<E> cls) {
        w2.H.E(collection);
        return collection instanceof EnumSet ? EnumSet.complementOf((EnumSet) collection) : o(collection, cls);
    }

    public static <E> m<E> f(Set<E> set, Set<?> set2) {
        w2.H.F(set, "set1");
        w2.H.F(set2, "set2");
        return new c(set, set2);
    }

    public static boolean g(Set<?> set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    public static <E> NavigableSet<E> h(NavigableSet<E> navigableSet, w2.I<? super E> i10) {
        if (!(navigableSet instanceof i)) {
            return new h((NavigableSet) w2.H.E(navigableSet), (w2.I) w2.H.E(i10));
        }
        i iVar = (i) navigableSet;
        return new h((NavigableSet) iVar.f65605b, w2.J.e(iVar.f65606c, i10));
    }

    public static <E> Set<E> i(Set<E> set, w2.I<? super E> i10) {
        if (set instanceof SortedSet) {
            return j((SortedSet) set, i10);
        }
        if (!(set instanceof i)) {
            return new i((Set) w2.H.E(set), (w2.I) w2.H.E(i10));
        }
        i iVar = (i) set;
        return new i((Set) iVar.f65605b, w2.J.e(iVar.f65606c, i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> j(SortedSet<E> sortedSet, w2.I<? super E> i10) {
        if (!(sortedSet instanceof i)) {
            return new j((SortedSet) w2.H.E(sortedSet), (w2.I) w2.H.E(i10));
        }
        i iVar = (i) sortedSet;
        return new j((SortedSet) iVar.f65605b, w2.J.e(iVar.f65606c, i10));
    }

    public static int k(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    @v2.b(serializable = true)
    public static <E extends Enum<E>> AbstractC12564r1<E> l(E e10, E... eArr) {
        return C12517f1.H(EnumSet.of(e10, eArr));
    }

    @v2.b(serializable = true)
    public static <E extends Enum<E>> AbstractC12564r1<E> m(Iterable<E> iterable) {
        if (iterable instanceof C12517f1) {
            return (C12517f1) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return collection.isEmpty() ? AbstractC12564r1.z() : C12517f1.H(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (!it.hasNext()) {
            return AbstractC12564r1.z();
        }
        EnumSet of2 = EnumSet.of(it.next());
        E1.a(of2, it);
        return C12517f1.H(of2);
    }

    public static <E> m<E> n(Set<E> set, Set<?> set2) {
        w2.H.F(set, "set1");
        w2.H.F(set2, "set2");
        return new b(set, set2);
    }

    public static <E extends Enum<E>> EnumSet<E> o(Collection<E> collection, Class<E> cls) {
        EnumSet<E> allOf = EnumSet.allOf(cls);
        allOf.removeAll(collection);
        return allOf;
    }

    public static <E> Set<E> p() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> Set<E> q(Iterable<? extends E> iterable) {
        Set<E> p10 = p();
        D1.a(p10, iterable);
        return p10;
    }

    @v2.c
    public static <E> CopyOnWriteArraySet<E> r() {
        return new CopyOnWriteArraySet<>();
    }

    @v2.c
    public static <E> CopyOnWriteArraySet<E> s(Iterable<? extends E> iterable) {
        return new CopyOnWriteArraySet<>(iterable instanceof Collection ? (Collection) iterable : M1.r(iterable));
    }

    public static <E extends Enum<E>> EnumSet<E> t(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> noneOf = EnumSet.noneOf(cls);
        D1.a(noneOf, iterable);
        return noneOf;
    }

    public static <E> HashSet<E> u() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> v(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? new HashSet<>((Collection) iterable) : w(iterable.iterator());
    }

    public static <E> HashSet<E> w(Iterator<? extends E> it) {
        HashSet<E> u10 = u();
        E1.a(u10, it);
        return u10;
    }

    public static <E> HashSet<E> x(E... eArr) {
        HashSet<E> y10 = y(eArr.length);
        Collections.addAll(y10, eArr);
        return y10;
    }

    public static <E> HashSet<E> y(int i10) {
        return new HashSet<>(Q1.o(i10));
    }

    public static <E> Set<E> z() {
        return Collections.newSetFromMap(Q1.b0());
    }
}
