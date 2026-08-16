package Rd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@Deprecated
public class q implements a {

    public final RenderScript f22743b;

    public final ScriptIntrinsicBlur f22744c;

    public Allocation f22745d;

    public final Paint f22742a = new Paint(2);

    public int f22746e = -1;

    public int f22747f = -1;

    @RequiresApi(api = 17)
    public q(@NonNull Context context) {
        RenderScript create = RenderScript.create(context);
        this.f22743b = create;
        this.f22744c = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
    }

    @Override
    @NonNull
    public Bitmap.Config a() {
        return Bitmap.Config.ARGB_8888;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public float c() {
        return 6.0f;
    }

    @Override
    public void d(@NonNull Canvas canvas, @NonNull Bitmap bitmap) {
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f22742a);
    }

    @Override
    public final void destroy() {
        this.f22744c.destroy();
        this.f22743b.destroy();
        Allocation allocation = this.f22745d;
        if (allocation != null) {
            allocation.destroy();
        }
    }

    @Override
    @RequiresApi(api = 17)
    public Bitmap e(@NonNull Bitmap bitmap, float f10) {
        Allocation createFromBitmap = Allocation.createFromBitmap(this.f22743b, bitmap);
        if (!f(bitmap)) {
            Allocation allocation = this.f22745d;
            if (allocation != null) {
                allocation.destroy();
            }
            this.f22745d = Allocation.createTyped(this.f22743b, createFromBitmap.getType());
            this.f22746e = bitmap.getWidth();
            this.f22747f = bitmap.getHeight();
        }
        this.f22744c.setRadius(f10);
        this.f22744c.setInput(createFromBitmap);
        this.f22744c.forEach(this.f22745d);
        this.f22745d.copyTo(bitmap);
        createFromBitmap.destroy();
        return bitmap;
    }

    public final boolean f(@NonNull Bitmap bitmap) {
        return bitmap.getHeight() == this.f22747f && bitmap.getWidth() == this.f22746e;
    }
}
