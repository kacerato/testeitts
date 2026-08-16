package Ae;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

@Deprecated
public abstract class c {
    public static void a(@NonNull Drawable drawable) {
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }
}
