package android.se.omapi;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.Executor;

public final class SEService {

    public interface OnConnectedListener {
        void onConnected();
    }

    public SEService(@RecentlyNonNull Context context, @RecentlyNonNull Executor executor, @RecentlyNonNull OnConnectedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Reader[] getReaders() {
        throw new RuntimeException("Stub!");
    }

    public void shutdown() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getVersion() {
        throw new RuntimeException("Stub!");
    }
}
