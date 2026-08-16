package androidx.appcompat.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.ContextCompat;

public final class AppCompatResources {
    private AppCompatResources() {
    }

    public static ColorStateList getColorStateList(Context context, int i10) {
        return ContextCompat.getColorStateList(context, i10);
    }

    public static Drawable getDrawable(Context context, int i10) {
        return ResourceManagerInternal.get().getDrawable(context, i10);
    }
}
