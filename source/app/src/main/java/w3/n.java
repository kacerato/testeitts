package w3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;

public class n {
    public static Bitmap a(@DrawableRes int resId, int reqWidth, int reqHeight) {
        Drawable drawable = ContextCompat.getDrawable(N7.c.t(), resId);
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable resource not found: " + resId);
        }
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (reqWidth <= 0) {
                reqWidth = bitmap.getWidth();
            }
            if (reqHeight <= 0) {
                reqHeight = bitmap.getHeight();
            }
            return (bitmap.getWidth() == reqWidth && bitmap.getHeight() == reqHeight) ? bitmap : Bitmap.createScaledBitmap(bitmap, reqWidth, reqHeight, true);
        }
        if (reqWidth <= 0) {
            reqWidth = drawable.getIntrinsicWidth();
        }
        if (reqHeight <= 0) {
            reqHeight = drawable.getIntrinsicHeight();
        }
        if (reqWidth <= 0) {
            reqWidth = 1;
        }
        Bitmap createBitmap = Bitmap.createBitmap(reqWidth, reqHeight > 0 ? reqHeight : 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public static ub.n b(@DrawableRes int r10) {
        Bitmap decodeResource = BitmapFactory.decodeResource(N7.c.t().getResources(), r10);
        return decodeResource == null ? e(r10, 64, 64, false, false) : e(r10, decodeResource.getWidth(), decodeResource.getHeight(), false, false);
    }

    public static ub.n c(@DrawableRes int r10, int reso) {
        return e(r10, reso, reso, false, false);
    }

    public static ub.n d(@DrawableRes int r10, int finalWidth, int finalHeight) {
        return e(r10, finalWidth, finalHeight, false, false);
    }

    public static ub.n e(@DrawableRes int r10, int finalWidth, int finalHeight, boolean flipX, boolean flipY) {
        return f(r10, finalWidth, finalHeight, flipX, flipY, false);
    }

    public static ub.n f(@DrawableRes int r10, int finalWidth, int finalHeight, boolean flipX, boolean flipY, boolean pixelFilter) {
        Bitmap decodeResource = BitmapFactory.decodeResource(N7.c.t().getResources(), r10);
        if (decodeResource == null) {
            decodeResource = a(r10, finalWidth, finalHeight);
        } else if (decodeResource.getWidth() != finalWidth || decodeResource.getHeight() != finalHeight) {
            decodeResource = Bitmap.createScaledBitmap(decodeResource, finalWidth, finalHeight, true);
        }
        Bitmap bitmap = decodeResource;
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.allowModifications = true;
        textureConfig.genMipmaps = false;
        if (pixelFilter) {
            textureConfig.j0(TextureConfig.c.Nearest);
        }
        ub.n nVar = new ub.n(finalWidth, finalHeight, textureConfig);
        int[] iArr = new int[finalWidth * finalHeight];
        bitmap.getPixels(iArr, 0, finalWidth, 0, 0, finalWidth, finalHeight);
        for (int i10 = 0; i10 < finalHeight; i10++) {
            for (int i11 = 0; i11 < finalWidth; i11++) {
                int i12 = iArr[(i10 * finalWidth) + i11];
                nVar.f0(flipX ? (finalWidth - 1) - i11 : i11, flipY ? (finalHeight - 1) - i10 : i10, Color.red(i12) / 255.0f, Color.green(i12) / 255.0f, Color.blue(i12) / 255.0f, Color.alpha(i12) / 255.0f);
            }
        }
        nVar.apply();
        return nVar;
    }

    public static ub.n g(@DrawableRes int r10, int reso, boolean flipX, boolean flipY) {
        return e(r10, reso, reso, flipX, flipY);
    }

    public static ub.n h(@DrawableRes int r10, int reso, boolean flipX, boolean flipY, boolean pixelFilter) {
        return f(r10, reso, reso, flipX, flipY, pixelFilter);
    }
}
