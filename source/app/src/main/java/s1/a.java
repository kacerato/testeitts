package S1;

import X1.b;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import org.openjdk.tools.doclint.DocLint;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a {

    public static final String f22971a = "cubic-bezier";

    public static final String f22972b = "path";

    public static final String f22973c = "(";

    public static final String f22974d = ")";

    public static float a(String[] strArr, int i10) {
        float parseFloat = Float.parseFloat(strArr[i10]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static String b(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    public static boolean c(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append("(");
        return str.startsWith(sb2.toString()) && str.endsWith(")");
    }

    public static int d(@NonNull Context context, @AttrRes int i10, int i11) {
        return b.e(context, i10, i11);
    }

    @NonNull
    public static TimeInterpolator e(@NonNull Context context, @AttrRes int i10, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be a string");
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!c(valueOf, f22971a)) {
            if (c(valueOf, "path")) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(b(valueOf, "path")));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + valueOf);
        }
        String[] split = b(valueOf, f22971a).split(DocLint.SEPARATOR);
        if (split.length == 4) {
            return PathInterpolatorCompat.create(a(split, 0), a(split, 1), a(split, 2), a(split, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
    }
}
