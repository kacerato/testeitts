package android.net;

import android.content.Context;
import android.net.IpSecManager;
import androidx.annotation.RecentlyNonNull;
import java.io.IOException;
import java.net.InetAddress;

public final class IpSecTransform implements AutoCloseable {
    IpSecTransform() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static class Builder {
        public Builder(@RecentlyNonNull Context context) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setEncryption(@RecentlyNonNull IpSecAlgorithm algo) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setAuthentication(@RecentlyNonNull IpSecAlgorithm algo) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setAuthenticatedEncryption(@RecentlyNonNull IpSecAlgorithm algo) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setIpv4Encapsulation(@RecentlyNonNull IpSecManager.UdpEncapsulationSocket localSocket, int remotePort) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public IpSecTransform buildTransportModeTransform(@RecentlyNonNull InetAddress sourceAddress, @RecentlyNonNull IpSecManager.SecurityParameterIndex spi) throws IOException, IpSecManager.ResourceUnavailableException, IpSecManager.SpiUnavailableException {
            throw new RuntimeException("Stub!");
        }
    }
}
