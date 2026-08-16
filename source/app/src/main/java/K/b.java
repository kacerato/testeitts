package K;

import D.j;
import J.m;
import J.n;
import J.o;
import J.r;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;

public class b implements n<J.g, InputStream> {

    public static final C.g<Integer> f10667b = C.g.g("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    @Nullable
    public final m<J.g, J.g> f10668a;

    public static class a implements o<J.g, InputStream> {

        public final m<J.g, J.g> f10669a = new m<>(500);

        @Override
        @NonNull
        public n<J.g, InputStream> a(r rVar) {
            return new b(this.f10669a);
        }

        @Override
        public void c() {
        }
    }

    public b() {
        this(null);
    }

    @Override
    public n.a<InputStream> b(@NonNull J.g gVar, int i10, int i11, @NonNull C.h hVar) {
        m<J.g, J.g> mVar = this.f10668a;
        if (mVar != null) {
            J.g b10 = mVar.b(gVar, 0, 0);
            if (b10 == null) {
                this.f10668a.c(gVar, 0, 0, gVar);
            } else {
                gVar = b10;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) hVar.a(f10667b)).intValue()));
    }

    @Override
    public boolean a(@NonNull J.g gVar) {
        return true;
    }

    public b(@Nullable m<J.g, J.g> mVar) {
        this.f10668a = mVar;
    }
}
