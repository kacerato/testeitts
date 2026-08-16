package D1;

import android.graphics.Canvas;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a {
    public static int a(@NonNull Canvas canvas, float f10, float f11, float f12, float f13, int i10) {
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i10);
    }

    public static int b(@NonNull Canvas canvas, @Nullable RectF rectF, int i10) {
        return canvas.saveLayerAlpha(rectF, i10);
    }
}
