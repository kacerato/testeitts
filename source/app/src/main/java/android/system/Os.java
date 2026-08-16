package android.system;

import android.util.MutableInt;
import android.util.MutableLong;
import java.io.FileDescriptor;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/system/Os.class
 */
public final class Os {
    Os() {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor accept(FileDescriptor fd2, InetSocketAddress peerAddress) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static boolean access(String path, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void bind(FileDescriptor fd2, InetAddress address, int port) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void chmod(String path, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void chown(String path, int uid, int gid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void close(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void connect(FileDescriptor fd2, InetAddress address, int port) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor dup(FileDescriptor oldFd) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor dup2(FileDescriptor oldFd, int newFd) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static String[] environ() {
        throw new RuntimeException("Stub!");
    }

    public static void execv(String filename, String[] argv) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void execve(String filename, String[] argv, String[] envp) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void fchmod(FileDescriptor fd2, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void fchown(FileDescriptor fd2, int uid, int gid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void fdatasync(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static StructStat fstat(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static StructStatVfs fstatvfs(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void fsync(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void ftruncate(FileDescriptor fd2, long length) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static String gai_strerror(int error) {
        throw new RuntimeException("Stub!");
    }

    public static int getegid() {
        throw new RuntimeException("Stub!");
    }

    public static int geteuid() {
        throw new RuntimeException("Stub!");
    }

    public static int getgid() {
        throw new RuntimeException("Stub!");
    }

    public static String getenv(String name) {
        throw new RuntimeException("Stub!");
    }

    public static SocketAddress getpeername(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int getpid() {
        throw new RuntimeException("Stub!");
    }

    public static int getppid() {
        throw new RuntimeException("Stub!");
    }

    public static SocketAddress getsockname(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int gettid() {
        throw new RuntimeException("Stub!");
    }

    public static int getuid() {
        throw new RuntimeException("Stub!");
    }

    public static byte[] getxattr(String path, String name) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static String if_indextoname(int index) {
        throw new RuntimeException("Stub!");
    }

    public static int if_nametoindex(String name) {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress inet_pton(int family, String address) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isatty(FileDescriptor fd2) {
        throw new RuntimeException("Stub!");
    }

    public static void kill(int pid, int signal) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void lchown(String path, int uid, int gid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void link(String oldPath, String newPath) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void listen(FileDescriptor fd2, int backlog) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static String[] listxattr(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static long lseek(FileDescriptor fd2, long offset, int whence) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static StructStat lstat(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void mincore(long address, long byteCount, byte[] vector) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void mkdir(String path, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void mkfifo(String path, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void mlock(long address, long byteCount) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static long mmap(long address, long byteCount, int prot, int flags, FileDescriptor fd2, long offset) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void msync(long address, long byteCount, int flags) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void munlock(long address, long byteCount) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void munmap(long address, long byteCount) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor open(String path, int flags, int mode) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor[] pipe() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int poll(StructPollfd[] fds, int timeoutMs) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void posix_fallocate(FileDescriptor fd2, long offset, long length) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int prctl(int option, long arg2, long arg3, long arg4, long arg5) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int pread(FileDescriptor fd2, ByteBuffer buffer, long offset) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int pread(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount, long offset) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int pwrite(FileDescriptor fd2, ByteBuffer buffer, long offset) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int pwrite(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount, long offset) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int read(FileDescriptor fd2, ByteBuffer buffer) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int read(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static String readlink(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int readv(FileDescriptor fd2, Object[] buffers, int[] offsets, int[] byteCounts) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int recvfrom(FileDescriptor fd2, ByteBuffer buffer, int flags, InetSocketAddress srcAddress) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static int recvfrom(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount, int flags, InetSocketAddress srcAddress) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void remove(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void removexattr(String path, String name) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void rename(String oldPath, String newPath) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static long sendfile(FileDescriptor outFd, FileDescriptor inFd, MutableLong inOffset, long byteCount) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int sendto(FileDescriptor fd2, ByteBuffer buffer, int flags, InetAddress inetAddress, int port) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static int sendto(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount, int flags, InetAddress inetAddress, int port) throws ErrnoException, SocketException {
        throw new RuntimeException("Stub!");
    }

    public static void setegid(int egid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void setenv(String name, String value, boolean overwrite) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void seteuid(int euid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void setgid(int gid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int setsid() throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void setsockoptInt(FileDescriptor fd2, int level, int option, int value) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void setuid(int uid) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void setxattr(String path, String name, byte[] value, int flags) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void shutdown(FileDescriptor fd2, int how) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static FileDescriptor socket(int domain, int type, int protocol) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void socketpair(int domain, int type, int protocol, FileDescriptor fd1, FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static StructStat stat(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static StructStatVfs statvfs(String path) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static String strerror(int errno) {
        throw new RuntimeException("Stub!");
    }

    public static String strsignal(int signal) {
        throw new RuntimeException("Stub!");
    }

    public static void symlink(String oldPath, String newPath) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static long sysconf(int name) {
        throw new RuntimeException("Stub!");
    }

    public static void tcdrain(FileDescriptor fd2) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static void tcsendbreak(FileDescriptor fd2, int duration) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int umask(int mask) {
        throw new RuntimeException("Stub!");
    }

    public static StructUtsname uname() {
        throw new RuntimeException("Stub!");
    }

    public static void unsetenv(String name) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int waitpid(int pid, MutableInt status, int options) throws ErrnoException {
        throw new RuntimeException("Stub!");
    }

    public static int write(FileDescriptor fd2, ByteBuffer buffer) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int write(FileDescriptor fd2, byte[] bytes, int byteOffset, int byteCount) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    public static int writev(FileDescriptor fd2, Object[] buffers, int[] offsets, int[] byteCounts) throws ErrnoException, InterruptedIOException {
        throw new RuntimeException("Stub!");
    }
}
