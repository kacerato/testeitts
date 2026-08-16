package Ae;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import te.C15411m;
import te.C15412n;

public abstract class i {
    public static int a(@NonNull Canvas canvas, @NonNull CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Layout c10 = C15411m.c(spanned);
            if (c10 != null) {
                return c10.getWidth();
            }
            TextView c11 = C15412n.c(spanned);
            if (c11 != null) {
                return (c11.getWidth() - c11.getPaddingLeft()) - c11.getPaddingRight();
            }
        }
        return canvas.getWidth();
    }
}
