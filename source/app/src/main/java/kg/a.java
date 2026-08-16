package Kg;

import Lg.g;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.IOException;
import okhttp3.C;
import okhttp3.E;
import okhttp3.w;
import okhttp3.z;

public final class a implements w {

    public final z f11329a;

    public a(z zVar) {
        this.f11329a = zVar;
    }

    @Override
    public E a(w.a aVar) throws IOException {
        g gVar = (g) aVar;
        C b02 = gVar.b0();
        f l10 = gVar.l();
        return gVar.k(b02, l10, l10.i(this.f11329a, aVar, !b02.g().equals(FetchCoreUtils.GET_REQUEST_METHOD)), l10.d());
    }
}
