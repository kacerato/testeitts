package N;

import W.c;
import W.g;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.l;

public final class c extends l<c, Drawable> {
    @NonNull
    public static c l(@NonNull g<Drawable> gVar) {
        return new c().f(gVar);
    }

    @NonNull
    public static c m() {
        return new c().h();
    }

    @NonNull
    public static c n(int i10) {
        return new c().i(i10);
    }

    @NonNull
    public static c o(@NonNull c.a aVar) {
        return new c().j(aVar);
    }

    @NonNull
    public static c p(@NonNull W.c cVar) {
        return new c().k(cVar);
    }

    @NonNull
    public c h() {
        return j(new c.a());
    }

    @NonNull
    public c i(int i10) {
        return j(new c.a(i10));
    }

    @NonNull
    public c j(@NonNull c.a aVar) {
        return k(aVar.a());
    }

    @NonNull
    public c k(@NonNull W.c cVar) {
        return f(cVar);
    }
}
