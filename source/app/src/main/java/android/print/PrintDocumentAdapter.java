package android.print;

import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintDocumentAdapter.class
 */
public abstract class PrintDocumentAdapter {
    public static final String EXTRA_PRINT_PREVIEW = "EXTRA_PRINT_PREVIEW";

    public abstract void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle);

    public abstract void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintDocumentAdapter$WriteResultCallback.class
 */
    public static abstract class WriteResultCallback {
        WriteResultCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onWriteFinished(PageRange[] pages) {
            throw new RuntimeException("Stub!");
        }

        public void onWriteFailed(CharSequence error) {
            throw new RuntimeException("Stub!");
        }

        public void onWriteCancelled() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/print/PrintDocumentAdapter$LayoutResultCallback.class
 */
    public static abstract class LayoutResultCallback {
        LayoutResultCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onLayoutFinished(PrintDocumentInfo info, boolean changed) {
            throw new RuntimeException("Stub!");
        }

        public void onLayoutFailed(CharSequence error) {
            throw new RuntimeException("Stub!");
        }

        public void onLayoutCancelled() {
            throw new RuntimeException("Stub!");
        }
    }

    public PrintDocumentAdapter() {
        throw new RuntimeException("Stub!");
    }

    public void onStart() {
        throw new RuntimeException("Stub!");
    }

    public void onFinish() {
        throw new RuntimeException("Stub!");
    }
}
