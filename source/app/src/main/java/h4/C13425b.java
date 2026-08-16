package h4;

import java.io.File;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;

public class C13425b<V> {

    public final File f90218a;

    public final Class f90219b;

    public C13425b(File folder, Class valueType) {
        this.f90218a = folder;
        this.f90219b = valueType;
    }

    public static String c(String b10) {
        return Vc.b.a(b10);
    }

    public static String e(String k10) {
        return Vc.b.b(k10);
    }

    public V a(String key, Function<String, V> function) {
        if (b(key)) {
            return f(key);
        }
        V apply = function.apply(key);
        g(key, apply);
        return apply;
    }

    public boolean b(String key) {
        return new File(this.f90218a, e(key)).exists();
    }

    public void d(String key) {
        File file = new File(this.f90218a, e(key));
        if (file.exists()) {
            file.delete();
        }
    }

    public V f(String str) {
        String x10;
        File file = new File(this.f90218a, e(str));
        if (!file.exists() || (x10 = X7.a.x(file)) == null || x10.isEmpty()) {
            return null;
        }
        return (V) X7.a.m().fromJson(x10, this.f90219b);
    }

    public void g(String key, V value) {
        X7.a.i(new File(this.f90218a, e(key)), X7.a.m().toJson(value));
    }

    public boolean h(Predicate<String> filter) {
        Objects.requireNonNull(filter);
        File[] listFiles = this.f90218a.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z10 = false;
        for (File file : listFiles) {
            try {
                if (filter.test(c(file.getName()))) {
                    file.delete();
                    z10 = true;
                }
            } catch (IllegalArgumentException e10) {
                e10.printStackTrace();
                if (file.exists()) {
                    file.delete();
                }
            }
        }
        return z10;
    }
}
