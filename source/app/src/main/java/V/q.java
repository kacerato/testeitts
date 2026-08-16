package V;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;

public abstract class q<T> extends j<T> {
    public q(ImageView imageView) {
        super(imageView);
    }

    @Override
    public void w(@Nullable T t10) {
        ViewGroup.LayoutParams layoutParams = ((ImageView) this.f26411c).getLayoutParams();
        Drawable y10 = y(t10);
        if (layoutParams != null && layoutParams.width > 0 && layoutParams.height > 0) {
            y10 = new i(y10, layoutParams.width, layoutParams.height);
        }
        ((ImageView) this.f26411c).setImageDrawable(y10);
    }

    public abstract Drawable y(T t10);

    @Deprecated
    public q(ImageView imageView, boolean z10) {
        super(imageView, z10);
    }
}
