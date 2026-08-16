package android.view.textclassifier;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.time.ZonedDateTime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textclassifier/TextClassification.class
 */
public final class TextClassification {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textclassifier/TextClassification$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setText(String text) {
            throw new RuntimeException("Stub!");
        }

        public Builder setEntityType(String type, float confidenceScore) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIcon(Drawable icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLabel(String label) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIntent(Intent intent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOnClickListener(View.OnClickListener onClickListener) {
            throw new RuntimeException("Stub!");
        }

        public TextClassification build() {
            throw new RuntimeException("Stub!");
        }
    }

    TextClassification() {
        throw new RuntimeException("Stub!");
    }

    public String getText() {
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

    public Drawable getIcon() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public Intent getIntent() {
        throw new RuntimeException("Stub!");
    }

    public View.OnClickListener getOnClickListener() {
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

        @RecentlyNullable
        public ZonedDateTime getReferenceTime() {
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
            public Builder setReferenceTime(@RecentlyNullable ZonedDateTime referenceTime) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Request build() {
                throw new RuntimeException("Stub!");
            }
        }
    }
}
