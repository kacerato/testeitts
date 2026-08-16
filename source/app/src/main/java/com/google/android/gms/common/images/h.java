package com.google.android.gms.common.images;

import G0.C2560d;
import G0.C2601y;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.images.ImageManager;
import java.lang.ref.WeakReference;

public final class h extends i {

    public final WeakReference f61358c;

    public h(ImageManager.a aVar, Uri uri) {
        super(uri, 0);
        C2560d.c(aVar);
        this.f61358c = new WeakReference(aVar);
    }

    @Override
    public final void a(@Nullable Drawable drawable, boolean z10, boolean z11, boolean z12) {
        ImageManager.a aVar;
        if (z11 || (aVar = (ImageManager.a) this.f61358c.get()) == null) {
            return;
        }
        aVar.a(this.f61359a.f61356a, drawable, z12);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        ImageManager.a aVar = (ImageManager.a) this.f61358c.get();
        ImageManager.a aVar2 = (ImageManager.a) hVar.f61358c.get();
        return aVar2 != null && aVar != null && C2601y.b(aVar2, aVar) && C2601y.b(hVar.f61359a, this.f61359a);
    }

    public final int hashCode() {
        return C2601y.c(this.f61359a);
    }
}
