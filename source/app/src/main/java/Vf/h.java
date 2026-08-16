package Vf;

import Vf.r;
import java.lang.Comparable;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class h<T extends Comparable<? super T>> implements r<T> {

    @NotNull
    public final T f26882b;

    @NotNull
    public final T f26883c;

    public h(@NotNull T start, @NotNull T endExclusive) {
        M.p(start, "start");
        M.p(endExclusive, "endExclusive");
        this.f26882b = start;
        this.f26883c = endExclusive;
    }

    @Override
    @NotNull
    public T b() {
        return this.f26883c;
    }

    @Override
    public boolean contains(@NotNull T t10) {
        return r.a.a(this, t10);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof h) {
            if (!isEmpty() || !((h) obj).isEmpty()) {
                h hVar = (h) obj;
                if (!M.g(getStart(), hVar.getStart()) || !M.g(b(), hVar.b())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    @NotNull
    public T getStart() {
        return this.f26882b;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getStart().hashCode() * 31) + b().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return r.a.b(this);
    }

    @NotNull
    public String toString() {
        return ((Object) getStart()) + "..<" + ((Object) b());
    }
}
