package android.text.style;

import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/CharacterStyle.class
 */
public abstract class CharacterStyle {
    public abstract void updateDrawState(TextPaint textPaint);

    public CharacterStyle() {
        throw new RuntimeException("Stub!");
    }

    public static CharacterStyle wrap(CharacterStyle cs) {
        throw new RuntimeException("Stub!");
    }

    public CharacterStyle getUnderlying() {
        throw new RuntimeException("Stub!");
    }
}
