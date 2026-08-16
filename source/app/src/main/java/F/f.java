package F;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

public class f implements e {
    @Override
    public void a(int i10) {
    }

    @Override
    public void b() {
    }

    @Override
    public void c(float f10) {
    }

    @Override
    public void d(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override
    public long e() {
        return 0L;
    }

    @Override
    @NonNull
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override
    @NonNull
    public Bitmap g(int i10, int i11, Bitmap.Config config) {
        return f(i10, i11, config);
    }
}
