package android.view.inputmethod;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/CursorAnchorInfo.class
 */
public final class CursorAnchorInfo implements Parcelable {
    public static final Parcelable.Creator<CursorAnchorInfo> CREATOR = null;
    public static final int FLAG_HAS_INVISIBLE_REGION = 2;
    public static final int FLAG_HAS_VISIBLE_REGION = 1;
    public static final int FLAG_IS_RTL = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/CursorAnchorInfo$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setSelectionRange(int newStart, int newEnd) {
            throw new RuntimeException("Stub!");
        }

        public Builder setComposingText(int composingTextStart, CharSequence composingText) {
            throw new RuntimeException("Stub!");
        }

        public Builder setInsertionMarkerLocation(float horizontalPosition, float lineTop, float lineBaseline, float lineBottom, int flags) {
            throw new RuntimeException("Stub!");
        }

        public Builder addCharacterBounds(int index, float left, float top, float right, float bottom, int flags) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMatrix(Matrix matrix) {
            throw new RuntimeException("Stub!");
        }

        public CursorAnchorInfo build() {
            throw new RuntimeException("Stub!");
        }

        public void reset() {
            throw new RuntimeException("Stub!");
        }
    }

    public CursorAnchorInfo(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int getSelectionStart() {
        throw new RuntimeException("Stub!");
    }

    public int getSelectionEnd() {
        throw new RuntimeException("Stub!");
    }

    public int getComposingTextStart() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getComposingText() {
        throw new RuntimeException("Stub!");
    }

    public int getInsertionMarkerFlags() {
        throw new RuntimeException("Stub!");
    }

    public float getInsertionMarkerHorizontal() {
        throw new RuntimeException("Stub!");
    }

    public float getInsertionMarkerTop() {
        throw new RuntimeException("Stub!");
    }

    public float getInsertionMarkerBaseline() {
        throw new RuntimeException("Stub!");
    }

    public float getInsertionMarkerBottom() {
        throw new RuntimeException("Stub!");
    }

    public RectF getCharacterBounds(int index) {
        throw new RuntimeException("Stub!");
    }

    public int getCharacterBoundsFlags(int index) {
        throw new RuntimeException("Stub!");
    }

    public Matrix getMatrix() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
