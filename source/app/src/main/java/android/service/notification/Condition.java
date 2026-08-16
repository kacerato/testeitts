package android.service.notification;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/notification/Condition.class
 */
public final class Condition implements Parcelable {
    public static final Parcelable.Creator<Condition> CREATOR = null;
    public static final int FLAG_RELEVANT_ALWAYS = 2;
    public static final int FLAG_RELEVANT_NOW = 1;
    public static final String SCHEME = "condition";
    public static final int STATE_ERROR = 3;
    public static final int STATE_FALSE = 0;
    public static final int STATE_TRUE = 1;
    public static final int STATE_UNKNOWN = 2;
    public final int flags;
    public final int icon;

    public final Uri f32495id;
    public final String line1;
    public final String line2;
    public final int state;
    public final String summary;

    public Condition(Uri id2, String summary, int state) {
        throw new RuntimeException("Stub!");
    }

    public Condition(Uri id2, String summary, String line1, String line2, int icon, int state, int flags) {
        throw new RuntimeException("Stub!");
    }

    public Condition(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static String stateToString(int state) {
        throw new RuntimeException("Stub!");
    }

    public static String relevanceToString(int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public Condition copy() {
        throw new RuntimeException("Stub!");
    }

    public static Uri.Builder newId(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isValidId(Uri id2, String pkg) {
        throw new RuntimeException("Stub!");
    }
}
