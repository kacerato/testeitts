package jg;

import android.icu.text.DateFormat;
import eg.C13108c0;
import java.util.List;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedWhileSubscribed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
public final class T implements O {

    public final long f93256b;

    public final long f93257c;

    @Bf.f(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {178, 180, 182, 183, 185}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
    public static final class a extends Bf.q implements Mf.q<InterfaceC13843j<? super M>, Integer, yf.f<? super P0>, Object> {

        public int f93258b;

        public Object f93259c;

        public int f93260d;

        public a(yf.f<? super a> fVar) {
            super(3, fVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x009b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            long j10;
            M m10;
            Object l10 = Af.d.l();
            int i10 = this.f93258b;
            if (i10 == 0) {
                C14418j0.n(obj);
                interfaceC13843j = (InterfaceC13843j) this.f93259c;
                if (this.f93260d > 0) {
                    M m11 = M.START;
                    this.f93258b = 1;
                    if (interfaceC13843j.emit(m11, this) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
                long j11 = T.this.f93256b;
                this.f93259c = interfaceC13843j;
                this.f93258b = 2;
                if (C13108c0.b(j11, this) == l10) {
                    return l10;
                }
                if (T.this.f93257c > 0) {
                }
                m10 = M.STOP_AND_RESET_REPLAY_CACHE;
                this.f93259c = null;
                this.f93258b = 5;
                if (interfaceC13843j.emit(m10, this) == l10) {
                }
                return P0.f98194a;
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    interfaceC13843j = (InterfaceC13843j) this.f93259c;
                    C14418j0.n(obj);
                    if (T.this.f93257c > 0) {
                        M m12 = M.STOP;
                        this.f93259c = interfaceC13843j;
                        this.f93258b = 3;
                        if (interfaceC13843j.emit(m12, this) == l10) {
                            return l10;
                        }
                        j10 = T.this.f93257c;
                        this.f93259c = interfaceC13843j;
                        this.f93258b = 4;
                        if (C13108c0.b(j10, this) == l10) {
                        }
                    }
                    m10 = M.STOP_AND_RESET_REPLAY_CACHE;
                    this.f93259c = null;
                    this.f93258b = 5;
                    if (interfaceC13843j.emit(m10, this) == l10) {
                    }
                    return P0.f98194a;
                }
                if (i10 == 3) {
                    interfaceC13843j = (InterfaceC13843j) this.f93259c;
                    C14418j0.n(obj);
                    j10 = T.this.f93257c;
                    this.f93259c = interfaceC13843j;
                    this.f93258b = 4;
                    if (C13108c0.b(j10, this) == l10) {
                        return l10;
                    }
                    m10 = M.STOP_AND_RESET_REPLAY_CACHE;
                    this.f93259c = null;
                    this.f93258b = 5;
                    if (interfaceC13843j.emit(m10, this) == l10) {
                    }
                    return P0.f98194a;
                }
                if (i10 == 4) {
                    interfaceC13843j = (InterfaceC13843j) this.f93259c;
                    C14418j0.n(obj);
                    m10 = M.STOP_AND_RESET_REPLAY_CACHE;
                    this.f93259c = null;
                    this.f93258b = 5;
                    if (interfaceC13843j.emit(m10, this) == l10) {
                        return l10;
                    }
                    return P0.f98194a;
                }
                if (i10 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            C14418j0.n(obj);
            return P0.f98194a;
        }

        @Override
        public Object n(InterfaceC13843j<? super M> interfaceC13843j, Integer num, yf.f<? super P0> fVar) {
            return z(interfaceC13843j, num.intValue(), fVar);
        }

        @Nullable
        public final Object z(@NotNull InterfaceC13843j<? super M> interfaceC13843j, int i10, @Nullable yf.f<? super P0> fVar) {
            a aVar = new a(fVar);
            aVar.f93259c = interfaceC13843j;
            aVar.f93260d = i10;
            return aVar.invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends Bf.q implements Mf.p<M, yf.f<? super Boolean>, Object> {

        public int f93262b;

        public Object f93263c;

        public b(yf.f<? super b> fVar) {
            super(2, fVar);
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            b bVar = new b(fVar);
            bVar.f93263c = obj;
            return bVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f93262b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            return Bf.b.a(((M) this.f93263c) != M.START);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull M m10, @Nullable yf.f<? super Boolean> fVar) {
            return ((b) create(m10, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    public T(long j10, long j11) {
        this.f93256b = j10;
        this.f93257c = j11;
        if (j10 < 0) {
            throw new IllegalArgumentException(("stopTimeout(" + j10 + " ms) cannot be negative").toString());
        }
        if (j11 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j11 + " ms) cannot be negative").toString());
    }

    @Override
    @NotNull
    public InterfaceC13842i<M> a(@NotNull U<Integer> u10) {
        return C13844k.g0(C13844k.k0(C13844k.d2(u10, new a(null)), new b(null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof T) {
            T t10 = (T) obj;
            if (this.f93256b == t10.f93256b && this.f93257c == t10.f93257c) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return (Long.hashCode(this.f93256b) * 31) + Long.hashCode(this.f93257c);
    }

    @NotNull
    public String toString() {
        List k10 = pf.G.k(2);
        if (this.f93256b > 0) {
            k10.add("stopTimeout=" + this.f93256b + DateFormat.MINUTE_SECOND);
        }
        if (this.f93257c < Long.MAX_VALUE) {
            k10.add("replayExpiration=" + this.f93257c + DateFormat.MINUTE_SECOND);
        }
        return "SharingStarted.WhileSubscribed(" + pf.S.r3(pf.G.b(k10), null, null, null, 0, null, null, 63, null) + ')';
    }
}
