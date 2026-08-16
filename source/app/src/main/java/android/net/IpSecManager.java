package android.net;

import android.util.AndroidException;
import androidx.annotation.RecentlyNonNull;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;

public final class IpSecManager {
    public static final int DIRECTION_IN = 0;
    public static final int DIRECTION_OUT = 1;

    IpSecManager() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public SecurityParameterIndex allocateSecurityParameterIndex(@RecentlyNonNull InetAddress destinationAddress) throws ResourceUnavailableException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public SecurityParameterIndex allocateSecurityParameterIndex(@RecentlyNonNull InetAddress destinationAddress, int requestedSpi) throws ResourceUnavailableException, SpiUnavailableException {
        throw new RuntimeException("Stub!");
    }

    public void applyTransportModeTransform(@RecentlyNonNull Socket socket, int direction, @RecentlyNonNull IpSecTransform transform) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void applyTransportModeTransform(@RecentlyNonNull DatagramSocket socket, int direction, @RecentlyNonNull IpSecTransform transform) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void applyTransportModeTransform(@RecentlyNonNull FileDescriptor socket, int direction, @RecentlyNonNull IpSecTransform transform) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void removeTransportModeTransforms(@RecentlyNonNull Socket socket) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void removeTransportModeTransforms(@RecentlyNonNull DatagramSocket socket) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void removeTransportModeTransforms(@RecentlyNonNull FileDescriptor socket) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public UdpEncapsulationSocket openUdpEncapsulationSocket(int port) throws IOException, ResourceUnavailableException {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public UdpEncapsulationSocket openUdpEncapsulationSocket() throws IOException, ResourceUnavailableException {
        throw new RuntimeException("Stub!");
    }

    public static final class ResourceUnavailableException extends AndroidException {
        ResourceUnavailableException(String msg) {
            throw new RuntimeException("Stub!");
        }
    }

    public static final class SecurityParameterIndex implements AutoCloseable {
        SecurityParameterIndex() {
            throw new RuntimeException("Stub!");
        }

        public int getSpi() {
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
    }

    public static final class SpiUnavailableException extends AndroidException {
        SpiUnavailableException(String msg, int spi) {
            throw new RuntimeException("Stub!");
        }

        public int getSpi() {
            throw new RuntimeException("Stub!");
        }
    }

    public static final class UdpEncapsulationSocket implements AutoCloseable {
        UdpEncapsulationSocket() {
            throw new RuntimeException("Stub!");
        }

        public FileDescriptor getFileDescriptor() {
            throw new RuntimeException("Stub!");
        }

        public int getPort() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void close() throws IOException {
            throw new RuntimeException("Stub!");
        }

        protected void finalize() throws Throwable {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }
}
