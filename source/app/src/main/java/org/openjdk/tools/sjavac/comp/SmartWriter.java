package org.openjdk.tools.sjavac.comp;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.sjavac.Log;

public class SmartWriter extends Writer {
    boolean closed = false;
    JavaFileObject file;
    String name;
    StringWriter newContent;
    String oldContent;

    public SmartWriter(JavaFileObject javaFileObject, String str, String str2) {
        this.newContent = new StringWriter();
        this.name = str2;
        this.file = javaFileObject;
        this.oldContent = str;
        this.newContent = new StringWriter();
    }

    @Override
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        String stringWriter = this.newContent.toString();
        if (this.oldContent.equals(stringWriter)) {
            return;
        }
        int lastIndexOf = this.file.getName().lastIndexOf(File.separatorChar);
        Writer openWriter = this.file.openWriter();
        try {
            openWriter.write(stringWriter);
            openWriter.close();
            Log.debug("Writing " + this.file.getName().substring(lastIndexOf + 1));
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (openWriter != null) {
                    try {
                        openWriter.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
    }

    @Override
    public void flush() throws IOException {
    }

    @Override
    public void write(char[] cArr, int i10, int i11) {
        this.newContent.write(cArr, i10, i11);
    }
}
