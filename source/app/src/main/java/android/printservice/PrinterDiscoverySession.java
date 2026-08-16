package android.printservice;

import android.os.CancellationSignal;
import android.print.PrinterId;
import android.print.PrinterInfo;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/printservice/PrinterDiscoverySession.class
 */
public abstract class PrinterDiscoverySession {
    public abstract void onStartPrinterDiscovery(List<PrinterId> list);

    public abstract void onStopPrinterDiscovery();

    public abstract void onValidatePrinters(List<PrinterId> list);

    public abstract void onStartPrinterStateTracking(PrinterId printerId);

    public abstract void onStopPrinterStateTracking(PrinterId printerId);

    public abstract void onDestroy();

    public PrinterDiscoverySession() {
        throw new RuntimeException("Stub!");
    }

    public final List<PrinterInfo> getPrinters() {
        throw new RuntimeException("Stub!");
    }

    public final void addPrinters(List<PrinterInfo> printers) {
        throw new RuntimeException("Stub!");
    }

    public final void removePrinters(List<PrinterId> printerIds) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestCustomPrinterIcon(PrinterId printerId, CancellationSignal cancellationSignal, CustomPrinterIconCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public final List<PrinterId> getTrackedPrinters() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isDestroyed() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isPrinterDiscoveryStarted() {
        throw new RuntimeException("Stub!");
    }
}
