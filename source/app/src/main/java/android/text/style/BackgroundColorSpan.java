package android.text.style;

import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/BackgroundColorSpan.class
 */
public class BackgroundColorSpan extends CharacterStyle implements UpdateAppearance, ParcelableSpan {
    public BackgroundColorSpan(int color) {
        throw new RuntimeException("Stub!");
    }

    public BackgroundColorSpan(Parcel src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanTypeId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public int getBackgroundColor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }
}
