package Id;

import android.graphics.drawable.Drawable;
import android.view.View;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface c {
    @NotNull
    c B(boolean z10);

    @NotNull
    c D(boolean z10);

    @NotNull
    c E(boolean z10);

    @NotNull
    c addView(@NotNull View view);

    @NotNull
    c b(@NotNull Drawable drawable, @Nullable View.OnClickListener onClickListener);

    @NotNull
    c c(@NotNull View.OnClickListener onClickListener);

    @NotNull
    c d(boolean z10);

    @Nullable
    Jd.b getMenu();

    @NotNull
    c i(boolean z10);

    @NotNull
    c k(boolean z10);

    @NotNull
    c n(boolean z10);

    @NotNull
    c o(boolean z10);

    @NotNull
    c p(boolean z10);

    @NotNull
    c q(boolean z10);

    @NotNull
    c r(@NotNull Drawable drawable, @Nullable View.OnClickListener onClickListener);

    @NotNull
    c removeView(@NotNull View view);

    @NotNull
    c t(@NotNull String str);

    @NotNull
    c u(boolean z10);

    @NotNull
    c x(boolean z10);

    @NotNull
    c y(boolean z10);

    @NotNull
    c z(@NotNull View.OnClickListener onClickListener);
}
