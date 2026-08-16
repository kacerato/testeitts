package android.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.DrawableContainer;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/AnimationDrawable.class
 */
public class AnimationDrawable extends DrawableContainer implements Runnable, Animatable {
    public AnimationDrawable() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setVisible(boolean visible, boolean restart) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void stop() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isRunning() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void run() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unscheduleSelf(Runnable what) {
        throw new RuntimeException("Stub!");
    }

    public int getNumberOfFrames() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getFrame(int index) {
        throw new RuntimeException("Stub!");
    }

    public int getDuration(int i10) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOneShot() {
        throw new RuntimeException("Stub!");
    }

    public void setOneShot(boolean oneShot) {
        throw new RuntimeException("Stub!");
    }

    public void addFrame(Drawable frame, int duration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable mutate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setConstantState(DrawableContainer.DrawableContainerState state) {
        throw new RuntimeException("Stub!");
    }
}
