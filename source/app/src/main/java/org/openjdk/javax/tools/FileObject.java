package org.openjdk.javax.tools;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;

public interface FileObject {
    boolean delete();

    CharSequence getCharContent(boolean z10) throws IOException;

    long getLastModified();

    String getName();

    InputStream openInputStream() throws IOException;

    OutputStream openOutputStream() throws IOException;

    Reader openReader(boolean z10) throws IOException;

    Writer openWriter() throws IOException;

    URI toUri();
}
