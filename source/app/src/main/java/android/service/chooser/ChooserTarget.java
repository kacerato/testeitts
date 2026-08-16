package android.service.chooser;

import android.content.ComponentName;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/chooser/ChooserTarget.class
 */
public final class ChooserTarget implements Parcelable {
    public static final Parcelable.Creator<ChooserTarget> CREATOR = null;

    public ChooserTarget(CharSequence title, Icon icon, float score, ComponentName componentName, Bundle intentExtras) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTitle() {
        throw new RuntimeException("Stub!");
    }

    public Icon getIcon() {
        throw new RuntimeException("Stub!");
    }

    public float getScore() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getComponentName() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getIntentExtras() {
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
