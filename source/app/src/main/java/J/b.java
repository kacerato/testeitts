package J;

import D.d;
import J.n;
import androidx.annotation.NonNull;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class b<Data> implements n<byte[], Data> {

    public final InterfaceC0244b<Data> f10074a;

    public static class a implements o<byte[], ByteBuffer> {

        public class C0243a implements InterfaceC0244b<ByteBuffer> {
            public C0243a() {
            }

            @Override
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override
        @NonNull
        public n<byte[], ByteBuffer> a(@NonNull r rVar) {
            return new b(new C0243a());
        }

        @Override
        public void c() {
        }
    }

    public interface InterfaceC0244b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    public static class c<Data> implements D.d<Data> {

        public final byte[] f10076b;

        public final InterfaceC0244b<Data> f10077c;

        public c(byte[] bArr, InterfaceC0244b<Data> interfaceC0244b) {
            this.f10076b = bArr;
            this.f10077c = interfaceC0244b;
        }

        @Override
        @NonNull
        public Class<Data> a() {
            return this.f10077c.a();
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
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super Data> aVar) {
            aVar.c(this.f10077c.b(this.f10076b));
        }
    }

    public static class d implements o<byte[], InputStream> {

        public class a implements InterfaceC0244b<InputStream> {
            public a() {
            }

            @Override
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override
        @NonNull
        public n<byte[], InputStream> a(@NonNull r rVar) {
            return new b(new a());
        }

        @Override
        public void c() {
        }
    }

    public b(InterfaceC0244b<Data> interfaceC0244b) {
        this.f10074a = interfaceC0244b;
    }

    @Override
    public n.a<Data> b(@NonNull byte[] bArr, int i10, int i11, @NonNull C.h hVar) {
        return new n.a<>(new X.e(bArr), new c(bArr, this.f10074a));
    }

    @Override
    public boolean a(@NonNull byte[] bArr) {
        return true;
    }
}
