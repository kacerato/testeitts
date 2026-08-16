package jg;

import Xf.InterfaceC3312m;
import eg.A0;
import eg.InterfaceC13153z0;
import eg.K0;
import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import gg.InterfaceC13364d;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.KClass;
import kotlin.time.C14036h;
import nf.EnumC14431q;
import nf.InterfaceC14401b;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14968d0;

public final class C13844k {

    @NotNull
    public static final String f93318a = "kotlinx.coroutines.flow.defaultConcurrency";

    @Nullable
    public static final <T> Object A(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull yf.f<? super P0> fVar) {
        return C13847n.f(interfaceC13842i, pVar, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue is 'flatMapConcat'", replaceWith = @InterfaceC14412g0(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> A0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13856x.l(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> A1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super T, ? super T, ? super yf.f<? super T>, ? extends Object> qVar) {
        return C13832A.j(interfaceC13842i, qVar);
    }

    @Nullable
    public static final <T> Object B(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super P0> fVar) {
        return C13854v.b(interfaceC13842i, pVar, fVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> B0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13855w.a(interfaceC13842i, pVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> B1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return r.h(interfaceC13842i, j10);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> C0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13855w.b(interfaceC13842i, pVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> C1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return r.i(interfaceC13842i, j10);
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> D(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13833B.c(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> D0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13855w.c(interfaceC13842i, i10, pVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> D1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13832A.k(interfaceC13842i, r10, qVar);
    }

    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> E(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @InterfaceC14401b @NotNull Mf.r<? super T1, ? super T2, ? super T3, ? super yf.f<? super R>, ? extends Object> rVar) {
        return C13833B.d(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, rVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow has less verbose 'scan' shortcut", replaceWith = @InterfaceC14412g0(expression = "scan(initial, operation)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> E1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13856x.B(interfaceC13842i, r10, qVar);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> F(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull Mf.s<? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super R>, ? extends Object> sVar) {
        return C13833B.e(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, sVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'flatten' is 'flattenConcat'", replaceWith = @InterfaceC14412g0(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> F0(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        return C13856x.m(interfaceC13842i);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "'scanReduce' was renamed to 'runningReduce' to be consistent with Kotlin standard library", replaceWith = @InterfaceC14412g0(expression = "runningReduce(operation)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> F1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super T, ? super T, ? super yf.f<? super T>, ? extends Object> qVar) {
        return C13856x.C(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> G(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @NotNull Mf.t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super R>, ? extends Object> tVar) {
        return C13833B.f(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5, tVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T> InterfaceC13842i<T> G0(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        return C13855w.e(interfaceC13842i);
    }

    @NotNull
    public static final <T> I<T> G1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull O o10, int i10) {
        return C13858z.g(interfaceC13842i, s10, o10, i10);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T> InterfaceC13842i<T> H0(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i, int i10) {
        return C13855w.f(interfaceC13842i, i10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "this.combine(other, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> I(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13856x.b(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @Nullable
    public static final <T> Object I1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.j(interfaceC13842i, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> J(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull Mf.r<? super T1, ? super T2, ? super T3, ? super yf.f<? super R>, ? extends Object> rVar) {
        return C13856x.c(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, rVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> J0(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13845l.n(pVar);
    }

    @Nullable
    public static final <T> Object J1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.k(interfaceC13842i, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> K(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull Mf.s<? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super R>, ? extends Object> sVar) {
        return C13856x.d(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, sVar);
    }

    @Lf.j(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> K0(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13833B.p(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'skip' is 'drop'", replaceWith = @InterfaceC14412g0(expression = "drop(count)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> K1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        return C13856x.D(interfaceC13842i, i10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @InterfaceC14412g0(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> L(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @NotNull Mf.t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super R>, ? extends Object> tVar) {
        return C13856x.e(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5, tVar);
    }

    @Lf.j(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> L0(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @InterfaceC14401b @NotNull Mf.r<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super yf.f<? super P0>, ? extends Object> rVar) {
        return C13833B.q(interfaceC13842i, interfaceC13842i2, rVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emit(value) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { emit(value) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> L1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        return C13856x.E(interfaceC13842i, t10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> M0(T t10) {
        return C13845l.o(t10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emitAll(other) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> M1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        return C13856x.F(interfaceC13842i, interfaceC13842i2);
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> N(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @InterfaceC14401b @NotNull Mf.r<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super yf.f<? super P0>, ? extends Object> rVar) {
        return C13833B.i(interfaceC13842i, interfaceC13842i2, rVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> N0(@NotNull T... tArr) {
        return C13845l.p(tArr);
    }

    @Nullable
    public static final <T> Object N1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull yf.f<? super U<? extends T>> fVar) {
        return C13858z.i(interfaceC13842i, s10, fVar);
    }

    @NotNull
    public static final <T1, T2, T3, R> InterfaceC13842i<R> O(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @InterfaceC14401b @NotNull Mf.s<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super yf.f<? super P0>, ? extends Object> sVar) {
        return C13833B.j(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, sVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> O0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        return C13849p.h(interfaceC13842i, jVar);
    }

    @NotNull
    public static final <T> U<T> O1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10, @NotNull O o10, T t10) {
        return C13858z.j(interfaceC13842i, s10, o10, t10);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> InterfaceC13842i<R> P(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @InterfaceC14401b @NotNull Mf.t<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super yf.f<? super P0>, ? extends Object> tVar) {
        return C13833B.k(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, tVar);
    }

    @Nullable
    public static final <T, R> Object P0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar, @NotNull yf.f<? super R> fVar) {
        return C13857y.e(interfaceC13842i, r10, qVar, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void P1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        C13856x.G(interfaceC13842i);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> InterfaceC13842i<R> Q(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull InterfaceC13842i<? extends T3> interfaceC13842i3, @NotNull InterfaceC13842i<? extends T4> interfaceC13842i4, @NotNull InterfaceC13842i<? extends T5> interfaceC13842i5, @InterfaceC14401b @NotNull Mf.u<? super InterfaceC13843j<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super yf.f<? super P0>, ? extends Object> uVar) {
        return C13833B.l(interfaceC13842i, interfaceC13842i2, interfaceC13842i3, interfaceC13842i4, interfaceC13842i5, uVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'forEach' is 'collect'", replaceWith = @InterfaceC14412g0(expression = "collect(action)", imports = {}))
    public static final <T> void Q0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        C13856x.n(interfaceC13842i, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void Q1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        C13856x.H(interfaceC13842i, pVar);
    }

    public static final int R0() {
        return C13855w.h();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void R1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull Mf.p<? super Throwable, ? super yf.f<? super P0>, ? extends Object> pVar2) {
        C13856x.I(interfaceC13842i, pVar, pVar2);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'compose' is 'let'", replaceWith = @InterfaceC14412g0(expression = "let(transformer)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> S(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super InterfaceC13842i<? extends T>, ? extends InterfaceC13842i<? extends R>> lVar) {
        return C13856x.f(interfaceC13842i, lVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'flowOn' instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> S1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        return C13856x.J(interfaceC13842i, jVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatMap' is 'flatMapConcat'", replaceWith = @InterfaceC14412g0(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> T(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, ? extends InterfaceC13842i<? extends R>> lVar) {
        return C13856x.g(interfaceC13842i, lVar);
    }

    @Nullable
    public static final <T> Object T0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.g(interfaceC13842i, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogues of 'switchMap' are 'transformLatest', 'flatMapLatest' and 'mapLatest'", replaceWith = @InterfaceC14412g0(expression = "this.flatMapLatest(transform)", imports = {}))
    @NotNull
    public static final <T, R> InterfaceC13842i<R> T1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super InterfaceC13842i<? extends R>>, ? extends Object> pVar) {
        return C13856x.K(interfaceC13842i, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { emit(value) }'", replaceWith = @InterfaceC14412g0(expression = "onCompletion { emit(value) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> U(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        return C13856x.h(interfaceC13842i, t10);
    }

    @Nullable
    public static final <T> Object U0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.h(interfaceC13842i, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> U1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        return C13854v.g(interfaceC13842i, i10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { if (it == null) emitAll(other) }'", replaceWith = @InterfaceC14412g0(expression = "onCompletion { if (it == null) emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> V(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        return C13856x.i(interfaceC13842i, interfaceC13842i2);
    }

    @NotNull
    public static final <T> K0 V0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10) {
        return C13847n.h(interfaceC13842i, s10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> V1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return C13854v.h(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> W(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13849p.g(interfaceC13842i);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> W0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return C13832A.f(interfaceC13842i, pVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> W1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return r.j(interfaceC13842i, j10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> X(@NotNull InterfaceC13360D<? extends T> interfaceC13360D) {
        return C13846m.c(interfaceC13360D);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> X0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return C13855w.k(interfaceC13842i, pVar);
    }

    @Nullable
    public static final <T, C extends Collection<? super T>> Object X1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        return C13848o.a(interfaceC13842i, c10, fVar);
    }

    @Nullable
    public static final <T> Object Y(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super Integer> fVar) {
        return C13850q.a(interfaceC13842i, pVar, fVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> Y0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super R>, ? extends Object> pVar) {
        return C13832A.g(interfaceC13842i, pVar);
    }

    @Nullable
    public static final <T> Object Y1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull List<T> list, @NotNull yf.f<? super List<? extends T>> fVar) {
        return C13848o.b(interfaceC13842i, list, fVar);
    }

    @Nullable
    public static final <T> Object Z(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super Integer> fVar) {
        return C13850q.b(interfaceC13842i, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> Z0(@NotNull Iterable<? extends InterfaceC13842i<? extends T>> iterable) {
        return C13855w.l(iterable);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> a(@NotNull Mf.a<? extends T> aVar) {
        return C13845l.a(aVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> a0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return r.a(interfaceC13842i, j10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'merge' is 'flattenConcat'", replaceWith = @InterfaceC14412g0(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> a1(@NotNull InterfaceC13842i<? extends InterfaceC13842i<? extends T>> interfaceC13842i) {
        return C13856x.o(interfaceC13842i);
    }

    @Nullable
    public static final <T> Object a2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Set<T> set, @NotNull yf.f<? super Set<? extends T>> fVar) {
        return C13848o.d(interfaceC13842i, set, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull Mf.l<? super yf.f<? super T>, ? extends Object> lVar) {
        return C13845l.b(lVar);
    }

    @nf.Y
    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> b0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, Long> lVar) {
        return r.b(interfaceC13842i, lVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> b1(@NotNull InterfaceC13842i<? extends T>... interfaceC13842iArr) {
        return C13855w.m(interfaceC13842iArr);
    }

    @NotNull
    public static final InterfaceC13842i<Integer> c(@NotNull Vf.l lVar) {
        return C13845l.c(lVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> c0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return r.c(interfaceC13842i, j10);
    }

    @NotNull
    public static final Void c1() {
        return C13856x.p();
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> c2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13852t.g(interfaceC13842i, qVar);
    }

    @NotNull
    public static final InterfaceC13842i<Long> d(@NotNull Vf.o oVar) {
        return C13845l.d(oVar);
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "debounceDuration")
    @A0
    public static final <T> InterfaceC13842i<T> d0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, C14036h> lVar) {
        return r.d(interfaceC13842i, lVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> d1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        return C13856x.q(interfaceC13842i, jVar);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> d2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13855w.n(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        return C13845l.e(interfaceC3312m);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'onEach { delay(timeMillis) }'", replaceWith = @InterfaceC14412g0(expression = "onEach { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> e0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13856x.j(interfaceC13842i, j10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> e1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13852t.d(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> e2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super Boolean>, ? extends Object> qVar) {
        return C13854v.i(interfaceC13842i, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "'BroadcastChannel' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @NotNull
    public static final <T> InterfaceC13842i<T> f(@NotNull InterfaceC13364d<T> interfaceC13364d) {
        return C13846m.b(interfaceC13364d);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'onStart { delay(timeMillis) }'", replaceWith = @InterfaceC14412g0(expression = "onStart { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> f0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10) {
        return C13856x.k(interfaceC13842i, j10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> f1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13832A.h(interfaceC13842i, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <T, R> InterfaceC13842i<R> f2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @InterfaceC14401b @NotNull Mf.q<? super InterfaceC13843j<? super R>, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13852t.h(interfaceC13842i, qVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull Iterable<? extends T> iterable) {
        return C13845l.f(iterable);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13851s.a(interfaceC13842i);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> g1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13852t.e(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<C14968d0<T>> g2(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13832A.l(interfaceC13842i);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull Iterator<? extends T> it) {
        return C13845l.g(it);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> h0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super T, Boolean> pVar) {
        return C13851s.b(interfaceC13842i, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> h1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        return C13856x.r(interfaceC13842i, interfaceC13842i2);
    }

    @NotNull
    public static final <T1, T2, R> InterfaceC13842i<R> h2(@NotNull InterfaceC13842i<? extends T1> interfaceC13842i, @NotNull InterfaceC13842i<? extends T2> interfaceC13842i2, @NotNull Mf.q<? super T1, ? super T2, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13833B.s(interfaceC13842i, interfaceC13842i2, qVar);
    }

    @NotNull
    public static final InterfaceC13842i<Integer> i(@NotNull int[] iArr) {
        return C13845l.h(iArr);
    }

    @NotNull
    public static final <T, K> InterfaceC13842i<T> i0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.l<? super T, ? extends K> lVar) {
        return C13851s.c(interfaceC13842i, lVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> i1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13842i<? extends T> interfaceC13842i2) {
        return C13856x.s(interfaceC13842i, interfaceC13842i2);
    }

    @NotNull
    public static final InterfaceC13842i<Long> j(@NotNull long[] jArr) {
        return C13845l.i(jArr);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> j0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        return C13854v.d(interfaceC13842i, i10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emit(fallback) }'", replaceWith = @InterfaceC14412g0(expression = "catch { emit(fallback) }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> j1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10) {
        return C13856x.t(interfaceC13842i, t10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> k(@NotNull T[] tArr) {
        return C13845l.j(tArr);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> k0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return C13854v.e(interfaceC13842i, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { e -> if (predicate(e)) emit(fallback) else throw e }'", replaceWith = @InterfaceC14412g0(expression = "catch { e -> if (predicate(e)) emit(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> k1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, T t10, @NotNull Mf.l<? super Throwable, Boolean> lVar) {
        return C13856x.u(interfaceC13842i, t10, lVar);
    }

    @NotNull
    public static final <T> I<T> l(@NotNull D<T> d10) {
        return C13858z.a(d10);
    }

    @Nullable
    public static final <T> Object l0(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull InterfaceC13360D<? extends T> interfaceC13360D, @NotNull yf.f<? super P0> fVar) {
        return C13846m.d(interfaceC13843j, interfaceC13360D, fVar);
    }

    @NotNull
    public static final <T> U<T> m(@NotNull E<T> e10) {
        return C13858z.b(e10);
    }

    @Nullable
    public static final <T> Object m0(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
        return C13847n.g(interfaceC13843j, interfaceC13842i, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> m1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13852t.f(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> n0() {
        return C13845l.m();
    }

    @NotNull
    public static final <T> I<T> n1(@NotNull I<? extends T> i10, @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13858z.f(i10, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> o(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10, @NotNull gg.i iVar) {
        return C13849p.b(interfaceC13842i, i10, iVar);
    }

    public static final void o0(@NotNull InterfaceC13843j<?> interfaceC13843j) {
        C13852t.b(interfaceC13843j);
    }

    @NotNull
    public static final <T> InterfaceC13360D<T> o1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10) {
        return C13846m.f(interfaceC13842i, s10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> p0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return C13832A.a(interfaceC13842i, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'publish()' is 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> p1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13856x.w(interfaceC13842i);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'publish(bufferSize)' is 'buffer' followed by 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.buffer(bufferSize).shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> q1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        return C13856x.x(interfaceC13842i, i10);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'cache()' is 'shareIn' with unlimited replay and 'started = SharingStared.Lazily' argument'", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, Int.MAX_VALUE, started = SharingStared.Lazily)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> r(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13856x.a(interfaceC13842i);
    }

    @NotNull
    public static final <R> InterfaceC13842i<R> r0(@NotNull InterfaceC13842i<?> interfaceC13842i, @NotNull KClass<R> kClass) {
        return C13832A.c(interfaceC13842i, kClass);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> InterfaceC13842i<T> r1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar) {
        return C13856x.y(interfaceC13842i, jVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> s(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13845l.k(pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> s0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return C13832A.d(interfaceC13842i, pVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> s1(@NotNull InterfaceC13360D<? extends T> interfaceC13360D) {
        return C13846m.g(interfaceC13360D);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> t(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13849p.e(interfaceC13842i);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> t0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13832A.e(interfaceC13842i);
    }

    @Nullable
    public static final <S, T extends S> Object t1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super S, ? super T, ? super yf.f<? super S>, ? extends Object> qVar, @NotNull yf.f<? super S> fVar) {
        return C13857y.i(interfaceC13842i, qVar, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> u(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return C13853u.a(interfaceC13842i, qVar);
    }

    @Nullable
    public static final <T> Object u0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        return C13857y.a(interfaceC13842i, pVar, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'replay()' is 'shareIn' with unlimited replay. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, Int.MAX_VALUE)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> u1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        return C13856x.z(interfaceC13842i);
    }

    @Nullable
    public static final <T> Object v(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super Throwable> fVar) {
        return C13853u.b(interfaceC13842i, interfaceC13843j, fVar);
    }

    @Nullable
    public static final <T> Object v0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.b(interfaceC13842i, fVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Flow analogue of 'replay(bufferSize)' is 'shareIn' with the specified replay parameter. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @InterfaceC14412g0(expression = "this.shareIn(scope, bufferSize)", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> v1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, int i10) {
        return C13856x.A(interfaceC13842i, i10);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> w(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return C13845l.l(pVar);
    }

    @Nullable
    public static final <T> Object w0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super Boolean>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        return C13857y.c(interfaceC13842i, pVar, fVar);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> w1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, long j10, @NotNull Mf.p<? super Throwable, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return C13853u.e(interfaceC13842i, j10, pVar);
    }

    @Nullable
    public static final <T> Object x0(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super T> fVar) {
        return C13857y.d(interfaceC13842i, fVar);
    }

    @Nullable
    public static final Object y(@NotNull InterfaceC13842i<?> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
        return C13847n.b(interfaceC13842i, fVar);
    }

    @NotNull
    public static final InterfaceC13360D<P0> y0(@NotNull eg.S s10, long j10, long j11) {
        return r.f(s10, j10, j11);
    }

    @NotNull
    public static final <T> InterfaceC13842i<T> y1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.r<? super InterfaceC13843j<? super T>, ? super Throwable, ? super Long, ? super yf.f<? super Boolean>, ? extends Object> rVar) {
        return C13853u.g(interfaceC13842i, rVar);
    }

    @Nullable
    public static final <T> Object z(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super Integer, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, @NotNull yf.f<? super P0> fVar) {
        return C13847n.d(interfaceC13842i, qVar, fVar);
    }

    @NotNull
    public static final <T, R> InterfaceC13842i<R> z1(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, R r10, @InterfaceC14401b @NotNull Mf.q<? super R, ? super T, ? super yf.f<? super R>, ? extends Object> qVar) {
        return C13832A.i(interfaceC13842i, r10, qVar);
    }
}
