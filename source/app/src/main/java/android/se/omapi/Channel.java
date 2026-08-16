package android.se.omapi;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.io.IOException;

public final class Channel implements java.nio.channels.Channel {
    Channel() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isOpen() {
        throw new RuntimeException("Stub!");
    }

    public boolean isBasicChannel() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public byte[] transmit(@RecentlyNonNull byte[] command) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Session getSession() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public byte[] getSelectResponse() {
        throw new RuntimeException("Stub!");
    }

    public boolean selectNext() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
