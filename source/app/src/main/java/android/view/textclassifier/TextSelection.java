package android.view.textclassifier;

import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textclassifier/TextSelection.class
 */
public final class TextSelection {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textclassifier/TextSelection$Builder.class
 */
    public static final class Builder {
        public Builder(int startIndex, int endIndex) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEntityType(String type, float confidenceScore) {
            throw new RuntimeException("Stub!");
        }

        public TextSelection build() {
            throw new RuntimeException("Stub!");
        }
    }

    TextSelection() {
        throw new RuntimeException("Stub!");
    }

    public int getSelectionStartIndex() {
        throw new RuntimeException("Stub!");
    }

    public int getSelectionEndIndex() {
        throw new RuntimeException("Stub!");
    }

    public int getEntityCount() {
        throw new RuntimeException("Stub!");
    }

    public String getEntity(int index) {
        throw new RuntimeException("Stub!");
    }

    public float getConfidenceScore(String entity) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static final class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = null;

        Request(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public CharSequence getText() {
            throw new RuntimeException("Stub!");
        }

        public int getStartIndex() {
            throw new RuntimeException("Stub!");
        }

        public int getEndIndex() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public LocaleList getDefaultLocales() {
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

        public static final class Builder {
            public Builder(@RecentlyNonNull CharSequence text, int startIndex, int endIndex) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setDefaultLocales(@RecentlyNullable LocaleList defaultLocales) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Request build() {
                throw new RuntimeException("Stub!");
            }
        }
    }
}
