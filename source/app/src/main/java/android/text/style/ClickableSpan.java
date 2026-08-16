package android.text.style;

import android.text.TextPaint;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/ClickableSpan.class
 */
public abstract class ClickableSpan extends CharacterStyle implements UpdateAppearance {
    public abstract void onClick(View view);

    public ClickableSpan() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }
}
