package android.se.omapi;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.io.IOException;

public final class Session {
    Session() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Reader getReader() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public byte[] getATR() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClosed() {
        throw new RuntimeException("Stub!");
    }

    public void closeChannels() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Channel openBasicChannel(@RecentlyNullable byte[] aid, @RecentlyNullable byte p22) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Channel openBasicChannel(@RecentlyNullable byte[] aid) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Channel openLogicalChannel(@RecentlyNullable byte[] aid, @RecentlyNullable byte p22) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Channel openLogicalChannel(@RecentlyNullable byte[] aid) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
