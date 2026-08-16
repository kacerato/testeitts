package Od;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a {

    public static final int f16604a = 65555;

    @Nullable
    public static final Drawable a(@NotNull Context contextDrawable, int i10) {
        M.p(contextDrawable, "$this$contextDrawable");
        return ContextCompat.getDrawable(contextDrawable, i10);
    }

    public static final int b(@NotNull Context dp2Px, float f10) {
        M.p(dp2Px, "$this$dp2Px");
        Resources resources = dp2Px.getResources();
        M.o(resources, "resources");
        return (int) (f10 * resources.getDisplayMetrics().density);
    }

    public static final int c(@NotNull Context dp2Px, int i10) {
        M.p(dp2Px, "$this$dp2Px");
        Resources resources = dp2Px.getResources();
        M.o(resources, "resources");
        return (int) (i10 * resources.getDisplayMetrics().density);
    }

    public static final int d(@NotNull View dp2Px, float f10) {
        M.p(dp2Px, "$this$dp2Px");
        Context context = dp2Px.getContext();
        M.o(context, "context");
        return b(context, f10);
    }

    public static final int e(@NotNull View dp2Px, int i10) {
        M.p(dp2Px, "$this$dp2Px");
        Context context = dp2Px.getContext();
        M.o(context, "context");
        return c(context, i10);
    }
}
