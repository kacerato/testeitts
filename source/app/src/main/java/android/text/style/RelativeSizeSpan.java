package android.text.style;

import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/RelativeSizeSpan.class
 */
public class RelativeSizeSpan extends MetricAffectingSpan implements ParcelableSpan {
    public RelativeSizeSpan(float proportion) {
        throw new RuntimeException("Stub!");
    }

    public RelativeSizeSpan(Parcel src) {
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

    public float getSizeChange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateMeasureState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }
}
