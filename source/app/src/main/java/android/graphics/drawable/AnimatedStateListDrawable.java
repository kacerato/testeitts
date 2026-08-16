package android.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.DrawableContainer;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/AnimatedStateListDrawable.class
 */
public class AnimatedStateListDrawable extends StateListDrawable {
    public AnimatedStateListDrawable() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setVisible(boolean visible, boolean restart) {
        throw new RuntimeException("Stub!");
    }

    public void addState(int[] stateSet, Drawable drawable, int id2) {
        throw new RuntimeException("Stub!");
    }

    public <T extends Drawable & Animatable> void addTransition(int fromId, int toId, T transition, boolean reversible) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onStateChange(int[] stateSet) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
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
