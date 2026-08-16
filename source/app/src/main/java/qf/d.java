package qf;

import Nf.g;
import Vf.u;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import org.apache.commons.math3.geometry.VectorFormat;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14967d;

@t0({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"})
public final class d<K, V> implements Map<K, V>, Serializable, Nf.g {

    @NotNull
    public static final a f107862o = new a(null);

    public static final int f107863p = -1640531527;

    public static final int f107864q = 8;

    public static final int f107865r = 2;

    public static final int f107866s = -1;

    @NotNull
    public static final d f107867t;

    @NotNull
    public K[] f107868b;

    @Nullable
    public V[] f107869c;

    @NotNull
    public int[] f107870d;

    @NotNull
    public int[] f107871e;

    public int f107872f;

    public int f107873g;

    public int f107874h;

    public int f107875i;

    public int f107876j;

    @Nullable
    public qf.f<K> f107877k;

    @Nullable
    public g<V> f107878l;

    @Nullable
    public qf.e<K, V> f107879m;

    public boolean f107880n;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final int c(int i10) {
            return Integer.highestOneBit(u.w(i10, 1) * 3);
        }

        public final int d(int i10) {
            return Integer.numberOfLeadingZeros(i10) + 1;
        }

        @NotNull
        public final d e() {
            return d.f107867t;
        }

        public a() {
        }
    }

    public static final class b<K, V> extends C1970d<K, V> implements Iterator<Map.Entry<K, V>>, Nf.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull d<K, V> map) {
            super(map);
            M.p(map, "map");
        }

        @Override
        @NotNull
        public c<K, V> next() {
            a();
            if (b() >= e().f107873g) {
                throw new NoSuchElementException();
            }
            int b10 = b();
            g(b10 + 1);
            h(b10);
            c<K, V> cVar = new c<>(e(), d());
            f();
            return cVar;
        }

        public final void k(@NotNull StringBuilder sb2) {
            M.p(sb2, "sb");
            if (b() >= e().f107873g) {
                throw new NoSuchElementException();
            }
            int b10 = b();
            g(b10 + 1);
            h(b10);
            Object obj = e().f107868b[d()];
            if (obj == e()) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj);
            }
            sb2.append('=');
            Object[] objArr = e().f107869c;
            M.m(objArr);
            Object obj2 = objArr[d()];
            if (obj2 == e()) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj2);
            }
            f();
        }

        public final int m() {
            if (b() >= e().f107873g) {
                throw new NoSuchElementException();
            }
            int b10 = b();
            g(b10 + 1);
            h(b10);
            Object obj = e().f107868b[d()];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = e().f107869c;
            M.m(objArr);
            Object obj2 = objArr[d()];
            int hashCode2 = hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            f();
            return hashCode2;
        }
    }

    public static final class c<K, V> implements Map.Entry<K, V>, g.a {

        @NotNull
        public final d<K, V> f107881b;

        public final int f107882c;

        public final int f107883d;

        public c(@NotNull d<K, V> map, int i10) {
            M.p(map, "map");
            this.f107881b = map;
            this.f107882c = i10;
            this.f107883d = map.f107875i;
        }

        private final void b() {
            if (this.f107881b.f107875i != this.f107883d) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (M.g(entry.getKey(), getKey()) && M.g(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public K getKey() {
            b();
            return (K) this.f107881b.f107868b[this.f107882c];
        }

        @Override
        public V getValue() {
            b();
            Object[] objArr = this.f107881b.f107869c;
            M.m(objArr);
            return (V) objArr[this.f107882c];
        }

        @Override
        public int hashCode() {
            K key = getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override
        public V setValue(V v10) {
            b();
            this.f107881b.o();
            Object[] m10 = this.f107881b.m();
            int i10 = this.f107882c;
            V v11 = (V) m10[i10];
            m10[i10] = v10;
            return v11;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) getKey());
            sb2.append('=');
            sb2.append((Object) getValue());
            return sb2.toString();
        }
    }

    @t0({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"})
    public static class C1970d<K, V> {

        @NotNull
        public final d<K, V> f107884b;

        public int f107885c;

        public int f107886d;

        public int f107887e;

        public C1970d(@NotNull d<K, V> map) {
            M.p(map, "map");
            this.f107884b = map;
            this.f107886d = -1;
            this.f107887e = map.f107875i;
            f();
        }

        public final void a() {
            if (this.f107884b.f107875i != this.f107887e) {
                throw new ConcurrentModificationException();
            }
        }

        public final int b() {
            return this.f107885c;
        }

        public final int d() {
            return this.f107886d;
        }

        @NotNull
        public final d<K, V> e() {
            return this.f107884b;
        }

        public final void f() {
            while (this.f107885c < this.f107884b.f107873g) {
                int[] iArr = this.f107884b.f107870d;
                int i10 = this.f107885c;
                if (iArr[i10] >= 0) {
                    return;
                } else {
                    this.f107885c = i10 + 1;
                }
            }
        }

        public final void g(int i10) {
            this.f107885c = i10;
        }

        public final void h(int i10) {
            this.f107886d = i10;
        }

        public final boolean hasNext() {
            return this.f107885c < this.f107884b.f107873g;
        }

        public final void remove() {
            a();
            if (this.f107886d == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            this.f107884b.o();
            this.f107884b.Q(this.f107886d);
            this.f107886d = -1;
            this.f107887e = this.f107884b.f107875i;
        }
    }

    public static final class e<K, V> extends C1970d<K, V> implements Iterator<K>, Nf.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull d<K, V> map) {
            super(map);
            M.p(map, "map");
        }

        @Override
        public K next() {
            a();
            if (b() >= e().f107873g) {
                throw new NoSuchElementException();
            }
            int b10 = b();
            g(b10 + 1);
            h(b10);
            K k10 = (K) e().f107868b[d()];
            f();
            return k10;
        }
    }

    public static final class f<K, V> extends C1970d<K, V> implements Iterator<V>, Nf.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull d<K, V> map) {
            super(map);
            M.p(map, "map");
        }

        @Override
        public V next() {
            a();
            if (b() >= e().f107873g) {
                throw new NoSuchElementException();
            }
            int b10 = b();
            g(b10 + 1);
            h(b10);
            Object[] objArr = e().f107869c;
            M.m(objArr);
            V v10 = (V) objArr[d()];
            f();
            return v10;
        }
    }

    static {
        d dVar = new d(0);
        dVar.f107880n = true;
        f107867t = dVar;
    }

    public d(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i10, int i11) {
        this.f107868b = kArr;
        this.f107869c = vArr;
        this.f107870d = iArr;
        this.f107871e = iArr2;
        this.f107872f = i10;
        this.f107873g = i11;
        this.f107874h = f107862o.d(B());
    }

    private final void M(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final void N() {
        this.f107875i++;
    }

    private final Object X() {
        if (this.f107880n) {
            return new i(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    private final void u(int i10) {
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        if (i10 > z()) {
            int e10 = AbstractC14967d.f103841b.e(z(), i10);
            this.f107868b = (K[]) qf.c.e(this.f107868b, e10);
            V[] vArr = this.f107869c;
            this.f107869c = vArr != null ? (V[]) qf.c.e(vArr, e10) : null;
            int[] copyOf = Arrays.copyOf(this.f107870d, e10);
            M.o(copyOf, "copyOf(...)");
            this.f107870d = copyOf;
            int c10 = f107862o.c(e10);
            if (c10 > B()) {
                O(c10);
            }
        }
    }

    private final void v(int i10) {
        if (V(i10)) {
            p(true);
        } else {
            u(this.f107873g + i10);
        }
    }

    @NotNull
    public Set<Map.Entry<K, V>> A() {
        qf.e<K, V> eVar = this.f107879m;
        if (eVar != null) {
            return eVar;
        }
        qf.e<K, V> eVar2 = new qf.e<>(this);
        this.f107879m = eVar2;
        return eVar2;
    }

    public final int B() {
        return this.f107871e.length;
    }

    @NotNull
    public Set<K> C() {
        qf.f<K> fVar = this.f107877k;
        if (fVar != null) {
            return fVar;
        }
        qf.f<K> fVar2 = new qf.f<>(this);
        this.f107877k = fVar2;
        return fVar2;
    }

    public int D() {
        return this.f107876j;
    }

    @NotNull
    public Collection<V> E() {
        g<V> gVar = this.f107878l;
        if (gVar != null) {
            return gVar;
        }
        g<V> gVar2 = new g<>(this);
        this.f107878l = gVar2;
        return gVar2;
    }

    public final int F(K k10) {
        return ((k10 != null ? k10.hashCode() : 0) * (-1640531527)) >>> this.f107874h;
    }

    public final boolean H() {
        return this.f107880n;
    }

    @NotNull
    public final e<K, V> I() {
        return new e<>(this);
    }

    @InterfaceC14394D
    public final boolean J(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z10 = false;
        if (collection.isEmpty()) {
            return false;
        }
        v(collection.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = collection.iterator();
        while (it.hasNext()) {
            if (K(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public final boolean K(Map.Entry<? extends K, ? extends V> entry) {
        int l10 = l(entry.getKey());
        V[] m10 = m();
        if (l10 >= 0) {
            m10[l10] = entry.getValue();
            return true;
        }
        int i10 = (-l10) - 1;
        if (M.g(entry.getValue(), m10[i10])) {
            return false;
        }
        m10[i10] = entry.getValue();
        return true;
    }

    public final boolean L(int i10) {
        int F10 = F(this.f107868b[i10]);
        int i11 = this.f107872f;
        while (true) {
            int[] iArr = this.f107871e;
            if (iArr[F10] == 0) {
                iArr[F10] = i10 + 1;
                this.f107870d[i10] = F10;
                return true;
            }
            i11--;
            if (i11 < 0) {
                return false;
            }
            F10 = F10 == 0 ? B() - 1 : F10 - 1;
        }
    }

    public final void O(int i10) {
        N();
        int i11 = 0;
        if (this.f107873g > size()) {
            p(false);
        }
        this.f107871e = new int[i10];
        this.f107874h = f107862o.d(i10);
        while (i11 < this.f107873g) {
            int i12 = i11 + 1;
            if (!L(i11)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i11 = i12;
        }
    }

    public final boolean P(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        M.p(entry, "entry");
        o();
        int x10 = x(entry.getKey());
        if (x10 < 0) {
            return false;
        }
        V[] vArr = this.f107869c;
        M.m(vArr);
        if (!M.g(vArr[x10], entry.getValue())) {
            return false;
        }
        Q(x10);
        return true;
    }

    public final void Q(int i10) {
        qf.c.f(this.f107868b, i10);
        V[] vArr = this.f107869c;
        if (vArr != null) {
            qf.c.f(vArr, i10);
        }
        R(this.f107870d[i10]);
        this.f107870d[i10] = -1;
        this.f107876j = size() - 1;
        N();
    }

    public final void R(int i10) {
        int D10 = u.D(this.f107872f * 2, B() / 2);
        int i11 = 0;
        int i12 = i10;
        do {
            i10 = i10 == 0 ? B() - 1 : i10 - 1;
            i11++;
            if (i11 > this.f107872f) {
                this.f107871e[i12] = 0;
                return;
            }
            int[] iArr = this.f107871e;
            int i13 = iArr[i10];
            if (i13 == 0) {
                iArr[i12] = 0;
                return;
            }
            if (i13 < 0) {
                iArr[i12] = -1;
            } else {
                int i14 = i13 - 1;
                if (((F(this.f107868b[i14]) - i10) & (B() - 1)) >= i11) {
                    this.f107871e[i12] = i13;
                    this.f107870d[i14] = i12;
                }
                D10--;
            }
            i12 = i10;
            i11 = 0;
            D10--;
        } while (D10 >= 0);
        this.f107871e[i12] = -1;
    }

    public final boolean T(K k10) {
        o();
        int x10 = x(k10);
        if (x10 < 0) {
            return false;
        }
        Q(x10);
        return true;
    }

    public final boolean U(V v10) {
        o();
        int y10 = y(v10);
        if (y10 < 0) {
            return false;
        }
        Q(y10);
        return true;
    }

    public final boolean V(int i10) {
        int z10 = z();
        int i11 = this.f107873g;
        int i12 = z10 - i11;
        int size = i11 - size();
        return i12 < i10 && i12 + size >= i10 && size >= z() / 4;
    }

    @NotNull
    public final f<K, V> W() {
        return new f<>(this);
    }

    @Override
    public void clear() {
        o();
        int i10 = this.f107873g - 1;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                int[] iArr = this.f107870d;
                int i12 = iArr[i11];
                if (i12 >= 0) {
                    this.f107871e[i12] = 0;
                    iArr[i11] = -1;
                }
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        qf.c.g(this.f107868b, 0, this.f107873g);
        V[] vArr = this.f107869c;
        if (vArr != null) {
            qf.c.g(vArr, 0, this.f107873g);
        }
        this.f107876j = 0;
        this.f107873g = 0;
        N();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsKey(Object obj) {
        return x(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsValue(Object obj) {
        return y(obj) >= 0;
    }

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return A();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof Map) && s((Map) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public V get(Object obj) {
        int x10 = x(obj);
        if (x10 < 0) {
            return null;
        }
        V[] vArr = this.f107869c;
        M.m(vArr);
        return vArr[x10];
    }

    @Override
    public int hashCode() {
        b<K, V> w10 = w();
        int i10 = 0;
        while (w10.hasNext()) {
            i10 += w10.m();
        }
        return i10;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public final Set<K> o() {
        return C();
    }

    public final int l(K k10) {
        o();
        while (true) {
            int F10 = F(k10);
            int D10 = u.D(this.f107872f * 2, B() / 2);
            int i10 = 0;
            while (true) {
                int i11 = this.f107871e[F10];
                if (i11 <= 0) {
                    if (this.f107873g < z()) {
                        int i12 = this.f107873g;
                        int i13 = i12 + 1;
                        this.f107873g = i13;
                        this.f107868b[i12] = k10;
                        this.f107870d[i12] = F10;
                        this.f107871e[F10] = i13;
                        this.f107876j = size() + 1;
                        N();
                        if (i10 > this.f107872f) {
                            this.f107872f = i10;
                        }
                        return i12;
                    }
                    v(1);
                } else {
                    if (M.g(this.f107868b[i11 - 1], k10)) {
                        return -i11;
                    }
                    i10++;
                    if (i10 > D10) {
                        O(B() * 2);
                        break;
                    }
                    F10 = F10 == 0 ? B() - 1 : F10 - 1;
                }
            }
        }
    }

    public final V[] m() {
        V[] vArr = this.f107869c;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) qf.c.d(z());
        this.f107869c = vArr2;
        return vArr2;
    }

    @NotNull
    public final Map<K, V> n() {
        o();
        this.f107880n = true;
        if (size() > 0) {
            return this;
        }
        d dVar = f107867t;
        M.n(dVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return dVar;
    }

    public final void o() {
        if (this.f107880n) {
            throw new UnsupportedOperationException();
        }
    }

    public final void p(boolean z10) {
        int i10;
        V[] vArr = this.f107869c;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f107873g;
            if (i11 >= i10) {
                break;
            }
            int[] iArr = this.f107870d;
            int i13 = iArr[i11];
            if (i13 >= 0) {
                K[] kArr = this.f107868b;
                kArr[i12] = kArr[i11];
                if (vArr != null) {
                    vArr[i12] = vArr[i11];
                }
                if (z10) {
                    iArr[i12] = i13;
                    this.f107871e[i13] = i12 + 1;
                }
                i12++;
            }
            i11++;
        }
        qf.c.g(this.f107868b, i12, i10);
        if (vArr != null) {
            qf.c.g(vArr, i12, this.f107873g);
        }
        this.f107873g = i12;
    }

    @Override
    @Nullable
    public V put(K k10, V v10) {
        o();
        int l10 = l(k10);
        V[] m10 = m();
        if (l10 >= 0) {
            m10[l10] = v10;
            return null;
        }
        int i10 = (-l10) - 1;
        V v11 = m10[i10];
        m10[i10] = v10;
        return v11;
    }

    @Override
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        M.p(from, "from");
        o();
        J(from.entrySet());
    }

    public final boolean q(@NotNull Collection<?> m10) {
        M.p(m10, "m");
        for (Object obj : m10) {
            if (obj != null) {
                try {
                    if (!r((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean r(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        M.p(entry, "entry");
        int x10 = x(entry.getKey());
        if (x10 < 0) {
            return false;
        }
        V[] vArr = this.f107869c;
        M.m(vArr);
        return M.g(vArr[x10], entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public V remove(Object obj) {
        o();
        int x10 = x(obj);
        if (x10 < 0) {
            return null;
        }
        V[] vArr = this.f107869c;
        M.m(vArr);
        V v10 = vArr[x10];
        Q(x10);
        return v10;
    }

    public final boolean s(Map<?, ?> map) {
        return size() == map.size() && q(map.entrySet());
    }

    @Override
    public final int size() {
        return D();
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder((size() * 3) + 2);
        sb2.append("{");
        b<K, V> w10 = w();
        int i10 = 0;
        while (w10.hasNext()) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            w10.k(sb2);
            i10++;
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        String sb3 = sb2.toString();
        M.o(sb3, "toString(...)");
        return sb3;
    }

    @Override
    public final Collection<V> values() {
        return E();
    }

    @NotNull
    public final b<K, V> w() {
        return new b<>(this);
    }

    public final int x(K k10) {
        int F10 = F(k10);
        int i10 = this.f107872f;
        while (true) {
            int i11 = this.f107871e[F10];
            if (i11 == 0) {
                return -1;
            }
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (M.g(this.f107868b[i12], k10)) {
                    return i12;
                }
            }
            i10--;
            if (i10 < 0) {
                return -1;
            }
            F10 = F10 == 0 ? B() - 1 : F10 - 1;
        }
    }

    public final int y(V v10) {
        int i10 = this.f107873g;
        while (true) {
            i10--;
            if (i10 < 0) {
                return -1;
            }
            if (this.f107870d[i10] >= 0) {
                V[] vArr = this.f107869c;
                M.m(vArr);
                if (M.g(vArr[i10], v10)) {
                    return i10;
                }
            }
        }
    }

    public final int z() {
        return this.f107868b.length;
    }

    public d() {
        this(8);
    }

    public d(int i10) {
        this(qf.c.d(i10), null, new int[i10], new int[f107862o.c(i10)], 2, 0);
    }
}
