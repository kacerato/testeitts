package L;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.t;

public class j<T> implements t<T> {

    public final T f11495b;

    public j(@NonNull T t10) {
        this.f11495b = (T) Y.k.d(t10);
    }

    @Override
    @NonNull
    public Class<T> a() {
        return (Class<T>) this.f11495b.getClass();
    }

    @Override
    @NonNull
    public final T get() {
        return this.f11495b;
    }

    @Override
    public final int getSize() {
        return 1;
    }

    @Override
    public void recycle() {
    }
}
