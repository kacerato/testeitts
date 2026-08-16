package J;

import D.d;
import J.n;
import androidx.annotation.NonNull;

public class v<Model> implements n<Model, Model> {

    public static final v<?> f10162a = new v<>();

    public static class a<Model> implements o<Model, Model> {

        public static final a<?> f10163a = new a<>();

        @Deprecated
        public a() {
        }

        public static <T> a<T> b() {
            return (a<T>) f10163a;
        }

        @Override
        @NonNull
        public n<Model, Model> a(r rVar) {
            return v.c();
        }

        @Override
        public void c() {
        }
    }

    public static class b<Model> implements D.d<Model> {

        public final Model f10164b;

        public b(Model model) {
            this.f10164b = model;
        }

        @Override
        @NonNull
        public Class<Model> a() {
            return (Class<Model>) this.f10164b.getClass();
        }

        @Override
        @NonNull
        public C.a b() {
            return C.a.LOCAL;
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
        }

        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super Model> aVar) {
            aVar.c(this.f10164b);
        }
    }

    @Deprecated
    public v() {
    }

    public static <T> v<T> c() {
        return (v<T>) f10162a;
    }

    @Override
    public boolean a(@NonNull Model model) {
        return true;
    }

    @Override
    public n.a<Model> b(@NonNull Model model, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(model), new b(model));
    }
}
