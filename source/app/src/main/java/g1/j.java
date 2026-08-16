package g1;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;

public final class j extends Drawable.ConstantState {

    public int f88009a;

    public int f88010b;

    public j(@Nullable j jVar) {
        if (jVar != null) {
            this.f88009a = jVar.f88009a;
            this.f88010b = jVar.f88010b;
        }
    }

    @Override
    public final int getChangingConfigurations() {
        return this.f88009a;
    }

    @Override
    public final Drawable newDrawable() {
        return new k(this);
    }
}
