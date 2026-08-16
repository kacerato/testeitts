package V;

import android.graphics.Bitmap;
import android.widget.ImageView;

public class c extends j<Bitmap> {
    public c(ImageView imageView) {
        super(imageView);
    }

    @Override
    public void w(Bitmap bitmap) {
        ((ImageView) this.f26411c).setImageBitmap(bitmap);
    }

    @Deprecated
    public c(ImageView imageView, boolean z10) {
        super(imageView, z10);
    }
}
