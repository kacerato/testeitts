package jpct.ae.wrapper;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.util.BitmapHelper;
import java.io.InputStream;

@BA.ShortName("JpctBitmapHelper")
public class JBitmapHelper extends AbsObjectWrapper<BitmapHelper> {
    public static Bitmap convert(Drawable drawable) {
        return BitmapHelper.convert(drawable);
    }

    public static Bitmap rescale(Bitmap bitmap, int i10, int i11) {
        return BitmapHelper.rescale(bitmap, i10, i11);
    }

    public void Initialize() {
        setObject(new BitmapHelper());
    }

    public Bitmap loadImage(InputStream inputStream) throws Exception {
        try {
            return BitmapHelper.loadImage(inputStream);
        } catch (Exception unused) {
            Log.e("JPCT", "Exception on loadImage@JBitmapHelper, Invalid InputStream!");
            return null;
        }
    }
}
