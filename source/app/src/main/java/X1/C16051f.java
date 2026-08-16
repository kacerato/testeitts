package x1;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

public class C16051f extends Property<ImageView, Matrix> {

    public final Matrix f127897a;

    public C16051f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f127897a = new Matrix();
    }

    @Override
    @NonNull
    public Matrix get(@NonNull ImageView imageView) {
        this.f127897a.set(imageView.getImageMatrix());
        return this.f127897a;
    }

    @Override
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
