package ah;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3644a extends AbstractC3645b<C3644a> {

    @NotNull
    public final Drawable f32190g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3644a(@NotNull Context context, @NotNull Drawable bitmapIndicator) {
        super(context);
        M.p(context, "context");
        M.p(bitmapIndicator, "bitmapIndicator");
        this.f32190g = bitmapIndicator;
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        this.f32190g.draw(canvas);
    }

    @Override
    public void r(boolean z10) {
    }

    @Override
    public void s() {
        this.f32190g.setBounds(0, 0, (int) k(), (int) k());
    }
}
