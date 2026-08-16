package N;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;

public final class d extends b<Drawable> {
    public d(Drawable drawable) {
        super(drawable);
    }

    @Nullable
    public static t<Drawable> c(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new d(drawable);
        }
        return null;
    }

    @Override
    @NonNull
    public Class<Drawable> a() {
        return this.f15451b.getClass();
    }

    @Override
    public int getSize() {
        return Math.max(1, this.f15451b.getIntrinsicWidth() * this.f15451b.getIntrinsicHeight() * 4);
    }

    @Override
    public void recycle() {
    }
}
