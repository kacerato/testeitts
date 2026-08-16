package android.print;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrinterInfo.class
 */
public final class PrinterInfo implements Parcelable {
    public static final Parcelable.Creator<PrinterInfo> CREATOR = null;
    public static final int STATUS_BUSY = 2;
    public static final int STATUS_IDLE = 1;
    public static final int STATUS_UNAVAILABLE = 3;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrinterInfo$Builder.class
 */
    public static final class Builder {
        public Builder(PrinterId printerId, String name, int status) {
            throw new RuntimeException("Stub!");
        }

        public Builder(PrinterInfo other) {
            throw new RuntimeException("Stub!");
        }

        public Builder setStatus(int status) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIconResourceId(int iconResourceId) {
            throw new RuntimeException("Stub!");
        }

        public Builder setHasCustomPrinterIcon(boolean hasCustomPrinterIcon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setName(String name) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDescription(String description) {
            throw new RuntimeException("Stub!");
        }

        public Builder setInfoIntent(PendingIntent infoIntent) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCapabilities(PrinterCapabilitiesInfo capabilities) {
            throw new RuntimeException("Stub!");
        }

        public PrinterInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    PrinterInfo() {
        throw new RuntimeException("Stub!");
    }

    public PrinterId getId() {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public int getStatus() {
        throw new RuntimeException("Stub!");
    }

    public String getDescription() {
        throw new RuntimeException("Stub!");
    }

    public PrinterCapabilitiesInfo getCapabilities() {
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
