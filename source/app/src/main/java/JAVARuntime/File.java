package JAVARuntime;

import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.file.Path;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:File.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:File.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
public class File extends java.io.File {
    public File(String str) {
        super(str);
        isAccessible();
    }

    public File(java.io.File file) {
        super(file.getAbsolutePath());
    }

    public File(String str, String str2) {
        super(str, str2);
        isAccessible();
    }

    public File(java.io.File file, String str) {
        super(file, str);
        isAccessible();
    }

    public File(URI uri) {
        super(uri);
        isAccessible();
    }

    @Override
    public String getName() {
        isAccessible();
        return super.getName();
    }

    @Override
    public String getParent() {
        isAccessible();
        return super.getParent();
    }

    @Override
    public File getParentFile() {
        return null;
    }

    @Override
    public String getPath() {
        return super.getPath();
    }

    @Override
    public boolean isAbsolute() {
        return super.isAbsolute();
    }

    @Override
    public String getAbsolutePath() {
        return super.getAbsolutePath();
    }

    @Override
    public File getAbsoluteFile() {
        return null;
    }

    @Override
    public String getCanonicalPath() throws IOException {
        return super.getCanonicalPath();
    }

    @Override
    public File getCanonicalFile() throws IOException {
        return null;
    }

    @Override
    public URL toURL() throws MalformedURLException {
        isAccessible();
        return super.toURL();
    }

    @Override
    public URI toURI() {
        isAccessible();
        return super.toURI();
    }

    @Override
    public boolean canRead() {
        isAccessible();
        return super.canRead();
    }

    @Override
    public boolean canWrite() {
        isAccessible();
        return super.canWrite();
    }

    @Override
    public boolean exists() {
        isAccessible();
        return super.exists();
    }

    @Override
    public boolean isDirectory() {
        isAccessible();
        return super.isDirectory();
    }

    @Override
    public boolean isFile() {
        isAccessible();
        return super.isFile();
    }

    @Override
    public boolean isHidden() {
        isAccessible();
        return super.isHidden();
    }

    @Override
    public long lastModified() {
        isAccessible();
        return super.lastModified();
    }

    @Override
    public long length() {
        isAccessible();
        return super.length();
    }

    @Override
    public boolean createNewFile() throws IOException {
        isAccessible();
        return super.createNewFile();
    }

    @Override
    public boolean delete() {
        isAccessible();
        return super.delete();
    }

    @Override
    public void deleteOnExit() {
        isAccessible();
        super.deleteOnExit();
    }

    @Override
    public String[] list() {
        isAccessible();
        return super.list();
    }

    @Override
    public String[] list(FilenameFilter filenameFilter) {
        isAccessible();
        return super.list(filenameFilter);
    }

    @Override
    public File[] listFiles() {
        return null;
    }

    @Override
    public File[] listFiles(FilenameFilter filenameFilter) {
        return null;
    }

    @Override
    public File[] listFiles(FileFilter fileFilter) {
        return null;
    }

    @Override
    public boolean mkdir() {
        isAccessible();
        return super.mkdir();
    }

    @Override
    public boolean mkdirs() {
        isAccessible();
        return super.mkdirs();
    }

    public boolean renameTo(File file) {
        isAccessible();
        return super.renameTo((java.io.File) file);
    }

    @Override
    public boolean setLastModified(long j10) {
        isAccessible();
        return super.setLastModified(j10);
    }

    @Override
    public boolean setReadOnly() {
        isAccessible();
        return super.setReadOnly();
    }

    @Override
    public boolean setWritable(boolean z10, boolean z11) {
        isAccessible();
        return super.setWritable(z10, z11);
    }

    @Override
    public boolean setWritable(boolean z10) {
        isAccessible();
        return super.setWritable(z10);
    }

    @Override
    public boolean setReadable(boolean z10, boolean z11) {
        isAccessible();
        return super.setReadable(z10, z11);
    }

    @Override
    public boolean setReadable(boolean z10) {
        isAccessible();
        return super.setReadable(z10);
    }

    @Override
    public boolean setExecutable(boolean z10, boolean z11) {
        isAccessible();
        return super.setExecutable(z10, z11);
    }

    @Override
    public boolean setExecutable(boolean z10) {
        isAccessible();
        return super.setExecutable(z10);
    }

    @Override
    public boolean canExecute() {
        isAccessible();
        return super.canExecute();
    }

    @Override
    public long getTotalSpace() {
        isAccessible();
        return super.getTotalSpace();
    }

    @Override
    public long getFreeSpace() {
        isAccessible();
        return super.getFreeSpace();
    }

    @Override
    public long getUsableSpace() {
        isAccessible();
        return super.getUsableSpace();
    }

    public int compareTo(File file) {
        isAccessible();
        return super.compareTo((java.io.File) file);
    }

    @Override
    public boolean equals(Object obj) {
        isAccessible();
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        isAccessible();
        return super.hashCode();
    }

    @Override
    public Path toPath() {
        isAccessible();
        return super.toPath();
    }

    public boolean isAccessible() {
        return false;
    }

    public boolean isAccessible(String str) {
        return false;
    }

    public static File createTempFile(String str, String str2, java.io.File file) throws IOException {
        return new File(java.io.File.createTempFile(str, str2, file));
    }

    public static File createTempFile(String str, String str2) throws IOException {
        return new File(java.io.File.createTempFile(str, str2));
    }
}
