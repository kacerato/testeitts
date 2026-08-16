package D;

import D.e;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class k implements e<InputStream> {

    public static final int f4521b = 5242880;

    public final RecyclableBufferedInputStream f4522a;

    public static final class a implements e.a<InputStream> {

        public final F.b f4523a;

        public a(F.b bVar) {
            this.f4523a = bVar;
        }

        @Override
        @NonNull
        public Class<InputStream> a() {
            return InputStream.class;
        }

        @Override
        @NonNull
        public e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.f4523a);
        }
    }

    public k(InputStream inputStream, F.b bVar) {
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, bVar);
        this.f4522a = recyclableBufferedInputStream;
        recyclableBufferedInputStream.mark(5242880);
    }

    public void b() {
        this.f4522a.c();
    }

    @Override
    @NonNull
    public InputStream a() throws IOException {
        this.f4522a.reset();
        return this.f4522a;
    }

    @Override
    public void cleanup() {
        this.f4522a.release();
    }
}
