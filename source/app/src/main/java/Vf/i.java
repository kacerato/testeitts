package Vf;

import Vf.g;
import java.lang.Comparable;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class i<T extends Comparable<? super T>> implements g<T> {

    @NotNull
    public final T f26884b;

    @NotNull
    public final T f26885c;

    public i(@NotNull T start, @NotNull T endInclusive) {
        M.p(start, "start");
        M.p(endInclusive, "endInclusive");
        this.f26884b = start;
        this.f26885c = endInclusive;
    }

    @Override
    public boolean contains(@NotNull T t10) {
        return g.a.a(this, t10);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof i) {
            if (!isEmpty() || !((i) obj).isEmpty()) {
                i iVar = (i) obj;
                if (!M.g(getStart(), iVar.getStart()) || !M.g(getEndInclusive(), iVar.getEndInclusive())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    @NotNull
    public T getEndInclusive() {
        return this.f26885c;
    }

    @Override
    @NotNull
    public T getStart() {
        return this.f26884b;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (getStart().hashCode() * 31) + getEndInclusive().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return g.a.b(this);
    }

    @NotNull
    public String toString() {
        return ((Object) getStart()) + ClasspathEntry.DOT_DOT + ((Object) getEndInclusive());
    }
}
