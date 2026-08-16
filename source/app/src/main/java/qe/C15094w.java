package qe;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

public class C15094w implements InterfaceC15093v {

    public final Map<C15090s, Object> f107836a = new HashMap(3);

    @Override
    @Nullable
    public <T> T a(@NonNull C15090s<T> c15090s) {
        return (T) this.f107836a.get(c15090s);
    }

    @Override
    public <T> void b(@NonNull C15090s<T> c15090s) {
        this.f107836a.remove(c15090s);
    }

    @Override
    public <T> void c(@NonNull C15090s<T> c15090s, @Nullable T t10) {
        if (t10 == null) {
            this.f107836a.remove(c15090s);
        } else {
            this.f107836a.put(c15090s, t10);
        }
    }

    @Override
    @NonNull
    public <T> T d(@NonNull C15090s<T> c15090s, @NonNull T t10) {
        T t11 = (T) this.f107836a.get(c15090s);
        return t11 != null ? t11 : t10;
    }

    @Override
    public void e() {
        this.f107836a.clear();
    }
}
