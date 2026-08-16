package K;

import J.n;
import J.o;
import J.r;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.net.URL;

public class i implements n<URL, InputStream> {

    public final n<J.g, InputStream> f10693a;

    public static class a implements o<URL, InputStream> {
        @Override
        @NonNull
        public n<URL, InputStream> a(r rVar) {
            return new i(rVar.d(J.g.class, InputStream.class));
        }

        @Override
        public void c() {
        }
    }

    public i(n<J.g, InputStream> nVar) {
        this.f10693a = nVar;
    }

    @Override
    public n.a<InputStream> b(@NonNull URL url, int i10, int i11, @NonNull C.h hVar) {
        return this.f10693a.b(new J.g(url), i10, i11, hVar);
    }

    @Override
    public boolean a(@NonNull URL url) {
        return true;
    }
}
