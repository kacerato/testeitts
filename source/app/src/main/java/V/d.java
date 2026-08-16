package V;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class d extends q<Bitmap> {
    public d(ImageView imageView) {
        super(imageView);
    }

    @Override
    public Drawable y(Bitmap bitmap) {
        return new BitmapDrawable(((ImageView) this.f26411c).getResources(), bitmap);
    }

    @Deprecated
    public d(ImageView imageView, boolean z10) {
        super(imageView, z10);
    }
}
