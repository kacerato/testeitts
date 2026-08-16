package android.net;

import java.net.DatagramSocket;
import java.net.Socket;
import java.net.SocketException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/TrafficStats.class
 */
public class TrafficStats {
    public static final int UNSUPPORTED = -1;

    public TrafficStats() {
        throw new RuntimeException("Stub!");
    }

    public static void setThreadStatsTag(int tag) {
        throw new RuntimeException("Stub!");
    }

    public static int getAndSetThreadStatsTag(int tag) {
        throw new RuntimeException("Stub!");
    }

    public static int getThreadStatsTag() {
        throw new RuntimeException("Stub!");
    }

    public static void clearThreadStatsTag() {
        throw new RuntimeException("Stub!");
    }

    public static void tagSocket(Socket socket) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void untagSocket(Socket socket) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void tagDatagramSocket(DatagramSocket socket) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void untagDatagramSocket(DatagramSocket socket) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void incrementOperationCount(int operationCount) {
        throw new RuntimeException("Stub!");
    }

    public static void incrementOperationCount(int tag, int operationCount) {
        throw new RuntimeException("Stub!");
    }

    public static long getMobileTxPackets() {
        throw new RuntimeException("Stub!");
    }

    public static long getMobileRxPackets() {
        throw new RuntimeException("Stub!");
    }

    public static long getMobileTxBytes() {
        throw new RuntimeException("Stub!");
    }

    public static long getMobileRxBytes() {
        throw new RuntimeException("Stub!");
    }

    public static long getTotalTxPackets() {
        throw new RuntimeException("Stub!");
    }

    public static long getTotalRxPackets() {
        throw new RuntimeException("Stub!");
    }

    public static long getTotalTxBytes() {
        throw new RuntimeException("Stub!");
    }

    public static long getTotalRxBytes() {
        throw new RuntimeException("Stub!");
    }

    public static long getUidTxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    public static long getUidRxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    public static long getUidTxPackets(int uid) {
        throw new RuntimeException("Stub!");
    }

    public static long getUidRxPackets(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidTcpTxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidTcpRxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidUdpTxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidUdpRxBytes(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidTcpTxSegments(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidTcpRxSegments(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidUdpTxPackets(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static long getUidUdpRxPackets(int uid) {
        throw new RuntimeException("Stub!");
    }
}
