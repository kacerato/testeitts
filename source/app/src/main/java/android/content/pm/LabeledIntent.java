package android.content.pm;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/LabeledIntent.class
 */
public class LabeledIntent extends Intent {
    public static final Parcelable.Creator<LabeledIntent> CREATOR = null;

    public LabeledIntent(Intent origIntent, String sourcePackage, int labelRes, int icon) {
        throw new RuntimeException("Stub!");
    }

    public LabeledIntent(Intent origIntent, String sourcePackage, CharSequence nonLocalizedLabel, int icon) {
        throw new RuntimeException("Stub!");
    }

    public LabeledIntent(String sourcePackage, int labelRes, int icon) {
        throw new RuntimeException("Stub!");
    }

    public LabeledIntent(String sourcePackage, CharSequence nonLocalizedLabel, int icon) {
        throw new RuntimeException("Stub!");
    }

    public String getSourcePackage() {
        throw new RuntimeException("Stub!");
    }

    public int getLabelResource() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getNonLocalizedLabel() {
        throw new RuntimeException("Stub!");
    }

    public int getIconResource() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadLabel(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadIcon(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void readFromParcel(Parcel in2) {
        throw new RuntimeException("Stub!");
    }
}
