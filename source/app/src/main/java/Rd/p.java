package Rd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(31)
public class p implements a {

    public int f22737b;

    public int f22738c;

    @Nullable
    public a f22740e;

    public Context f22741f;

    public final RenderNode f22736a = o.a("BlurViewNode");

    public float f22739d = 1.0f;

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
        if (canvas.isHardwareAccelerated()) {
            canvas.drawRenderNode(this.f22736a);
            return;
        }
        if (this.f22740e == null) {
            this.f22740e = new q(this.f22741f);
        }
        this.f22740e.e(bitmap, this.f22739d);
        this.f22740e.d(canvas, bitmap);
    }

    @Override
    public void destroy() {
        this.f22736a.discardDisplayList();
        a aVar = this.f22740e;
        if (aVar != null) {
            aVar.destroy();
        }
    }

    @Override
    public Bitmap e(@NonNull Bitmap bitmap, float f10) {
        RecordingCanvas beginRecording;
        RenderEffect createBlurEffect;
        this.f22739d = f10;
        if (bitmap.getHeight() != this.f22737b || bitmap.getWidth() != this.f22738c) {
            this.f22737b = bitmap.getHeight();
            int width = bitmap.getWidth();
            this.f22738c = width;
            this.f22736a.setPosition(0, 0, width, this.f22737b);
        }
        beginRecording = this.f22736a.beginRecording();
        beginRecording.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.f22736a.endRecording();
        RenderNode renderNode = this.f22736a;
        createBlurEffect = RenderEffect.createBlurEffect(f10, f10, Shader.TileMode.MIRROR);
        renderNode.setRenderEffect(createBlurEffect);
        return bitmap;
    }

    public void f(@NonNull Context context) {
        this.f22741f = context;
    }
}
