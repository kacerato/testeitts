package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/FillEventHistory.class
 */
public final class FillEventHistory implements Parcelable {
    public static final Parcelable.Creator<FillEventHistory> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/FillEventHistory$Event.class
 */
    public static final class Event {
        public static final int TYPE_AUTHENTICATION_SELECTED = 2;
        public static final int TYPE_DATASET_AUTHENTICATION_SELECTED = 1;
        public static final int TYPE_DATASET_SELECTED = 0;
        public static final int TYPE_SAVE_SHOWN = 3;

        Event() {
            throw new RuntimeException("Stub!");
        }

        public int getType() {
            throw new RuntimeException("Stub!");
        }

        public String getDatasetId() {
            throw new RuntimeException("Stub!");
        }
    }

    FillEventHistory() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getClientState() {
        throw new RuntimeException("Stub!");
    }

    public List<Event> getEvents() {
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
