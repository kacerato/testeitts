package android.text.style;

import android.os.LocaleList;
import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LocaleSpan.class
 */
public class LocaleSpan extends MetricAffectingSpan implements ParcelableSpan {
    public LocaleSpan(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public LocaleSpan(LocaleList locales) {
        throw new RuntimeException("Stub!");
    }

    public LocaleSpan(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanTypeId() {
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

    public Locale getLocale() {
        throw new RuntimeException("Stub!");
    }

    public LocaleList getLocales() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateMeasureState(TextPaint paint) {
        throw new RuntimeException("Stub!");
    }
}
