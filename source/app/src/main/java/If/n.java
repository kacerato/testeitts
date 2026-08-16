package If;

import Xf.AbstractC3314o;
import Xf.C3316q;
import Xf.InterfaceC3312m;
import android.test.InstrumentationTestRunner;
import java.nio.file.FileSystemLoopException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;
import pf.C14981m;

public final class n implements InterfaceC3312m<Path> {

    @NotNull
    public final Path f9291a;

    @NotNull
    public final p[] f9292b;

    @t0({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"})
    @Bf.f(c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {191, 197}, m = "invokeSuspend", n = {"$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0"}, v = 2)
    public static final class a extends Bf.l implements Mf.p<AbstractC3314o<? super Path>, yf.f<? super P0>, Object> {

        public Object f9293b;

        public Object f9294c;

        public Object f9295d;

        public Object f9296e;

        public Object f9297f;

        public Object f9298g;

        public Object f9299h;

        public Object f9300i;

        public int f9301j;

        public int f9302k;

        public Object f9303l;

        public a(yf.f<? super a> fVar) {
            super(2, fVar);
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            a aVar = new a(fVar);
            aVar.f9303l = obj;
            return aVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super Path> abstractC3314o, yf.f<? super P0> fVar) {
            return ((a) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0096, code lost:
        
            r2 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:37:0x011d  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x009c  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            d dVar;
            C14981m c14981m;
            Path path;
            d dVar2;
            n nVar;
            l lVar;
            LinkOption[] linkOptionArr;
            C14981m c14981m2;
            d dVar3;
            Path path2;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f9303l;
            Object l10 = Af.d.l();
            int i10 = this.f9302k;
            if (i10 == 0) {
                C14418j0.n(obj);
                C14981m c14981m3 = new C14981m();
                dVar = new d(n.this.i());
                c14981m3.addLast(new l(n.this.f9291a, o.b(n.this.f9291a, n.this.k()), null));
                c14981m = c14981m3;
            } else if (i10 == 1) {
                path2 = (Path) this.f9300i;
                dVar3 = (d) this.f9299h;
                lVar = (l) this.f9298g;
                nVar = (n) this.f9296e;
                dVar2 = (d) this.f9294c;
                c14981m2 = (C14981m) this.f9293b;
                C14418j0.n(obj);
                path = path2;
                dVar = dVar3;
                c14981m = c14981m2;
                LinkOption[] k10 = nVar.k();
                linkOptionArr = (LinkOption[]) Arrays.copyOf(k10, k10.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    c14981m.addAll(dVar.c(lVar));
                }
                dVar = dVar2;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dVar = (d) this.f9294c;
                c14981m = (C14981m) this.f9293b;
                C14418j0.n(obj);
            }
            while (!c14981m.isEmpty()) {
                lVar = (l) c14981m.removeFirst();
                nVar = n.this;
                path = lVar.d();
                if (lVar.c() != null) {
                    z.Q(path);
                }
                LinkOption[] k11 = nVar.k();
                LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(k11, k11.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                    if (o.a(lVar)) {
                        throw new FileSystemLoopException(path.toString());
                    }
                    if (nVar.j()) {
                        this.f9303l = abstractC3314o;
                        this.f9293b = c14981m;
                        this.f9294c = dVar;
                        this.f9295d = Bf.o.a(lVar);
                        this.f9296e = nVar;
                        this.f9297f = Bf.o.a(abstractC3314o);
                        this.f9298g = lVar;
                        this.f9299h = dVar;
                        this.f9300i = path;
                        this.f9301j = 0;
                        this.f9302k = 1;
                        if (abstractC3314o.a(path, this) == l10) {
                            return l10;
                        }
                        dVar2 = dVar;
                        c14981m2 = c14981m;
                        path2 = path;
                        dVar3 = dVar2;
                        path = path2;
                        dVar = dVar3;
                        c14981m = c14981m2;
                        LinkOption[] k102 = nVar.k();
                        linkOptionArr = (LinkOption[]) Arrays.copyOf(k102, k102.length);
                        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                        }
                        dVar = dVar2;
                        while (!c14981m.isEmpty()) {
                        }
                    } else {
                        dVar2 = dVar;
                        LinkOption[] k1022 = nVar.k();
                        linkOptionArr = (LinkOption[]) Arrays.copyOf(k1022, k1022.length);
                        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                        }
                        dVar = dVar2;
                        while (!c14981m.isEmpty()) {
                        }
                    }
                } else if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                    this.f9303l = abstractC3314o;
                    this.f9293b = c14981m;
                    this.f9294c = dVar;
                    this.f9295d = Bf.o.a(lVar);
                    this.f9296e = Bf.o.a(nVar);
                    this.f9297f = Bf.o.a(abstractC3314o);
                    this.f9298g = Bf.o.a(lVar);
                    this.f9299h = Bf.o.a(dVar);
                    this.f9300i = Bf.o.a(path);
                    this.f9301j = 0;
                    this.f9302k = 2;
                    if (abstractC3314o.a(path, this) == l10) {
                        return l10;
                    }
                }
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n44#2,19:200\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n70#1:181,19\n81#1:200,19\n*E\n"})
    @Bf.f(c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {191, 197, 210, 216}, m = "invokeSuspend", n = {"$this$iterator", InstrumentationTestRunner.REPORT_KEY_STACK, "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", InstrumentationTestRunner.REPORT_KEY_STACK, "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", InstrumentationTestRunner.REPORT_KEY_STACK, "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", InstrumentationTestRunner.REPORT_KEY_STACK, "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "node$iv", "entriesReader$iv", "path$iv", "$i$f$yieldIfNeeded"}, nl = {193, 199, 212, 218}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0"}, v = 2)
    public static final class b extends Bf.l implements Mf.p<AbstractC3314o<? super Path>, yf.f<? super P0>, Object> {

        public Object f9305b;

        public Object f9306c;

        public Object f9307d;

        public Object f9308e;

        public Object f9309f;

        public Object f9310g;

        public Object f9311h;

        public Object f9312i;

        public Object f9313j;

        public Object f9314k;

        public Object f9315l;

        public int f9316m;

        public int f9317n;

        public Object f9318o;

        public b(yf.f<? super b> fVar) {
            super(2, fVar);
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            b bVar = new b(fVar);
            bVar.f9318o = obj;
            return bVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super Path> abstractC3314o, yf.f<? super P0> fVar) {
            return ((b) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x01d2, code lost:
        
            continue;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            C14981m c14981m;
            d dVar;
            l lVar;
            d dVar2;
            l lVar2;
            n nVar;
            Path path;
            d dVar3;
            l lVar3;
            d dVar4;
            C14981m c14981m2;
            l lVar4;
            Path path2;
            n nVar2;
            LinkOption[] linkOptionArr;
            Path path3;
            d dVar5;
            l lVar5;
            l lVar6;
            n nVar3;
            LinkOption[] linkOptionArr2;
            C14981m c14981m3;
            l lVar7;
            l lVar8;
            Path path4;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f9318o;
            Object l10 = Af.d.l();
            int i10 = this.f9317n;
            if (i10 == 0) {
                C14418j0.n(obj);
                c14981m = new C14981m();
                dVar = new d(n.this.i());
                lVar = new l(n.this.f9291a, o.b(n.this.f9291a, n.this.k()), null);
                n nVar4 = n.this;
                Path d10 = lVar.d();
                if (lVar.c() != null) {
                    z.Q(d10);
                }
                LinkOption[] k10 = nVar4.k();
                LinkOption[] linkOptionArr3 = (LinkOption[]) Arrays.copyOf(k10, k10.length);
                if (!Files.isDirectory(d10, (LinkOption[]) Arrays.copyOf(linkOptionArr3, linkOptionArr3.length))) {
                    if (Files.exists(d10, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                        this.f9318o = abstractC3314o;
                        this.f9305b = c14981m;
                        this.f9306c = dVar;
                        this.f9307d = Bf.o.a(lVar);
                        this.f9308e = Bf.o.a(nVar4);
                        this.f9309f = Bf.o.a(abstractC3314o);
                        this.f9310g = Bf.o.a(lVar);
                        this.f9311h = Bf.o.a(dVar);
                        this.f9312i = Bf.o.a(d10);
                        this.f9316m = 0;
                        this.f9317n = 2;
                        if (abstractC3314o.a(d10, this) == l10) {
                            return l10;
                        }
                    }
                    dVar2 = dVar;
                    lVar2 = lVar;
                } else {
                    if (o.a(lVar)) {
                        throw new FileSystemLoopException(d10.toString());
                    }
                    if (nVar4.j()) {
                        this.f9318o = abstractC3314o;
                        this.f9305b = c14981m;
                        this.f9306c = dVar;
                        this.f9307d = lVar;
                        this.f9308e = nVar4;
                        this.f9309f = Bf.o.a(abstractC3314o);
                        this.f9310g = lVar;
                        this.f9311h = dVar;
                        this.f9312i = d10;
                        this.f9316m = 0;
                        this.f9317n = 1;
                        if (abstractC3314o.a(d10, this) == l10) {
                            return l10;
                        }
                        dVar4 = dVar;
                        c14981m2 = c14981m;
                        lVar4 = lVar;
                        path2 = d10;
                        dVar3 = dVar4;
                        nVar2 = nVar4;
                        lVar3 = lVar4;
                        C14981m c14981m4 = c14981m2;
                        path = path2;
                        dVar = dVar4;
                        nVar = nVar2;
                        lVar = lVar4;
                        c14981m = c14981m4;
                        LinkOption[] k11 = nVar.k();
                        linkOptionArr = (LinkOption[]) Arrays.copyOf(k11, k11.length);
                        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                        }
                        lVar2 = lVar3;
                        dVar2 = dVar3;
                    } else {
                        nVar = nVar4;
                        path = d10;
                        dVar3 = dVar;
                        lVar3 = lVar;
                        LinkOption[] k112 = nVar.k();
                        linkOptionArr = (LinkOption[]) Arrays.copyOf(k112, k112.length);
                        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                        }
                        lVar2 = lVar3;
                        dVar2 = dVar3;
                    }
                }
            } else if (i10 != 1) {
                if (i10 == 2) {
                } else if (i10 == 3) {
                    path4 = (Path) this.f9315l;
                    dVar2 = (d) this.f9314k;
                    lVar8 = (l) this.f9313j;
                    nVar3 = (n) this.f9311h;
                    lVar6 = (l) this.f9310g;
                    lVar7 = (l) this.f9307d;
                    dVar5 = (d) this.f9306c;
                    c14981m3 = (C14981m) this.f9305b;
                    C14418j0.n(obj);
                    C14981m c14981m5 = c14981m3;
                    path3 = path4;
                    lVar2 = lVar7;
                    lVar5 = lVar8;
                    c14981m = c14981m5;
                    LinkOption[] k12 = nVar3.k();
                    linkOptionArr2 = (LinkOption[]) Arrays.copyOf(k12, k12.length);
                    if (Files.isDirectory(path3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                        lVar6.e(dVar2.c(lVar5).iterator());
                        c14981m.addLast(lVar6);
                    }
                    dVar2 = dVar5;
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
                lVar2 = (l) this.f9307d;
                dVar2 = (d) this.f9306c;
                c14981m = (C14981m) this.f9305b;
                C14418j0.n(obj);
            } else {
                path2 = (Path) this.f9312i;
                dVar4 = (d) this.f9311h;
                lVar4 = (l) this.f9310g;
                nVar2 = (n) this.f9308e;
                lVar3 = (l) this.f9307d;
                dVar3 = (d) this.f9306c;
                c14981m2 = (C14981m) this.f9305b;
                C14418j0.n(obj);
                C14981m c14981m42 = c14981m2;
                path = path2;
                dVar = dVar4;
                nVar = nVar2;
                lVar = lVar4;
                c14981m = c14981m42;
                LinkOption[] k1122 = nVar.k();
                linkOptionArr = (LinkOption[]) Arrays.copyOf(k1122, k1122.length);
                if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
                    lVar3.e(dVar.c(lVar).iterator());
                    c14981m.addLast(lVar3);
                }
                lVar2 = lVar3;
                dVar2 = dVar3;
            }
            while (!c14981m.isEmpty()) {
                l lVar9 = (l) c14981m.last();
                Iterator<l> a10 = lVar9.a();
                M.m(a10);
                if (a10.hasNext()) {
                    lVar5 = a10.next();
                    n nVar5 = n.this;
                    path3 = lVar5.d();
                    if (lVar5.c() != null) {
                        z.Q(path3);
                    }
                    LinkOption[] k13 = nVar5.k();
                    LinkOption[] linkOptionArr4 = (LinkOption[]) Arrays.copyOf(k13, k13.length);
                    if (!Files.isDirectory(path3, (LinkOption[]) Arrays.copyOf(linkOptionArr4, linkOptionArr4.length))) {
                        if (Files.exists(path3, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
                            this.f9318o = abstractC3314o;
                            this.f9305b = c14981m;
                            this.f9306c = dVar2;
                            this.f9307d = Bf.o.a(lVar2);
                            this.f9308e = Bf.o.a(lVar9);
                            this.f9309f = Bf.o.a(a10);
                            this.f9310g = Bf.o.a(lVar5);
                            this.f9311h = Bf.o.a(nVar5);
                            this.f9312i = Bf.o.a(abstractC3314o);
                            this.f9313j = Bf.o.a(lVar5);
                            this.f9314k = Bf.o.a(dVar2);
                            this.f9315l = Bf.o.a(path3);
                            this.f9316m = 0;
                            this.f9317n = 4;
                            if (abstractC3314o.a(path3, this) == l10) {
                                return l10;
                            }
                        }
                        while (!c14981m.isEmpty()) {
                        }
                    } else {
                        if (o.a(lVar5)) {
                            throw new FileSystemLoopException(path3.toString());
                        }
                        if (nVar5.j()) {
                            this.f9318o = abstractC3314o;
                            this.f9305b = c14981m;
                            this.f9306c = dVar2;
                            this.f9307d = Bf.o.a(lVar2);
                            this.f9308e = Bf.o.a(lVar9);
                            this.f9309f = Bf.o.a(a10);
                            this.f9310g = lVar5;
                            this.f9311h = nVar5;
                            this.f9312i = Bf.o.a(abstractC3314o);
                            this.f9313j = lVar5;
                            this.f9314k = dVar2;
                            this.f9315l = path3;
                            this.f9316m = 0;
                            this.f9317n = 3;
                            if (abstractC3314o.a(path3, this) == l10) {
                                return l10;
                            }
                            lVar6 = lVar5;
                            nVar3 = nVar5;
                            lVar7 = lVar2;
                            dVar5 = dVar2;
                            path4 = path3;
                            c14981m3 = c14981m;
                            lVar8 = lVar6;
                            C14981m c14981m52 = c14981m3;
                            path3 = path4;
                            lVar2 = lVar7;
                            lVar5 = lVar8;
                            c14981m = c14981m52;
                            LinkOption[] k122 = nVar3.k();
                            linkOptionArr2 = (LinkOption[]) Arrays.copyOf(k122, k122.length);
                            if (Files.isDirectory(path3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                            }
                            dVar2 = dVar5;
                            while (!c14981m.isEmpty()) {
                            }
                        } else {
                            lVar6 = lVar5;
                            nVar3 = nVar5;
                            dVar5 = dVar2;
                            LinkOption[] k1222 = nVar3.k();
                            linkOptionArr2 = (LinkOption[]) Arrays.copyOf(k1222, k1222.length);
                            if (Files.isDirectory(path3, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                            }
                            dVar2 = dVar5;
                            while (!c14981m.isEmpty()) {
                            }
                        }
                    }
                } else {
                    c14981m.removeLast();
                }
            }
            return P0.f98194a;
        }
    }

    public n(@NotNull Path start, @NotNull p[] options) {
        M.p(start, "start");
        M.p(options, "options");
        this.f9291a = start;
        this.f9292b = options;
    }

    public final Iterator<Path> g() {
        return C3316q.a(new a(null));
    }

    public final Iterator<Path> h() {
        return C3316q.a(new b(null));
    }

    public final boolean i() {
        return C14960A.B8(this.f9292b, p.FOLLOW_LINKS);
    }

    @Override
    @NotNull
    public Iterator<Path> iterator() {
        return l() ? g() : h();
    }

    public final boolean j() {
        return C14960A.B8(this.f9292b, p.INCLUDE_DIRECTORIES);
    }

    public final LinkOption[] k() {
        return j.f9279a.a(i());
    }

    public final boolean l() {
        return C14960A.B8(this.f9292b, p.BREADTH_FIRST);
    }

    public final Object m(AbstractC3314o<? super Path> abstractC3314o, l lVar, d dVar, Mf.l<? super List<l>, P0> lVar2, yf.f<? super P0> fVar) {
        Path d10 = lVar.d();
        if (lVar.c() != null) {
            z.Q(d10);
        }
        LinkOption[] k10 = k();
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(k10, k10.length);
        if (Files.isDirectory(d10, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            if (o.a(lVar)) {
                throw new FileSystemLoopException(d10.toString());
            }
            if (j()) {
                J.e(0);
                abstractC3314o.a(d10, fVar);
                J.e(1);
            }
            LinkOption[] k11 = k();
            LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(k11, k11.length);
            if (Files.isDirectory(d10, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length))) {
                lVar2.invoke(dVar.c(lVar));
            }
        } else if (Files.exists(d10, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            J.e(0);
            abstractC3314o.a(d10, fVar);
            J.e(1);
            return P0.f98194a;
        }
        return P0.f98194a;
    }
}
