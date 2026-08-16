package android.content.res;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/ColorStateList.class
 */
public class ColorStateList implements Parcelable {
    public static final Parcelable.Creator<ColorStateList> CREATOR = null;

    public ColorStateList(int[][] states, int[] colors) {
        throw new RuntimeException("Stub!");
    }

    public static ColorStateList valueOf(int color) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static ColorStateList createFromXml(Resources r10, XmlPullParser parser) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public static ColorStateList createFromXml(Resources r10, XmlPullParser parser, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList withAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    public int getChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    public int getColorForState(int[] stateSet, int defaultColor) {
        throw new RuntimeException("Stub!");
    }

    public int getDefaultColor() {
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
