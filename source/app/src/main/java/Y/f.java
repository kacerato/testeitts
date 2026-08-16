package Y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.e;

public class f<T> implements e.b<T> {

    public final int[] f29672a;

    public f(int i10, int i11) {
        this.f29672a = new int[]{i10, i11};
    }

    @Override
    @Nullable
    public int[] a(@NonNull T t10, int i10, int i11) {
        return this.f29672a;
    }
}
