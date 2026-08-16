package pf;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class W implements Map, Serializable, Nf.a {

    @NotNull
    public static final W f103834b = new W();

    public static final long f103835c = 8246714829545688274L;

    private final Object m() {
        return f103834b;
    }

    public boolean a(@NotNull Void value) {
        kotlin.jvm.internal.M.p(value, "value");
        return false;
    }

    @Override
    @Nullable
    public Void get(@Nullable Object obj) {
        return null;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean containsKey(@Nullable Object obj) {
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj instanceof Void) {
            return a((Void) obj);
        }
        return false;
    }

    @NotNull
    public Set<Map.Entry> e() {
        return X.f103836b;
    }

    @Override
    public final Set<Map.Entry> entrySet() {
        return e();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @NotNull
    public Set<Object> i() {
        return X.f103836b;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    public int j() {
        return 0;
    }

    @NotNull
    public Collection k() {
        return V.f103832b;
    }

    @Override
    public final Set<Object> o() {
        return i();
    }

    public Void l(Object obj, Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Void remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return j();
    }

    @NotNull
    public String toString() {
        return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
    }

    @Override
    public final Collection values() {
        return k();
    }
}
