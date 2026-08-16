package android.view.inputmethod;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/ExtractedTextRequest.class
 */
public class ExtractedTextRequest implements Parcelable {
    public static final Parcelable.Creator<ExtractedTextRequest> CREATOR = null;
    public int flags;
    public int hintMaxChars;
    public int hintMaxLines;
    public int token;

    public ExtractedTextRequest() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
