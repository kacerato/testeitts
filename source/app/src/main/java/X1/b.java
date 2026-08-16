package X1;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {
    @Nullable
    public static TypedValue a(@NonNull Context context, @AttrRes int i10) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean b(@NonNull Context context, @AttrRes int i10, boolean z10) {
        TypedValue a10 = a(context, i10);
        return (a10 == null || a10.type != 18) ? z10 : a10.data != 0;
    }

    public static boolean c(@NonNull Context context, @AttrRes int i10, @NonNull String str) {
        return g(context, i10, str) != 0;
    }

    @Px
    public static int d(@NonNull Context context, @AttrRes int i10, @DimenRes int i11) {
        TypedValue a10 = a(context, i10);
        return (int) ((a10 == null || a10.type != 5) ? context.getResources().getDimension(i11) : a10.getDimension(context.getResources().getDisplayMetrics()));
    }

    public static int e(@NonNull Context context, @AttrRes int i10, int i11) {
        TypedValue a10 = a(context, i10);
        return (a10 == null || a10.type != 16) ? i11 : a10.data;
    }

    @Px
    public static int f(@NonNull Context context) {
        return d(context, C15879a.c.f121834Aa, C15879a.f.f123226g5);
    }

    public static int g(@NonNull Context context, @AttrRes int i10, @NonNull String str) {
        TypedValue a10 = a(context, i10);
        if (a10 != null) {
            return a10.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i10)));
    }

    public static int h(@NonNull View view, @AttrRes int i10) {
        return g(view.getContext(), i10, view.getClass().getCanonicalName());
    }
}
