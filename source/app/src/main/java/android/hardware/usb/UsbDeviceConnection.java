package android.hardware.usb;

import java.util.concurrent.TimeoutException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/usb/UsbDeviceConnection.class
 */
public class UsbDeviceConnection {
    UsbDeviceConnection() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    public int getFileDescriptor() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getRawDescriptors() {
        throw new RuntimeException("Stub!");
    }

    public boolean claimInterface(UsbInterface intf, boolean force) {
        throw new RuntimeException("Stub!");
    }

    public boolean releaseInterface(UsbInterface intf) {
        throw new RuntimeException("Stub!");
    }

    public boolean setInterface(UsbInterface intf) {
        throw new RuntimeException("Stub!");
    }

    public boolean setConfiguration(UsbConfiguration configuration) {
        throw new RuntimeException("Stub!");
    }

    public int controlTransfer(int requestType, int request, int value, int index, byte[] buffer, int length, int timeout) {
        throw new RuntimeException("Stub!");
    }

    public int controlTransfer(int requestType, int request, int value, int index, byte[] buffer, int offset, int length, int timeout) {
        throw new RuntimeException("Stub!");
    }

    public int bulkTransfer(UsbEndpoint endpoint, byte[] buffer, int length, int timeout) {
        throw new RuntimeException("Stub!");
    }

    public int bulkTransfer(UsbEndpoint endpoint, byte[] buffer, int offset, int length, int timeout) {
        throw new RuntimeException("Stub!");
    }

    public UsbRequest requestWait() {
        throw new RuntimeException("Stub!");
    }

    public UsbRequest requestWait(long timeout) throws TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public String getSerial() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
