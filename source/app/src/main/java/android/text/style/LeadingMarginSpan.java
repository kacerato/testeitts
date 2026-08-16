package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LeadingMarginSpan.class
 */
public interface LeadingMarginSpan extends ParagraphStyle {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LeadingMarginSpan$LeadingMarginSpan2.class
 */
    public interface LeadingMarginSpan2 extends LeadingMarginSpan, WrapTogetherSpan {
        int getLeadingMarginLineCount();
    }

    int getLeadingMargin(boolean z10);

    void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LeadingMarginSpan$Standard.class
 */
    public static class Standard implements LeadingMarginSpan, ParcelableSpan {
        public Standard(int first, int rest) {
            throw new RuntimeException("Stub!");
        }

        public Standard(int every) {
            throw new RuntimeException("Stub!");
        }

        public Standard(Parcel src) {
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

        @Override
        public int getLeadingMargin(boolean first) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void drawLeadingMargin(Canvas c10, Paint p10, int x10, int dir, int top, int baseline, int bottom, CharSequence text, int start, int end, boolean first, Layout layout) {
            throw new RuntimeException("Stub!");
        }
    }
}
