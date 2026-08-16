package J;

import D.d;
import J.n;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class d implements n<File, ByteBuffer> {

    public static final String f10080a = "ByteBufferFileLoader";

    public static final class a implements D.d<ByteBuffer> {

        public final File f10081b;

        public a(File file) {
            this.f10081b = file;
        }

        @Override
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
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
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super ByteBuffer> aVar) {
            try {
                aVar.c(Y.a.a(this.f10081b));
            } catch (IOException e10) {
                if (Log.isLoggable(d.f10080a, 3)) {
                    Log.d(d.f10080a, "Failed to obtain ByteBuffer for file", e10);
                }
                aVar.d(e10);
            }
        }
    }

    public static class b implements o<File, ByteBuffer> {
        @Override
        @NonNull
        public n<File, ByteBuffer> a(@NonNull r rVar) {
            return new d();
        }

        @Override
        public void c() {
        }
    }

    @Override
    public n.a<ByteBuffer> b(@NonNull File file, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(file), new a(file));
    }

    @Override
    public boolean a(@NonNull File file) {
        return true;
    }
}
