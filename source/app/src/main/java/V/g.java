package V;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

public class g extends j<Drawable> {
    public g(ImageView imageView) {
        super(imageView);
    }

    @Override
    public void w(@Nullable Drawable drawable) {
        ((ImageView) this.f26411c).setImageDrawable(drawable);
    }

    @Deprecated
    public g(ImageView imageView, boolean z10) {
        super(imageView, z10);
    }
}
