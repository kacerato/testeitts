package android.view.textclassifier;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class SelectionEvent implements Parcelable {
    public static final int ACTION_ABANDON = 107;
    public static final int ACTION_COPY = 101;
    public static final int ACTION_CUT = 103;
    public static final int ACTION_DRAG = 106;
    public static final int ACTION_OTHER = 108;
    public static final int ACTION_OVERTYPE = 100;
    public static final int ACTION_PASTE = 102;
    public static final int ACTION_RESET = 201;
    public static final int ACTION_SELECT_ALL = 200;
    public static final int ACTION_SHARE = 104;
    public static final int ACTION_SMART_SHARE = 105;
    public static final Parcelable.Creator<SelectionEvent> CREATOR = null;
    public static final int EVENT_AUTO_SELECTION = 5;
    public static final int EVENT_SELECTION_MODIFIED = 2;
    public static final int EVENT_SELECTION_STARTED = 1;
    public static final int EVENT_SMART_SELECTION_MULTI = 4;
    public static final int EVENT_SMART_SELECTION_SINGLE = 3;
    public static final int INVOCATION_LINK = 2;
    public static final int INVOCATION_MANUAL = 1;
    public static final int INVOCATION_UNKNOWN = 0;

    SelectionEvent(Parcel in2) {
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

    @RecentlyNonNull
    public static SelectionEvent createSelectionStartedEvent(int invocationMethod, int start) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SelectionEvent createSelectionModifiedEvent(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SelectionEvent createSelectionModifiedEvent(int start, int end, @RecentlyNonNull TextClassification classification) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SelectionEvent createSelectionModifiedEvent(int start, int end, @RecentlyNonNull TextSelection selection) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SelectionEvent createSelectionActionEvent(int start, int end, int actionType) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static SelectionEvent createSelectionActionEvent(int start, int end, int actionType, @RecentlyNonNull TextClassification classification) {
        throw new RuntimeException("Stub!");
    }

    public int getEventType() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getEntityType() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getWidgetType() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getWidgetVersion() {
        throw new RuntimeException("Stub!");
    }

    public int getInvocationMethod() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getResultId() {
        throw new RuntimeException("Stub!");
    }

    public long getEventTime() {
        throw new RuntimeException("Stub!");
    }

    public long getDurationSinceSessionStart() {
        throw new RuntimeException("Stub!");
    }

    public long getDurationSincePreviousEvent() {
        throw new RuntimeException("Stub!");
    }

    public int getEventIndex() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public TextClassificationSessionId getSessionId() {
        throw new RuntimeException("Stub!");
    }

    public int getStart() {
        throw new RuntimeException("Stub!");
    }

    public int getEnd() {
        throw new RuntimeException("Stub!");
    }

    public int getSmartStart() {
        throw new RuntimeException("Stub!");
    }

    public int getSmartEnd() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isTerminal(int eventType) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
