package J;

import J.n;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import qe.C15075d;

public class x<Data> implements n<Uri, Data> {

    public static final Set<String> f10170b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", C15075d.f106134a)));

    public final n<g, Data> f10171a;

    public static class a implements o<Uri, InputStream> {
        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new x(rVar.d(g.class, InputStream.class));
        }

        @Override
        public void c() {
        }
    }

    public x(n<g, Data> nVar) {
        this.f10171a = nVar;
    }

    @Override
    public n.a<Data> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        return this.f10171a.b(new g(uri.toString()), i10, i11, hVar);
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return f10170b.contains(uri.getScheme());
    }
}
