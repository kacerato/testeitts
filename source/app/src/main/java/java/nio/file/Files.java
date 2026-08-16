package java.nio.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.DirectoryStream;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.stream.Stream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/Files.class
 */
public final class Files {
    Files() {
        throw new RuntimeException("Stub!");
    }

    public static InputStream newInputStream(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static OutputStream newOutputStream(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> options, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static SeekableByteChannel newByteChannel(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static DirectoryStream<Path> newDirectoryStream(Path dir) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static DirectoryStream<Path> newDirectoryStream(Path dir, String glob) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static DirectoryStream<Path> newDirectoryStream(Path dir, DirectoryStream.Filter<? super Path> filter) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createFile(Path path, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createDirectory(Path dir, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createDirectories(Path dir, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createTempFile(Path dir, String prefix, String suffix, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createTempFile(String prefix, String suffix, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createTempDirectory(Path dir, String prefix, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createTempDirectory(String prefix, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createSymbolicLink(Path link, Path target, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path createLink(Path link, Path existing) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static void delete(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean deleteIfExists(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path copy(Path source, Path target, CopyOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path move(Path source, Path target, CopyOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path readSymbolicLink(Path link) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static FileStore getFileStore(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSameFile(Path path, Path path2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isHidden(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static String probeContentType(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static <V extends FileAttributeView> V getFileAttributeView(Path path, Class<V> type, LinkOption... options) {
        throw new RuntimeException("Stub!");
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> type, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path setAttribute(Path path, String attribute, Object value, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Object getAttribute(Path path, String attribute, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Map<String, Object> readAttributes(Path path, String attributes, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path setPosixFilePermissions(Path path, Set<PosixFilePermission> perms) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static UserPrincipal getOwner(Path path, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path setOwner(Path path, UserPrincipal owner) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSymbolicLink(Path path) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isDirectory(Path path, LinkOption... options) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isRegularFile(Path path, LinkOption... options) {
        throw new RuntimeException("Stub!");
    }

    public static FileTime getLastModifiedTime(Path path, LinkOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path setLastModifiedTime(Path path, FileTime time) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static long size(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static boolean exists(Path path, LinkOption... options) {
        throw new RuntimeException("Stub!");
    }

    public static boolean notExists(Path path, LinkOption... options) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isReadable(Path path) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isWritable(Path path) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isExecutable(Path path) {
        throw new RuntimeException("Stub!");
    }

    public static Path walkFileTree(Path start, Set<FileVisitOption> options, int maxDepth, FileVisitor<? super Path> visitor) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path walkFileTree(Path start, FileVisitor<? super Path> visitor) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static BufferedReader newBufferedReader(Path path, Charset cs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static BufferedReader newBufferedReader(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static BufferedWriter newBufferedWriter(Path path, Charset cs, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static BufferedWriter newBufferedWriter(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static long copy(InputStream in2, Path target, CopyOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static long copy(Path source, OutputStream out) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static byte[] readAllBytes(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static List<String> readAllLines(Path path, Charset cs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static List<String> readAllLines(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path write(Path path, byte[] bytes, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path write(Path path, Iterable<? extends CharSequence> lines, Charset cs, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Path write(Path path, Iterable<? extends CharSequence> lines, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<Path> list(Path dir) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<Path> walk(Path start, int maxDepth, FileVisitOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<Path> walk(Path start, FileVisitOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<Path> find(Path start, int maxDepth, BiPredicate<Path, BasicFileAttributes> matcher, FileVisitOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<String> lines(Path path, Charset cs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static Stream<String> lines(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
