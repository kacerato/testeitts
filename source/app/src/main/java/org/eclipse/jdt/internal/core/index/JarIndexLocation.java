package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class JarIndexLocation extends IndexLocation {
    private JarEntry jarEntry;
    private JarFile jarFile;
    private URL localUrl;

    public JarIndexLocation(URL url, URL url2) {
        super(url);
        this.jarFile = null;
        this.jarEntry = null;
        this.localUrl = url2;
    }

    @Override
    public void close() {
        JarFile jarFile = this.jarFile;
        if (jarFile != null) {
            try {
                jarFile.close();
            } catch (IOException unused) {
            }
            this.jarFile = null;
        }
    }

    @Override
    public boolean createNewFile() throws IOException {
        return false;
    }

    @Override
    public boolean delete() {
        return false;
    }

    public boolean equals(Object obj) {
        if (obj instanceof JarIndexLocation) {
            return this.localUrl.equals(((JarIndexLocation) obj).localUrl);
        }
        return false;
    }

    @Override
    public boolean exists() {
        try {
            if (this.jarFile == null) {
                JarURLConnection jarURLConnection = (JarURLConnection) this.localUrl.openConnection();
                jarURLConnection.setUseCaches(false);
                JarFile jarFile = jarURLConnection.getJarFile();
                if (jarFile == null) {
                    return false;
                }
                jarFile.close();
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public String fileName() {
        return null;
    }

    @Override
    public String getCanonicalFilePath() {
        return null;
    }

    @Override
    public File getIndexFile() {
        return null;
    }

    @Override
    public InputStream getInputStream() throws IOException {
        JarEntry jarEntry;
        if (this.jarFile == null) {
            JarURLConnection jarURLConnection = (JarURLConnection) this.localUrl.openConnection();
            jarURLConnection.setUseCaches(false);
            this.jarFile = jarURLConnection.getJarFile();
            this.jarEntry = jarURLConnection.getJarEntry();
        }
        JarFile jarFile = this.jarFile;
        if (jarFile == null || (jarEntry = this.jarEntry) == null) {
            return null;
        }
        return jarFile.getInputStream(jarEntry);
    }

    @Override
    public long lastModified() {
        return -1L;
    }

    @Override
    public long length() {
        return -1L;
    }

    @Override
    public boolean startsWith(IPath iPath) {
        return iPath.isPrefixOf(new Path(this.localUrl.getPath()));
    }
}
