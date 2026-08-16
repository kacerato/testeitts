package N;

import Y.k;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.load.engine.t;

public abstract class b<T extends Drawable> implements t<T>, p {

    public final T f15451b;

    public b(T t10) {
        this.f15451b = (T) k.d(t10);
    }

    @Override
    @NonNull
    public final T get() {
        Drawable.ConstantState constantState = this.f15451b.getConstantState();
        return constantState == null ? this.f15451b : (T) constantState.newDrawable();
    }

    @Override
    public void initialize() {
        T t10 = this.f15451b;
        if (t10 instanceof BitmapDrawable) {
            ((BitmapDrawable) t10).getBitmap().prepareToDraw();
        } else if (t10 instanceof P.c) {
            ((P.c) t10).e().prepareToDraw();
        }
    }
}
