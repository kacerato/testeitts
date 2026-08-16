package android.se.omapi;

import androidx.annotation.RecentlyNonNull;
import java.io.IOException;

public final class Reader {
    Reader() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getName() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Session openSession() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isSecureElementPresent() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public SEService getSEService() {
        throw new RuntimeException("Stub!");
    }

    public void closeSessions() {
        throw new RuntimeException("Stub!");
    }
}
