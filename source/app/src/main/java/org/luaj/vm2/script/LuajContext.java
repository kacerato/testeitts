package org.luaj.vm2.script;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;
import javax.script.ScriptContext;
import javax.script.SimpleScriptContext;
import org.luaj.vm2.Globals;
import org.luaj.vm2.lib.jse.JsePlatform;
import org.luaj.vm2.luajc.LuaJC;

public class LuajContext extends SimpleScriptContext implements ScriptContext {
    public final Globals globals;
    private final PrintStream stderr;
    private final InputStream stdin;
    private final PrintStream stdout;

    public static final class ReaderInputStream extends InputStream {

        final Reader f102811r;

        public ReaderInputStream(Reader reader) {
            this.f102811r = reader;
        }

        @Override
        public int read() throws IOException {
            return this.f102811r.read();
        }
    }

    public static final class WriterOutputStream extends OutputStream {

        final Writer f102812w;

        public WriterOutputStream(Writer writer) {
            this.f102812w = writer;
        }

        @Override
        public void close() throws IOException {
            this.f102812w.close();
        }

        @Override
        public void flush() throws IOException {
            this.f102812w.flush();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f102812w.write(new String(new byte[]{(byte) i10}));
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f102812w.write(new String(bArr));
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f102812w.write(new String(bArr, i10, i11));
        }
    }

    public LuajContext() {
        this("true".equals(System.getProperty("org.luaj.debug")), "true".equals(System.getProperty("org.luaj.luajc")));
    }

    public void setErrorWriter(Writer writer) {
        this.globals.STDERR = writer != null ? new PrintStream(new WriterOutputStream(writer)) : this.stderr;
    }

    public void setReader(Reader reader) {
        this.globals.STDIN = reader != null ? new ReaderInputStream(reader) : this.stdin;
    }

    public void setWriter(Writer writer) {
        this.globals.STDOUT = writer != null ? new PrintStream((OutputStream) new WriterOutputStream(writer), true) : this.stdout;
    }

    public LuajContext(boolean z10, boolean z11) {
        Globals debugGlobals = z10 ? JsePlatform.debugGlobals() : JsePlatform.standardGlobals();
        this.globals = debugGlobals;
        if (z11) {
            LuaJC.install(debugGlobals);
        }
        this.stdin = debugGlobals.STDIN;
        this.stdout = debugGlobals.STDOUT;
        this.stderr = debugGlobals.STDERR;
    }
}
