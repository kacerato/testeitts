package android.content;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ClipDescription.class
 */
public class ClipDescription implements Parcelable {
    public static final Parcelable.Creator<ClipDescription> CREATOR = null;
    public static final String MIMETYPE_TEXT_HTML = "text/html";
    public static final String MIMETYPE_TEXT_INTENT = "text/vnd.android.intent";
    public static final String MIMETYPE_TEXT_PLAIN = "text/plain";
    public static final String MIMETYPE_TEXT_URILIST = "text/uri-list";

    public ClipDescription(CharSequence label, String[] mimeTypes) {
        throw new RuntimeException("Stub!");
    }

    public ClipDescription(ClipDescription o10) {
        throw new RuntimeException("Stub!");
    }

    public static boolean compareMimeTypes(String concreteType, String desiredType) {
        throw new RuntimeException("Stub!");
    }

    public long getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasMimeType(String mimeType) {
        throw new RuntimeException("Stub!");
    }

    public String[] filterMimeTypes(String mimeType) {
        throw new RuntimeException("Stub!");
    }

    public int getMimeTypeCount() {
        throw new RuntimeException("Stub!");
    }

    public String getMimeType(int index) {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public void setExtras(PersistableBundle extras) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
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
}
