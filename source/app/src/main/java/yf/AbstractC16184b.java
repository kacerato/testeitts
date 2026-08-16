package yf;

import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;
import yf.j.b;

@InterfaceC14441w
@InterfaceC14422l0(version = "1.3")
public abstract class AbstractC16184b<B extends j.b, E extends B> implements j.c<E> {

    @NotNull
    public final Mf.l<j.b, E> f130238b;

    @NotNull
    public final j.c<?> f130239c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [yf.j$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [Mf.l<? super yf.j$b, ? extends E extends B>, java.lang.Object, Mf.l<yf.j$b, E extends B>] */
    public AbstractC16184b(@NotNull j.c<B> baseKey, @NotNull Mf.l<? super j.b, ? extends E> safeCast) {
        M.p(baseKey, "baseKey");
        M.p(safeCast, "safeCast");
        this.f130238b = safeCast;
        this.f130239c = baseKey instanceof AbstractC16184b ? (j.c<B>) ((AbstractC16184b) baseKey).f130239c : baseKey;
    }

    public final boolean a(@NotNull j.c<?> key) {
        M.p(key, "key");
        return key == this || this.f130239c == key;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lyf/j$b;)TE; */
    @Nullable
    public final j.b b(@NotNull j.b element) {
        M.p(element, "element");
        return (j.b) this.f130238b.invoke(element);
    }
}
