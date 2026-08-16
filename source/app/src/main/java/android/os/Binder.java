package android.os;

import android.os.IBinder;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Binder.class
 */
public class Binder implements IBinder {
    public static final native int getCallingPid();

    public static final native int getCallingUid();

    public static final native long clearCallingIdentity();

    public static final native void restoreCallingIdentity(long j10);

    public static final native void flushPendingCommands();

    public static final native void joinThreadPool();

    public Binder() {
        throw new RuntimeException("Stub!");
    }

    public static final UserHandle getCallingUserHandle() {
        throw new RuntimeException("Stub!");
    }

    public void attachInterface(IInterface owner, String descriptor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getInterfaceDescriptor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean pingBinder() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isBinderAlive() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IInterface queryLocalInterface(String descriptor) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dump(FileDescriptor fd2, String[] args) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dumpAsync(FileDescriptor fd2, String[] args) {
        throw new RuntimeException("Stub!");
    }

    protected void dump(FileDescriptor fd2, PrintWriter fout, String[] args) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean transact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void linkToDeath(IBinder.DeathRecipient recipient, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean unlinkToDeath(IBinder.DeathRecipient recipient, int flags) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
