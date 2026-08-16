package android.text.method;

import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/TransformationMethod.class
 */
public interface TransformationMethod {
    CharSequence getTransformation(CharSequence charSequence, View view);

    void onFocusChanged(View view, CharSequence charSequence, boolean z10, int i10, Rect rect);
}
