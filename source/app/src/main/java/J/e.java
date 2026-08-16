package J;

import D.d;
import J.n;
import android.util.Base64;
import androidx.annotation.NonNull;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e<Model, Data> implements n<Model, Data> {

    public static final String f10082b = "data:image";

    public static final String f10083c = ";base64";

    public final a<Data> f10084a;

    public interface a<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(String str) throws IllegalArgumentException;
    }

    public static final class b<Data> implements D.d<Data> {

        public final String f10085b;

        public final a<Data> f10086c;

        public Data f10087d;

        public b(String str, a<Data> aVar) {
            this.f10085b = str;
            this.f10086c = aVar;
        }

        @Override
        @NonNull
        public Class<Data> a() {
            return this.f10086c.a();
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
            try {
                this.f10086c.b(this.f10087d);
            } catch (IOException unused) {
            }
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super Data> aVar) {
            try {
                Data c10 = this.f10086c.c(this.f10085b);
                this.f10087d = c10;
                aVar.c(c10);
            } catch (IllegalArgumentException e10) {
                aVar.d(e10);
            }
        }
    }

    public static final class c<Model> implements o<Model, InputStream> {

        public final a<InputStream> f10088a = new a();

        public class a implements a<InputStream> {
            public a() {
            }

            @Override
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override
            public InputStream c(String str) {
                if (!str.startsWith(e.f10082b)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, indexOf).endsWith(e.f10083c)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        }

        @Override
        @NonNull
        public n<Model, InputStream> a(@NonNull r rVar) {
            return new e(this.f10088a);
        }

        @Override
        public void c() {
        }
    }

    public e(a<Data> aVar) {
        this.f10084a = aVar;
    }

    @Override
    public boolean a(@NonNull Model model) {
        return model.toString().startsWith(f10082b);
    }

    @Override
    public n.a<Data> b(@NonNull Model model, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(model), new b(model.toString(), this.f10084a));
    }
}
