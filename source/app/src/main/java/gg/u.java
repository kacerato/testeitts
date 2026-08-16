package gg;

import am.C3679c;
import android.view.KeyEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import eg.B0;
import eg.C13122j0;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.C14436t;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14427o;
import nf.P0;
import nf.Z;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14968d0;
import pk.AbstractC15010e;

@t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n82#2,11:480\n82#2,11:491\n82#2,11:502\n82#2,11:513\n105#2:524\n82#2,6:525\n106#2:531\n92#2:532\n107#2:533\n88#2,3:534\n82#2,11:537\n105#2:548\n82#2,6:549\n106#2,2:555\n92#2:557\n88#2,3:558\n82#2,11:561\n82#2,11:572\n82#2,11:583\n105#2:594\n82#2,6:595\n106#2,2:601\n92#2:603\n88#2,3:604\n105#2:607\n82#2,6:608\n106#2,2:614\n92#2:616\n88#2,3:617\n105#2:620\n82#2,6:621\n106#2,2:627\n92#2:629\n88#2,3:630\n105#2:633\n82#2,6:634\n106#2,2:640\n92#2:642\n88#2,3:643\n105#2:646\n82#2,6:647\n106#2,2:653\n92#2:655\n88#2,3:656\n82#2,11:659\n105#2:670\n82#2,6:671\n106#2,2:677\n92#2:679\n88#2,3:680\n82#2,11:683\n82#2,11:694\n82#2,11:705\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n*L\n34#1:480,11\n49#1:491,11\n63#1:502,11\n73#1:513,11\n84#1:524\n84#1:525,6\n84#1:531\n84#1:532\n84#1:533\n84#1:534,3\n95#1:537,11\n110#1:548\n110#1:549,6\n110#1:555,2\n110#1:557\n110#1:558,3\n121#1:561,11\n134#1:572,11\n147#1:583,11\n232#1:594\n232#1:595,6\n232#1:601,2\n232#1:603\n232#1:604,3\n241#1:607\n241#1:608,6\n241#1:614,2\n241#1:616\n241#1:617,3\n277#1:620\n277#1:621,6\n277#1:627,2\n277#1:629\n277#1:630,3\n285#1:633\n285#1:634,6\n285#1:640,2\n285#1:642\n285#1:643,3\n298#1:646\n298#1:647,6\n298#1:653,2\n298#1:655\n298#1:656,3\n403#1:659,11\n411#1:670\n411#1:671,6\n411#1:677,2\n411#1:679\n411#1:680,3\n418#1:683,11\n432#1:694,11\n446#1:705,11\n*E\n"})
public final class u {

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {434, 436}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    public static final class A<E> extends Bf.d {

        public Object f89725b;

        public Object f89726c;

        public Object f89727d;

        public Object f89728e;

        public Object f89729f;

        public int f89730g;

        public A(yf.f<? super A> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object N10;
            this.f89729f = obj;
            this.f89730g |= Integer.MIN_VALUE;
            N10 = u.N(null, null, this);
            return N10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {AbstractC15010e.f104124f}, m = "none", n = {"$this$consume$iv"}, s = {"L$0"})
    public static final class B<E> extends Bf.d {

        public Object f89731b;

        public Object f89732c;

        public int f89733d;

        public B(yf.f<? super B> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object O10;
            this.f89732c = obj;
            this.f89733d |= Integer.MIN_VALUE;
            O10 = u.O(null, this);
            return O10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C extends Bf.q implements Mf.p<Object, yf.f<Object>, Object> {

        public int f89734b;

        public Object f89735c;

        public final InterfaceC13360D<Object> f89736d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C(InterfaceC13360D<Object> interfaceC13360D, yf.f<? super C> fVar) {
            super(2, fVar);
            this.f89736d = interfaceC13360D;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C c10 = new C(this.f89736d, fVar);
            c10.f89735c = obj;
            return c10;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f89734b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            Object obj2 = this.f89735c;
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalArgumentException("null element found in " + ((Object) this.f89736d) + '.');
        }

        @Override
        @Nullable
        public final Object invoke(@Nullable Object obj, @Nullable yf.f<Object> fVar) {
            return ((C) create(obj, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {136, 139}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class D<E> extends Bf.d {

        public Object f89737b;

        public Object f89738c;

        public Object f89739d;

        public int f89740e;

        public D(yf.f<? super D> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object Q10;
            this.f89739d = obj;
            this.f89740e |= Integer.MIN_VALUE;
            Q10 = u.Q(null, this);
            return Q10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {149, 152}, m = "singleOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class E<E> extends Bf.d {

        public Object f89741b;

        public Object f89742c;

        public Object f89743d;

        public int f89744e;

        public E(yf.f<? super E> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object R10;
            this.f89743d = obj;
            this.f89744e |= Integer.MIN_VALUE;
            R10 = u.R(null, this);
            return R10;
        }
    }

    @t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {254, 255}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
    public static final class F extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89745b;

        public int f89746c;

        public int f89747d;

        public Object f89748e;

        public final int f89749f;

        public final InterfaceC13360D<Object> f89750g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public F(int i10, InterfaceC13360D<Object> interfaceC13360D, yf.f<? super F> fVar) {
            super(2, fVar);
            this.f89749f = i10;
            this.f89750g = interfaceC13360D;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            F f10 = new F(this.f89749f, this.f89750g, fVar);
            f10.f89748e = obj;
            return f10;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((F) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x005c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0078 -> B:6:0x001b). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            int i10;
            gg.n<Object> it;
            InterfaceC13358B interfaceC13358B2;
            Object a10;
            Object l10 = Af.d.l();
            int i11 = this.f89747d;
            if (i11 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89748e;
                i10 = this.f89749f;
                if (i10 == 0) {
                    return P0.f98194a;
                }
                if (!(i10 >= 0)) {
                    throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
                }
                it = this.f89750g.iterator();
                this.f89748e = interfaceC13358B;
                this.f89745b = it;
                this.f89746c = i10;
                this.f89747d = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                }
            } else if (i11 == 1) {
                i10 = this.f89746c;
                it = (gg.n) this.f89745b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89748e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.f89746c;
                it = (gg.n) this.f89745b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89748e;
                C14418j0.n(obj);
                interfaceC13358B = interfaceC13358B2;
                i10--;
                if (i10 == 0) {
                    return P0.f98194a;
                }
                this.f89748e = interfaceC13358B;
                this.f89745b = it;
                this.f89746c = i10;
                this.f89747d = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                    return l10;
                }
                interfaceC13358B2 = interfaceC13358B;
                obj = a10;
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it.next();
                this.f89748e = interfaceC13358B2;
                this.f89745b = it;
                this.f89746c = i10;
                this.f89747d = 2;
                if (interfaceC13358B2.M(next, this) == l10) {
                    return l10;
                }
                interfaceC13358B = interfaceC13358B2;
                i10--;
                if (i10 == 0) {
                }
                this.f89748e = interfaceC13358B;
                this.f89745b = it;
                this.f89746c = i10;
                this.f89747d = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                }
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {269, 270, 271}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    public static final class G extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89751b;

        public Object f89752c;

        public int f89753d;

        public Object f89754e;

        public final InterfaceC13360D<Object> f89755f;

        public final Mf.p<Object, yf.f<? super Boolean>, Object> f89756g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public G(InterfaceC13360D<Object> interfaceC13360D, Mf.p<Object, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super G> fVar) {
            super(2, fVar);
            this.f89755f = interfaceC13360D;
            this.f89756g = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            G g10 = new G(this.f89755f, this.f89756g, fVar);
            g10.f89754e = obj;
            return g10;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((G) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x009a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0097 -> B:7:0x004d). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            gg.n<Object> it;
            InterfaceC13358B interfaceC13358B;
            InterfaceC13358B interfaceC13358B2;
            gg.n<Object> nVar;
            Object obj2;
            Object l10 = Af.d.l();
            int i10 = this.f89753d;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B3 = (InterfaceC13358B) this.f89754e;
                it = this.f89755f.iterator();
                interfaceC13358B = interfaceC13358B3;
            } else if (i10 == 1) {
                it = (gg.n) this.f89751b;
                interfaceC13358B = (InterfaceC13358B) this.f89754e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it.next();
                Mf.p<Object, yf.f<? super Boolean>, Object> pVar = this.f89756g;
                this.f89754e = interfaceC13358B;
                this.f89751b = it;
                this.f89752c = next;
                this.f89753d = 2;
                Object invoke = pVar.invoke(next, this);
                if (invoke == l10) {
                    return l10;
                }
                gg.n<Object> nVar2 = it;
                obj2 = next;
                obj = invoke;
                interfaceC13358B2 = interfaceC13358B;
                nVar = nVar2;
                if (((Boolean) obj).booleanValue()) {
                }
            } else if (i10 == 2) {
                obj2 = this.f89752c;
                nVar = (gg.n) this.f89751b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89754e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                this.f89754e = interfaceC13358B2;
                this.f89751b = nVar;
                this.f89752c = null;
                this.f89753d = 3;
                if (interfaceC13358B2.M(obj2, this) == l10) {
                    return l10;
                }
                it = nVar;
                interfaceC13358B = interfaceC13358B2;
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (gg.n) this.f89751b;
                interfaceC13358B = (InterfaceC13358B) this.f89754e;
                C14418j0.n(obj);
            }
            this.f89754e = interfaceC13358B;
            this.f89751b = it;
            this.f89753d = 1;
            obj = it.a(this);
            if (obj == l10) {
                return l10;
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, KeyEvent.KEYCODE_COPY}, m = "toChannel", n = {FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv", FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class H<E, C extends gg.E<? super E>> extends Bf.d {

        public Object f89757b;

        public Object f89758c;

        public Object f89759d;

        public Object f89760e;

        public int f89761f;

        public H(yf.f<? super H> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89760e = obj;
            this.f89761f |= Integer.MIN_VALUE;
            return gg.r.e0(null, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toCollection", n = {FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class I<E, C extends Collection<? super E>> extends Bf.d {

        public Object f89762b;

        public Object f89763c;

        public Object f89764d;

        public Object f89765e;

        public int f89766f;

        public I(yf.f<? super I> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89765e = obj;
            this.f89766f |= Integer.MIN_VALUE;
            return gg.r.f0(null, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toMap", n = {FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class J<K, V, M extends Map<? super K, ? super V>> extends Bf.d {

        public Object f89767b;

        public Object f89768c;

        public Object f89769d;

        public Object f89770e;

        public int f89771f;

        public J(yf.f<? super J> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89770e = obj;
            this.f89771f |= Integer.MIN_VALUE;
            return gg.r.h0(null, null, this);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {370, 371}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.d.f67690b0, "$this$produce", FirebaseAnalytics.d.f67690b0}, s = {"L$0", "I$0", "L$0", "I$0"})
    public static final class K extends Bf.q implements Mf.p<InterfaceC13358B<? super C14968d0<Object>>, yf.f<? super P0>, Object> {

        public Object f89772b;

        public int f89773c;

        public int f89774d;

        public Object f89775e;

        public final InterfaceC13360D<Object> f89776f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public K(InterfaceC13360D<Object> interfaceC13360D, yf.f<? super K> fVar) {
            super(2, fVar);
            this.f89776f = interfaceC13360D;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            K k10 = new K(this.f89776f, fVar);
            k10.f89775e = obj;
            return k10;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super C14968d0<Object>> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((K) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x007f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x007b -> B:6:0x0044). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            gg.n<Object> it;
            int i10;
            InterfaceC13358B interfaceC13358B2;
            gg.n<Object> nVar;
            int i11;
            Object l10 = Af.d.l();
            int i12 = this.f89774d;
            if (i12 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89775e;
                it = this.f89776f.iterator();
                i10 = 0;
            } else if (i12 == 1) {
                i11 = this.f89773c;
                nVar = (gg.n) this.f89772b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89775e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                int i13 = i11 + 1;
                C14968d0 c14968d0 = new C14968d0(i11, nVar.next());
                this.f89775e = interfaceC13358B2;
                this.f89772b = nVar;
                this.f89773c = i13;
                this.f89774d = 2;
                if (interfaceC13358B2.M(c14968d0, this) == l10) {
                    return l10;
                }
                it = nVar;
                interfaceC13358B = interfaceC13358B2;
                i10 = i13;
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int i14 = this.f89773c;
                gg.n<Object> nVar2 = (gg.n) this.f89772b;
                InterfaceC13358B interfaceC13358B3 = (InterfaceC13358B) this.f89775e;
                C14418j0.n(obj);
                interfaceC13358B = interfaceC13358B3;
                i10 = i14;
                it = nVar2;
            }
            this.f89775e = interfaceC13358B;
            this.f89772b = it;
            this.f89773c = i10;
            this.f89774d = 1;
            Object a10 = it.a(this);
            if (a10 == l10) {
                return l10;
            }
            interfaceC13358B2 = interfaceC13358B;
            obj = a10;
            int i15 = i10;
            nVar = it;
            i11 = i15;
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    public static final class L extends O implements Mf.p<Object, Object, Z<Object, Object>> {

        public static final L f89777b = new L();

        public L() {
            super(2);
        }

        @Override
        @NotNull
        public final Z<Object, Object> invoke(Object obj, Object obj2) {
            return v0.a(obj, obj2);
        }
    }

    @t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n105#2:480\n82#2,6:481\n106#2,2:487\n92#2:489\n88#2,3:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n468#1:480\n468#1:481,6\n468#1:487,2\n468#1:489\n468#1:490,3\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {487, 469, 471}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1", "$this$produce", "otherIterator", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5", "L$0", "L$1", "L$3"})
    public static final class M<V> extends Bf.q implements Mf.p<InterfaceC13358B<? super V>, yf.f<? super P0>, Object> {

        public Object f89778b;

        public Object f89779c;

        public Object f89780d;

        public Object f89781e;

        public Object f89782f;

        public int f89783g;

        public Object f89784h;

        public final InterfaceC13360D<R> f89785i;

        public final InterfaceC13360D<E> f89786j;

        public final Mf.p<E, R, V> f89787k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public M(InterfaceC13360D<? extends R> interfaceC13360D, InterfaceC13360D<? extends E> interfaceC13360D2, Mf.p<? super E, ? super R, ? extends V> pVar, yf.f<? super M> fVar) {
            super(2, fVar);
            this.f89785i = interfaceC13360D;
            this.f89786j = interfaceC13360D2;
            this.f89787k = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            M m10 = new M(this.f89785i, this.f89786j, this.f89787k, fVar);
            m10.f89784h = obj;
            return m10;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super V> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((M) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0088, code lost:
        
            r6 = r7;
            r7 = r8;
            r8 = r9;
            r9 = r10;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00a5 A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #2 {all -> 0x002a, blocks: (B:8:0x0026, B:9:0x0088, B:13:0x009d, B:15:0x00a5, B:35:0x00ef, B:46:0x006b, B:48:0x0080), top: B:2:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00cd A[Catch: all -> 0x0053, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:19:0x00c5, B:21:0x00cd, B:43:0x004b), top: B:42:0x004b }] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00ef A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x002a, blocks: (B:8:0x0026, B:9:0x0088, B:13:0x009d, B:15:0x00a5, B:35:0x00ef, B:46:0x006b, B:48:0x0080), top: B:2:0x000a }] */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13360D interfaceC13360D;
            Mf.p pVar;
            InterfaceC13358B interfaceC13358B;
            gg.n nVar;
            gg.n it;
            InterfaceC13360D interfaceC13360D2;
            InterfaceC13358B interfaceC13358B2;
            gg.n nVar2;
            Mf.p pVar2;
            Object obj2;
            Object l10 = Af.d.l();
            int i10 = this.f89783g;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    InterfaceC13358B interfaceC13358B3 = (InterfaceC13358B) this.f89784h;
                    gg.n it2 = this.f89785i.iterator();
                    interfaceC13360D = this.f89786j;
                    pVar = this.f89787k;
                    interfaceC13358B = interfaceC13358B3;
                    nVar = it2;
                    it = interfaceC13360D.iterator();
                } else if (i10 == 1) {
                    it = (gg.n) this.f89781e;
                    interfaceC13360D = (InterfaceC13360D) this.f89780d;
                    pVar = (Mf.p) this.f89779c;
                    nVar = (gg.n) this.f89778b;
                    interfaceC13358B = (InterfaceC13358B) this.f89784h;
                    C14418j0.n(obj);
                    if (((Boolean) obj).booleanValue()) {
                        P0 p02 = P0.f98194a;
                        gg.r.b(interfaceC13360D, null);
                        return p02;
                    }
                    Object next = it.next();
                    this.f89784h = interfaceC13358B;
                    this.f89778b = nVar;
                    this.f89779c = pVar;
                    this.f89780d = interfaceC13360D;
                    this.f89781e = it;
                    this.f89782f = next;
                    this.f89783g = 2;
                    Object a10 = nVar.a(this);
                    if (a10 == l10) {
                        return l10;
                    }
                    InterfaceC13360D interfaceC13360D3 = interfaceC13360D;
                    obj2 = next;
                    obj = a10;
                    interfaceC13358B2 = interfaceC13358B;
                    nVar2 = nVar;
                    pVar2 = pVar;
                    interfaceC13360D2 = interfaceC13360D3;
                    if (((Boolean) obj).booleanValue()) {
                    }
                    interfaceC13360D = interfaceC13360D2;
                    pVar = pVar2;
                    nVar = nVar2;
                    interfaceC13358B = interfaceC13358B2;
                } else if (i10 == 2) {
                    Object obj3 = this.f89782f;
                    gg.n nVar3 = (gg.n) this.f89781e;
                    interfaceC13360D2 = (InterfaceC13360D) this.f89780d;
                    pVar2 = (Mf.p) this.f89779c;
                    nVar2 = (gg.n) this.f89778b;
                    interfaceC13358B2 = (InterfaceC13358B) this.f89784h;
                    try {
                        C14418j0.n(obj);
                        obj2 = obj3;
                        it = nVar3;
                        if (((Boolean) obj).booleanValue()) {
                            Object invoke = pVar2.invoke(obj2, nVar2.next());
                            this.f89784h = interfaceC13358B2;
                            this.f89778b = nVar2;
                            this.f89779c = pVar2;
                            this.f89780d = interfaceC13360D2;
                            this.f89781e = it;
                            this.f89782f = null;
                            this.f89783g = 3;
                            if (interfaceC13358B2.M(invoke, this) == l10) {
                                return l10;
                            }
                        }
                        interfaceC13360D = interfaceC13360D2;
                        pVar = pVar2;
                        nVar = nVar2;
                        interfaceC13358B = interfaceC13358B2;
                    } catch (Throwable th2) {
                        th = th2;
                        interfaceC13360D = interfaceC13360D2;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            gg.r.b(interfaceC13360D, th);
                            throw th3;
                        }
                    }
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) this.f89781e;
                    interfaceC13360D = (InterfaceC13360D) this.f89780d;
                    pVar = (Mf.p) this.f89779c;
                    nVar = (gg.n) this.f89778b;
                    interfaceC13358B = (InterfaceC13358B) this.f89784h;
                    C14418j0.n(obj);
                }
                this.f89784h = interfaceC13358B;
                this.f89778b = nVar;
                this.f89779c = pVar;
                this.f89780d = interfaceC13360D;
                this.f89781e = it;
                this.f89782f = null;
                this.f89783g = 1;
                obj = it.a(this);
                if (obj == l10) {
                    return l10;
                }
                if (((Boolean) obj).booleanValue()) {
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {404}, m = "any", n = {"$this$consume$iv"}, s = {"L$0"})
    public static final class C13369a<E> extends Bf.d {

        public Object f89788b;

        public Object f89789c;

        public int f89790d;

        public C13369a(yf.f<? super C13369a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object a10;
            this.f89789c = obj;
            this.f89790d |= Integer.MIN_VALUE;
            a10 = u.a(null, this);
            return a10;
        }
    }

    public static final class C13370b extends O implements Mf.l<Throwable, P0> {

        public final InterfaceC13360D<?> f89791b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13370b(InterfaceC13360D<?> interfaceC13360D) {
            super(1);
            this.f89791b = interfaceC13360D;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            gg.r.b(this.f89791b, th2);
        }
    }

    @t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n75#2:480\n1#3:481\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1\n*L\n26#1:480\n*E\n"})
    public static final class C13371c extends O implements Mf.l<Throwable, P0> {

        public final InterfaceC13360D<?>[] f89792b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13371c(InterfaceC13360D<?>[] interfaceC13360DArr) {
            super(1);
            this.f89792b = interfaceC13360DArr;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            Throwable th3 = null;
            for (InterfaceC13360D<?> interfaceC13360D : this.f89792b) {
                try {
                    gg.r.b(interfaceC13360D, th2);
                } catch (Throwable th4) {
                    if (th3 == null) {
                        th3 = th4;
                    } else {
                        C14436t.a(th3, th4);
                    }
                }
            }
            if (th3 != null) {
                throw th3;
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = oc.c.f98682m, n = {oc.c.f98682m, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class C13372d<E> extends Bf.d {

        public Object f89793b;

        public Object f89794c;

        public Object f89795d;

        public Object f89796e;

        public int f89797f;

        public C13372d(yf.f<? super C13372d> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d10;
            this.f89796e = obj;
            this.f89797f |= Integer.MIN_VALUE;
            d10 = u.d(null, this);
            return d10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C13373e extends Bf.q implements Mf.p<Object, yf.f<Object>, Object> {

        public int f89798b;

        public Object f89799c;

        public C13373e(yf.f<? super C13373e> fVar) {
            super(2, fVar);
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13373e c13373e = new C13373e(fVar);
            c13373e.f89799c = obj;
            return c13373e;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f89798b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            return this.f89799c;
        }

        @Override
        @Nullable
        public final Object invoke(Object obj, @Nullable yf.f<Object> fVar) {
            return ((C13373e) create(obj, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {387, 388, 390}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
    public static final class C13374f<E> extends Bf.q implements Mf.p<InterfaceC13358B<? super E>, yf.f<? super P0>, Object> {

        public Object f89800b;

        public Object f89801c;

        public Object f89802d;

        public int f89803e;

        public Object f89804f;

        public final InterfaceC13360D<E> f89805g;

        public final Mf.p<E, yf.f<? super K>, Object> f89806h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13374f(InterfaceC13360D<? extends E> interfaceC13360D, Mf.p<? super E, ? super yf.f<? super K>, ? extends Object> pVar, yf.f<? super C13374f> fVar) {
            super(2, fVar);
            this.f89805g = interfaceC13360D;
            this.f89806h = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13374f c13374f = new C13374f(this.f89805g, this.f89806h, fVar);
            c13374f.f89804f = obj;
            return c13374f;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super E> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((C13374f) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0078 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00bd  */
        /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v15 */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.util.Collection] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a1 -> B:8:0x00ba). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00b4 -> B:7:0x00b6). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            HashSet hashSet;
            gg.n<E> it;
            InterfaceC13358B interfaceC13358B2;
            HashSet hashSet2;
            E e10;
            boolean contains;
            HashSet hashSet3;
            Object l10 = Af.d.l();
            int i10 = this.f89803e;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B3 = (InterfaceC13358B) this.f89804f;
                HashSet hashSet4 = new HashSet();
                interfaceC13358B = interfaceC13358B3;
                hashSet = hashSet4;
                it = this.f89805g.iterator();
                this.f89804f = interfaceC13358B;
                this.f89800b = hashSet;
                this.f89801c = it;
                this.f89802d = null;
                this.f89803e = 1;
                obj = it.a(this);
                if (obj == l10) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
            } else if (i10 == 1) {
                it = (gg.n) this.f89801c;
                hashSet = (HashSet) this.f89800b;
                interfaceC13358B = (InterfaceC13358B) this.f89804f;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                }
            } else if (i10 == 2) {
                ?? r12 = this.f89802d;
                gg.n<E> nVar = (gg.n) this.f89801c;
                HashSet hashSet5 = (HashSet) this.f89800b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89804f;
                C14418j0.n(obj);
                e10 = r12;
                it = nVar;
                hashSet2 = hashSet5;
                contains = hashSet2.contains(obj);
                hashSet3 = hashSet2;
                if (!contains) {
                }
                hashSet = hashSet3;
                interfaceC13358B = interfaceC13358B2;
                this.f89804f = interfaceC13358B;
                this.f89800b = hashSet;
                this.f89801c = it;
                this.f89802d = null;
                this.f89803e = 1;
                obj = it.a(this);
                if (obj == l10) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Object obj2 = this.f89802d;
                gg.n<E> nVar2 = (gg.n) this.f89801c;
                HashSet hashSet6 = (HashSet) this.f89800b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89804f;
                C14418j0.n(obj);
                ?? r62 = hashSet6;
                r62.add(obj2);
                it = nVar2;
                hashSet3 = r62;
                hashSet = hashSet3;
                interfaceC13358B = interfaceC13358B2;
                this.f89804f = interfaceC13358B;
                this.f89800b = hashSet;
                this.f89801c = it;
                this.f89802d = null;
                this.f89803e = 1;
                obj = it.a(this);
                if (obj == l10) {
                    return l10;
                }
                if (((Boolean) obj).booleanValue()) {
                    E next = it.next();
                    Mf.p pVar = this.f89806h;
                    this.f89804f = interfaceC13358B;
                    this.f89800b = hashSet;
                    this.f89801c = it;
                    this.f89802d = next;
                    this.f89803e = 2;
                    Object invoke = pVar.invoke(next, this);
                    if (invoke == l10) {
                        return l10;
                    }
                    HashSet hashSet7 = hashSet;
                    e10 = next;
                    obj = invoke;
                    interfaceC13358B2 = interfaceC13358B;
                    hashSet2 = hashSet7;
                    contains = hashSet2.contains(obj);
                    hashSet3 = hashSet2;
                    if (!contains) {
                        this.f89804f = interfaceC13358B2;
                        this.f89800b = hashSet2;
                        this.f89801c = it;
                        this.f89802d = obj;
                        this.f89803e = 3;
                        if (interfaceC13358B2.M(e10, this) == l10) {
                            return l10;
                        }
                        nVar2 = it;
                        obj2 = obj;
                        r62 = hashSet2;
                        r62.add(obj2);
                        it = nVar2;
                        hashSet3 = r62;
                    }
                    hashSet = hashSet3;
                    interfaceC13358B = interfaceC13358B2;
                    this.f89804f = interfaceC13358B;
                    this.f89800b = hashSet;
                    this.f89801c = it;
                    this.f89802d = null;
                    this.f89803e = 1;
                    obj = it.a(this);
                    if (obj == l10) {
                    }
                    if (((Boolean) obj).booleanValue()) {
                        return P0.f98194a;
                    }
                }
            }
        }
    }

    @t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {164, 169, 170}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
    public static final class C13375g extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89807b;

        public int f89808c;

        public int f89809d;

        public Object f89810e;

        public final int f89811f;

        public final InterfaceC13360D<Object> f89812g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13375g(int i10, InterfaceC13360D<Object> interfaceC13360D, yf.f<? super C13375g> fVar) {
            super(2, fVar);
            this.f89811f = i10;
            this.f89812g = interfaceC13360D;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13375g c13375g = new C13375g(this.f89811f, this.f89812g, fVar);
            c13375g.f89810e = obj;
            return c13375g;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((C13375g) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        
            if (r1 == 0) goto L69;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x008a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00a4 -> B:7:0x001c). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0065 -> B:24:0x0068). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            int i10;
            gg.n<Object> it;
            InterfaceC13358B interfaceC13358B2;
            gg.n<Object> it2;
            InterfaceC13358B interfaceC13358B3;
            Object a10;
            Object l10 = Af.d.l();
            int i11 = this.f89809d;
            if (i11 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89810e;
                i10 = this.f89811f;
                if (!(i10 >= 0)) {
                    throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
                }
                if (i10 > 0) {
                    it = this.f89812g.iterator();
                    interfaceC13358B2 = interfaceC13358B;
                    this.f89810e = interfaceC13358B2;
                    this.f89807b = it;
                    this.f89808c = i10;
                    this.f89809d = 1;
                    obj = it.a(this);
                    if (obj == l10) {
                        return l10;
                    }
                    if (((Boolean) obj).booleanValue()) {
                    }
                    interfaceC13358B = interfaceC13358B2;
                }
                it2 = this.f89812g.iterator();
                this.f89810e = interfaceC13358B;
                this.f89807b = it2;
                this.f89809d = 2;
                a10 = it2.a(this);
                if (a10 != l10) {
                }
            } else if (i11 == 1) {
                i10 = this.f89808c;
                it = (gg.n) this.f89807b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89810e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    it.next();
                    i10--;
                }
                interfaceC13358B = interfaceC13358B2;
                it2 = this.f89812g.iterator();
                this.f89810e = interfaceC13358B;
                this.f89807b = it2;
                this.f89809d = 2;
                a10 = it2.a(this);
                if (a10 != l10) {
                }
            } else if (i11 == 2) {
                it2 = (gg.n) this.f89807b;
                interfaceC13358B3 = (InterfaceC13358B) this.f89810e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it2 = (gg.n) this.f89807b;
                interfaceC13358B3 = (InterfaceC13358B) this.f89810e;
                C14418j0.n(obj);
                interfaceC13358B = interfaceC13358B3;
                this.f89810e = interfaceC13358B;
                this.f89807b = it2;
                this.f89809d = 2;
                a10 = it2.a(this);
                if (a10 != l10) {
                    return l10;
                }
                interfaceC13358B3 = interfaceC13358B;
                obj = a10;
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it2.next();
                this.f89810e = interfaceC13358B3;
                this.f89807b = it2;
                this.f89809d = 3;
                if (interfaceC13358B3.M(next, this) == l10) {
                    return l10;
                }
                interfaceC13358B = interfaceC13358B3;
                this.f89810e = interfaceC13358B;
                this.f89807b = it2;
                this.f89809d = 2;
                a10 = it2.a(this);
                if (a10 != l10) {
                }
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {181, 182, 183, 187, 188}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
    public static final class C13376h extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89813b;

        public Object f89814c;

        public int f89815d;

        public Object f89816e;

        public final InterfaceC13360D<Object> f89817f;

        public final Mf.p<Object, yf.f<? super Boolean>, Object> f89818g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13376h(InterfaceC13360D<Object> interfaceC13360D, Mf.p<Object, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super C13376h> fVar) {
            super(2, fVar);
            this.f89817f = interfaceC13360D;
            this.f89818g = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13376h c13376h = new C13376h(this.f89817f, this.f89818g, fVar);
            c13376h.f89816e = obj;
            return c13376h;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((C13376h) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x00d1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00de  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0081 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00ec -> B:9:0x0023). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x009f -> B:28:0x0054). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            gg.n<Object> it;
            InterfaceC13358B interfaceC13358B;
            InterfaceC13358B interfaceC13358B2;
            gg.n<Object> it2;
            InterfaceC13358B interfaceC13358B3;
            gg.n<Object> nVar;
            Object a10;
            Object l10 = Af.d.l();
            int i10 = this.f89815d;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B4 = (InterfaceC13358B) this.f89816e;
                it = this.f89817f.iterator();
                interfaceC13358B = interfaceC13358B4;
                this.f89816e = interfaceC13358B;
                this.f89813b = it;
                this.f89814c = null;
                this.f89815d = 1;
                obj = it.a(this);
                if (obj == l10) {
                }
                InterfaceC13358B interfaceC13358B5 = interfaceC13358B;
                gg.n<Object> nVar2 = it;
                interfaceC13358B2 = interfaceC13358B5;
                if (((Boolean) obj).booleanValue()) {
                }
                it2 = this.f89817f.iterator();
                this.f89816e = interfaceC13358B2;
                this.f89813b = it2;
                this.f89815d = 4;
                a10 = it2.a(this);
                if (a10 == l10) {
                }
            } else if (i10 == 1) {
                it = (gg.n) this.f89813b;
                interfaceC13358B = (InterfaceC13358B) this.f89816e;
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B52 = interfaceC13358B;
                gg.n<Object> nVar22 = it;
                interfaceC13358B2 = interfaceC13358B52;
                if (((Boolean) obj).booleanValue()) {
                }
                it2 = this.f89817f.iterator();
                this.f89816e = interfaceC13358B2;
                this.f89813b = it2;
                this.f89815d = 4;
                a10 = it2.a(this);
                if (a10 == l10) {
                }
            } else if (i10 == 2) {
                Object obj2 = this.f89814c;
                gg.n<Object> nVar3 = (gg.n) this.f89813b;
                InterfaceC13358B interfaceC13358B6 = (InterfaceC13358B) this.f89816e;
                C14418j0.n(obj);
                gg.n<Object> nVar4 = nVar3;
                Object obj3 = obj2;
                it = nVar4;
                if (((Boolean) obj).booleanValue()) {
                    this.f89816e = interfaceC13358B6;
                    this.f89813b = null;
                    this.f89814c = null;
                    this.f89815d = 3;
                    if (interfaceC13358B6.M(obj3, this) == l10) {
                        return l10;
                    }
                    interfaceC13358B2 = interfaceC13358B6;
                    it2 = this.f89817f.iterator();
                    this.f89816e = interfaceC13358B2;
                    this.f89813b = it2;
                    this.f89815d = 4;
                    a10 = it2.a(this);
                    if (a10 == l10) {
                    }
                } else {
                    interfaceC13358B = interfaceC13358B6;
                    this.f89816e = interfaceC13358B;
                    this.f89813b = it;
                    this.f89814c = null;
                    this.f89815d = 1;
                    obj = it.a(this);
                    if (obj == l10) {
                        return l10;
                    }
                    InterfaceC13358B interfaceC13358B522 = interfaceC13358B;
                    gg.n<Object> nVar222 = it;
                    interfaceC13358B2 = interfaceC13358B522;
                    if (((Boolean) obj).booleanValue()) {
                        Object next = nVar222.next();
                        Mf.p<Object, yf.f<? super Boolean>, Object> pVar = this.f89818g;
                        this.f89816e = interfaceC13358B2;
                        this.f89813b = nVar222;
                        this.f89814c = next;
                        this.f89815d = 2;
                        Object invoke = pVar.invoke(next, this);
                        if (invoke == l10) {
                            return l10;
                        }
                        nVar4 = nVar222;
                        obj3 = next;
                        obj = invoke;
                        interfaceC13358B6 = interfaceC13358B2;
                        it = nVar4;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    }
                    it2 = this.f89817f.iterator();
                    this.f89816e = interfaceC13358B2;
                    this.f89813b = it2;
                    this.f89815d = 4;
                    a10 = it2.a(this);
                    if (a10 == l10) {
                    }
                }
            } else if (i10 == 3) {
                interfaceC13358B2 = (InterfaceC13358B) this.f89816e;
                C14418j0.n(obj);
                it2 = this.f89817f.iterator();
                this.f89816e = interfaceC13358B2;
                this.f89813b = it2;
                this.f89815d = 4;
                a10 = it2.a(this);
                if (a10 == l10) {
                }
            } else if (i10 == 4) {
                nVar = (gg.n) this.f89813b;
                interfaceC13358B3 = (InterfaceC13358B) this.f89816e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i10 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                nVar = (gg.n) this.f89813b;
                interfaceC13358B3 = (InterfaceC13358B) this.f89816e;
                C14418j0.n(obj);
                it2 = nVar;
                interfaceC13358B2 = interfaceC13358B3;
                this.f89816e = interfaceC13358B2;
                this.f89813b = it2;
                this.f89815d = 4;
                a10 = it2.a(this);
                if (a10 == l10) {
                    return l10;
                }
                InterfaceC13358B interfaceC13358B7 = interfaceC13358B2;
                nVar = it2;
                obj = a10;
                interfaceC13358B3 = interfaceC13358B7;
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next2 = nVar.next();
                this.f89816e = interfaceC13358B3;
                this.f89813b = nVar;
                this.f89815d = 5;
                if (interfaceC13358B3.M(next2, this) == l10) {
                    return l10;
                }
                it2 = nVar;
                interfaceC13358B2 = interfaceC13358B3;
                this.f89816e = interfaceC13358B2;
                this.f89813b = it2;
                this.f89815d = 4;
                a10 = it2.a(this);
                if (a10 == l10) {
                }
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {38}, m = "elementAt", n = {"$this$consume$iv", FirebaseAnalytics.d.f67690b0, oc.c.f98682m}, s = {"L$0", "I$0", "I$1"})
    public static final class C13377i<E> extends Bf.d {

        public int f89819b;

        public int f89820c;

        public Object f89821d;

        public Object f89822e;

        public Object f89823f;

        public int f89824g;

        public C13377i(yf.f<? super C13377i> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10;
            this.f89823f = obj;
            this.f89824g |= Integer.MIN_VALUE;
            l10 = u.l(null, 0, this);
            return l10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {53}, m = "elementAtOrNull", n = {"$this$consume$iv", FirebaseAnalytics.d.f67690b0, oc.c.f98682m}, s = {"L$0", "I$0", "I$1"})
    public static final class C13378j<E> extends Bf.d {

        public int f89825b;

        public int f89826c;

        public Object f89827d;

        public Object f89828e;

        public Object f89829f;

        public int f89830g;

        public C13378j(yf.f<? super C13378j> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object m10;
            this.f89829f = obj;
            this.f89830g |= Integer.MIN_VALUE;
            m10 = u.m(null, 0, this);
            return m10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {198, 199, 199}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    public static final class C13379k<E> extends Bf.q implements Mf.p<InterfaceC13358B<? super E>, yf.f<? super P0>, Object> {

        public Object f89831b;

        public Object f89832c;

        public int f89833d;

        public Object f89834e;

        public final InterfaceC13360D<E> f89835f;

        public final Mf.p<E, yf.f<? super Boolean>, Object> f89836g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13379k(InterfaceC13360D<? extends E> interfaceC13360D, Mf.p<? super E, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super C13379k> fVar) {
            super(2, fVar);
            this.f89835f = interfaceC13360D;
            this.f89836g = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13379k c13379k = new C13379k(this.f89835f, this.f89836g, fVar);
            c13379k.f89834e = obj;
            return c13379k;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super E> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((C13379k) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        
            r6 = r7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            gg.n<E> it;
            InterfaceC13358B interfaceC13358B;
            InterfaceC13358B interfaceC13358B2;
            E e10;
            Object l10 = Af.d.l();
            int i10 = this.f89833d;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B3 = (InterfaceC13358B) this.f89834e;
                it = this.f89835f.iterator();
                interfaceC13358B = interfaceC13358B3;
            } else if (i10 == 1) {
                it = (gg.n) this.f89831b;
                interfaceC13358B = (InterfaceC13358B) this.f89834e;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                E next = it.next();
                Mf.p<E, yf.f<? super Boolean>, Object> pVar = this.f89836g;
                this.f89834e = interfaceC13358B;
                this.f89831b = it;
                this.f89832c = next;
                this.f89833d = 2;
                Object invoke = pVar.invoke(next, this);
                if (invoke == l10) {
                    return l10;
                }
                InterfaceC13358B interfaceC13358B4 = interfaceC13358B;
                e10 = next;
                obj = invoke;
                interfaceC13358B2 = interfaceC13358B4;
                if (((Boolean) obj).booleanValue()) {
                }
                interfaceC13358B = interfaceC13358B2;
            } else if (i10 == 2) {
                Object obj2 = this.f89832c;
                gg.n<E> nVar = (gg.n) this.f89831b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89834e;
                C14418j0.n(obj);
                e10 = obj2;
                it = nVar;
                if (((Boolean) obj).booleanValue()) {
                    this.f89834e = interfaceC13358B2;
                    this.f89831b = it;
                    this.f89832c = null;
                    this.f89833d = 3;
                    if (interfaceC13358B2.M(e10, this) == l10) {
                        return l10;
                    }
                }
                interfaceC13358B = interfaceC13358B2;
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (gg.n) this.f89831b;
                interfaceC13358B = (InterfaceC13358B) this.f89834e;
                C14418j0.n(obj);
            }
            this.f89834e = interfaceC13358B;
            this.f89831b = it;
            this.f89832c = null;
            this.f89833d = 1;
            obj = it.a(this);
            if (obj == l10) {
                return l10;
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {211, 212, 212}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.d.f67690b0, "$this$produce", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, FirebaseAnalytics.d.f67690b0, "$this$produce", FirebaseAnalytics.d.f67690b0}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
    public static final class C13380l extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89837b;

        public Object f89838c;

        public int f89839d;

        public int f89840e;

        public Object f89841f;

        public final InterfaceC13360D<Object> f89842g;

        public final Mf.q<Integer, Object, yf.f<? super Boolean>, Object> f89843h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13380l(InterfaceC13360D<Object> interfaceC13360D, Mf.q<? super Integer, Object, ? super yf.f<? super Boolean>, ? extends Object> qVar, yf.f<? super C13380l> fVar) {
            super(2, fVar);
            this.f89842g = interfaceC13360D;
            this.f89843h = qVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13380l c13380l = new C13380l(this.f89842g, this.f89843h, fVar);
            c13380l.f89841f = obj;
            return c13380l;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((C13380l) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
        
            r7 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b0  */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            gg.n<Object> it;
            int i10;
            InterfaceC13358B interfaceC13358B2;
            Object obj2;
            Object l10 = Af.d.l();
            int i11 = this.f89840e;
            if (i11 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89841f;
                it = this.f89842g.iterator();
                i10 = 0;
            } else if (i11 == 1) {
                i10 = this.f89839d;
                it = (gg.n) this.f89837b;
                interfaceC13358B = (InterfaceC13358B) this.f89841f;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it.next();
                Mf.q<Integer, Object, yf.f<? super Boolean>, Object> qVar = this.f89843h;
                int i12 = i10 + 1;
                Integer f10 = Bf.b.f(i10);
                this.f89841f = interfaceC13358B;
                this.f89837b = it;
                this.f89838c = next;
                this.f89839d = i12;
                this.f89840e = 2;
                Object n10 = qVar.n(f10, next, this);
                if (n10 == l10) {
                    return l10;
                }
                interfaceC13358B2 = interfaceC13358B;
                obj2 = next;
                obj = n10;
                i10 = i12;
                if (((Boolean) obj).booleanValue()) {
                }
                interfaceC13358B = interfaceC13358B2;
            } else if (i11 == 2) {
                i10 = this.f89839d;
                Object obj3 = this.f89838c;
                gg.n<Object> nVar = (gg.n) this.f89837b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89841f;
                C14418j0.n(obj);
                obj2 = obj3;
                it = nVar;
                if (((Boolean) obj).booleanValue()) {
                    this.f89841f = interfaceC13358B2;
                    this.f89837b = it;
                    this.f89838c = null;
                    this.f89839d = i10;
                    this.f89840e = 3;
                    if (interfaceC13358B2.M(obj2, this) == l10) {
                        return l10;
                    }
                }
                interfaceC13358B = interfaceC13358B2;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.f89839d;
                it = (gg.n) this.f89837b;
                interfaceC13358B = (InterfaceC13358B) this.f89841f;
                C14418j0.n(obj);
            }
            this.f89841f = interfaceC13358B;
            this.f89837b = it;
            this.f89838c = null;
            this.f89839d = i10;
            this.f89840e = 1;
            obj = it.a(this);
            if (obj == l10) {
                return l10;
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
    public static final class C13381m extends Bf.q implements Mf.p<Object, yf.f<? super Boolean>, Object> {

        public int f89844b;

        public Object f89845c;

        public final Mf.p<Object, yf.f<? super Boolean>, Object> f89846d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13381m(Mf.p<Object, ? super yf.f<? super Boolean>, ? extends Object> pVar, yf.f<? super C13381m> fVar) {
            super(2, fVar);
            this.f89846d = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            C13381m c13381m = new C13381m(this.f89846d, fVar);
            c13381m.f89845c = obj;
            return c13381m;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f89844b;
            if (i10 == 0) {
                C14418j0.n(obj);
                Object obj2 = this.f89845c;
                Mf.p<Object, yf.f<? super Boolean>, Object> pVar = this.f89846d;
                this.f89844b = 1;
                obj = pVar.invoke(obj2, this);
                if (obj == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return Bf.b.a(!((Boolean) obj).booleanValue());
        }

        @Override
        @Nullable
        public final Object invoke(Object obj, @Nullable yf.f<? super Boolean> fVar) {
            return ((C13381m) create(obj, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class n<E> extends Bf.q implements Mf.p<E, yf.f<? super Boolean>, Object> {

        public int f89847b;

        public Object f89848c;

        public n(yf.f<? super n> fVar) {
            super(2, fVar);
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            n nVar = new n(fVar);
            nVar.f89848c = obj;
            return nVar;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f89847b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            return Bf.b.a(this.f89848c != null);
        }

        @Override
        @Nullable
        public final Object invoke(@Nullable E e10, @Nullable yf.f<? super Boolean> fVar) {
            return ((n) create(e10, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "filterNotNullTo", n = {FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    public static final class o<E, C extends Collection<? super E>> extends Bf.d {

        public Object f89849b;

        public Object f89850c;

        public Object f89851d;

        public Object f89852e;

        public int f89853f;

        public o(yf.f<? super o> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object v10;
            this.f89852e = obj;
            this.f89853f |= Integer.MIN_VALUE;
            v10 = u.v(null, null, this);
            return v10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, 242}, m = "filterNotNullTo", n = {FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv", FirebaseAnalytics.d.f67729z, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class p<E, C extends gg.E<? super E>> extends Bf.d {

        public Object f89854b;

        public Object f89855c;

        public Object f89856d;

        public Object f89857e;

        public int f89858f;

        public p(yf.f<? super p> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object u10;
            this.f89857e = obj;
            this.f89858f |= Integer.MIN_VALUE;
            u10 = u.u(null, null, this);
            return u10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {65}, m = "first", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    public static final class q<E> extends Bf.d {

        public Object f89859b;

        public Object f89860c;

        public Object f89861d;

        public int f89862e;

        public q(yf.f<? super q> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object w10;
            this.f89861d = obj;
            this.f89862e |= Integer.MIN_VALUE;
            w10 = u.w(null, this);
            return w10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {75}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    public static final class r<E> extends Bf.d {

        public Object f89863b;

        public Object f89864c;

        public Object f89865d;

        public int f89866e;

        public r(yf.f<? super r> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object x10;
            this.f89865d = obj;
            this.f89866e |= Integer.MIN_VALUE;
            x10 = u.x(null, this);
            return x10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {321, 322, 322}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    public static final class s extends Bf.q implements Mf.p<InterfaceC13358B<Object>, yf.f<? super P0>, Object> {

        public Object f89867b;

        public int f89868c;

        public Object f89869d;

        public final InterfaceC13360D<Object> f89870e;

        public final Mf.p<Object, yf.f<? super InterfaceC13360D<Object>>, Object> f89871f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public s(InterfaceC13360D<Object> interfaceC13360D, Mf.p<Object, ? super yf.f<? super InterfaceC13360D<Object>>, ? extends Object> pVar, yf.f<? super s> fVar) {
            super(2, fVar);
            this.f89870e = interfaceC13360D;
            this.f89871f = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            s sVar = new s(this.f89870e, this.f89871f, fVar);
            sVar.f89869d = obj;
            return sVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<Object> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((s) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0081 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0082  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:7:0x004b). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            gg.n<Object> it;
            InterfaceC13358B interfaceC13358B;
            Object l10 = Af.d.l();
            int i10 = this.f89868c;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13358B interfaceC13358B2 = (InterfaceC13358B) this.f89869d;
                it = this.f89870e.iterator();
                interfaceC13358B = interfaceC13358B2;
            } else if (i10 == 1) {
                it = (gg.n) this.f89867b;
                interfaceC13358B = (InterfaceC13358B) this.f89869d;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it.next();
                Mf.p<Object, yf.f<? super InterfaceC13360D<Object>>, Object> pVar = this.f89871f;
                this.f89869d = interfaceC13358B;
                this.f89867b = it;
                this.f89868c = 2;
                obj = pVar.invoke(next, this);
                if (obj == l10) {
                    return l10;
                }
                this.f89869d = interfaceC13358B;
                this.f89867b = it;
                this.f89868c = 3;
                if (gg.r.e0((InterfaceC13360D) obj, interfaceC13358B, this) == l10) {
                }
            } else if (i10 == 2) {
                it = (gg.n) this.f89867b;
                interfaceC13358B = (InterfaceC13358B) this.f89869d;
                C14418j0.n(obj);
                this.f89869d = interfaceC13358B;
                this.f89867b = it;
                this.f89868c = 3;
                if (gg.r.e0((InterfaceC13360D) obj, interfaceC13358B, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (gg.n) this.f89867b;
                interfaceC13358B = (InterfaceC13358B) this.f89869d;
                C14418j0.n(obj);
            }
            this.f89869d = interfaceC13358B;
            this.f89867b = it;
            this.f89868c = 1;
            obj = it.a(this);
            if (obj == l10) {
                return l10;
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {487}, m = "indexOf", n = {"element", FirebaseAnalytics.d.f67690b0, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
    public static final class t<E> extends Bf.d {

        public Object f89872b;

        public Object f89873c;

        public Object f89874d;

        public Object f89875e;

        public Object f89876f;

        public int f89877g;

        public t(yf.f<? super t> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object A10;
            this.f89876f = obj;
            this.f89877g |= Integer.MIN_VALUE;
            A10 = u.A(null, null, this);
            return A10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {97, 100}, m = "last", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    public static final class C1720u<E> extends Bf.d {

        public Object f89878b;

        public Object f89879c;

        public Object f89880d;

        public Object f89881e;

        public int f89882f;

        public C1720u(yf.f<? super C1720u> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object B10;
            this.f89881e = obj;
            this.f89882f |= Integer.MIN_VALUE;
            B10 = u.B(null, this);
            return B10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {487}, m = "lastIndexOf", n = {"element", "lastIndex", FirebaseAnalytics.d.f67690b0, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    public static final class v<E> extends Bf.d {

        public Object f89883b;

        public Object f89884c;

        public Object f89885d;

        public Object f89886e;

        public Object f89887f;

        public Object f89888g;

        public int f89889h;

        public v(yf.f<? super v> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object C10;
            this.f89888g = obj;
            this.f89889h |= Integer.MIN_VALUE;
            C10 = u.C(null, null, this);
            return C10;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {123, 126}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    public static final class w<E> extends Bf.d {

        public Object f89890b;

        public Object f89891c;

        public Object f89892d;

        public Object f89893e;

        public int f89894f;

        public w(yf.f<? super w> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object D10;
            this.f89893e = obj;
            this.f89894f |= Integer.MIN_VALUE;
            D10 = u.D(null, this);
            return D10;
        }
    }

    @t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n105#2:480\n82#2,6:481\n106#2,2:487\n92#2:489\n88#2,3:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n*L\n332#1:480\n332#1:481,6\n332#1:487,2\n332#1:489\n332#1:490,3\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {487, 333, 333}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
    public static final class x<R> extends Bf.q implements Mf.p<InterfaceC13358B<? super R>, yf.f<? super P0>, Object> {

        public Object f89895b;

        public Object f89896c;

        public Object f89897d;

        public Object f89898e;

        public int f89899f;

        public Object f89900g;

        public final InterfaceC13360D<E> f89901h;

        public final Mf.p<E, yf.f<? super R>, Object> f89902i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public x(InterfaceC13360D<? extends E> interfaceC13360D, Mf.p<? super E, ? super yf.f<? super R>, ? extends Object> pVar, yf.f<? super x> fVar) {
            super(2, fVar);
            this.f89901h = interfaceC13360D;
            this.f89902i = pVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            x xVar = new x(this.f89901h, this.f89902i, fVar);
            xVar.f89900g = obj;
            return xVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super R> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((x) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0091 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:8:0x0022, B:10:0x0075, B:15:0x0089, B:17:0x0091, B:34:0x00c5, B:44:0x005f, B:46:0x006e), top: B:2:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00bf A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00c5 A[Catch: all -> 0x0027, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:8:0x0022, B:10:0x0075, B:15:0x0089, B:17:0x0091, B:34:0x00c5, B:44:0x005f, B:46:0x006e), top: B:2:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00c0 -> B:10:0x0075). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13360D interfaceC13360D;
            InterfaceC13358B interfaceC13358B;
            Mf.p pVar;
            gg.n it;
            InterfaceC13360D interfaceC13360D2;
            InterfaceC13358B interfaceC13358B2;
            Mf.p pVar2;
            gg.n nVar;
            InterfaceC13358B interfaceC13358B3;
            InterfaceC13358B interfaceC13358B4;
            Object l10 = Af.d.l();
            int i10 = this.f89899f;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    interfaceC13358B = (InterfaceC13358B) this.f89900g;
                    interfaceC13360D = this.f89901h;
                    pVar = this.f89902i;
                    it = interfaceC13360D.iterator();
                } else if (i10 == 1) {
                    it = (gg.n) this.f89897d;
                    interfaceC13360D = (InterfaceC13360D) this.f89896c;
                    pVar = (Mf.p) this.f89895b;
                    interfaceC13358B4 = (InterfaceC13358B) this.f89900g;
                    C14418j0.n(obj);
                    if (((Boolean) obj).booleanValue()) {
                        P0 p02 = P0.f98194a;
                        gg.r.b(interfaceC13360D, null);
                        return p02;
                    }
                    Object next = it.next();
                    this.f89900g = interfaceC13358B4;
                    this.f89895b = pVar;
                    this.f89896c = interfaceC13360D;
                    this.f89897d = it;
                    this.f89898e = interfaceC13358B4;
                    this.f89899f = 2;
                    obj = pVar.invoke(next, this);
                    if (obj == l10) {
                        return l10;
                    }
                    interfaceC13358B2 = interfaceC13358B4;
                    pVar2 = pVar;
                    interfaceC13360D2 = interfaceC13360D;
                    nVar = it;
                    interfaceC13358B3 = interfaceC13358B2;
                    this.f89900g = interfaceC13358B2;
                    this.f89895b = pVar2;
                    this.f89896c = interfaceC13360D2;
                    this.f89897d = nVar;
                    this.f89898e = null;
                    this.f89899f = 3;
                    if (interfaceC13358B3.M(obj, this) != l10) {
                    }
                } else if (i10 == 2) {
                    interfaceC13358B3 = (InterfaceC13358B) this.f89898e;
                    nVar = (gg.n) this.f89897d;
                    interfaceC13360D2 = (InterfaceC13360D) this.f89896c;
                    pVar2 = (Mf.p) this.f89895b;
                    interfaceC13358B2 = (InterfaceC13358B) this.f89900g;
                    try {
                        C14418j0.n(obj);
                        this.f89900g = interfaceC13358B2;
                        this.f89895b = pVar2;
                        this.f89896c = interfaceC13360D2;
                        this.f89897d = nVar;
                        this.f89898e = null;
                        this.f89899f = 3;
                        if (interfaceC13358B3.M(obj, this) != l10) {
                            return l10;
                        }
                        it = nVar;
                        interfaceC13360D = interfaceC13360D2;
                        pVar = pVar2;
                        interfaceC13358B = interfaceC13358B2;
                    } catch (Throwable th2) {
                        th = th2;
                        interfaceC13360D = interfaceC13360D2;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            gg.r.b(interfaceC13360D, th);
                            throw th3;
                        }
                    }
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) this.f89897d;
                    interfaceC13360D = (InterfaceC13360D) this.f89896c;
                    pVar = (Mf.p) this.f89895b;
                    InterfaceC13358B interfaceC13358B5 = (InterfaceC13358B) this.f89900g;
                    C14418j0.n(obj);
                    interfaceC13358B = interfaceC13358B5;
                }
                this.f89900g = interfaceC13358B;
                this.f89895b = pVar;
                this.f89896c = interfaceC13360D;
                this.f89897d = it;
                this.f89899f = 1;
                Object a10 = it.a(this);
                if (a10 == l10) {
                    return l10;
                }
                interfaceC13358B4 = interfaceC13358B;
                obj = a10;
                if (((Boolean) obj).booleanValue()) {
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {C3679c.f32391d, 345, 345}, m = "invokeSuspend", n = {"$this$produce", FirebaseAnalytics.d.f67690b0, "$this$produce", FirebaseAnalytics.d.f67690b0, "$this$produce", FirebaseAnalytics.d.f67690b0}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
    public static final class y<R> extends Bf.q implements Mf.p<InterfaceC13358B<? super R>, yf.f<? super P0>, Object> {

        public Object f89903b;

        public Object f89904c;

        public int f89905d;

        public int f89906e;

        public Object f89907f;

        public final InterfaceC13360D<E> f89908g;

        public final Mf.q<Integer, E, yf.f<? super R>, Object> f89909h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public y(InterfaceC13360D<? extends E> interfaceC13360D, Mf.q<? super Integer, ? super E, ? super yf.f<? super R>, ? extends Object> qVar, yf.f<? super y> fVar) {
            super(2, fVar);
            this.f89908g = interfaceC13360D;
            this.f89909h = qVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            y yVar = new y(this.f89908g, this.f89909h, fVar);
            yVar.f89907f = obj;
            return yVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super R> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((y) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00a5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00a9  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00a6 -> B:7:0x0059). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            gg.n it;
            int i10;
            InterfaceC13358B interfaceC13358B2;
            gg.n nVar;
            InterfaceC13358B interfaceC13358B3;
            InterfaceC13358B interfaceC13358B4;
            Object l10 = Af.d.l();
            int i11 = this.f89906e;
            if (i11 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89907f;
                it = this.f89908g.iterator();
                i10 = 0;
            } else if (i11 == 1) {
                i10 = this.f89905d;
                it = (gg.n) this.f89903b;
                interfaceC13358B4 = (InterfaceC13358B) this.f89907f;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                Object next = it.next();
                Mf.q<Integer, E, yf.f<? super R>, Object> qVar = this.f89909h;
                int i12 = i10 + 1;
                Integer f10 = Bf.b.f(i10);
                this.f89907f = interfaceC13358B4;
                this.f89903b = it;
                this.f89904c = interfaceC13358B4;
                this.f89905d = i12;
                this.f89906e = 2;
                obj = qVar.n(f10, next, this);
                if (obj == l10) {
                    return l10;
                }
                interfaceC13358B2 = interfaceC13358B4;
                i10 = i12;
                nVar = it;
                interfaceC13358B3 = interfaceC13358B2;
                this.f89907f = interfaceC13358B2;
                this.f89903b = nVar;
                this.f89904c = null;
                this.f89905d = i10;
                this.f89906e = 3;
                if (interfaceC13358B3.M(obj, this) != l10) {
                }
            } else if (i11 == 2) {
                i10 = this.f89905d;
                interfaceC13358B3 = (InterfaceC13358B) this.f89904c;
                nVar = (gg.n) this.f89903b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89907f;
                C14418j0.n(obj);
                this.f89907f = interfaceC13358B2;
                this.f89903b = nVar;
                this.f89904c = null;
                this.f89905d = i10;
                this.f89906e = 3;
                if (interfaceC13358B3.M(obj, this) != l10) {
                    return l10;
                }
                it = nVar;
                interfaceC13358B = interfaceC13358B2;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.f89905d;
                it = (gg.n) this.f89903b;
                InterfaceC13358B interfaceC13358B5 = (InterfaceC13358B) this.f89907f;
                C14418j0.n(obj);
                interfaceC13358B = interfaceC13358B5;
            }
            this.f89907f = interfaceC13358B;
            this.f89903b = it;
            this.f89905d = i10;
            this.f89906e = 1;
            Object a10 = it.a(this);
            if (a10 == l10) {
                return l10;
            }
            interfaceC13358B4 = interfaceC13358B;
            obj = a10;
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {420, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    public static final class z<E> extends Bf.d {

        public Object f89910b;

        public Object f89911c;

        public Object f89912d;

        public Object f89913e;

        public Object f89914f;

        public int f89915g;

        public z(yf.f<? super z> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object M10;
            this.f89914f = obj;
            this.f89915g |= Integer.MIN_VALUE;
            M10 = u.M(null, null, this);
            return M10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0070 A[Catch: all -> 0x0037, TryCatch #1 {all -> 0x0037, blocks: (B:11:0x0033, B:12:0x0067, B:14:0x0070, B:16:0x007a, B:20:0x0084, B:21:0x0053, B:25:0x008b), top: B:10:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008b A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:11:0x0033, B:12:0x0067, B:14:0x0070, B:16:0x007a, B:20:0x0084, B:21:0x0053, B:25:0x008b), top: B:10:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0064 -> B:12:0x0067). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object A(InterfaceC13360D interfaceC13360D, Object obj, yf.f fVar) {
        t tVar;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n it;
        m0.f fVar2;
        Object obj2;
        Object a10;
        try {
            if (fVar instanceof t) {
                tVar = (t) fVar;
                int i11 = tVar.f89877g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    tVar.f89877g = i11 - Integer.MIN_VALUE;
                    Object obj3 = tVar.f89876f;
                    Object l10 = Af.d.l();
                    i10 = tVar.f89877g;
                    if (i10 != 0) {
                        C14418j0.n(obj3);
                        m0.f fVar3 = new m0.f();
                        try {
                            interfaceC13360D2 = interfaceC13360D;
                            it = interfaceC13360D.iterator();
                            fVar2 = fVar3;
                            obj2 = obj;
                            tVar.f89872b = obj2;
                            tVar.f89873c = fVar2;
                            tVar.f89874d = interfaceC13360D2;
                            tVar.f89875e = it;
                            tVar.f89877g = 1;
                            a10 = it.a(tVar);
                            if (a10 != l10) {
                            }
                        } catch (Throwable th3) {
                            interfaceC13360D2 = interfaceC13360D;
                            th2 = th3;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it = (gg.n) tVar.f89875e;
                        interfaceC13360D2 = (InterfaceC13360D) tVar.f89874d;
                        fVar2 = (m0.f) tVar.f89873c;
                        Object obj4 = tVar.f89872b;
                        try {
                            C14418j0.n(obj3);
                            if (!((Boolean) obj3).booleanValue()) {
                                P0 p02 = P0.f98194a;
                                gg.r.b(interfaceC13360D2, null);
                                return Bf.b.f(-1);
                            }
                            if (kotlin.jvm.internal.M.g(obj4, it.next())) {
                                Integer f10 = Bf.b.f(fVar2.f95752b);
                                gg.r.b(interfaceC13360D2, null);
                                return f10;
                            }
                            fVar2.f95752b++;
                            obj2 = obj4;
                            tVar.f89872b = obj2;
                            tVar.f89873c = fVar2;
                            tVar.f89874d = interfaceC13360D2;
                            tVar.f89875e = it;
                            tVar.f89877g = 1;
                            a10 = it.a(tVar);
                            if (a10 != l10) {
                                return l10;
                            }
                            obj4 = obj2;
                            obj3 = a10;
                            if (!((Boolean) obj3).booleanValue()) {
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                        }
                    }
                    throw th2;
                }
            }
            throw th2;
        } catch (Throwable th5) {
            gg.r.b(interfaceC13360D2, th2);
            throw th5;
        }
        tVar = new t(fVar);
        Object obj32 = tVar.f89876f;
        Object l102 = Af.d.l();
        i10 = tVar.f89877g;
        if (i10 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0093 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:12:0x0032, B:13:0x008b, B:15:0x0093), top: B:11:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0071 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #2 {all -> 0x004e, blocks: (B:40:0x004a, B:41:0x0069, B:43:0x0071, B:45:0x00a2, B:46:0x00a9), top: B:39:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2 A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #2 {all -> 0x004e, blocks: (B:40:0x004a, B:41:0x0069, B:43:0x0071, B:45:0x00a2, B:46:0x00a9), top: B:39:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0087 -> B:13:0x008b). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object B(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        C1720u c1720u;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        gg.n nVar;
        Object next;
        gg.n nVar2;
        Object a10;
        if (fVar instanceof C1720u) {
            c1720u = (C1720u) fVar;
            int i11 = c1720u.f89882f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c1720u.f89882f = i11 - Integer.MIN_VALUE;
                obj = c1720u.f89881e;
                Object l10 = Af.d.l();
                i10 = c1720u.f89882f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        c1720u.f89878b = interfaceC13360D;
                        c1720u.f89879c = it;
                        c1720u.f89882f = 1;
                        Object a11 = it.a(c1720u);
                        if (a11 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a11;
                    } catch (Throwable th2) {
                        interfaceC13360D2 = interfaceC13360D;
                        th = th2;
                        throw th;
                    }
                } else if (i10 == 1) {
                    nVar = (gg.n) c1720u.f89879c;
                    interfaceC13360D2 = (InterfaceC13360D) c1720u.f89878b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = c1720u.f89880d;
                    nVar2 = (gg.n) c1720u.f89879c;
                    InterfaceC13360D interfaceC13360D3 = (InterfaceC13360D) c1720u.f89878b;
                    try {
                        C14418j0.n(obj);
                        if (!((Boolean) obj).booleanValue()) {
                            next = nVar2.next();
                            interfaceC13360D = interfaceC13360D3;
                            c1720u.f89878b = interfaceC13360D;
                            c1720u.f89879c = nVar2;
                            c1720u.f89880d = next;
                            c1720u.f89882f = 2;
                            a10 = nVar2.a(c1720u);
                            if (a10 != l10) {
                                return l10;
                            }
                            interfaceC13360D3 = interfaceC13360D;
                            obj2 = next;
                            obj = a10;
                            if (!((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D3, null);
                                return obj2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        interfaceC13360D2 = interfaceC13360D3;
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                next = nVar.next();
                InterfaceC13360D interfaceC13360D4 = interfaceC13360D2;
                nVar2 = nVar;
                interfaceC13360D = interfaceC13360D4;
                c1720u.f89878b = interfaceC13360D;
                c1720u.f89879c = nVar2;
                c1720u.f89880d = next;
                c1720u.f89882f = 2;
                a10 = nVar2.a(c1720u);
                if (a10 != l10) {
                }
            }
        }
        c1720u = new C1720u(fVar);
        obj = c1720u.f89881e;
        Object l102 = Af.d.l();
        i10 = c1720u.f89882f;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007d A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:11:0x0037, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:17:0x008b, B:18:0x005f, B:23:0x0092), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:11:0x0037, B:12:0x0075, B:14:0x007d, B:16:0x0087, B:17:0x008b, B:18:0x005f, B:23:0x0092), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0072 -> B:12:0x0075). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object C(InterfaceC13360D interfaceC13360D, Object obj, yf.f fVar) {
        v vVar;
        int i10;
        m0.f fVar2;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n it;
        m0.f fVar3;
        Object obj2;
        Object a10;
        if (fVar instanceof v) {
            vVar = (v) fVar;
            int i11 = vVar.f89889h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                vVar.f89889h = i11 - Integer.MIN_VALUE;
                Object obj3 = vVar.f89888g;
                Object l10 = Af.d.l();
                i10 = vVar.f89889h;
                if (i10 != 0) {
                    C14418j0.n(obj3);
                    m0.f fVar4 = new m0.f();
                    fVar4.f95752b = -1;
                    fVar2 = new m0.f();
                    try {
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        fVar3 = fVar4;
                        obj2 = obj;
                        vVar.f89883b = obj2;
                        vVar.f89884c = fVar3;
                        vVar.f89885d = fVar2;
                        vVar.f89886e = interfaceC13360D2;
                        vVar.f89887f = it;
                        vVar.f89889h = 1;
                        a10 = it.a(vVar);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) vVar.f89887f;
                    interfaceC13360D2 = (InterfaceC13360D) vVar.f89886e;
                    fVar2 = (m0.f) vVar.f89885d;
                    fVar3 = (m0.f) vVar.f89884c;
                    Object obj4 = vVar.f89883b;
                    try {
                        C14418j0.n(obj3);
                        if (!((Boolean) obj3).booleanValue()) {
                            P0 p02 = P0.f98194a;
                            gg.r.b(interfaceC13360D2, null);
                            return Bf.b.f(fVar3.f95752b);
                        }
                        if (kotlin.jvm.internal.M.g(obj4, it.next())) {
                            fVar3.f95752b = fVar2.f95752b;
                        }
                        fVar2.f95752b++;
                        obj2 = obj4;
                        vVar.f89883b = obj2;
                        vVar.f89884c = fVar3;
                        vVar.f89885d = fVar2;
                        vVar.f89886e = interfaceC13360D2;
                        vVar.f89887f = it;
                        vVar.f89889h = 1;
                        a10 = it.a(vVar);
                        if (a10 != l10) {
                            return l10;
                        }
                        obj4 = obj2;
                        obj3 = a10;
                        if (!((Boolean) obj3).booleanValue()) {
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
            }
        }
        vVar = new v(fVar);
        Object obj32 = vVar.f89888g;
        Object l102 = Af.d.l();
        i10 = vVar.f89889h;
        if (i10 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0097 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #2 {all -> 0x0037, blocks: (B:12:0x0033, B:13:0x008f, B:15:0x0097), top: B:11:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0075 A[Catch: all -> 0x004f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x004f, blocks: (B:40:0x004b, B:41:0x0069, B:45:0x0075), top: B:39:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x008b -> B:13:0x008f). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object D(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        w wVar;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        gg.n nVar;
        Object next;
        gg.n nVar2;
        Object a10;
        if (fVar instanceof w) {
            wVar = (w) fVar;
            int i11 = wVar.f89894f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                wVar.f89894f = i11 - Integer.MIN_VALUE;
                obj = wVar.f89893e;
                Object l10 = Af.d.l();
                i10 = wVar.f89894f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        wVar.f89890b = interfaceC13360D;
                        wVar.f89891c = it;
                        wVar.f89894f = 1;
                        Object a11 = it.a(wVar);
                        if (a11 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a11;
                    } catch (Throwable th2) {
                        interfaceC13360D2 = interfaceC13360D;
                        th = th2;
                        throw th;
                    }
                } else if (i10 == 1) {
                    nVar = (gg.n) wVar.f89891c;
                    interfaceC13360D2 = (InterfaceC13360D) wVar.f89890b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = wVar.f89892d;
                    nVar2 = (gg.n) wVar.f89891c;
                    InterfaceC13360D interfaceC13360D3 = (InterfaceC13360D) wVar.f89890b;
                    try {
                        C14418j0.n(obj);
                        if (!((Boolean) obj).booleanValue()) {
                            next = nVar2.next();
                            interfaceC13360D = interfaceC13360D3;
                            wVar.f89890b = interfaceC13360D;
                            wVar.f89891c = nVar2;
                            wVar.f89892d = next;
                            wVar.f89894f = 2;
                            a10 = nVar2.a(wVar);
                            if (a10 != l10) {
                                return l10;
                            }
                            interfaceC13360D3 = interfaceC13360D;
                            obj2 = next;
                            obj = a10;
                            if (!((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D3, null);
                                return obj2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        interfaceC13360D2 = interfaceC13360D3;
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    gg.r.b(interfaceC13360D2, null);
                    return null;
                }
                next = nVar.next();
                InterfaceC13360D interfaceC13360D4 = interfaceC13360D2;
                nVar2 = nVar;
                interfaceC13360D = interfaceC13360D4;
                wVar.f89890b = interfaceC13360D;
                wVar.f89891c = nVar2;
                wVar.f89892d = next;
                wVar.f89894f = 2;
                a10 = nVar2.a(wVar);
                if (a10 != l10) {
                }
            }
        }
        wVar = new w(fVar);
        obj = wVar.f89893e;
        Object l102 = Af.d.l();
        i10 = wVar.f89894f;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, R> InterfaceC13360D<R> E(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super R>, ? extends Object> pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new x(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D F(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        return gg.r.J(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, R> InterfaceC13360D<R> G(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.q<? super Integer, ? super E, ? super yf.f<? super R>, ? extends Object> qVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new y(interfaceC13360D, qVar, null), 6, null);
    }

    public static InterfaceC13360D H(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.q qVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        return gg.r.L(interfaceC13360D, jVar, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D I(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.q qVar) {
        return gg.r.y(gg.r.L(interfaceC13360D, jVar, qVar));
    }

    public static InterfaceC13360D J(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.q qVar, int i10, Object obj) {
        InterfaceC13360D I10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        I10 = I(interfaceC13360D, jVar, qVar);
        return I10;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D K(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar) {
        return gg.r.y(gg.r.J(interfaceC13360D, jVar, pVar));
    }

    public static InterfaceC13360D L(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        InterfaceC13360D K10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        K10 = K(interfaceC13360D, jVar, pVar);
        return K10;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ab A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #2 {all -> 0x00b9, blocks: (B:15:0x00a3, B:17:0x00ab, B:20:0x008e, B:55:0x0062), top: B:54:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0086 A[Catch: all -> 0x005c, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005c, blocks: (B:44:0x0058, B:45:0x007a, B:49:0x0086), top: B:43:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009f -> B:14:0x003d). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object M(InterfaceC13360D interfaceC13360D, Comparator comparator, yf.f fVar) {
        z zVar;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        gg.n nVar;
        Comparator comparator2;
        Object next;
        Comparator comparator3;
        gg.n nVar2;
        Object a10;
        if (fVar instanceof z) {
            zVar = (z) fVar;
            int i11 = zVar.f89915g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                zVar.f89915g = i11 - Integer.MIN_VALUE;
                obj = zVar.f89914f;
                Object l10 = Af.d.l();
                i10 = zVar.f89915g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        zVar.f89910b = comparator;
                        zVar.f89911c = interfaceC13360D;
                        zVar.f89912d = it;
                        zVar.f89915g = 1;
                        Object a11 = it.a(zVar);
                        if (a11 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a11;
                        comparator2 = comparator;
                    } catch (Throwable th2) {
                        interfaceC13360D2 = interfaceC13360D;
                        th = th2;
                        throw th;
                    }
                } else if (i10 == 1) {
                    nVar = (gg.n) zVar.f89912d;
                    interfaceC13360D2 = (InterfaceC13360D) zVar.f89911c;
                    comparator2 = (Comparator) zVar.f89910b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = zVar.f89913e;
                    nVar2 = (gg.n) zVar.f89912d;
                    InterfaceC13360D interfaceC13360D3 = (InterfaceC13360D) zVar.f89911c;
                    comparator3 = (Comparator) zVar.f89910b;
                    try {
                        C14418j0.n(obj);
                        z zVar2 = zVar;
                        Object obj3 = obj2;
                        interfaceC13360D = interfaceC13360D3;
                        z zVar3 = zVar2;
                        if (!((Boolean) obj).booleanValue()) {
                            next = nVar2.next();
                            if (comparator3.compare(obj3, next) >= 0) {
                                next = obj3;
                            }
                            zVar = zVar3;
                            zVar.f89910b = comparator3;
                            zVar.f89911c = interfaceC13360D;
                            zVar.f89912d = nVar2;
                            zVar.f89913e = next;
                            zVar.f89915g = 2;
                            a10 = nVar2.a(zVar);
                            if (a10 != l10) {
                                return l10;
                            }
                            zVar2 = zVar;
                            obj3 = next;
                            obj = a10;
                            z zVar32 = zVar2;
                            if (!((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D, null);
                                return obj3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        interfaceC13360D2 = interfaceC13360D3;
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    gg.r.b(interfaceC13360D2, null);
                    return null;
                }
                next = nVar.next();
                comparator3 = comparator2;
                InterfaceC13360D interfaceC13360D4 = interfaceC13360D2;
                nVar2 = nVar;
                interfaceC13360D = interfaceC13360D4;
                zVar.f89910b = comparator3;
                zVar.f89911c = interfaceC13360D;
                zVar.f89912d = nVar2;
                zVar.f89913e = next;
                zVar.f89915g = 2;
                a10 = nVar2.a(zVar);
                if (a10 != l10) {
                }
            }
        }
        zVar = new z(fVar);
        obj = zVar.f89914f;
        Object l102 = Af.d.l();
        i10 = zVar.f89915g;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ab A[Catch: all -> 0x00b9, TRY_LEAVE, TryCatch #2 {all -> 0x00b9, blocks: (B:15:0x00a3, B:17:0x00ab, B:20:0x008e, B:55:0x0062), top: B:54:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0086 A[Catch: all -> 0x005c, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005c, blocks: (B:44:0x0058, B:45:0x007a, B:49:0x0086), top: B:43:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009f -> B:14:0x003d). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object N(InterfaceC13360D interfaceC13360D, Comparator comparator, yf.f fVar) {
        A a10;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        gg.n nVar;
        Comparator comparator2;
        Object next;
        Comparator comparator3;
        gg.n nVar2;
        Object a11;
        if (fVar instanceof A) {
            a10 = (A) fVar;
            int i11 = a10.f89730g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                a10.f89730g = i11 - Integer.MIN_VALUE;
                obj = a10.f89729f;
                Object l10 = Af.d.l();
                i10 = a10.f89730g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        a10.f89725b = comparator;
                        a10.f89726c = interfaceC13360D;
                        a10.f89727d = it;
                        a10.f89730g = 1;
                        Object a12 = it.a(a10);
                        if (a12 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a12;
                        comparator2 = comparator;
                    } catch (Throwable th2) {
                        interfaceC13360D2 = interfaceC13360D;
                        th = th2;
                        throw th;
                    }
                } else if (i10 == 1) {
                    nVar = (gg.n) a10.f89727d;
                    interfaceC13360D2 = (InterfaceC13360D) a10.f89726c;
                    comparator2 = (Comparator) a10.f89725b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Object obj2 = a10.f89728e;
                    nVar2 = (gg.n) a10.f89727d;
                    InterfaceC13360D interfaceC13360D3 = (InterfaceC13360D) a10.f89726c;
                    comparator3 = (Comparator) a10.f89725b;
                    try {
                        C14418j0.n(obj);
                        A a13 = a10;
                        Object obj3 = obj2;
                        interfaceC13360D = interfaceC13360D3;
                        A a14 = a13;
                        if (!((Boolean) obj).booleanValue()) {
                            next = nVar2.next();
                            if (comparator3.compare(obj3, next) <= 0) {
                                next = obj3;
                            }
                            a10 = a14;
                            a10.f89725b = comparator3;
                            a10.f89726c = interfaceC13360D;
                            a10.f89727d = nVar2;
                            a10.f89728e = next;
                            a10.f89730g = 2;
                            a11 = nVar2.a(a10);
                            if (a11 != l10) {
                                return l10;
                            }
                            a13 = a10;
                            obj3 = next;
                            obj = a11;
                            A a142 = a13;
                            if (!((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D, null);
                                return obj3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        interfaceC13360D2 = interfaceC13360D3;
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    gg.r.b(interfaceC13360D2, null);
                    return null;
                }
                next = nVar.next();
                comparator3 = comparator2;
                InterfaceC13360D interfaceC13360D4 = interfaceC13360D2;
                nVar2 = nVar;
                interfaceC13360D = interfaceC13360D4;
                a10.f89725b = comparator3;
                a10.f89726c = interfaceC13360D;
                a10.f89727d = nVar2;
                a10.f89728e = next;
                a10.f89730g = 2;
                a11 = nVar2.a(a10);
                if (a11 != l10) {
                }
            }
        }
        a10 = new A(fVar);
        obj = a10.f89729f;
        Object l102 = Af.d.l();
        i10 = a10.f89730g;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object O(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        B b10;
        int i10;
        try {
            if (fVar instanceof B) {
                b10 = (B) fVar;
                int i11 = b10.f89733d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    b10.f89733d = i11 - Integer.MIN_VALUE;
                    Object obj = b10.f89732c;
                    Object l10 = Af.d.l();
                    i10 = b10.f89733d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        gg.n it = interfaceC13360D.iterator();
                        b10.f89731b = interfaceC13360D;
                        b10.f89733d = 1;
                        obj = it.a(b10);
                        if (obj == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        interfaceC13360D = (InterfaceC13360D) b10.f89731b;
                        C14418j0.n(obj);
                    }
                    Boolean a10 = Bf.b.a(!((Boolean) obj).booleanValue());
                    gg.r.b(interfaceC13360D, null);
                    return a10;
                }
            }
            if (i10 != 0) {
            }
            Boolean a102 = Bf.b.a(!((Boolean) obj).booleanValue());
            gg.r.b(interfaceC13360D, null);
            return a102;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                gg.r.b(interfaceC13360D, th2);
                throw th3;
            }
        }
        b10 = new B(fVar);
        Object obj2 = b10.f89732c;
        Object l102 = Af.d.l();
        i10 = b10.f89733d;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e A[Catch: all -> 0x0032, TRY_ENTER, TryCatch #1 {all -> 0x0032, blocks: (B:12:0x002e, B:13:0x0081, B:18:0x008e, B:19:0x0095), top: B:11:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c A[Catch: all -> 0x004a, TRY_LEAVE, TryCatch #2 {all -> 0x004a, blocks: (B:33:0x0046, B:34:0x0064, B:36:0x006c, B:40:0x0096, B:41:0x009d), top: B:32:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0096 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #2 {all -> 0x004a, blocks: (B:33:0x0046, B:34:0x0064, B:36:0x006c, B:40:0x0096, B:41:0x009d), top: B:32:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object Q(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        D d10;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n nVar;
        InterfaceC13360D interfaceC13360D3;
        Object obj2;
        if (fVar instanceof D) {
            d10 = (D) fVar;
            int i11 = d10.f89740e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                d10.f89740e = i11 - Integer.MIN_VALUE;
                obj = d10.f89739d;
                Object l10 = Af.d.l();
                i10 = d10.f89740e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        d10.f89737b = interfaceC13360D;
                        d10.f89738c = it;
                        d10.f89740e = 1;
                        Object a10 = it.a(d10);
                        if (a10 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a10;
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        obj2 = d10.f89738c;
                        interfaceC13360D3 = (InterfaceC13360D) d10.f89737b;
                        try {
                            C14418j0.n(obj);
                            if (!((Boolean) obj).booleanValue()) {
                                throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                            }
                            gg.r.b(interfaceC13360D3, null);
                            return obj2;
                        } catch (Throwable th4) {
                            th2 = th4;
                            interfaceC13360D2 = interfaceC13360D3;
                            try {
                                throw th2;
                            } catch (Throwable th5) {
                                gg.r.b(interfaceC13360D2, th2);
                                throw th5;
                            }
                        }
                    }
                    nVar = (gg.n) d10.f89738c;
                    interfaceC13360D2 = (InterfaceC13360D) d10.f89737b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th6) {
                        th2 = th6;
                        throw th2;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                Object next = nVar.next();
                d10.f89737b = interfaceC13360D2;
                d10.f89738c = next;
                d10.f89740e = 2;
                Object a11 = nVar.a(d10);
                if (a11 == l10) {
                    return l10;
                }
                interfaceC13360D3 = interfaceC13360D2;
                obj = a11;
                obj2 = next;
                if (!((Boolean) obj).booleanValue()) {
                }
            }
        }
        d10 = new D(fVar);
        obj = d10.f89739d;
        Object l102 = Af.d.l();
        i10 = d10.f89740e;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071 A[Catch: all -> 0x004b, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x004b, blocks: (B:33:0x0047, B:34:0x0065, B:38:0x0071), top: B:32:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object R(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        E e10;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n nVar;
        InterfaceC13360D interfaceC13360D3;
        Object obj2;
        if (fVar instanceof E) {
            e10 = (E) fVar;
            int i11 = e10.f89744e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                e10.f89744e = i11 - Integer.MIN_VALUE;
                obj = e10.f89743d;
                Object l10 = Af.d.l();
                i10 = e10.f89744e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        e10.f89741b = interfaceC13360D;
                        e10.f89742c = it;
                        e10.f89744e = 1;
                        Object a10 = it.a(e10);
                        if (a10 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a10;
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        obj2 = e10.f89742c;
                        interfaceC13360D3 = (InterfaceC13360D) e10.f89741b;
                        try {
                            C14418j0.n(obj);
                            if (((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D3, null);
                                return obj2;
                            }
                            gg.r.b(interfaceC13360D3, null);
                            return null;
                        } catch (Throwable th4) {
                            th2 = th4;
                            interfaceC13360D2 = interfaceC13360D3;
                            try {
                                throw th2;
                            } catch (Throwable th5) {
                                gg.r.b(interfaceC13360D2, th2);
                                throw th5;
                            }
                        }
                    }
                    nVar = (gg.n) e10.f89742c;
                    interfaceC13360D2 = (InterfaceC13360D) e10.f89741b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th6) {
                        th2 = th6;
                        throw th2;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    gg.r.b(interfaceC13360D2, null);
                    return null;
                }
                Object next = nVar.next();
                e10.f89741b = interfaceC13360D2;
                e10.f89742c = next;
                e10.f89744e = 2;
                Object a11 = nVar.a(e10);
                if (a11 == l10) {
                    return l10;
                }
                interfaceC13360D3 = interfaceC13360D2;
                obj = a11;
                obj2 = next;
                if (((Boolean) obj).booleanValue()) {
                }
            }
        }
        e10 = new E(fVar);
        obj = e10.f89743d;
        Object l102 = Af.d.l();
        i10 = e10.f89744e;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D S(InterfaceC13360D interfaceC13360D, int i10, yf.j jVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new F(i10, interfaceC13360D, null), 6, null);
    }

    public static InterfaceC13360D T(InterfaceC13360D interfaceC13360D, int i10, yf.j jVar, int i11, Object obj) {
        InterfaceC13360D S10;
        if ((i11 & 2) != 0) {
            jVar = C13122j0.g();
        }
        S10 = S(interfaceC13360D, i10, jVar);
        return S10;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D U(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new G(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D V(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        InterfaceC13360D U10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        U10 = U(interfaceC13360D, jVar, pVar);
        return U10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0078 A[Catch: all -> 0x003b, TryCatch #2 {all -> 0x003b, blocks: (B:12:0x0034, B:19:0x0070, B:21:0x0078, B:24:0x008b, B:40:0x0051), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #2 {all -> 0x003b, blocks: (B:12:0x0034, B:19:0x0070, B:21:0x0078, B:24:0x008b, B:40:0x0051), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r7v0, types: [C extends gg.E<? super E>] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [gg.D] */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [gg.D, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0088 -> B:13:0x0037). Please report as a decompilation issue!!! */
    @InterfaceC14410f0
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends gg.E<? super E>> Object W(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        H h10;
        int i10;
        gg.n<? extends E> it;
        gg.n<? extends E> nVar;
        gg.E e10;
        gg.E e11;
        Object a10;
        try {
            if (fVar instanceof H) {
                h10 = (H) fVar;
                int i11 = h10.f89761f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    h10.f89761f = i11 - Integer.MIN_VALUE;
                    Object obj = h10.f89760e;
                    Object l10 = Af.d.l();
                    i10 = h10.f89761f;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        try {
                            it = interfaceC13360D.iterator();
                            e11 = c10;
                            h10.f89757b = e11;
                            h10.f89758c = interfaceC13360D;
                            h10.f89759d = it;
                            h10.f89761f = 1;
                            a10 = it.a(h10);
                            if (a10 == l10) {
                            }
                        } catch (Throwable th2) {
                            c10 = interfaceC13360D;
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                gg.r.b(c10, th);
                                throw th3;
                            }
                        }
                    } else if (i10 == 1) {
                        nVar = (gg.n) h10.f89759d;
                        boolean z10 = (C) ((InterfaceC13360D) h10.f89758c);
                        e10 = (gg.E) h10.f89757b;
                        C14418j0.n(obj);
                        c10 = z10;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        nVar = (gg.n) h10.f89759d;
                        InterfaceC13360D<? extends E> interfaceC13360D2 = (C) ((InterfaceC13360D) h10.f89758c);
                        e10 = (gg.E) h10.f89757b;
                        C14418j0.n(obj);
                        InterfaceC13360D<? extends E> interfaceC13360D3 = interfaceC13360D2;
                        it = nVar;
                        interfaceC13360D = interfaceC13360D3;
                        e11 = (C) e10;
                        h10.f89757b = e11;
                        h10.f89758c = interfaceC13360D;
                        h10.f89759d = it;
                        h10.f89761f = 1;
                        a10 = it.a(h10);
                        if (a10 == l10) {
                            return l10;
                        }
                        gg.E e12 = e11;
                        boolean z11 = (C) interfaceC13360D;
                        nVar = it;
                        obj = a10;
                        e10 = e12;
                        c10 = z11;
                        if (((Boolean) obj).booleanValue()) {
                            P0 p02 = P0.f98194a;
                            gg.r.b((InterfaceC13360D) c10, null);
                            return e10;
                        }
                        E next = nVar.next();
                        h10.f89757b = e10;
                        h10.f89758c = (Object) c10;
                        h10.f89759d = nVar;
                        h10.f89761f = 2;
                        interfaceC13360D3 = c10;
                        if (e10.M(next, h10) == l10) {
                            return l10;
                        }
                        it = nVar;
                        interfaceC13360D = interfaceC13360D3;
                        e11 = (C) e10;
                        h10.f89757b = e11;
                        h10.f89758c = interfaceC13360D;
                        h10.f89759d = it;
                        h10.f89761f = 1;
                        a10 = it.a(h10);
                        if (a10 == l10) {
                        }
                    }
                }
            }
            if (i10 != 0) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
        h10 = new H(fVar);
        Object obj2 = h10.f89760e;
        Object l102 = Af.d.l();
        i10 = h10.f89761f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x006d), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x006d), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Collection, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0059 -> B:12:0x005c). Please report as a decompilation issue!!! */
    @InterfaceC14410f0
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends Collection<? super E>> Object X(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull C c10, @NotNull yf.f<? super C> fVar) {
        I i10;
        int i11;
        InterfaceC13360D<? extends E> interfaceC13360D2;
        Throwable th2;
        gg.n it;
        C c11;
        Object a10;
        if (fVar instanceof I) {
            i10 = (I) fVar;
            int i12 = i10.f89766f;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                i10.f89766f = i12 - Integer.MIN_VALUE;
                Object obj = i10.f89765e;
                Object l10 = Af.d.l();
                i11 = i10.f89766f;
                if (i11 != 0) {
                    C14418j0.n(obj);
                    try {
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        c11 = c10;
                        i10.f89762b = c11;
                        i10.f89763c = interfaceC13360D2;
                        i10.f89764d = it;
                        i10.f89766f = 1;
                        a10 = it.a(i10);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) i10.f89764d;
                    interfaceC13360D2 = (InterfaceC13360D) i10.f89763c;
                    Collection collection = (Collection) i10.f89762b;
                    try {
                        C14418j0.n(obj);
                        ?? r22 = collection;
                        if (!((Boolean) obj).booleanValue()) {
                            r22.add(it.next());
                            c11 = r22;
                            i10.f89762b = c11;
                            i10.f89763c = interfaceC13360D2;
                            i10.f89764d = it;
                            i10.f89766f = 1;
                            a10 = it.a(i10);
                            if (a10 != l10) {
                                return l10;
                            }
                            r22 = c11;
                            obj = a10;
                            if (!((Boolean) obj).booleanValue()) {
                                P0 p02 = P0.f98194a;
                                gg.r.b(interfaceC13360D2, null);
                                return r22;
                            }
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
            }
        }
        i10 = new I(fVar);
        Object obj2 = i10.f89765e;
        Object l102 = Af.d.l();
        i11 = i10.f89766f;
        if (i11 != 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x0077), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0077 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:15:0x004a, B:20:0x0077), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0059 -> B:12:0x005c). Please report as a decompilation issue!!! */
    @InterfaceC14410f0
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <K, V, M extends Map<? super K, ? super V>> Object Y(@NotNull InterfaceC13360D<? extends Z<? extends K, ? extends V>> interfaceC13360D, @NotNull M m10, @NotNull yf.f<? super M> fVar) {
        J j10;
        int i10;
        InterfaceC13360D<? extends Z<? extends K, ? extends V>> interfaceC13360D2;
        Throwable th2;
        gg.n it;
        M m11;
        Object a10;
        if (fVar instanceof J) {
            j10 = (J) fVar;
            int i11 = j10.f89771f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                j10.f89771f = i11 - Integer.MIN_VALUE;
                Object obj = j10.f89770e;
                Object l10 = Af.d.l();
                i10 = j10.f89771f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        m11 = m10;
                        j10.f89767b = m11;
                        j10.f89768c = interfaceC13360D2;
                        j10.f89769d = it;
                        j10.f89771f = 1;
                        a10 = it.a(j10);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) j10.f89769d;
                    interfaceC13360D2 = (InterfaceC13360D) j10.f89768c;
                    Map map = (Map) j10.f89767b;
                    try {
                        C14418j0.n(obj);
                        ?? r22 = map;
                        if (!((Boolean) obj).booleanValue()) {
                            Z z10 = (Z) it.next();
                            r22.put(z10.e(), z10.f());
                            m11 = r22;
                            j10.f89767b = m11;
                            j10.f89768c = interfaceC13360D2;
                            j10.f89769d = it;
                            j10.f89771f = 1;
                            a10 = it.a(j10);
                            if (a10 != l10) {
                                return l10;
                            }
                            r22 = m11;
                            obj = a10;
                            if (!((Boolean) obj).booleanValue()) {
                                P0 p02 = P0.f98194a;
                                gg.r.b(interfaceC13360D2, null);
                                return r22;
                            }
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
            }
        }
        j10 = new J(fVar);
        Object obj2 = j10.f89770e;
        Object l102 = Af.d.l();
        i10 = j10.f89771f;
        if (i10 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        C13369a c13369a;
        int i10;
        try {
            if (fVar instanceof C13369a) {
                c13369a = (C13369a) fVar;
                int i11 = c13369a.f89790d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c13369a.f89790d = i11 - Integer.MIN_VALUE;
                    Object obj = c13369a.f89789c;
                    Object l10 = Af.d.l();
                    i10 = c13369a.f89790d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        gg.n it = interfaceC13360D.iterator();
                        c13369a.f89788b = interfaceC13360D;
                        c13369a.f89790d = 1;
                        obj = it.a(c13369a);
                        if (obj == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        interfaceC13360D = (InterfaceC13360D) c13369a.f89788b;
                        C14418j0.n(obj);
                    }
                    gg.r.b(interfaceC13360D, null);
                    return obj;
                }
            }
            if (i10 != 0) {
            }
            gg.r.b(interfaceC13360D, null);
            return obj;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                gg.r.b(interfaceC13360D, th2);
                throw th3;
            }
        }
        c13369a = new C13369a(fVar);
        Object obj2 = c13369a.f89789c;
        Object l102 = Af.d.l();
        i10 = c13369a.f89790d;
    }

    @InterfaceC14410f0
    @NotNull
    public static final Mf.l<Throwable, P0> b(@NotNull InterfaceC13360D<?> interfaceC13360D) {
        return new C13370b(interfaceC13360D);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <E> Object b0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.f<? super Set<E>> fVar) {
        return gg.r.f0(interfaceC13360D, new LinkedHashSet(), fVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final Mf.l<Throwable, P0> c(@NotNull InterfaceC13360D<?>... interfaceC13360DArr) {
        return new C13371c(interfaceC13360DArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0068 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x0060, B:14:0x0068, B:30:0x0072), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x0060, B:14:0x0068, B:30:0x0072), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005d -> B:12:0x0060). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        C13372d c13372d;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        m0.f fVar2;
        InterfaceC13360D interfaceC13360D3;
        gg.n it;
        Object a10;
        if (fVar instanceof C13372d) {
            c13372d = (C13372d) fVar;
            int i11 = c13372d.f89797f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c13372d.f89797f = i11 - Integer.MIN_VALUE;
                Object obj = c13372d.f89796e;
                Object l10 = Af.d.l();
                i10 = c13372d.f89797f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        fVar2 = new m0.f();
                        interfaceC13360D3 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        c13372d.f89793b = fVar2;
                        c13372d.f89794c = interfaceC13360D3;
                        c13372d.f89795d = it;
                        c13372d.f89797f = 1;
                        a10 = it.a(c13372d);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) c13372d.f89795d;
                    interfaceC13360D2 = (InterfaceC13360D) c13372d.f89794c;
                    fVar2 = (m0.f) c13372d.f89793b;
                    try {
                        C14418j0.n(obj);
                        if (!((Boolean) obj).booleanValue()) {
                            it.next();
                            fVar2.f95752b++;
                            interfaceC13360D3 = interfaceC13360D2;
                            try {
                                c13372d.f89793b = fVar2;
                                c13372d.f89794c = interfaceC13360D3;
                                c13372d.f89795d = it;
                                c13372d.f89797f = 1;
                                a10 = it.a(c13372d);
                                if (a10 != l10) {
                                    return l10;
                                }
                                interfaceC13360D2 = interfaceC13360D3;
                                obj = a10;
                                if (!((Boolean) obj).booleanValue()) {
                                    P0 p02 = P0.f98194a;
                                    gg.r.b(interfaceC13360D2, null);
                                    return Bf.b.f(fVar2.f95752b);
                                }
                            } catch (Throwable th4) {
                                th2 = th4;
                                interfaceC13360D2 = interfaceC13360D3;
                                try {
                                    throw th2;
                                } catch (Throwable th5) {
                                    gg.r.b(interfaceC13360D2, th2);
                                    throw th5;
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        throw th2;
                    }
                }
            }
        }
        c13372d = new C13372d(fVar);
        Object obj2 = c13372d.f89796e;
        Object l102 = Af.d.l();
        i10 = c13372d.f89797f;
        if (i10 != 0) {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D d0(InterfaceC13360D interfaceC13360D, yf.j jVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new K(interfaceC13360D, null), 6, null);
    }

    public static InterfaceC13360D e0(InterfaceC13360D interfaceC13360D, yf.j jVar, int i10, Object obj) {
        InterfaceC13360D d02;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        d02 = d0(interfaceC13360D, jVar);
        return d02;
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, K> InterfaceC13360D<E> f(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super K>, ? extends Object> pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new C13374f(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D g(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        return gg.r.k(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E, R, V> InterfaceC13360D<V> g0(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull InterfaceC13360D<? extends R> interfaceC13360D2, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super R, ? extends V> pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.h(interfaceC13360D, interfaceC13360D2), new M(interfaceC13360D2, interfaceC13360D, pVar, null), 6, null);
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D h(InterfaceC13360D interfaceC13360D, int i10, yf.j jVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new C13375g(i10, interfaceC13360D, null), 6, null);
    }

    public static InterfaceC13360D h0(InterfaceC13360D interfaceC13360D, InterfaceC13360D interfaceC13360D2, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            jVar = C13122j0.g();
        }
        return gg.r.q0(interfaceC13360D, interfaceC13360D2, jVar, pVar);
    }

    public static InterfaceC13360D i(InterfaceC13360D interfaceC13360D, int i10, yf.j jVar, int i11, Object obj) {
        InterfaceC13360D h10;
        if ((i11 & 2) != 0) {
            jVar = C13122j0.g();
        }
        h10 = h(interfaceC13360D, i10, jVar);
        return h10;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D j(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new C13376h(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D k(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        InterfaceC13360D j10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        j10 = j(interfaceC13360D, jVar, pVar);
        return j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006c A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #2 {all -> 0x0039, blocks: (B:12:0x0035, B:13:0x0064, B:15:0x006c, B:26:0x007d, B:27:0x0094), top: B:11:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #2 {all -> 0x0039, blocks: (B:12:0x0035, B:13:0x0064, B:15:0x006c, B:26:0x007d, B:27:0x0094), top: B:11:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005f -> B:13:0x0064). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object l(InterfaceC13360D interfaceC13360D, int i10, yf.f fVar) {
        C13377i c13377i;
        int i11;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n it;
        int i12;
        Object a10;
        try {
            if (fVar instanceof C13377i) {
                c13377i = (C13377i) fVar;
                int i13 = c13377i.f89824g;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    c13377i.f89824g = i13 - Integer.MIN_VALUE;
                    Object obj = c13377i.f89823f;
                    Object l10 = Af.d.l();
                    i11 = c13377i.f89824g;
                    if (i11 != 0) {
                        C14418j0.n(obj);
                        if (i10 < 0) {
                            throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + i10 + '.');
                        }
                        it = interfaceC13360D.iterator();
                        i12 = 0;
                        c13377i.f89821d = interfaceC13360D;
                        c13377i.f89822e = it;
                        c13377i.f89819b = i10;
                        c13377i.f89820c = i12;
                        c13377i.f89824g = 1;
                        a10 = it.a(c13377i);
                        if (a10 != l10) {
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        int i14 = c13377i.f89820c;
                        i10 = c13377i.f89819b;
                        gg.n nVar = (gg.n) c13377i.f89822e;
                        interfaceC13360D2 = (InterfaceC13360D) c13377i.f89821d;
                        try {
                            C14418j0.n(obj);
                            if (!((Boolean) obj).booleanValue()) {
                                Object next = nVar.next();
                                int i15 = i14 + 1;
                                if (i10 == i14) {
                                    gg.r.b(interfaceC13360D2, null);
                                    return next;
                                }
                                it = nVar;
                                interfaceC13360D = interfaceC13360D2;
                                i12 = i15;
                                c13377i.f89821d = interfaceC13360D;
                                c13377i.f89822e = it;
                                c13377i.f89819b = i10;
                                c13377i.f89820c = i12;
                                c13377i.f89824g = 1;
                                a10 = it.a(c13377i);
                                if (a10 != l10) {
                                    return l10;
                                }
                                interfaceC13360D2 = interfaceC13360D;
                                i14 = i12;
                                nVar = it;
                                obj = a10;
                                if (!((Boolean) obj).booleanValue()) {
                                    throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + i10 + '.');
                                }
                            }
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                throw th2;
                            } catch (Throwable th4) {
                                gg.r.b(interfaceC13360D2, th2);
                                throw th4;
                            }
                        }
                    }
                }
            }
            if (i11 != 0) {
            }
        } catch (Throwable th5) {
            interfaceC13360D2 = interfaceC13360D;
            th2 = th5;
        }
        c13377i = new C13377i(fVar);
        Object obj2 = c13377i.f89823f;
        Object l102 = Af.d.l();
        i11 = c13377i.f89824g;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0070 A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:13:0x0068, B:15:0x0070, B:22:0x0053, B:46:0x004e), top: B:45:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0064 -> B:13:0x0068). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m(InterfaceC13360D interfaceC13360D, int i10, yf.f fVar) {
        C13378j c13378j;
        int i11;
        gg.n it;
        int i12;
        Throwable th2;
        InterfaceC13360D interfaceC13360D2;
        Object a10;
        if (fVar instanceof C13378j) {
            c13378j = (C13378j) fVar;
            int i13 = c13378j.f89830g;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                c13378j.f89830g = i13 - Integer.MIN_VALUE;
                Object obj = c13378j.f89829f;
                Object l10 = Af.d.l();
                i11 = c13378j.f89830g;
                if (i11 != 0) {
                    C14418j0.n(obj);
                    if (i10 < 0) {
                        gg.r.b(interfaceC13360D, null);
                        return null;
                    }
                    try {
                        it = interfaceC13360D.iterator();
                        i12 = 0;
                        c13378j.f89827d = interfaceC13360D;
                        c13378j.f89828e = it;
                        c13378j.f89825b = i10;
                        c13378j.f89826c = i12;
                        c13378j.f89830g = 1;
                        a10 = it.a(c13378j);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    int i14 = c13378j.f89826c;
                    i10 = c13378j.f89825b;
                    gg.n nVar = (gg.n) c13378j.f89828e;
                    interfaceC13360D2 = (InterfaceC13360D) c13378j.f89827d;
                    try {
                        C14418j0.n(obj);
                        i12 = i14;
                        interfaceC13360D = interfaceC13360D2;
                        C13378j c13378j2 = c13378j;
                        gg.n nVar2 = nVar;
                        if (!((Boolean) obj).booleanValue()) {
                            Object next = nVar2.next();
                            int i15 = i12 + 1;
                            if (i10 == i12) {
                                gg.r.b(interfaceC13360D, null);
                                return next;
                            }
                            it = nVar2;
                            c13378j = c13378j2;
                            i12 = i15;
                            c13378j.f89827d = interfaceC13360D;
                            c13378j.f89828e = it;
                            c13378j.f89825b = i10;
                            c13378j.f89826c = i12;
                            c13378j.f89830g = 1;
                            a10 = it.a(c13378j);
                            if (a10 != l10) {
                                return l10;
                            }
                            C13378j c13378j3 = c13378j;
                            nVar2 = it;
                            obj = a10;
                            c13378j2 = c13378j3;
                            if (!((Boolean) obj).booleanValue()) {
                                gg.r.b(interfaceC13360D, null);
                                return null;
                            }
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
            }
        }
        c13378j = new C13378j(fVar);
        Object obj2 = c13378j.f89829f;
        Object l102 = Af.d.l();
        i11 = c13378j.f89830g;
        if (i11 != 0) {
        }
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E> InterfaceC13360D<E> n(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.j jVar, @NotNull Mf.p<? super E, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new C13379k(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D o(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        return gg.r.s(interfaceC13360D, jVar, pVar);
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D p(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.q qVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new C13380l(interfaceC13360D, qVar, null), 6, null);
    }

    public static InterfaceC13360D q(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.q qVar, int i10, Object obj) {
        InterfaceC13360D p10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        p10 = p(interfaceC13360D, jVar, qVar);
        return p10;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D r(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar) {
        return gg.r.s(interfaceC13360D, jVar, new C13381m(pVar, null));
    }

    public static InterfaceC13360D s(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        InterfaceC13360D r10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        r10 = r(interfaceC13360D, jVar, pVar);
        return r10;
    }

    @InterfaceC14410f0
    @NotNull
    public static final <E> InterfaceC13360D<E> t(@NotNull InterfaceC13360D<? extends E> interfaceC13360D) {
        InterfaceC13360D<E> o10;
        o10 = o(interfaceC13360D, null, new n(null), 1, null);
        kotlin.jvm.internal.M.n(o10, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNull>");
        return o10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076 A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:12:0x0034, B:19:0x006e, B:21:0x0076, B:23:0x007c, B:26:0x008f, B:42:0x004f), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #1 {all -> 0x0038, blocks: (B:12:0x0034, B:19:0x006e, B:21:0x0076, B:23:0x007c, B:26:0x008f, B:42:0x004f), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r7v0, types: [gg.E] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2, types: [gg.D] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [gg.D, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007a -> B:13:0x008b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0088 -> B:13:0x008b). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object u(InterfaceC13360D interfaceC13360D, gg.E e10, yf.f fVar) {
        p pVar;
        int i10;
        gg.n it;
        gg.n nVar;
        gg.E e11;
        gg.E e12;
        Object a10;
        try {
            if (fVar instanceof p) {
                pVar = (p) fVar;
                int i11 = pVar.f89858f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    pVar.f89858f = i11 - Integer.MIN_VALUE;
                    Object obj = pVar.f89857e;
                    Object l10 = Af.d.l();
                    i10 = pVar.f89858f;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        try {
                            it = interfaceC13360D.iterator();
                            e12 = e10;
                            pVar.f89854b = e12;
                            pVar.f89855c = interfaceC13360D;
                            pVar.f89856d = it;
                            pVar.f89858f = 1;
                            a10 = it.a(pVar);
                            if (a10 == l10) {
                            }
                        } catch (Throwable th2) {
                            e10 = interfaceC13360D;
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                gg.r.b(e10, th);
                                throw th3;
                            }
                        }
                    } else if (i10 == 1) {
                        nVar = (gg.n) pVar.f89856d;
                        InterfaceC13360D interfaceC13360D2 = (InterfaceC13360D) pVar.f89855c;
                        e11 = (gg.E) pVar.f89854b;
                        C14418j0.n(obj);
                        e10 = interfaceC13360D2;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        nVar = (gg.n) pVar.f89856d;
                        InterfaceC13360D interfaceC13360D3 = (InterfaceC13360D) pVar.f89855c;
                        e11 = (gg.E) pVar.f89854b;
                        C14418j0.n(obj);
                        InterfaceC13360D interfaceC13360D4 = interfaceC13360D3;
                        it = nVar;
                        interfaceC13360D = interfaceC13360D4;
                        e12 = e11;
                        pVar.f89854b = e12;
                        pVar.f89855c = interfaceC13360D;
                        pVar.f89856d = it;
                        pVar.f89858f = 1;
                        a10 = it.a(pVar);
                        if (a10 == l10) {
                            return l10;
                        }
                        gg.E e13 = e12;
                        e10 = interfaceC13360D;
                        nVar = it;
                        obj = a10;
                        e11 = e13;
                        if (((Boolean) obj).booleanValue()) {
                            P0 p02 = P0.f98194a;
                            gg.r.b(e10, null);
                            return e11;
                        }
                        Object next = nVar.next();
                        interfaceC13360D4 = e10;
                        if (next != null) {
                            pVar.f89854b = e11;
                            pVar.f89855c = e10;
                            pVar.f89856d = nVar;
                            pVar.f89858f = 2;
                            interfaceC13360D4 = e10;
                            if (e11.M(next, pVar) == l10) {
                                return l10;
                            }
                        }
                        it = nVar;
                        interfaceC13360D = interfaceC13360D4;
                        e12 = e11;
                        pVar.f89854b = e12;
                        pVar.f89855c = interfaceC13360D;
                        pVar.f89856d = it;
                        pVar.f89858f = 1;
                        a10 = it.a(pVar);
                        if (a10 == l10) {
                        }
                    }
                }
            }
            if (i10 != 0) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
        pVar = new p(fVar);
        Object obj2 = pVar.f89857e;
        Object l102 = Af.d.l();
        i10 = pVar.f89858f;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0064 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:16:0x006a, B:18:0x004a, B:23:0x006f), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x005c, B:14:0x0064, B:16:0x006a, B:18:0x004a, B:23:0x006f), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0059 -> B:12:0x005c). Please report as a decompilation issue!!! */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object v(InterfaceC13360D interfaceC13360D, Collection collection, yf.f fVar) {
        o oVar;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n it;
        Collection collection2;
        Object a10;
        if (fVar instanceof o) {
            oVar = (o) fVar;
            int i11 = oVar.f89853f;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                oVar.f89853f = i11 - Integer.MIN_VALUE;
                Object obj = oVar.f89852e;
                Object l10 = Af.d.l();
                i10 = oVar.f89853f;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        interfaceC13360D2 = interfaceC13360D;
                        it = interfaceC13360D.iterator();
                        collection2 = collection;
                        oVar.f89849b = collection2;
                        oVar.f89850c = interfaceC13360D2;
                        oVar.f89851d = it;
                        oVar.f89853f = 1;
                        a10 = it.a(oVar);
                        if (a10 != l10) {
                        }
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (gg.n) oVar.f89851d;
                    interfaceC13360D2 = (InterfaceC13360D) oVar.f89850c;
                    Collection collection3 = (Collection) oVar.f89849b;
                    try {
                        C14418j0.n(obj);
                        if (!((Boolean) obj).booleanValue()) {
                            P0 p02 = P0.f98194a;
                            gg.r.b(interfaceC13360D2, null);
                            return collection3;
                        }
                        Object next = it.next();
                        if (next != null) {
                            collection3.add(next);
                        }
                        collection2 = collection3;
                        oVar.f89849b = collection2;
                        oVar.f89850c = interfaceC13360D2;
                        oVar.f89851d = it;
                        oVar.f89853f = 1;
                        a10 = it.a(oVar);
                        if (a10 != l10) {
                            return l10;
                        }
                        collection3 = collection2;
                        obj = a10;
                        if (!((Boolean) obj).booleanValue()) {
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
            }
        }
        oVar = new o(fVar);
        Object obj2 = oVar.f89852e;
        Object l102 = Af.d.l();
        i10 = oVar.f89853f;
        if (i10 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x0053, B:14:0x005b, B:18:0x0064, B:19:0x006b), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064 A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #1 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x0053, B:14:0x005b, B:18:0x0064, B:19:0x006b), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object w(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        q qVar;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n nVar;
        if (fVar instanceof q) {
            qVar = (q) fVar;
            int i11 = qVar.f89862e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                qVar.f89862e = i11 - Integer.MIN_VALUE;
                obj = qVar.f89861d;
                Object l10 = Af.d.l();
                i10 = qVar.f89862e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        qVar.f89859b = interfaceC13360D;
                        qVar.f89860c = it;
                        qVar.f89862e = 1;
                        Object a10 = it.a(qVar);
                        if (a10 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a10;
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    nVar = (gg.n) qVar.f89860c;
                    interfaceC13360D2 = (InterfaceC13360D) qVar.f89859b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
                Object next = nVar.next();
                gg.r.b(interfaceC13360D2, null);
                return next;
            }
        }
        qVar = new q(fVar);
        obj = qVar.f89861d;
        Object l102 = Af.d.l();
        i10 = qVar.f89862e;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[Catch: all -> 0x0031, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x0053, B:18:0x0060), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object x(InterfaceC13360D interfaceC13360D, yf.f fVar) {
        r rVar;
        Object obj;
        int i10;
        InterfaceC13360D interfaceC13360D2;
        Throwable th2;
        gg.n nVar;
        if (fVar instanceof r) {
            rVar = (r) fVar;
            int i11 = rVar.f89866e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rVar.f89866e = i11 - Integer.MIN_VALUE;
                obj = rVar.f89865d;
                Object l10 = Af.d.l();
                i10 = rVar.f89866e;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    try {
                        gg.n it = interfaceC13360D.iterator();
                        rVar.f89863b = interfaceC13360D;
                        rVar.f89864c = it;
                        rVar.f89866e = 1;
                        Object a10 = it.a(rVar);
                        if (a10 == l10) {
                            return l10;
                        }
                        interfaceC13360D2 = interfaceC13360D;
                        nVar = it;
                        obj = a10;
                    } catch (Throwable th3) {
                        interfaceC13360D2 = interfaceC13360D;
                        th2 = th3;
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    nVar = (gg.n) rVar.f89864c;
                    interfaceC13360D2 = (InterfaceC13360D) rVar.f89863b;
                    try {
                        C14418j0.n(obj);
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th2;
                        } catch (Throwable th5) {
                            gg.r.b(interfaceC13360D2, th2);
                            throw th5;
                        }
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    gg.r.b(interfaceC13360D2, null);
                    return null;
                }
                Object next = nVar.next();
                gg.r.b(interfaceC13360D2, null);
                return next;
            }
        }
        rVar = new r(fVar);
        obj = rVar.f89865d;
        Object l102 = Af.d.l();
        i10 = rVar.f89866e;
        if (i10 != 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility")
    public static final InterfaceC13360D y(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar) {
        return gg.z.g(B0.f85596b, jVar, 0, null, gg.r.g(interfaceC13360D), new s(interfaceC13360D, pVar, null), 6, null);
    }

    public static InterfaceC13360D z(InterfaceC13360D interfaceC13360D, yf.j jVar, Mf.p pVar, int i10, Object obj) {
        InterfaceC13360D y10;
        if ((i10 & 1) != 0) {
            jVar = C13122j0.g();
        }
        y10 = y(interfaceC13360D, jVar, pVar);
        return y10;
    }
}
