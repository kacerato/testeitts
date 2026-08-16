package F4;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class a {
    public static int a(int bgColor) {
        return ColorUtils.calculateLuminance(bgColor) > 0.55d ? -16777216 : -1;
    }

    public static char b(String s10) {
        if (s10 == null) {
            return '?';
        }
        for (int i10 = 0; i10 < s10.length(); i10++) {
            char charAt = s10.charAt(i10);
            if (Character.isLetterOrDigit(charAt)) {
                return Character.toUpperCase(charAt);
            }
        }
        return '?';
    }

    public static int c(char c10) {
        return Color.HSVToColor(new float[]{((((c10 < 'A' || c10 > 'Z') ? (c10 < '0' || c10 > '9') ? 36 : c10 - 22 : c10 - IIndexConstants.ANNOTATION_TYPE_SUFFIX) * 0.618034f) % 1.0f) * 360.0f, 0.58f, 0.88f});
    }
}
