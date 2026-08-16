package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class FileIndexLocation extends IndexLocation {
    File indexFile;

    public FileIndexLocation(File file) {
        super(file);
        this.indexFile = file;
    }

    @Override
    public boolean createNewFile() throws IOException {
        File parentFile = this.indexFile.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        return this.indexFile.createNewFile();
    }

    @Override
    public boolean delete() {
        return this.indexFile.delete();
    }

    public boolean equals(Object obj) {
        if (obj instanceof FileIndexLocation) {
            return this.indexFile.equals(((FileIndexLocation) obj).indexFile);
        }
        return false;
    }

    @Override
    public boolean exists() {
        return this.indexFile.exists();
    }

    @Override
    public String fileName() {
        return this.indexFile.getName();
    }

    @Override
    public String getCanonicalFilePath() {
        try {
            return this.indexFile.getCanonicalPath();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public File getIndexFile() {
        return this.indexFile;
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.indexFile);
    }

    @Override
    public int hashCode() {
        return this.indexFile.hashCode();
    }

    @Override
    public long lastModified() {
        return this.indexFile.lastModified();
    }

    @Override
    public long length() {
        return this.indexFile.length();
    }

    @Override
    public boolean startsWith(IPath iPath) {
        try {
            return iPath.isPrefixOf(new Path(this.indexFile.getCanonicalPath()));
        } catch (IOException unused) {
            return false;
        }
    }

    public FileIndexLocation(URL url, File file) {
        super(url);
        this.indexFile = file;
    }

    public FileIndexLocation(File file, boolean z10) {
        this(file);
        this.participantIndex = true;
    }
}
