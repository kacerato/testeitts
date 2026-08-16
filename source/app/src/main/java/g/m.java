package G;

import Z.a;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class m {

    public final Y.h<C.e, String> f7265a = new Y.h<>(1000);

    public final Pools.Pool<b> f7266b = Z.a.e(10, new a());

    public class a implements a.d<b> {
        public a() {
        }

        @Override
        public b create() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public static final class b implements a.f {

        public final MessageDigest f7268b;

        public final Z.c f7269c = Z.c.a();

        public b(MessageDigest messageDigest) {
            this.f7268b = messageDigest;
        }

        @Override
        @NonNull
        public Z.c d() {
            return this.f7269c;
        }
    }

    public final String a(C.e eVar) {
        b bVar = (b) Y.k.d(this.f7266b.acquire());
        try {
            eVar.updateDiskCacheKey(bVar.f7268b);
            return Y.m.w(bVar.f7268b.digest());
        } finally {
            this.f7266b.release(bVar);
        }
    }

    public String b(C.e eVar) {
        String j10;
        synchronized (this.f7265a) {
            j10 = this.f7265a.j(eVar);
        }
        if (j10 == null) {
            j10 = a(eVar);
        }
        synchronized (this.f7265a) {
            this.f7265a.n(eVar, j10);
        }
        return j10;
    }
}
