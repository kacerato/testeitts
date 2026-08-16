package Ic;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public class C2627f {
    public static Bitmap a(Bitmap source, boolean xFlip, boolean yFlip) {
        Matrix matrix = new Matrix();
        matrix.postScale(xFlip ? -1.0f : 1.0f, yFlip ? -1.0f : 1.0f, source.getWidth() / 2.0f, source.getHeight() / 2.0f);
        Bitmap createBitmap = Bitmap.createBitmap(source, 0, 0, source.getWidth(), source.getHeight(), matrix, true);
        source.recycle();
        return createBitmap;
    }
}
