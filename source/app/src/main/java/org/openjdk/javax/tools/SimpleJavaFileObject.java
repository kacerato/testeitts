package org.openjdk.javax.tools;

import java.io.CharArrayReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.net.URI;
import java.nio.CharBuffer;
import java.util.Objects;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.JavaFileObject;

public class SimpleJavaFileObject implements JavaFileObject {
    protected final JavaFileObject.Kind kind;
    protected final URI uri;

    public SimpleJavaFileObject(URI uri, JavaFileObject.Kind kind) {
        Objects.requireNonNull(uri);
        Objects.requireNonNull(kind);
        if (uri.getPath() != null) {
            this.uri = uri;
            this.kind = kind;
        } else {
            throw new IllegalArgumentException("URI must have a path: " + ((Object) uri));
        }
    }

    @Override
    public boolean delete() {
        return false;
    }

    @Override
    public Modifier getAccessLevel() {
        return null;
    }

    @Override
    public CharSequence getCharContent(boolean z10) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public JavaFileObject.Kind getKind() {
        return this.kind;
    }

    @Override
    public long getLastModified() {
        return 0L;
    }

    @Override
    public String getName() {
        return toUri().getPath();
    }

    @Override
    public NestingKind getNestingKind() {
        return null;
    }

    @Override
    public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
        String str2 = str + kind.extension;
        if (kind.equals(getKind())) {
            if (!str2.equals(toUri().getPath())) {
                if (toUri().getPath().endsWith("/" + str2)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public InputStream openInputStream() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public OutputStream openOutputStream() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public Reader openReader(boolean z10) throws IOException {
        CharSequence charContent = getCharContent(z10);
        if (charContent == null) {
            throw new UnsupportedOperationException();
        }
        if (charContent instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) charContent;
            if (charBuffer.hasArray()) {
                return new CharArrayReader(charBuffer.array());
            }
        }
        return new StringReader(charContent.toString());
    }

    @Override
    public Writer openWriter() throws IOException {
        return new OutputStreamWriter(openOutputStream());
    }

    public String toString() {
        return getClass().getName() + "[" + ((Object) toUri()) + "]";
    }

    @Override
    public URI toUri() {
        return this.uri;
    }
}
