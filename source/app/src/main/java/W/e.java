package W;

import W.f;

public class e<R> implements f<R> {

    public static final e<?> f27190a = new e<>();

    public static final g<?> f27191b = new a();

    public static class a<R> implements g<R> {
        @Override
        public f<R> a(C.a aVar, boolean z10) {
            return e.f27190a;
        }
    }

    public static <R> f<R> b() {
        return f27190a;
    }

    public static <R> g<R> c() {
        return (g<R>) f27191b;
    }

    @Override
    public boolean a(Object obj, f.a aVar) {
        return false;
    }
}
