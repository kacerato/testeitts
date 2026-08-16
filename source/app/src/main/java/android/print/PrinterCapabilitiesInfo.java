package android.print;

import android.os.Parcel;
import android.os.Parcelable;
import android.print.PrintAttributes;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrinterCapabilitiesInfo.class
 */
public final class PrinterCapabilitiesInfo implements Parcelable {
    public static final Parcelable.Creator<PrinterCapabilitiesInfo> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrinterCapabilitiesInfo$Builder.class
 */
    public static final class Builder {
        public Builder(PrinterId printerId) {
            throw new RuntimeException("Stub!");
        }

        public Builder addMediaSize(PrintAttributes.MediaSize mediaSize, boolean isDefault) {
            throw new RuntimeException("Stub!");
        }

        public Builder addResolution(PrintAttributes.Resolution resolution, boolean isDefault) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMinMargins(PrintAttributes.Margins margins) {
            throw new RuntimeException("Stub!");
        }

        public Builder setColorModes(int colorModes, int defaultColorMode) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDuplexModes(int duplexModes, int defaultDuplexMode) {
            throw new RuntimeException("Stub!");
        }

        public PrinterCapabilitiesInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    PrinterCapabilitiesInfo() {
        throw new RuntimeException("Stub!");
    }

    public List<PrintAttributes.MediaSize> getMediaSizes() {
        throw new RuntimeException("Stub!");
    }

    public List<PrintAttributes.Resolution> getResolutions() {
        throw new RuntimeException("Stub!");
    }

    public PrintAttributes.Margins getMinMargins() {
        throw new RuntimeException("Stub!");
    }

    public int getColorModes() {
        throw new RuntimeException("Stub!");
    }

    public int getDuplexModes() {
        throw new RuntimeException("Stub!");
    }

    public PrintAttributes getDefaults() {
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
