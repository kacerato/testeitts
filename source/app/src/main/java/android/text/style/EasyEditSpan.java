package android.text.style;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.ParcelableSpan;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/EasyEditSpan.class
 */
public class EasyEditSpan implements ParcelableSpan {
    public static final String EXTRA_TEXT_CHANGED_TYPE = "android.text.style.EXTRA_TEXT_CHANGED_TYPE";
    public static final int TEXT_DELETED = 1;
    public static final int TEXT_MODIFIED = 2;

    public EasyEditSpan() {
        throw new RuntimeException("Stub!");
    }

    public EasyEditSpan(PendingIntent pendingIntent) {
        throw new RuntimeException("Stub!");
    }

    public EasyEditSpan(Parcel source) {
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
    public int getSpanTypeId() {
        throw new RuntimeException("Stub!");
    }
}
