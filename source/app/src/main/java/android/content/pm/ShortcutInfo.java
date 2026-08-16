package android.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.UserHandle;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ShortcutInfo.class
 */
public final class ShortcutInfo implements Parcelable {
    public static final Parcelable.Creator<ShortcutInfo> CREATOR = null;
    public static final String SHORTCUT_CATEGORY_CONVERSATION = "android.shortcut.conversation";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ShortcutInfo$Builder.class
 */
    public static class Builder {
        public Builder(Context context, String id2) {
            throw new RuntimeException("Stub!");
        }

        public Builder setActivity(ComponentName activity) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIcon(Icon icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setShortLabel(CharSequence shortLabel) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLongLabel(CharSequence longLabel) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDisabledMessage(CharSequence disabledMessage) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCategories(Set<String> categories) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIntent(Intent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIntents(Intent[] intents) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRank(int rank) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(PersistableBundle extras) {
            throw new RuntimeException("Stub!");
        }

        public ShortcutInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    ShortcutInfo() {
        throw new RuntimeException("Stub!");
    }

    public String getId() {
        throw new RuntimeException("Stub!");
    }

    public String getPackage() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getActivity() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getShortLabel() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLongLabel() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDisabledMessage() {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getCategories() {
        throw new RuntimeException("Stub!");
    }

    public Intent getIntent() {
        throw new RuntimeException("Stub!");
    }

    public Intent[] getIntents() {
        throw new RuntimeException("Stub!");
    }

    public int getRank() {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public UserHandle getUserHandle() {
        throw new RuntimeException("Stub!");
    }

    public long getLastChangedTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDynamic() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPinned() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDeclaredInManifest() {
        throw new RuntimeException("Stub!");
    }

    public boolean isImmutable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasKeyFieldsOnly() {
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

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
