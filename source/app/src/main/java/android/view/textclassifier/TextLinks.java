package android.view.textclassifier;

import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spannable;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.textclassifier.TextClassifier;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.Collection;
import java.util.Map;
import java.util.function.Function;

public final class TextLinks implements Parcelable {
    public static final int APPLY_STRATEGY_IGNORE = 0;
    public static final int APPLY_STRATEGY_REPLACE = 1;
    public static final Parcelable.Creator<TextLinks> CREATOR = null;
    public static final int STATUS_DIFFERENT_TEXT = 3;
    public static final int STATUS_LINKS_APPLIED = 0;
    public static final int STATUS_NO_LINKS_APPLIED = 2;
    public static final int STATUS_NO_LINKS_FOUND = 1;

    TextLinks(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Collection<TextLink> getLinks() {
        throw new RuntimeException("Stub!");
    }

    public int apply(@RecentlyNonNull Spannable text, int applyStrategy, @RecentlyNullable Function<TextLink, TextLinkSpan> spanFactory) {
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

    public static final class Builder {
        public Builder(@RecentlyNonNull String fullText) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder addLink(int start, int end, Map<String, Float> entityScores) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder clearTextLinks() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public TextLinks build() {
            throw new RuntimeException("Stub!");
        }
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

        @RecentlyNullable
        public LocaleList getDefaultLocales() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public TextClassifier.EntityConfig getEntityConfig() {
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
            public Builder(@RecentlyNonNull CharSequence text) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setDefaultLocales(@RecentlyNullable LocaleList defaultLocales) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setEntityConfig(@RecentlyNullable TextClassifier.EntityConfig entityConfig) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Request build() {
                throw new RuntimeException("Stub!");
            }
        }
    }

    public static final class TextLink implements Parcelable {
        public static final Parcelable.Creator<TextLink> CREATOR = null;

        TextLink(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public int getStart() {
            throw new RuntimeException("Stub!");
        }

        public int getEnd() {
            throw new RuntimeException("Stub!");
        }

        public int getEntityCount() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public String getEntity(int index) {
            throw new RuntimeException("Stub!");
        }

        public float getConfidenceScore(String entityType) {
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

    public static class TextLinkSpan extends ClickableSpan {
        public TextLinkSpan(@RecentlyNonNull TextLink textLink) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onClick(View widget) {
            throw new RuntimeException("Stub!");
        }

        public final TextLink getTextLink() {
            throw new RuntimeException("Stub!");
        }
    }
}
