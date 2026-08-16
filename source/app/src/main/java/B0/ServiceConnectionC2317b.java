package B0;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@C0.a
public class ServiceConnectionC2317b implements ServiceConnection {

    public boolean f1191c = false;

    public final BlockingQueue f1192d = new LinkedBlockingQueue();

    @NonNull
    @C0.a
    public IBinder a() throws InterruptedException {
        G0.A.q("BlockingServiceConnection.getService() called on main thread");
        if (this.f1191c) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f1191c = true;
        return (IBinder) this.f1192d.take();
    }

    @NonNull
    @C0.a
    public IBinder b(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        G0.A.q("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f1191c) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f1191c = true;
        IBinder iBinder = (IBinder) this.f1192d.poll(j10, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.f1192d.add(iBinder);
    }

    @Override
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
    }
}
