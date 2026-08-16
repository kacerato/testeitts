package ig;

import Lf.x;
import Mf.p;
import Vf.u;
import Xf.K;
import a.C3528a;
import ag.C3610D;
import ag.C3617K;
import eg.AbstractC13100M;
import eg.K0;
import eg.N0;
import eg.P;
import eg.Q;
import eg.R0;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import nf.Z;
import nf.v0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;
import pf.I;
import pf.S;
import pf.n0;
import tf.C15420g;

@t0({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,620:1\n150#1:638\n151#1,4:640\n156#1,5:645\n150#1:650\n151#1,4:652\n156#1,5:657\n1#2:621\n1#2:639\n1#2:651\n766#3:622\n857#3,2:623\n1208#3,2:625\n1238#3,4:627\n1855#3,2:665\n350#3,7:673\n1819#3,8:680\n603#4:631\n603#4:644\n603#4:656\n603#4:662\n1295#4,2:663\n37#5,2:632\n37#5,2:634\n37#5,2:636\n1627#6,6:667\n1735#6,6:688\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n245#1:638\n245#1:640,4\n245#1:645,5\n252#1:650\n252#1:652,4\n252#1:657,5\n245#1:639\n252#1:651\n110#1:622\n110#1:623,2\n111#1:625,2\n111#1:627,4\n307#1:665,2\n416#1:673,7\n506#1:680,8\n154#1:631\n245#1:644\n252#1:656\n287#1:662\n288#1:663,2\n211#1:632,2\n212#1:634,2\n213#1:636,2\n355#1:667,6\n558#1:688,6\n*E\n"})
@InterfaceC14410f0
public final class g {

    @NotNull
    public static final g f92239a;

    @NotNull
    public static final StackTraceElement f92240b;

    @NotNull
    public static final SimpleDateFormat f92241c;

    @Nullable
    public static Thread f92242d;

    @NotNull
    public static final C13732b<a<?>, Boolean> f92243e;

    public static boolean f92244f;

    public static boolean f92245g;

    public static boolean f92246h;

    @Nullable
    public static final Mf.l<Boolean, P0> f92247i;

    @NotNull
    public static final C13732b<Bf.e, C13735e> f92248j;

    @NotNull
    public static final b f92249k;

    @NotNull
    public static final c f92250l;

    public static final class a<T> implements yf.f<T>, Bf.e {

        @Lf.g
        @NotNull
        public final yf.f<T> f92251b;

        @Lf.g
        @NotNull
        public final C13735e f92252c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull yf.f<? super T> fVar, @NotNull C13735e c13735e) {
            this.f92251b = fVar;
            this.f92252c = c13735e;
        }

        public final m a() {
            return this.f92252c.d();
        }

        @Override
        @Nullable
        public Bf.e getCallerFrame() {
            m a10 = a();
            if (a10 != null) {
                return a10.getCallerFrame();
            }
            return null;
        }

        @Override
        @NotNull
        public yf.j getContext() {
            return this.f92251b.getContext();
        }

        @Override
        @Nullable
        public StackTraceElement getStackTraceElement() {
            m a10 = a();
            if (a10 != null) {
                return a10.getStackTraceElement();
            }
            return null;
        }

        @Override
        public void resumeWith(@NotNull Object obj) {
            g.f92239a.F(this);
            this.f92251b.resumeWith(obj);
        }

        @NotNull
        public String toString() {
            return this.f92251b.toString();
        }
    }

    public static final class b {

        @NotNull
        public static final AtomicIntegerFieldUpdater f92253a = AtomicIntegerFieldUpdater.newUpdater(b.class, "installations");

        @x
        private volatile int installations;

        public b() {
        }

        public b(C14026x c14026x) {
            this();
        }
    }

    public static final class c {

        @NotNull
        public static final AtomicLongFieldUpdater f92254a = AtomicLongFieldUpdater.newUpdater(c.class, "sequenceNumber");

        @x
        private volatile long sequenceNumber;

        public c() {
        }

        public c(C14026x c14026x) {
            this();
        }
    }

    @t0({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,620:1\n1#2:621\n245#3:622\n*E\n"})
    public static final class d extends O implements Mf.l<a<?>, C13734d> {
        public d() {
            super(1);
        }

        @Override
        @Nullable
        public final C13734d invoke(@NotNull a<?> aVar) {
            yf.j c10;
            if (g.f92239a.z(aVar) || (c10 = aVar.f92252c.c()) == null) {
                return null;
            }
            return new C13734d(aVar.f92252c, c10);
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,328:1\n154#2:329\n*E\n"})
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t10, T t11) {
            return C15420g.l(Long.valueOf(((a) t10).f92252c.f92223b), Long.valueOf(((a) t11).f92252c.f92223b));
        }
    }

    @t0({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,620:1\n1#2:621\n*E\n"})
    public static final class f<R> extends O implements Mf.l<a<?>, R> {

        public final p<a<?>, yf.j, R> f92255b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public f(p<? super a<?>, ? super yf.j, ? extends R> pVar) {
            super(1);
            this.f92255b = pVar;
        }

        @Override
        @Nullable
        public final R invoke(@NotNull a<?> aVar) {
            yf.j c10;
            if (g.f92239a.z(aVar) || (c10 = aVar.f92252c.c()) == null) {
                return null;
            }
            return this.f92255b.invoke(aVar, c10);
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,328:1\n287#2:329\n*E\n"})
    public static final class C1779g<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final int compare(T t10, T t11) {
            return C15420g.l(Long.valueOf(((a) t10).f92252c.f92223b), Long.valueOf(((a) t11).f92252c.f92223b));
        }
    }

    public static final class h extends O implements Mf.l<a<?>, Boolean> {

        public static final h f92256b = new h();

        public h() {
            super(1);
        }

        @Override
        @NotNull
        public final Boolean invoke(@NotNull a<?> aVar) {
            return Boolean.valueOf(!g.f92239a.z(aVar));
        }
    }

    @t0({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,620:1\n1#2:621\n252#3:622\n*E\n"})
    public static final class i extends O implements Mf.l<a<?>, ig.j> {
        public i() {
            super(1);
        }

        @Override
        @Nullable
        public final ig.j invoke(@NotNull a<?> aVar) {
            yf.j c10;
            if (g.f92239a.z(aVar) || (c10 = aVar.f92252c.c()) == null) {
                return null;
            }
            return new ig.j(aVar.f92252c, c10);
        }
    }

    public static final class j extends O implements Mf.a<P0> {

        public static final j f92257b = new j();

        public j() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            g.f92248j.r();
        }
    }

    static {
        g gVar = new g();
        f92239a = gVar;
        f92240b = new C3528a().b();
        f92241c = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        C14026x c14026x = null;
        f92243e = new C13732b<>(false, 1, c14026x);
        f92244f = true;
        f92245g = true;
        f92246h = true;
        f92247i = gVar.t();
        f92248j = new C13732b<>(true);
        f92249k = new b(c14026x);
        f92250l = new c(c14026x);
    }

    public static void s(K0 k02) {
    }

    @Lf.j(name = "isInstalled$kotlinx_coroutines_debug")
    public final boolean A() {
        return b.f92253a.get(f92249k) > 0;
    }

    public final boolean B(StackTraceElement stackTraceElement) {
        return C3617K.L2(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
    }

    public final a<?> C(Bf.e eVar) {
        while (!(eVar instanceof a)) {
            eVar = eVar.getCallerFrame();
            if (eVar == null) {
                return null;
            }
        }
        return (a) eVar;
    }

    public final a<?> D(yf.f<?> fVar) {
        Bf.e eVar = fVar instanceof Bf.e ? (Bf.e) fVar : null;
        if (eVar != null) {
            return C(eVar);
        }
        return null;
    }

    public final void E(PrintStream printStream, List<StackTraceElement> list) {
        Iterator<StackTraceElement> it = list.iterator();
        while (it.hasNext()) {
            printStream.print("\n\tat " + ((Object) it.next()));
        }
    }

    public final void F(a<?> aVar) {
        Bf.e J10;
        f92243e.remove(aVar);
        Bf.e f10 = aVar.f92252c.f();
        if (f10 == null || (J10 = J(f10)) == null) {
            return;
        }
        f92248j.remove(J10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> yf.f<T> G(@NotNull yf.f<? super T> fVar) {
        if (!A()) {
            return fVar;
        }
        if (!(f92246h && fVar.getContext() == yf.l.f130251b) && D(fVar) == null) {
            return e(fVar, f92245g ? Q(K(new Exception())) : null);
        }
        return fVar;
    }

    public final void H(@NotNull yf.f<?> fVar) {
        V(fVar, C13736f.f92237b);
    }

    public final void I(@NotNull yf.f<?> fVar) {
        V(fVar, C13736f.f92238c);
    }

    public final Bf.e J(Bf.e eVar) {
        do {
            eVar = eVar.getCallerFrame();
            if (eVar == null) {
                return null;
            }
        } while (eVar.getStackTraceElement() == null);
        return eVar;
    }

    public final <T extends Throwable> List<StackTraceElement> K(T t10) {
        StackTraceElement[] stackTrace = t10.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i11 = length2 - 1;
                if (M.g(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i10 = length2;
                    break;
                }
                if (i11 < 0) {
                    break;
                }
                length2 = i11;
            }
        }
        int i12 = i10 + 1;
        if (!f92244f) {
            int i13 = length - i12;
            ArrayList arrayList = new ArrayList(i13);
            for (int i14 = 0; i14 < i13; i14++) {
                arrayList.add(stackTrace[i14 + i12]);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i12) + 1);
        while (i12 < length) {
            if (B(stackTrace[i12])) {
                arrayList2.add(stackTrace[i12]);
                int i15 = i12 + 1;
                while (i15 < length && B(stackTrace[i15])) {
                    i15++;
                }
                int i16 = i15 - 1;
                int i17 = i16;
                while (i17 > i12 && stackTrace[i17].getFileName() == null) {
                    i17--;
                }
                if (i17 > i12 && i17 < i16) {
                    arrayList2.add(stackTrace[i17]);
                }
                arrayList2.add(stackTrace[i16]);
                i12 = i15;
            } else {
                arrayList2.add(stackTrace[i12]);
                i12++;
            }
        }
        return arrayList2;
    }

    public final void L(boolean z10) {
        f92245g = z10;
    }

    public final void M(boolean z10) {
        f92246h = z10;
    }

    public final void N(boolean z10) {
        f92244f = z10;
    }

    public final void O() {
        f92242d = uf.b.c(false, true, null, "Coroutines Debugger Cleaner", 0, j.f92257b, 21, null);
    }

    public final void P() {
        Thread thread = f92242d;
        if (thread == null) {
            return;
        }
        f92242d = null;
        thread.interrupt();
        thread.join();
    }

    public final m Q(List<StackTraceElement> list) {
        m mVar = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                mVar = new m(mVar, listIterator.previous());
            }
        }
        return new m(mVar, f92240b);
    }

    public final String R(Object obj) {
        String b10;
        b10 = ig.h.b(obj.toString());
        return b10;
    }

    public final void S() {
        Mf.l<Boolean, P0> lVar;
        if (!A()) {
            throw new IllegalStateException("Agent was not installed");
        }
        if (b.f92253a.decrementAndGet(f92249k) != 0) {
            return;
        }
        P();
        f92243e.clear();
        f92248j.clear();
        if (C13731a.f92186a.a() || (lVar = f92247i) == null) {
            return;
        }
        lVar.invoke(Boolean.FALSE);
    }

    public final void T(Bf.e eVar, String str) {
        boolean z10;
        if (A()) {
            C13732b<Bf.e, C13735e> c13732b = f92248j;
            C13735e remove = c13732b.remove(eVar);
            if (remove != null) {
                z10 = false;
            } else {
                a<?> C10 = C(eVar);
                if (C10 == null || (remove = C10.f92252c) == null) {
                    return;
                }
                Bf.e f10 = remove.f();
                Bf.e J10 = f10 != null ? J(f10) : null;
                if (J10 != null) {
                    c13732b.remove(J10);
                }
                z10 = true;
            }
            M.n(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
            remove.j(str, (yf.f) eVar, z10);
            Bf.e J11 = J(eVar);
            if (J11 == null) {
                return;
            }
            c13732b.put(J11, remove);
        }
    }

    public final void U(a<?> aVar, yf.f<?> fVar, String str) {
        if (A()) {
            aVar.f92252c.j(str, fVar, true);
        }
    }

    public final void V(yf.f<?> fVar, String str) {
        if (A()) {
            if (f92246h && fVar.getContext() == yf.l.f130251b) {
                return;
            }
            if (M.g(str, C13736f.f92237b)) {
                Bf.e eVar = fVar instanceof Bf.e ? (Bf.e) fVar : null;
                if (eVar == null) {
                    return;
                }
                T(eVar, str);
                return;
            }
            a<?> D10 = D(fVar);
            if (D10 == null) {
                return;
            }
            U(D10, fVar, str);
        }
    }

    public final void d(K0 k02, Map<K0, C13735e> map, StringBuilder sb2, String str) {
        C13735e c13735e = map.get(k02);
        if (c13735e != null) {
            StackTraceElement stackTraceElement = (StackTraceElement) S.L2(c13735e.h());
            sb2.append(str + r(k02) + ", continuation is " + c13735e.g() + " at line " + ((Object) stackTraceElement) + '\n');
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append('\t');
            str = sb3.toString();
        } else if (!(k02 instanceof mg.O)) {
            sb2.append(str + r(k02) + '\n');
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append('\t');
            str = sb4.toString();
        }
        Iterator<K0> it = k02.getChildren().iterator();
        while (it.hasNext()) {
            d(it.next(), map, sb2, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> yf.f<T> e(yf.f<? super T> fVar, m mVar) {
        if (!A()) {
            return fVar;
        }
        a<?> aVar = new a<>(fVar, new C13735e(fVar.getContext(), mVar, c.f92254a.incrementAndGet(f92250l)));
        C13732b<a<?>, Boolean> c13732b = f92243e;
        c13732b.put(aVar, Boolean.TRUE);
        if (!A()) {
            c13732b.clear();
        }
        return aVar;
    }

    @Lf.j(name = "dumpCoroutines")
    public final void f(@NotNull PrintStream printStream) {
        synchronized (printStream) {
            f92239a.j(printStream);
            P0 p02 = P0.f98194a;
        }
    }

    @NotNull
    public final List<C13734d> g() {
        if (A()) {
            return K.I3(K.S1(K.q3(S.E1(q()), new e()), new d()));
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    @NotNull
    public final Object[] h() {
        String v10;
        List<C13734d> g10 = g();
        int size = g10.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (C13734d c13734d : g10) {
            yf.j a10 = c13734d.a();
            Q q10 = (Q) a10.get(Q.f85633c);
            Long l10 = null;
            String R10 = (q10 == null || (v10 = q10.v()) == null) ? null : R(v10);
            AbstractC13100M abstractC13100M = (AbstractC13100M) a10.get(AbstractC13100M.Key);
            String R11 = abstractC13100M != null ? R(abstractC13100M) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"name\": ");
            sb2.append(R10);
            sb2.append(",\n                    \"id\": ");
            P p10 = (P) a10.get(P.f85631c);
            if (p10 != null) {
                l10 = Long.valueOf(p10.v());
            }
            sb2.append((Object) l10);
            sb2.append(",\n                    \"dispatcher\": ");
            sb2.append(R11);
            sb2.append(",\n                    \"sequenceNumber\": ");
            sb2.append(c13734d.f());
            sb2.append(",\n                    \"state\": \"");
            sb2.append(c13734d.g());
            sb2.append("\"\n                } \n                ");
            arrayList3.add(C3610D.v(sb2.toString()));
            arrayList2.add(c13734d.d());
            arrayList.add(c13734d.e());
        }
        return new Object[]{'[' + S.r3(arrayList3, null, null, null, 0, null, null, 63, null) + JavaElement.JEM_TYPE_PARAMETER, arrayList.toArray(new Thread[0]), arrayList2.toArray(new Bf.e[0]), g10.toArray(new C13734d[0])};
    }

    public final <R> List<R> i(p<? super a<?>, ? super yf.j, ? extends R> pVar) {
        if (A()) {
            return K.I3(K.S1(K.q3(S.E1(q()), new e()), new f(pVar)));
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    public final void j(PrintStream printStream) {
        if (!A()) {
            throw new IllegalStateException("Debug probes are not installed");
        }
        printStream.print("Coroutines dump " + f92241c.format(Long.valueOf(System.currentTimeMillis())));
        for (a aVar : K.q3(K.P0(S.E1(q()), h.f92256b), new C1779g())) {
            C13735e c13735e = aVar.f92252c;
            List<StackTraceElement> h10 = c13735e.h();
            g gVar = f92239a;
            List<StackTraceElement> n10 = gVar.n(c13735e.g(), c13735e.lastObservedThread, h10);
            printStream.print("\n\nCoroutine " + aVar.f92251b + ", state: " + ((M.g(c13735e.g(), C13736f.f92237b) && n10 == h10) ? c13735e.g() + " (Last suspension stacktrace, not an actual stacktrace)" : c13735e.g()));
            if (h10.isEmpty()) {
                printStream.print("\n\tat " + ((Object) f92240b));
                gVar.E(printStream, c13735e.e());
            } else {
                gVar.E(printStream, n10);
            }
        }
    }

    @NotNull
    public final List<ig.j> k() {
        if (A()) {
            return K.I3(K.S1(K.q3(S.E1(q()), new e()), new i()));
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    @NotNull
    public final List<StackTraceElement> l(@NotNull C13734d c13734d, @NotNull List<StackTraceElement> list) {
        return n(c13734d.g(), c13734d.e(), list);
    }

    @NotNull
    public final String m(@NotNull C13734d c13734d) {
        List<StackTraceElement> l10 = l(c13734d, c13734d.h());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : l10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"declaringClass\": \"");
            sb2.append(stackTraceElement.getClassName());
            sb2.append("\",\n                    \"methodName\": \"");
            sb2.append(stackTraceElement.getMethodName());
            sb2.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb2.append(fileName != null ? R(fileName) : null);
            sb2.append(",\n                    \"lineNumber\": ");
            sb2.append(stackTraceElement.getLineNumber());
            sb2.append("\n                }\n                ");
            arrayList.add(C3610D.v(sb2.toString()));
        }
        return '[' + S.r3(arrayList, null, null, null, 0, null, null, 63, null) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final List<StackTraceElement> n(String str, Thread thread, List<StackTraceElement> list) {
        Object b10;
        if (!M.g(str, C13736f.f92237b) || thread == null) {
            return list;
        }
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(thread.getStackTrace());
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        if (C14416i0.i(b10)) {
            b10 = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) b10;
        if (stackTraceElementArr == null) {
            return list;
        }
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i10];
            if (M.g(stackTraceElement.getClassName(), mg.S.f97036a) && M.g(stackTraceElement.getMethodName(), "resumeWith") && M.g(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i10++;
        }
        Z<Integer, Integer> o10 = o(i10, stackTraceElementArr, list);
        int intValue = o10.a().intValue();
        int intValue2 = o10.b().intValue();
        if (intValue == -1) {
            return list;
        }
        ArrayList arrayList = new ArrayList((((list.size() + i10) - intValue) - 1) - intValue2);
        int i11 = i10 - intValue2;
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(stackTraceElementArr[i12]);
        }
        int size = list.size();
        for (int i13 = intValue + 1; i13 < size; i13++) {
            arrayList.add(list.get(i13));
        }
        return arrayList;
    }

    public final Z<Integer, Integer> o(int i10, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        for (int i11 = 0; i11 < 3; i11++) {
            int p10 = f92239a.p((i10 - 1) - i11, stackTraceElementArr, list);
            if (p10 != -1) {
                return v0.a(Integer.valueOf(p10), Integer.valueOf(i11));
            }
        }
        return v0.a(-1, 0);
    }

    public final int p(int i10, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) C14960A.hf(stackTraceElementArr, i10);
        if (stackTraceElement == null) {
            return -1;
        }
        int i11 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (M.g(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && M.g(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && M.g(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public final Set<a<?>> q() {
        return f92243e.o();
    }

    public final String r(K0 k02) {
        return k02 instanceof R0 ? ((R0) k02).r1() : k02.toString();
    }

    public final Mf.l<Boolean, P0> t() {
        Object b10;
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            Object newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(null);
            M.n(newInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            b10 = C14416i0.b((Mf.l) w0.q(newInstance, 1));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        return (Mf.l) (C14416i0.i(b10) ? null : b10);
    }

    public final boolean u() {
        return f92245g;
    }

    public final boolean v() {
        return f92246h;
    }

    public final boolean w() {
        return f92244f;
    }

    @NotNull
    public final String x(@NotNull K0 k02) {
        if (!A()) {
            throw new IllegalStateException("Debug probes are not installed");
        }
        Set<a<?>> q10 = q();
        ArrayList<a> arrayList = new ArrayList();
        for (a<?> aVar : q10) {
            if (aVar.f92251b.getContext().get(K0.f85619y4) != null) {
                arrayList.add(aVar);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(I.d0(arrayList, 10)), 16));
        for (a aVar2 : arrayList) {
            linkedHashMap.put(N0.B(aVar2.f92251b.getContext()), aVar2.f92252c);
        }
        StringBuilder sb2 = new StringBuilder();
        f92239a.d(k02, linkedHashMap, sb2, "");
        String sb3 = sb2.toString();
        M.o(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    public final void y() {
        Mf.l<Boolean, P0> lVar;
        if (b.f92253a.incrementAndGet(f92249k) > 1) {
            return;
        }
        O();
        if (C13731a.f92186a.a() || (lVar = f92247i) == null) {
            return;
        }
        lVar.invoke(Boolean.TRUE);
    }

    public final boolean z(a<?> aVar) {
        K0 k02;
        yf.j c10 = aVar.f92252c.c();
        if (c10 == null || (k02 = (K0) c10.get(K0.f85619y4)) == null || !k02.d()) {
            return false;
        }
        f92243e.remove(aVar);
        return true;
    }
}
