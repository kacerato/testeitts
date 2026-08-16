package android.text.style;

import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/AlignmentSpan.class
 */
public interface AlignmentSpan extends ParagraphStyle {
    Layout.Alignment getAlignment();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/AlignmentSpan$Standard.class
 */
    public static class Standard implements AlignmentSpan, ParcelableSpan {
        public Standard(Layout.Alignment align) {
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
        public Layout.Alignment getAlignment() {
            throw new RuntimeException("Stub!");
        }
    }
}
