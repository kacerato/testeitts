package android.print;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintDocumentInfo.class
 */
public final class PrintDocumentInfo implements Parcelable {
    public static final int CONTENT_TYPE_DOCUMENT = 0;
    public static final int CONTENT_TYPE_PHOTO = 1;
    public static final int CONTENT_TYPE_UNKNOWN = -1;
    public static final Parcelable.Creator<PrintDocumentInfo> CREATOR = null;
    public static final int PAGE_COUNT_UNKNOWN = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintDocumentInfo$Builder.class
 */
    public static final class Builder {
        public Builder(String name) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPageCount(int pageCount) {
            throw new RuntimeException("Stub!");
        }

        public Builder setContentType(int type) {
            throw new RuntimeException("Stub!");
        }

        public PrintDocumentInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    PrintDocumentInfo() {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public int getPageCount() {
        throw new RuntimeException("Stub!");
    }

    public int getContentType() {
        throw new RuntimeException("Stub!");
    }

    public long getDataSize() {
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
