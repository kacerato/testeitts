package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/QuoteSpan.class
 */
public class QuoteSpan implements LeadingMarginSpan, ParcelableSpan {
    public QuoteSpan() {
        throw new RuntimeException("Stub!");
    }

    public QuoteSpan(int color) {
        throw new RuntimeException("Stub!");
    }

    public QuoteSpan(Parcel src) {
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

    public int getColor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLeadingMargin(boolean first) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawLeadingMargin(Canvas c10, Paint p10, int x10, int dir, int top, int baseline, int bottom, CharSequence text, int start, int end, boolean first, Layout layout) {
        throw new RuntimeException("Stub!");
    }
}
