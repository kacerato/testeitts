package org.openjdk.javax.tools;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.util.Objects;
import org.openjdk.javax.tools.FileObject;

public class ForwardingFileObject<F extends FileObject> implements FileObject {
    protected final F fileObject;

    public ForwardingFileObject(F f10) {
        Objects.requireNonNull(f10);
        this.fileObject = f10;
    }

    @Override
    public boolean delete() {
        return this.fileObject.delete();
    }

    @Override
    public CharSequence getCharContent(boolean z10) throws IOException {
        return this.fileObject.getCharContent(z10);
    }

    @Override
    public long getLastModified() {
        return this.fileObject.getLastModified();
    }

    @Override
    public String getName() {
        return this.fileObject.getName();
    }

    @Override
    public InputStream openInputStream() throws IOException {
        return this.fileObject.openInputStream();
    }

    @Override
    public OutputStream openOutputStream() throws IOException {
        return this.fileObject.openOutputStream();
    }

    @Override
    public Reader openReader(boolean z10) throws IOException {
        return this.fileObject.openReader(z10);
    }

    @Override
    public Writer openWriter() throws IOException {
        return this.fileObject.openWriter();
    }

    @Override
    public URI toUri() {
        return this.fileObject.toUri();
    }
}
