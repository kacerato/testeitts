package K;

import J.n;
import J.o;
import J.r;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.bitmap.J;
import java.io.InputStream;

public class e implements n<Uri, InputStream> {

    public final Context f10674a;

    public static class a implements o<Uri, InputStream> {

        public final Context f10675a;

        public a(Context context) {
            this.f10675a = context;
        }

        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new e(this.f10675a);
        }

        @Override
        public void c() {
        }
    }

    public e(Context context) {
        this.f10674a = context.getApplicationContext();
    }

    @Override
    @Nullable
    public n.a<InputStream> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        if (E.b.d(i10, i11) && e(hVar)) {
            return new n.a<>(new X.e(uri), E.c.f(this.f10674a, uri));
        }
        return null;
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return E.b.c(uri);
    }

    public final boolean e(C.h hVar) {
        Long l10 = (Long) hVar.a(J.f59365g);
        return l10 != null && l10.longValue() == -1;
    }
}
