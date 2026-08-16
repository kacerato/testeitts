package android.view.textclassifier;

import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textclassifier/TextClassifier.class
 */
public interface TextClassifier {
    public static final TextClassifier NO_OP = null;
    public static final String TYPE_ADDRESS = "address";
    public static final String TYPE_EMAIL = "email";
    public static final String TYPE_OTHER = "other";
    public static final String TYPE_PHONE = "phone";
    public static final String TYPE_URL = "url";

    TextSelection suggestSelection(CharSequence charSequence, int i10, int i11, LocaleList localeList);

    TextClassification classifyText(CharSequence charSequence, int i10, int i11, LocaleList localeList);

    public static final class EntityConfig implements Parcelable {
        public static final Parcelable.Creator<EntityConfig> CREATOR = null;

        EntityConfig(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public static EntityConfig createWithHints(@RecentlyNullable Collection<String> hints) {
            throw new RuntimeException("Stub!");
        }

        public static EntityConfig create(@RecentlyNullable Collection<String> hints, @RecentlyNullable Collection<String> includedEntityTypes, @RecentlyNullable Collection<String> excludedEntityTypes) {
            throw new RuntimeException("Stub!");
        }

        public static EntityConfig createWithExplicitEntityList(@RecentlyNullable Collection<String> entityTypes) {
            throw new RuntimeException("Stub!");
        }

        public Collection<String> resolveEntityListModifications(@RecentlyNonNull Collection<String> entities) {
            throw new RuntimeException("Stub!");
        }

        public Collection<String> getHints() {
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
}
