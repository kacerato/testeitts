package android.os;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/PatternMatcher.class
 */
public class PatternMatcher implements Parcelable {
    public static final Parcelable.Creator<PatternMatcher> CREATOR = null;
    public static final int PATTERN_ADVANCED_GLOB = 3;
    public static final int PATTERN_LITERAL = 0;
    public static final int PATTERN_PREFIX = 1;
    public static final int PATTERN_SIMPLE_GLOB = 2;

    public PatternMatcher(String pattern, int type) {
        throw new RuntimeException("Stub!");
    }

    public PatternMatcher(Parcel src) {
        throw new RuntimeException("Stub!");
    }

    public final String getPath() {
        throw new RuntimeException("Stub!");
    }

    public final int getType() {
        throw new RuntimeException("Stub!");
    }

    public boolean match(String str) {
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
