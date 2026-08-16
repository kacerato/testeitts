package K;

import J.n;
import J.o;
import J.r;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import qe.C15075d;

public class c implements n<Uri, InputStream> {

    public static final Set<String> f10670b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", C15075d.f106134a)));

    public final n<J.g, InputStream> f10671a;

    public static class a implements o<Uri, InputStream> {
        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new c(rVar.d(J.g.class, InputStream.class));
        }

        @Override
        public void c() {
        }
    }

    public c(n<J.g, InputStream> nVar) {
        this.f10671a = nVar;
    }

    @Override
    public n.a<InputStream> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return this.f10671a.b(new J.g(uri.toString()), i10, i11, hVar);
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return f10670b.contains(uri.getScheme());
    }
}
