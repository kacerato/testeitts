package Vc;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.AbstractC11708h;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class c extends AbstractC11708h {

    public static final String f26814c = "transformations.CircleCropTransformation";

    public static final byte[] f26815d = f26814c.getBytes(StandardCharsets.UTF_8);

    @Override
    public Bitmap a(@NonNull F.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        return b(pool, toTransform);
    }

    public final Bitmap b(@NonNull F.e pool, @NonNull Bitmap source) {
        if (source == null) {
            return null;
        }
        int min = Math.min(source.getWidth(), source.getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(source, (source.getWidth() - min) / 2, (source.getHeight() - min) / 2, min, min);
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap f10 = pool.f(min, min, config);
        if (f10 == null) {
            f10 = Bitmap.createBitmap(min, min, config);
        }
        Canvas canvas = new Canvas(f10);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
        float f11 = min / 2.0f;
        canvas.drawCircle(f11, f11, f11, paint);
        return f10;
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof c;
    }

    @Override
    public int hashCode() {
        return -1204093523;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f26815d);
    }
}
