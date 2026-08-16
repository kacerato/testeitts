package M;

import D.e;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;

public class a implements e<ByteBuffer> {

    public final ByteBuffer f14449a;

    public static class C0405a implements e.a<ByteBuffer> {
        @Override
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override
        @NonNull
        public e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f14449a = byteBuffer;
    }

    @Override
    @NonNull
    public ByteBuffer a() {
        this.f14449a.position(0);
        return this.f14449a;
    }

    @Override
    public void cleanup() {
    }
}
