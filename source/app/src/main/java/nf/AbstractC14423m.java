package nf;

import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@yf.m
@T0(markerClass = {InterfaceC14441w.class})
@InterfaceC14422l0(version = "1.7")
public abstract class AbstractC14423m<T, R> {
    public AbstractC14423m(C14026x c14026x) {
        this();
    }

    @Nullable
    public abstract Object a(T t10, @NotNull yf.f<? super R> fVar);

    @Nullable
    public abstract <U, S> Object c(@NotNull C14419k<U, S> c14419k, U u10, @NotNull yf.f<? super S> fVar);

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "'invoke' should not be called from DeepRecursiveScope. Use 'callRecursive' to do recursion in the heap instead of the call stack.", replaceWith = @InterfaceC14412g0(expression = "this.callRecursive(value)", imports = {}))
    @NotNull
    public final Void e(@NotNull C14419k<?, ?> c14419k, @Nullable Object obj) {
        kotlin.jvm.internal.M.p(c14419k, "<this>");
        throw new UnsupportedOperationException("Should not be called from DeepRecursiveScope");
    }

    public AbstractC14423m() {
    }
}
