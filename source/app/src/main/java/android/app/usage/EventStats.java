package android.app.usage;

import android.os.Parcel;
import android.os.Parcelable;

public final class EventStats implements Parcelable {
    public static final Parcelable.Creator<EventStats> CREATOR = null;

    public EventStats(EventStats stats) {
        throw new RuntimeException("Stub!");
    }

    public int getEventType() {
        throw new RuntimeException("Stub!");
    }

    public long getFirstTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public long getLastTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public long getLastEventTime() {
        throw new RuntimeException("Stub!");
    }

    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    public long getTotalTime() {
        throw new RuntimeException("Stub!");
    }

    public void add(EventStats right) {
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
