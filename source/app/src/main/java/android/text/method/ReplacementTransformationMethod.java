package android.text.method;

import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/ReplacementTransformationMethod.class
 */
public abstract class ReplacementTransformationMethod implements TransformationMethod {
    protected abstract char[] getOriginal();

    protected abstract char[] getReplacement();

    public ReplacementTransformationMethod() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getTransformation(CharSequence source, View v10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(View view, CharSequence sourceText, boolean focused, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }
}
