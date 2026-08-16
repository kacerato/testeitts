package android.service.quicksettings;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/quicksettings/Tile.class
 */
public final class Tile implements Parcelable {
    public static final Parcelable.Creator<Tile> CREATOR = null;
    public static final int STATE_ACTIVE = 2;
    public static final int STATE_INACTIVE = 1;
    public static final int STATE_UNAVAILABLE = 0;

    Tile() {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public void setState(int state) {
        throw new RuntimeException("Stub!");
    }

    public Icon getIcon() {
        throw new RuntimeException("Stub!");
    }

    public void setIcon(Icon icon) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public void setLabel(CharSequence label) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getContentDescription() {
        throw new RuntimeException("Stub!");
    }

    public void setContentDescription(CharSequence contentDescription) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public void updateTile() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
