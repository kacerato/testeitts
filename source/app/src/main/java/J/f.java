package J;

import D.d;
import J.n;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class f<Data> implements n<File, Data> {

    public static final String f10090b = "FileLoader";

    public final d<Data> f10091a;

    public static class a<Data> implements o<File, Data> {

        public final d<Data> f10092a;

        public a(d<Data> dVar) {
            this.f10092a = dVar;
        }

        @Override
        @NonNull
        public final n<File, Data> a(@NonNull r rVar) {
            return new f(this.f10092a);
        }

        @Override
        public final void c() {
        }
    }

    public static class b extends a<ParcelFileDescriptor> {

        public class a implements d<ParcelFileDescriptor> {
            @Override
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override
            public void b(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override
            public ParcelFileDescriptor c(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public b() {
            super(new a());
        }
    }

    public static final class c<Data> implements D.d<Data> {

        public final File f10093b;

        public final d<Data> f10094c;

        public Data f10095d;

        public c(File file, d<Data> dVar) {
            this.f10093b = file;
            this.f10094c = dVar;
        }

        @Override
        @NonNull
        public Class<Data> a() {
            return this.f10094c.a();
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
            Data data = this.f10095d;
            if (data != null) {
                try {
                    this.f10094c.b(data);
                } catch (IOException unused) {
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, Data] */
        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super Data> aVar) {
            try {
                Data c10 = this.f10094c.c(this.f10093b);
                this.f10095d = c10;
                aVar.c(c10);
            } catch (FileNotFoundException e10) {
                if (Log.isLoggable(f.f10090b, 3)) {
                    Log.d(f.f10090b, "Failed to open file", e10);
                }
                aVar.d(e10);
            }
        }
    }

    public interface d<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(File file) throws FileNotFoundException;
    }

    public static class e extends a<InputStream> {

        public class a implements d<InputStream> {
            @Override
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override
            public InputStream c(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.f10091a = dVar;
    }

    @Override
    public n.a<Data> b(@NonNull File file, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(file), new c(file, this.f10091a));
    }

    @Override
    public boolean a(@NonNull File file) {
        return true;
    }
}
