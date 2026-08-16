package Xf;

import java.util.Iterator;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14401b;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public class C3316q {

    public static final int f28794a = 0;

    public static final int f28795b = 1;

    public static final int f28796c = 2;

    public static final int f28797d = 3;

    public static final int f28798e = 4;

    public static final int f28799f = 5;

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SequenceBuilder.kt\nkotlin/sequences/SequencesKt__SequenceBuilderKt\n*L\n1#1,730:1\n26#2:731\n*E\n"})
    public static final class a<T> implements InterfaceC3312m<T> {

        public final Mf.p f28800a;

        public a(Mf.p pVar) {
            this.f28800a = pVar;
        }

        @Override
        public Iterator<T> iterator() {
            return C3316q.a(this.f28800a);
        }
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <T> Iterator<T> a(@InterfaceC14401b @NotNull Mf.p<? super AbstractC3314o<? super T>, ? super yf.f<? super P0>, ? extends Object> block) {
        kotlin.jvm.internal.M.p(block, "block");
        C3313n c3313n = new C3313n();
        c3313n.n(Af.c.c(block, c3313n, c3313n));
        return c3313n;
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <T> InterfaceC3312m<T> b(@InterfaceC14401b @NotNull Mf.p<? super AbstractC3314o<? super T>, ? super yf.f<? super P0>, ? extends Object> block) {
        kotlin.jvm.internal.M.p(block, "block");
        return new a(block);
    }
}
