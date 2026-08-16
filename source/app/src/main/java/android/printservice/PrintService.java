package android.printservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.print.PrinterId;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/printservice/PrintService.class
 */
public abstract class PrintService extends Service {
    public static final String EXTRA_CAN_SELECT_PRINTER = "android.printservice.extra.CAN_SELECT_PRINTER";
    public static final String EXTRA_PRINTER_INFO = "android.intent.extra.print.EXTRA_PRINTER_INFO";
    public static final String EXTRA_PRINT_DOCUMENT_INFO = "android.printservice.extra.PRINT_DOCUMENT_INFO";
    public static final String EXTRA_PRINT_JOB_INFO = "android.intent.extra.print.PRINT_JOB_INFO";
    public static final String EXTRA_SELECT_PRINTER = "android.printservice.extra.SELECT_PRINTER";
    public static final String SERVICE_INTERFACE = "android.printservice.PrintService";
    public static final String SERVICE_META_DATA = "android.printservice";

    protected abstract PrinterDiscoverySession onCreatePrinterDiscoverySession();

    protected abstract void onRequestCancelPrintJob(PrintJob printJob);

    protected abstract void onPrintJobQueued(PrintJob printJob);

    public PrintService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void attachBaseContext(Context base) {
        throw new RuntimeException("Stub!");
    }

    protected void onConnected() {
        throw new RuntimeException("Stub!");
    }

    protected void onDisconnected() {
        throw new RuntimeException("Stub!");
    }

    public final List<PrintJob> getActivePrintJobs() {
        throw new RuntimeException("Stub!");
    }

    public final PrinterId generatePrinterId(String localId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
