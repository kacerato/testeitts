package org.openjdk.tools.sjavac.comp;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.file.NoSuchFileException;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.JavaFileObject;

public class SmartFileObject implements JavaFileObject {
    static String lineseparator = System.getProperty("line.separator");
    JavaFileObject file;

    public SmartFileObject(JavaFileObject javaFileObject) {
        this.file = javaFileObject;
    }

    @Override
    public boolean delete() {
        return this.file.delete();
    }

    public boolean equals(Object obj) {
        return this.file.equals(obj);
    }

    @Override
    public Modifier getAccessLevel() {
        return this.file.getAccessLevel();
    }

    @Override
    public CharSequence getCharContent(boolean z10) throws IOException {
        return this.file.getCharContent(z10);
    }

    @Override
    public JavaFileObject.Kind getKind() {
        return this.file.getKind();
    }

    @Override
    public long getLastModified() {
        return this.file.getLastModified();
    }

    @Override
    public String getName() {
        return this.file.getName();
    }

    @Override
    public NestingKind getNestingKind() {
        return this.file.getNestingKind();
    }

    public int hashCode() {
        return this.file.hashCode();
    }

    @Override
    public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
        return this.file.isNameCompatible(str, kind);
    }

    @Override
    public InputStream openInputStream() throws IOException {
        return this.file.openInputStream();
    }

    @Override
    public OutputStream openOutputStream() throws IOException {
        return this.file.openOutputStream();
    }

    @Override
    public Reader openReader(boolean z10) throws IOException {
        return this.file.openReader(z10);
    }

    @Override
    public Writer openWriter() throws IOException {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(this.file.openReader(true));
            while (bufferedReader.ready()) {
                try {
                    sb2.append(bufferedReader.readLine() + lineseparator);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
            }
            bufferedReader.close();
        } catch (FileNotFoundException | NoSuchFileException unused) {
        }
        return new SmartWriter(this.file, sb2.toString(), this.file.getName());
    }

    @Override
    public URI toUri() {
        return this.file.toUri();
    }
}
