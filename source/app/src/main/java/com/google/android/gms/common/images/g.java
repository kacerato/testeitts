package com.google.android.gms.common.images;

import G0.C2560d;
import G0.C2601y;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import g1.k;
import g1.l;
import java.lang.ref.WeakReference;

public final class g extends i {

    public final WeakReference f61357c;

    public g(ImageView imageView, int i10) {
        super(Uri.EMPTY, i10);
        C2560d.c(imageView);
        this.f61357c = new WeakReference(imageView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(@Nullable Drawable drawable, boolean z10, boolean z11, boolean z12) {
        ImageView imageView = (ImageView) this.f61357c.get();
        if (imageView != null) {
            if (!z11 && !z12 && (imageView instanceof l)) {
                throw null;
            }
            boolean z13 = false;
            if (!z11 && !z10) {
                z13 = true;
            }
            if (z13) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof k) {
                    drawable2 = ((k) drawable2).a();
                }
                drawable = new k(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof l) {
                throw null;
            }
            if (drawable == null || !z13) {
                return;
            }
            ((k) drawable).b(250);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        ImageView imageView = (ImageView) this.f61357c.get();
        ImageView imageView2 = (ImageView) ((g) obj).f61357c.get();
        return (imageView2 == null || imageView == null || !C2601y.b(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    public g(ImageView imageView, Uri uri) {
        super(uri, 0);
        C2560d.c(imageView);
        this.f61357c = new WeakReference(imageView);
    }
}
