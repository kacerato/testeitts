package android.text.style;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.ParcelableSpan;
import android.text.TextPaint;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/SuggestionSpan.class
 */
public class SuggestionSpan extends CharacterStyle implements ParcelableSpan {
    public static final String ACTION_SUGGESTION_PICKED = "android.text.style.SUGGESTION_PICKED";
    public static final Parcelable.Creator<SuggestionSpan> CREATOR = null;
    public static final int FLAG_AUTO_CORRECTION = 4;
    public static final int FLAG_EASY_CORRECT = 1;
    public static final int FLAG_MISSPELLED = 2;
    public static final int SUGGESTIONS_MAX_SIZE = 5;
    public static final String SUGGESTION_SPAN_PICKED_AFTER = "after";
    public static final String SUGGESTION_SPAN_PICKED_BEFORE = "before";
    public static final String SUGGESTION_SPAN_PICKED_HASHCODE = "hashcode";

    public SuggestionSpan(Context context, String[] suggestions, int flags) {
        throw new RuntimeException("Stub!");
    }

    public SuggestionSpan(Locale locale, String[] suggestions, int flags) {
        throw new RuntimeException("Stub!");
    }

    public SuggestionSpan(Context context, Locale locale, String[] suggestions, int flags, Class<?> notificationTargetClass) {
        throw new RuntimeException("Stub!");
    }

    public SuggestionSpan(Parcel src) {
        throw new RuntimeException("Stub!");
    }

    public String[] getSuggestions() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getLocale() {
        throw new RuntimeException("Stub!");
    }

    public Locale getLocaleObject() {
        throw new RuntimeException("Stub!");
    }

    public int getFlags() {
        throw new RuntimeException("Stub!");
    }

    public void setFlags(int flags) {
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

    @Override
    public int getSpanTypeId() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint tp) {
        throw new RuntimeException("Stub!");
    }
}
