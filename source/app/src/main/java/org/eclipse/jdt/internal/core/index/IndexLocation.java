package org.eclipse.jdt.internal.core.index;

import android.content.ContentResolver;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;

public abstract class IndexLocation {
    protected boolean participantIndex;
    private final URL url;

    public IndexLocation(File file) {
        URL url;
        try {
            url = file.toURI().toURL();
        } catch (MalformedURLException unused) {
            url = null;
        }
        this.url = url;
    }

    public static IndexLocation createIndexLocation(URL url) {
        File file;
        try {
            URL resolve = FileLocator.resolve(url);
            if (!resolve.getProtocol().equals(ContentResolver.SCHEME_FILE)) {
                return new JarIndexLocation(url, resolve);
            }
            try {
                file = new File(new URI(resolve.toExternalForm()));
            } catch (Exception unused) {
                file = new File(resolve.getPath());
            }
            return new FileIndexLocation(url, file);
        } catch (IOException unused2) {
            return null;
        }
    }

    public void close() {
    }

    public abstract boolean createNewFile() throws IOException;

    public abstract boolean delete();

    public abstract boolean exists();

    public abstract String fileName();

    public abstract String getCanonicalFilePath();

    public abstract File getIndexFile();

    public abstract InputStream getInputStream() throws IOException;

    public URL getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public boolean isParticipantIndex() {
        return this.participantIndex;
    }

    public abstract long lastModified();

    public abstract long length();

    public abstract boolean startsWith(IPath iPath);

    public String toString() {
        return this.url.toString();
    }

    public IndexLocation(URL url) {
        this.url = url;
    }
}
