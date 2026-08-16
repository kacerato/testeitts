package P;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.C11707g;

public final class h implements C.j<B.a, Bitmap> {

    public final F.e f20612a;

    public h(F.e eVar) {
        this.f20612a = eVar;
    }

    @Override
    public t<Bitmap> a(@NonNull B.a aVar, int i10, int i11, @NonNull C.h hVar) {
        return C11707g.c(aVar.o(), this.f20612a);
    }

    @Override
    public boolean b(@NonNull B.a aVar, @NonNull C.h hVar) {
        return true;
    }
}
