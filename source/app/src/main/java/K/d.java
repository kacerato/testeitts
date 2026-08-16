package K;

import J.n;
import J.o;
import J.r;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.InputStream;

public class d implements n<Uri, InputStream> {

    public final Context f10672a;

    public static class a implements o<Uri, InputStream> {

        public final Context f10673a;

        public a(Context context) {
            this.f10673a = context;
        }

        @Override
        @NonNull
        public n<Uri, InputStream> a(r rVar) {
            return new d(this.f10673a);
        }

        @Override
        public void c() {
        }
    }

    public d(Context context) {
        this.f10672a = context.getApplicationContext();
    }

    @Override
    public n.a<InputStream> b(@NonNull Uri uri, int i10, int i11, @NonNull C.h hVar) {
        if (E.b.d(i10, i11)) {
            return new n.a<>(new X.e(uri), E.c.d(this.f10672a, uri));
        }
        return null;
    }

    @Override
    public boolean a(@NonNull Uri uri) {
        return E.b.a(uri);
    }
}
