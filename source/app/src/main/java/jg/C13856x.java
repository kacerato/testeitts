package jg;

import eg.C13108c0;
import java.net.HttpURLConnection;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14401b;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Migration.kt\nkotlinx/coroutines/flow/FlowKt__MigrationKt\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,496:1\n193#2:497\n*S KotlinDebug\n*F\n+ 1 Migration.kt\nkotlinx/coroutines/flow/FlowKt__MigrationKt\n*L\n435#1:497\n*E\n"})
public final class C13856x {

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$delayEach$1", f = "Migration.kt", i = {}, l = {427}, m = "invokeSuspend", n = {}, s = {})
    public static final class a<T> extends Bf.q implements Mf.p<T, yf.f<? super P0>, Object> {

        public int f93663b;

        public final long f93664c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j10, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f93664c = j10;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f93664c, fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93663b;
            if (i10 == 0) {
                C14418j0.n(obj);
                long j10 = this.f93664c;
                this.f93663b = 1;
                if (C13108c0.b(j10, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invoke(T t10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(t10, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$delayFlow$1", f = "Migration.kt", i = {}, l = {HttpURLConnection.HTTP_UNSUPPORTED_TYPE}, m = "invokeSuspend", n = {}, s = {})
    public static final class b<T> extends Bf.q implements Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> {

        public int f93665b;

        public final long f93666c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, yf.f<? super b> fVar) {
            super(2, fVar);
            this.f93666c = j10;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new b(this.f93666c, fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93665b;
            if (i10 == 0) {
                C14418j0.n(obj);
                long j10 = this.f93666c;
                this.f93665b = 1;
                if (C13108c0.b(j10, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @Nullable yf.f<? super P0> fVar) {
            return ((b) create(interfaceC13843j, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    public static final class c extends kotlin.jvm.internal.O implements Mf.l<Throwable, Boolean> {

        public static final c f93667b = new c();

        public c() {
            super(1);
        }

        @Override
        @NotNull
        public final Boolean invoke(@NotNull Throwable th2) {
            return Boolean.TRUE;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2", f = "Migration.kt", i = {}, l = {306}, m = "invokeSuspend", n = {}, s = {})
    public static final class d<T> extends Bf.q implements Mf.q<InterfaceC13843j<? super T>, Throwable, yf.f<? super P0>, Object> {

        public int f93668b;

        public Object f93669c;

        public Object f93670d;

        public final Mf.l<Throwable, Boolean> f93671e;

        public final T f93672f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(Mf.l<? super Throwable, Boolean> lVar, T t10, yf.f<? super d> fVar) {
            super(3, fVar);
            this.f93671e = lVar;
            this.f93672f = t10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93668b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13843j interfaceC13843j = (InterfaceC13843j) this.f93669c;
                Throwable th2 = (Throwable) this.f93670d;
                if (!this.f93671e.invoke(th2).booleanValue()) {
                    throw th2;
                }
                T t10 = this.f93672f;
                this.f93669c = null;
                this.f93668b = 1;
                if (interfaceC13843j.emit(t10, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull Throwable th2, @Nullable yf.f<? super P0> fVar) {
            d dVar = new d(this.f93671e, this.f93672f, fVar);
            dVar.f93669c = interfaceC13843j;
            dVar.f93670d = th2;
            return dVar.invokeSuspend(P0.f98194a);
        }
    }

    @t0({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n*L\n1#1,218:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1", f = "Migration.kt", i = {}, l = {193, 193}, m = "invokeSuspend", n = {}, s = {})
    public static final class e<R, T> extends Bf.q implements Mf.q<InterfaceC13843j<? super R>, T, yf.f<? super P0>, Object> {

        public int f93673b;

        public Object f93674c;

        public Object f93675d;

        public final Mf.p f93676e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Mf.p pVar, yf.f fVar) {
            super(3, fVar);
            this.f93676e = pVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13843j interfaceC13843j;
            Object l10 = Af.d.l();
            int i10 = this.f93673b;
            if (i10 == 0) {
                C14418j0.n(obj);
                interfaceC13843j = (InterfaceC13843j) this.f93674c;
                Object obj2 = this.f93675d;
                Mf.p pVar = this.f93676e;
                this.f93674c = interfaceC13843j;
                this.f93673b = 1;
                obj = pVar.invoke(obj2, this);
                if (obj == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                    return P0.f98194a;
                }
                interfaceC13843j = (InterfaceC13843j) this.f93674c;
                C14418j0.n(obj);
            }
            this.f93674c = null;
            this.f93673b = 2;
            if (C13844k.m0(interfaceC13843j, (InterfaceC13842i) obj, this) == l10) {
                return l10;
            }
            return P0.f98194a;
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<? super R> interfaceC13843j, T t10, @Nullable yf.f<? super P0> fVar) {
            e eVar = new e(this.f93676e, fVar);
            eVar.f93674c = interfaceC13843j;
            eVar.f93675d = t10;
            return eVar.invokeSuspend(P0.f98194a);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'replay(bufferSize)' is 'shareIn' with the specified replay parameter. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, bufferSize)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> A(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow has less verbose 'scan' shortcut", replaceWith = @InterfaceC14412g0(expression = "scan(initial, operation)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> B(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "'scanReduce' was renamed to 'runningReduce' to be consistent with Kotlin standard library", replaceWith = @InterfaceC14412g0(expression = "runningReduce(operation)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> C(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super T, ? super T, ? super yf.f<? super T>, ? extends Object> qVar) {
        return C13844k.A1(interfaceC13842i, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'skip' is 'drop'", replaceWith = @InterfaceC14412g0(expression = "drop(count)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> D(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emit(value) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { emit(value) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> E(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emitAll(other) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> F(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void G(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void H(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void I(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull Mf.p<? super Throwable, ? super yf.f<? super P0>, ? extends Object> pVar2) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'flowOn' instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> J(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogues of 'switchMap' are 'transformLatest', 'flatMapLatest' and 'mapLatest'", replaceWith = @InterfaceC14412g0(expression = "this.flatMapLatest(transform)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> K(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13844k.d2(interfaceC13842i, new e(pVar, null));
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'cache()' is 'shareIn' with unlimited replay and 'started = SharingStared.Lazily' argument'", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, Int.MAX_VALUE, started = SharingStared.Lazily)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "this.combine(other, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> b(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13844k.D(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> c(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull Mf.r<? super T1, ? super T2, ? super T3, ? super yf.f<? super R>, ? extends Object> rVar) {
        return C13844k.E(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, rVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> d(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull Mf.s<? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super R>, ? extends Object> sVar) {
        return C13844k.F(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, sVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> e(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @NotNull Mf.t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super R>, ? extends Object> tVar) {
        return C13844k.G(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5, tVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'compose' is 'let'", replaceWith = @InterfaceC14412g0(expression = "let(transformer)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> f(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super InterfaceC13842i<? extends T>, ? extends InterfaceC13842i<? extends R>> lVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatMap' is 'flatMapConcat'", replaceWith = @InterfaceC14412g0(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> g(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, ? extends InterfaceC13842i<? extends R>> lVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { emit(value) }'", replaceWith = @InterfaceC14412g0(expression = "onCompletion { emit(value) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { if (it == null) emitAll(other) }'", replaceWith = @InterfaceC14412g0(expression = "onCompletion { if (it == null) emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> i(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'onEach { delay(timeMillis) }'", replaceWith = @InterfaceC14412g0(expression = "onEach { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> j(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13844k.f1(interfaceC13842i, new a(j10, null));
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'onStart { delay(timeMillis) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> k(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13844k.m1(interfaceC13842i, new b(j10, null));
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue is 'flatMapConcat'", replaceWith = @InterfaceC14412g0(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> l(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'flatten' is 'flattenConcat'", replaceWith = @InterfaceC14412g0(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> m(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'forEach' is 'collect'", replaceWith = @InterfaceC14412g0(expression = "collect(action)", imports = {}))
    public static final <T> void n(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'merge' is 'flattenConcat'", replaceWith = @InterfaceC14412g0(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> o(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final Void p() {
        throw new UnsupportedOperationException("Not implemented, should not be called");
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> q(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> r(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> s(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emit(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emit(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> t(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { e -> if (predicate(e)) emit(fallback) else throw e }'", replaceWith = @InterfaceC14412g0(expression = "catch { e -> if (predicate(e)) emit(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> u(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10, @NotNull Mf.l<? super Throwable, Boolean> lVar) {
        return C13844k.u(interfaceC13842i, new d(lVar, t10, null));
    }

    public static InterfaceC13842i v(InterfaceC13842i interfaceC13842i, Object obj, Mf.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = c.f93667b;
        }
        return C13844k.k1(interfaceC13842i, obj, lVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'publish()' is 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> w(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'publish(bufferSize)' is 'buffer' followed by 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.buffer(bufferSize).shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> x(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> y(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'replay()' is 'shareIn' with unlimited replay. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, Int.MAX_VALUE)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> z(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }
}
