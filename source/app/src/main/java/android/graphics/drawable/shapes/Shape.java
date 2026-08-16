package android.graphics.drawable.shapes;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/shapes/Shape.class
 */
public abstract class Shape implements Cloneable {
    public abstract void draw(Canvas canvas, Paint paint);

    public Shape() {
        throw new RuntimeException("Stub!");
    }

    public final float getWidth() {
        throw new RuntimeException("Stub!");
    }

    public final float getHeight() {
        throw new RuntimeException("Stub!");
    }

    public final void resize(float width, float height) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasAlpha() {
        throw new RuntimeException("Stub!");
    }

    public void onResize(float width, float height) {
        throw new RuntimeException("Stub!");
    }

    public void getOutline(Outline outline) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Shape mo241clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
