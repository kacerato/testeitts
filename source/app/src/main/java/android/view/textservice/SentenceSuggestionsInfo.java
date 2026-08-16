package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/textservice/SentenceSuggestionsInfo.class
 */
public final class SentenceSuggestionsInfo implements Parcelable {
    public static final Parcelable.Creator<SentenceSuggestionsInfo> CREATOR = null;

    public SentenceSuggestionsInfo(SuggestionsInfo[] suggestionsInfos, int[] offsets, int[] lengths) {
        throw new RuntimeException("Stub!");
    }

    public SentenceSuggestionsInfo(Parcel source) {
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

    public int getSuggestionsCount() {
        throw new RuntimeException("Stub!");
    }

    public SuggestionsInfo getSuggestionsInfoAt(int i10) {
        throw new RuntimeException("Stub!");
    }

    public int getOffsetAt(int i10) {
        throw new RuntimeException("Stub!");
    }

    public int getLengthAt(int i10) {
        throw new RuntimeException("Stub!");
    }
}
