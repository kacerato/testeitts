package android.print;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintJobInfo.class
 */
public final class PrintJobInfo implements Parcelable {
    public static final Parcelable.Creator<PrintJobInfo> CREATOR = null;
    public static final int STATE_BLOCKED = 4;
    public static final int STATE_CANCELED = 7;
    public static final int STATE_COMPLETED = 5;
    public static final int STATE_CREATED = 1;
    public static final int STATE_FAILED = 6;
    public static final int STATE_QUEUED = 2;
    public static final int STATE_STARTED = 3;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintJobInfo$Builder.class
 */
    public static final class Builder {
        public Builder(PrintJobInfo prototype) {
            throw new RuntimeException("Stub!");
        }

        public void setCopies(int copies) {
            throw new RuntimeException("Stub!");
        }

        public void setAttributes(PrintAttributes attributes) {
            throw new RuntimeException("Stub!");
        }

        public void setPages(PageRange[] pages) {
            throw new RuntimeException("Stub!");
        }

        public void putAdvancedOption(String key, String value) {
            throw new RuntimeException("Stub!");
        }

        public void putAdvancedOption(String key, int value) {
            throw new RuntimeException("Stub!");
        }

        public PrintJobInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    PrintJobInfo() {
        throw new RuntimeException("Stub!");
    }

    public PrintJobId getId() {
        throw new RuntimeException("Stub!");
    }

    public String getLabel() {
        throw new RuntimeException("Stub!");
    }

    public PrinterId getPrinterId() {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public long getCreationTime() {
        throw new RuntimeException("Stub!");
    }

    public int getCopies() {
        throw new RuntimeException("Stub!");
    }

    public PageRange[] getPages() {
        throw new RuntimeException("Stub!");
    }

    public PrintAttributes getAttributes() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasAdvancedOption(String key) {
        throw new RuntimeException("Stub!");
    }

    public String getAdvancedStringOption(String key) {
        throw new RuntimeException("Stub!");
    }

    public int getAdvancedIntOption(String key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
