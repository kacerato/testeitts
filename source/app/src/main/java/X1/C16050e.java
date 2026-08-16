package x1;

import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.WeakHashMap;

public class C16050e extends Property<Drawable, Integer> {

    public static final Property<Drawable, Integer> f127895b = new C16050e();

    public final WeakHashMap<Drawable, Integer> f127896a;

    public C16050e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f127896a = new WeakHashMap<>();
    }

    @Override
    @Nullable
    public Integer get(@NonNull Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
