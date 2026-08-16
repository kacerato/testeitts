package Rd;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import androidx.annotation.NonNull;

public interface a {
    @NonNull
    Bitmap.Config a();

    boolean b();

    float c();

    void d(@NonNull Canvas canvas, @NonNull Bitmap bitmap);

    void destroy();

    Bitmap e(@NonNull Bitmap bitmap, @NonNull float f10);
}
