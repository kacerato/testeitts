package android.content;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.util.AndroidException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/IntentSender.class
 */
public class IntentSender implements Parcelable {
    public static final Parcelable.Creator<IntentSender> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/IntentSender$OnFinished.class
 */
    public interface OnFinished {
        void onSendFinished(IntentSender intentSender, Intent intent, int i10, String str, Bundle bundle);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/IntentSender$SendIntentException.class
 */
    public static class SendIntentException extends AndroidException {
        public SendIntentException() {
            throw new RuntimeException("Stub!");
        }

        public SendIntentException(String name) {
            throw new RuntimeException("Stub!");
        }

        public SendIntentException(Exception cause) {
            throw new RuntimeException("Stub!");
        }
    }

    IntentSender() {
        throw new RuntimeException("Stub!");
    }

    public void sendIntent(Context context, int code, Intent intent, OnFinished onFinished, Handler handler) throws SendIntentException {
        throw new RuntimeException("Stub!");
    }

    public void sendIntent(Context context, int code, Intent intent, OnFinished onFinished, Handler handler, String requiredPermission) throws SendIntentException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getTargetPackage() {
        throw new RuntimeException("Stub!");
    }

    public String getCreatorPackage() {
        throw new RuntimeException("Stub!");
    }

    public int getCreatorUid() {
        throw new RuntimeException("Stub!");
    }

    public UserHandle getCreatorUserHandle() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object otherObj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
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
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public static void writeIntentSenderOrNullToParcel(IntentSender sender, Parcel out) {
        throw new RuntimeException("Stub!");
    }

    public static IntentSender readIntentSenderOrNullFromParcel(Parcel in2) {
        throw new RuntimeException("Stub!");
    }
}
