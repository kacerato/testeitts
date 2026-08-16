package ud;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.ImageView;
import com.squareup.picasso.Transformation;
import java.util.Arrays;

public final class C15598d {

    public float[] f118822b = {0.0f, 0.0f, 0.0f, 0.0f};

    public boolean f118823c = false;

    public float f118824d = 0.0f;

    public ColorStateList f118825e = ColorStateList.valueOf(-16777216);

    public ImageView.ScaleType f118826f = ImageView.ScaleType.FIT_CENTER;

    public final DisplayMetrics f118821a = Resources.getSystem().getDisplayMetrics();

    public class a implements Transformation {
        public a() {
        }

        public String a() {
            return "r:" + Arrays.toString(C15598d.this.f118822b) + "b:" + C15598d.this.f118824d + "c:" + ((Object) C15598d.this.f118825e) + "o:" + C15598d.this.f118823c;
        }

        public Bitmap b(Bitmap bitmap) {
            Bitmap C10 = C15597c.d(bitmap).z(C15598d.this.f118826f).w(C15598d.this.f118822b[0], C15598d.this.f118822b[1], C15598d.this.f118822b[2], C15598d.this.f118822b[3]).u(C15598d.this.f118824d).t(C15598d.this.f118825e).y(C15598d.this.f118823c).C();
            if (!bitmap.equals(C10)) {
                bitmap.recycle();
            }
            return C10;
        }
    }

    public C15598d f(int i10) {
        this.f118825e = ColorStateList.valueOf(i10);
        return this;
    }

    public C15598d g(ColorStateList colorStateList) {
        this.f118825e = colorStateList;
        return this;
    }

    public C15598d h(float f10) {
        this.f118824d = f10;
        return this;
    }

    public C15598d i(float f10) {
        this.f118824d = TypedValue.applyDimension(1, f10, this.f118821a);
        return this;
    }

    public Transformation j() {
        return new a();
    }

    public C15598d k(float f10) {
        float[] fArr = this.f118822b;
        fArr[0] = f10;
        fArr[1] = f10;
        fArr[2] = f10;
        fArr[3] = f10;
        return this;
    }

    public C15598d l(int i10, float f10) {
        this.f118822b[i10] = f10;
        return this;
    }

    public C15598d m(float f10) {
        return k(TypedValue.applyDimension(1, f10, this.f118821a));
    }

    public C15598d n(int i10, float f10) {
        return l(i10, TypedValue.applyDimension(1, f10, this.f118821a));
    }

    public C15598d o(boolean z10) {
        this.f118823c = z10;
        return this;
    }

    public C15598d p(ImageView.ScaleType scaleType) {
        this.f118826f = scaleType;
        return this;
    }
}
