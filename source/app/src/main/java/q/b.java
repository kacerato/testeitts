package Q;

import C.h;
import Y.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.z;

public class b implements e<Bitmap, BitmapDrawable> {

    public final Resources f21863a;

    public b(@NonNull Context context) {
        this(context.getResources());
    }

    @Override
    @Nullable
    public t<BitmapDrawable> a(@NonNull t<Bitmap> tVar, @NonNull h hVar) {
        return z.c(this.f21863a, tVar);
    }

    @Deprecated
    public b(@NonNull Resources resources, F.e eVar) {
        this(resources);
    }

    public b(@NonNull Resources resources) {
        this.f21863a = (Resources) k.d(resources);
    }
}
