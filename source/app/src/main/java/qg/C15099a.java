package qg;

import Bf.d;
import Bf.f;
import Lf.x;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.stream.Stream;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C15099a<T> implements InterfaceC13842i<T> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f107903c = AtomicIntegerFieldUpdater.newUpdater(C15099a.class, "consumed");

    @NotNull
    public final Stream<T> f107904b;

    @x
    private volatile int consumed = 0;

    @f(c = "kotlinx.coroutines.stream.StreamFlow", f = "Stream.kt", i = {0, 0}, l = {26}, m = "collect", n = {"this", "collector"}, s = {"L$0", "L$1"})
    public static final class C1971a extends d {

        public Object f107905b;

        public Object f107906c;

        public Object f107907d;

        public Object f107908e;

        public final C15099a<T> f107909f;

        public int f107910g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1971a(C15099a<T> c15099a, yf.f<? super C1971a> fVar) {
            super(fVar);
            this.f107909f = c15099a;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f107908e = obj;
            this.f107910g |= Integer.MIN_VALUE;
            return this.f107909f.a(null, this);
        }
    }

    public C15099a(@NotNull Stream<T> stream) {
        this.f107904b = stream;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:11:0x0031, B:14:0x0056, B:16:0x005c), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        C1971a c1971a;
        int i10;
        C15099a<T> c15099a;
        InterfaceC13843j interfaceC13843j2;
        Iterator<T> iterator2;
        if (fVar instanceof C1971a) {
            c1971a = (C1971a) fVar;
            int i11 = c1971a.f107910g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c1971a.f107910g = i11 - Integer.MIN_VALUE;
                Object obj = c1971a.f107908e;
                Object l10 = Af.d.l();
                i10 = c1971a.f107910g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    if (!f107903c.compareAndSet(this, 0, 1)) {
                        throw new IllegalStateException("Stream.consumeAsFlow can be collected only once");
                    }
                    try {
                        c15099a = this;
                        interfaceC13843j2 = interfaceC13843j;
                        iterator2 = this.f107904b.iterator2();
                    } catch (Throwable th2) {
                        th = th2;
                        c15099a = this;
                        c15099a.f107904b.close();
                        throw th;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    iterator2 = (Iterator) c1971a.f107907d;
                    InterfaceC13843j interfaceC13843j3 = (InterfaceC13843j) c1971a.f107906c;
                    c15099a = (C15099a) c1971a.f107905b;
                    try {
                        C14418j0.n(obj);
                        interfaceC13843j2 = interfaceC13843j3;
                    } catch (Throwable th3) {
                        th = th3;
                        c15099a.f107904b.close();
                        throw th;
                    }
                }
                while (iterator2.hasNext()) {
                    T next = iterator2.next();
                    c1971a.f107905b = c15099a;
                    c1971a.f107906c = interfaceC13843j2;
                    c1971a.f107907d = iterator2;
                    c1971a.f107910g = 1;
                    if (interfaceC13843j2.emit(next, c1971a) == l10) {
                        return l10;
                    }
                }
                c15099a.f107904b.close();
                return P0.f98194a;
            }
        }
        c1971a = new C1971a(this, fVar);
        Object obj2 = c1971a.f107908e;
        Object l102 = Af.d.l();
        i10 = c1971a.f107910g;
        if (i10 != 0) {
        }
        while (iterator2.hasNext()) {
        }
        c15099a.f107904b.close();
        return P0.f98194a;
    }
}
