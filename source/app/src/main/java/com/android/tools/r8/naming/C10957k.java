package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C5371Jb;
import com.android.tools.r8.internal.InterfaceC5429Kb;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.O40;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.kotlin.C10789h1;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import ei.C13155a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

public class C10957k implements InterfaceC10942h {

    public static final List f55949h = Collections.EMPTY_LIST;

    public static final boolean f55950i = true;

    public final String f55951a;

    public final String f55952b;

    public final AbstractC8552nC f55953c;

    public final AbstractC8552nC f55954d;

    public final Map<String, c> f55955e;

    public final HashMap f55956f;

    public final List f55957g;

    public static class a extends AbstractC10937g {

        public static final boolean f55958i = true;

        public final String f55959a;

        public final String f55960b;

        public final HashMap f55961c = new HashMap();

        public final HashMap f55962d = new HashMap();

        public final HashMap f55963e = new HashMap();

        public final HashMap f55964f = new HashMap();

        public List f55965g = C10957k.f55949h;

        public final BiConsumer f55966h;

        public a(String str, String str2, BiConsumer biConsumer) {
            this.f55959a = str2;
            this.f55960b = str;
            this.f55966h = biConsumer;
        }

        public static List b(String str) {
            return new ArrayList();
        }

        @Override
        public final V a(V.c cVar) {
            cVar.getClass();
            if (cVar instanceof V.a) {
                return (V) this.f55962d.get(cVar.a());
            }
            return (V) this.f55961c.get(cVar.b());
        }

        @Override
        public final b a(M0 m02, V.b bVar, M0 m03, String str) {
            b bVar2 = new b(m02, bVar, m03, str);
            ((List) this.f55963e.computeIfAbsent(str, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10957k.a.a((String) obj);
                }
            })).add(bVar2);
            return bVar2;
        }

        @Override
        public final AbstractC10937g a(V v10) {
            if (v10.f55767b.e() == 1) {
                this.f55961c.put(v10.b().b(), v10);
                return this;
            }
            this.f55962d.put(v10.b().a(), v10);
            ((List) this.f55964f.computeIfAbsent(v10.c(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C10957k.a.b((String) obj);
                }
            })).add(v10);
            return this;
        }

        public static List a(String str) {
            return new ArrayList();
        }

        @Override
        public final void a(Consumer consumer, com.android.tools.r8.naming.mappinginformation.e eVar) {
            if (this.f55965g == C10957k.f55949h) {
                this.f55965g = new ArrayList();
            }
            for (com.android.tools.r8.naming.mappinginformation.e eVar2 : this.f55965g) {
                if (!eVar2.a(eVar)) {
                    consumer.accept(eVar2);
                    return;
                }
            }
            this.f55965g.add(eVar);
            if (eVar instanceof com.android.tools.r8.naming.mappinginformation.a) {
                this.f55966h.accept(this.f55959a, ((com.android.tools.r8.naming.mappinginformation.a) eVar).f56009a);
            }
        }

        @Override
        public final boolean a(V.b bVar) {
            List list = (List) this.f55963e.get(bVar.c());
            if (list == null) {
                return true;
            }
            List a10 = AT.a((Collection) list, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10957k.a.a((C10957k.b) obj);
                }
            });
            if (a10.isEmpty()) {
                return true;
            }
            Iterator it = new c(a10).b().iterator();
            while (it.hasNext()) {
                List<b> a11 = ((c) it.next()).a();
                Comparator comparing = Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Integer valueOf;
                        valueOf = Integer.valueOf(((C10957k.b) obj).f55969b.f55702a);
                        return valueOf;
                    }
                });
                ArrayList arrayList = new ArrayList(a11);
                arrayList.sort(comparing);
                M0 m02 = new M0(-1, -1, false);
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    b bVar2 = (b) obj;
                    if (!bVar2.f55969b.equals(m02)) {
                        M0 m03 = bVar2.f55969b;
                        if (m03.f55702a <= m02.f55703b) {
                            if (f55958i) {
                                return false;
                            }
                            throw new AssertionError();
                        }
                        m02 = m03;
                    }
                }
            }
            return true;
        }

        public static boolean a(b bVar) {
            return bVar.f55969b != null;
        }
    }

    public static class c {

        public static final c f55977b = new c(Collections.EMPTY_LIST);

        public static final boolean f55978c = true;

        public final List f55979a;

        public c(List list) {
            this.f55979a = list;
        }

        public List<b> a(int i10) {
            return a(i10, true);
        }

        public b b(int i10) {
            b bVar = null;
            for (b bVar2 : this.f55979a) {
                M0 m02 = bVar2.f55969b;
                if (m02 != null) {
                    if (m02.a(i10)) {
                        return bVar2;
                    }
                } else if (bVar == null) {
                    bVar = bVar2;
                }
            }
            return bVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f55979a.equals(((c) obj).f55979a);
        }

        public final int hashCode() {
            return this.f55979a.hashCode();
        }

        public final List a(int i10, boolean z10) {
            b bVar = null;
            for (int i11 = 0; i11 < this.f55979a.size(); i11++) {
                b bVar2 = (b) this.f55979a.get(i11);
                M0 m02 = bVar2.f55969b;
                if (m02 != null) {
                    if (m02.a(i10)) {
                        int i12 = i11 + 1;
                        while (i12 < this.f55979a.size() && Objects.equals(((b) this.f55979a.get(i12)).f55969b, bVar2.f55969b)) {
                            i12++;
                        }
                        return this.f55979a.subList(i11, i12);
                    }
                } else if (bVar == null && z10) {
                    bVar = bVar2;
                }
            }
            return bVar == null ? Collections.EMPTY_LIST : Collections.singletonList(bVar);
        }

        public final List b() {
            if (this.f55979a.size() <= 1) {
                return Collections.singletonList(this);
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int a10 = S.a(this.f55979a, 0, arrayList2);
            if (((b) AT.b(arrayList2)).f55970c.equals(((b) AT.b(this.f55979a)).f55970c)) {
                return Collections.singletonList(this);
            }
            while (a10 < this.f55979a.size()) {
                ArrayList arrayList3 = new ArrayList();
                a10 = S.a(this.f55979a, a10, arrayList3);
                if (!((b) AT.b(arrayList2)).f55970c.equals(((b) AT.b(arrayList3)).f55970c)) {
                    arrayList.add(new c(arrayList2));
                    arrayList2 = new ArrayList();
                }
                arrayList2.addAll(arrayList3);
            }
            arrayList.add(new c(arrayList2));
            return arrayList;
        }

        public List<b> a() {
            return this.f55979a;
        }
    }

    public C10957k(String str, String str2, HashMap hashMap, HashMap hashMap2, Map map, HashMap hashMap3, List list) {
        this.f55952b = str;
        this.f55951a = str2;
        this.f55953c = AbstractC8552nC.a(hashMap);
        this.f55954d = AbstractC8552nC.a(hashMap2);
        this.f55955e = map;
        this.f55956f = hashMap3;
        this.f55957g = list;
    }

    public c a(String str) {
        return this.f55955e.get(str);
    }

    public V b(V.c cVar) {
        if (cVar.e() == 1) {
            AbstractC4895Av0 it = this.f55953c.values().iterator();
            while (it.hasNext()) {
                V v10 = (V) it.next();
                if (v10.a().equals(cVar)) {
                    return v10;
                }
            }
            return null;
        }
        if (!f55950i && cVar.e() != 2) {
            throw new AssertionError();
        }
        AbstractC4895Av0 it2 = this.f55954d.values().iterator();
        while (it2.hasNext()) {
            V v11 = (V) it2.next();
            if (v11.a().equals(cVar)) {
                return v11;
            }
        }
        return null;
    }

    public List<com.android.tools.r8.naming.mappinginformation.e> c() {
        return Collections.unmodifiableList(this.f55957g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10957k)) {
            return false;
        }
        C10957k c10957k = (C10957k) obj;
        return this.f55951a.equals(c10957k.f55951a) && this.f55952b.equals(c10957k.f55952b) && this.f55953c.equals(c10957k.f55953c) && this.f55954d.equals(c10957k.f55954d) && this.f55955e.equals(c10957k.f55955e);
    }

    public int hashCode() {
        return this.f55955e.hashCode() + ((this.f55954d.hashCode() + ((this.f55953c.hashCode() + ((this.f55952b.hashCode() + (this.f55951a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(new C5371Jb(new C10789h1(sb2)));
        return sb2.toString();
    }

    public final C10957k a(C10957k c10957k) {
        if (this.f55951a.equals(c10957k.f55951a)) {
            if (this.f55952b.equals(c10957k.f55952b)) {
                if (this.f55953c.isEmpty() && this.f55954d.isEmpty()) {
                    return c10957k;
                }
                if (c10957k.f55953c.isEmpty() && c10957k.f55954d.isEmpty()) {
                    return this;
                }
                throw new RuntimeException("R8 Retrace do not support merging of partial class mappings.");
            }
            String str = this.f55951a;
            throw new RuntimeException("Cannot combine mapping for " + str + " because it maps forward to both " + str + " and " + c10957k.f55951a + ".");
        }
        throw new RuntimeException("Cannot combine mapping for " + this.f55952b + " because it maps back to both " + this.f55951a + " and " + c10957k.f55951a + ".");
    }

    public static class b implements U {

        public static int f55967j = 0;

        public static final boolean f55968k = true;

        public final M0 f55969b;

        public final V.b f55970c;

        public final M0 f55971d;

        public final String f55972e;

        public V.b f55973f = null;

        public boolean f55974g = false;

        public final int f55975h;

        public List f55976i;

        public b(M0 m02, V.b bVar, M0 m03, String str) {
            int i10;
            synchronized (this) {
                i10 = f55967j;
                f55967j = i10 + 1;
            }
            this.f55975h = i10;
            this.f55976i = C10957k.f55949h;
            this.f55969b = m02;
            this.f55970c = bVar;
            this.f55971d = m03;
            this.f55972e = str;
        }

        public final void a(Consumer consumer, com.android.tools.r8.naming.mappinginformation.e eVar) {
            if (this.f55976i == C10957k.f55949h) {
                this.f55976i = new ArrayList();
            }
            com.android.tools.r8.naming.mappinginformation.e.a(this.f55976i, eVar, consumer);
        }

        @Override
        public String c() {
            return this.f55972e;
        }

        public final AbstractC7552hC d() {
            return a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).c();
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).m();
                }
            });
        }

        public final O40 e() {
            AbstractC7552hC a10 = a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).d();
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).n();
                }
            });
            if (!f55968k && a10.size() > 1) {
                throw new AssertionError();
            }
            if (a10.isEmpty()) {
                return null;
            }
            return (O40) a10.get(0);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Objects.equals(this.f55969b, bVar.f55969b) && Objects.equals(this.f55971d, bVar.f55971d) && this.f55970c.equals(bVar.f55970c) && this.f55972e.equals(bVar.f55972e) && Objects.equals(this.f55973f, bVar.f55973f) && Objects.equals(this.f55976i, bVar.f55976i);
        }

        @Override
        public final V.b b() {
            V.b bVar = this.f55973f;
            if (bVar != null) {
                return bVar;
            }
            V.b bVar2 = this.f55970c;
            return new V.b(this.f55972e, bVar2.f55774c, bVar2.f55775d).b();
        }

        public final AbstractC7552hC g() {
            return a(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).j();
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((com.android.tools.r8.naming.mappinginformation.e) obj).q();
                }
            });
        }

        public final int hashCode() {
            int hashCode = Objects.hashCode(this.f55976i) + ((Objects.hashCode(this.f55973f) + ((this.f55972e.hashCode() + ((this.f55970c.hashCode() + ((Objects.hashCode(this.f55971d) + (Objects.hashCode(this.f55969b) * 31)) * 31)) * 31)) * 31)) * 31);
            this.f55974g = true;
            return hashCode;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder();
            M0 m02 = this.f55969b;
            if (m02 != null) {
                sb2.append((Object) m02);
                sb2.append(':');
            }
            sb2.append((Object) this.f55970c);
            M0 m03 = this.f55971d;
            if (m03 != null && !m03.equals(this.f55969b)) {
                sb2.append(b3.s.f32937c);
                sb2.append((Object) this.f55971d);
            }
            sb2.append(" -> ");
            sb2.append(this.f55972e);
            return sb2.toString();
        }

        public final AbstractC7552hC a(Function function, Predicate predicate) {
            int i10 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            int i11 = 0;
            for (com.android.tools.r8.naming.mappinginformation.e eVar : this.f55976i) {
                if (predicate.test(eVar)) {
                    Object apply = function.apply(eVar);
                    apply.getClass();
                    int i12 = i11 + 1;
                    if (objArr.length < i12) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                    }
                    objArr[i11] = apply;
                    i11 = i12;
                }
            }
            return AbstractC7552hC.b(i11, objArr);
        }

        public int a(int i10) {
            M0 m02 = this.f55969b;
            if (m02 != null) {
                if (!f55968k && !m02.a(i10)) {
                    throw new AssertionError();
                }
                M0 m03 = this.f55971d;
                if (m03 != null) {
                    int i11 = m03.f55703b;
                    int i12 = m03.f55702a;
                    return i11 == i12 ? i11 : (i12 + i10) - this.f55969b.f55702a;
                }
            }
            return i10;
        }

        @Override
        public final V.c a() {
            return this.f55970c;
        }
    }

    public List<V> b(String str) {
        ArrayList arrayList = new ArrayList();
        AbstractC4895Av0 it = this.f55953c.values().iterator();
        while (it.hasNext()) {
            V v10 = (V) it.next();
            if (v10.a().f55777a.equals(str)) {
                arrayList.add(v10);
            }
        }
        AbstractC4895Av0 it2 = this.f55954d.values().iterator();
        while (it2.hasNext()) {
            V v11 = (V) it2.next();
            if (v11.a().f55777a.equals(str)) {
                arrayList.add(v11);
            }
        }
        return arrayList;
    }

    @Override
    public V a(V.c cVar) {
        if (cVar.e() == 1) {
            if (!f55950i && !(cVar instanceof V.b)) {
                throw new AssertionError();
            }
            return (V) this.f55953c.get(cVar);
        }
        boolean z10 = f55950i;
        if (!z10 && cVar.e() != 2) {
            throw new AssertionError();
        }
        if (!z10 && !(cVar instanceof V.a)) {
            throw new AssertionError();
        }
        return (V) this.f55954d.get(cVar);
    }

    public Collection<V> b() {
        return this.f55953c.values();
    }

    public Collection<V> a() {
        return this.f55954d.values();
    }

    public final void a(final Consumer consumer) {
        this.f55956f.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((List) obj).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C10957k.a(Consumer.this, (V) obj2);
                    }
                });
            }
        });
        this.f55955e.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C10957k.c) obj).f55979a.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C10957k.a(Consumer.this, (C10957k.b) obj2);
                    }
                });
            }
        });
    }

    public static void a(Consumer consumer, V v10) {
        if (v10.a().d()) {
            consumer.accept(v10.a().f());
        }
    }

    public static void a(Consumer consumer, b bVar) {
        if (bVar.f55970c.d()) {
            consumer.accept(bVar.f55970c.f());
        }
    }

    public final void a(final InterfaceC5429Kb interfaceC5429Kb) {
        interfaceC5429Kb.a(this.f55951a).a(" -> ").a(this.f55952b).a(":\n");
        this.f55957g.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5429Kb.this.a("# " + ((com.android.tools.r8.naming.mappinginformation.e) obj).r()).a("\n");
            }
        });
        final String str = C13155a.f85806a;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10957k.a(InterfaceC5429Kb.this, str, (V) obj);
            }
        };
        ArrayList arrayList = new ArrayList(this.f55954d.values());
        Collections.sort(arrayList);
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            interfaceC6160Wr0.accept((V) obj);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<c> it = this.f55955e.values().iterator();
        while (it.hasNext()) {
            arrayList2.addAll(it.next().f55979a);
        }
        arrayList2.sort(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj2) {
                int i12;
                i12 = ((C10957k.b) obj2).f55975h;
                return i12;
            }
        }));
        int size2 = arrayList2.size();
        while (i10 < size2) {
            Object obj2 = arrayList2.get(i10);
            i10++;
            b bVar = (b) obj2;
            interfaceC5429Kb.a(C13155a.f85806a).a(bVar.toString()).a("\n");
            Iterator it2 = Collections.unmodifiableList(bVar.f55976i).iterator();
            while (it2.hasNext()) {
                interfaceC5429Kb.a(C13155a.f85806a + "  # ").a(((com.android.tools.r8.naming.mappinginformation.e) it2.next()).r()).a("\n");
            }
        }
    }

    public static void a(InterfaceC5429Kb interfaceC5429Kb, String str, V v10) {
        interfaceC5429Kb.a(str).a(v10.toString()).a("\n");
        Iterator it = v10.f55770e.iterator();
        while (it.hasNext()) {
            interfaceC5429Kb.a(str + "  # ").a(((com.android.tools.r8.naming.mappinginformation.e) it.next()).r()).a("\n");
        }
    }
}
