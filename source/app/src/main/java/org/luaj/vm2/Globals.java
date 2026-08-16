package org.luaj.vm2;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Reader;
import org.luaj.vm2.lib.BaseLib;
import org.luaj.vm2.lib.DebugLib;
import org.luaj.vm2.lib.PackageLib;
import org.luaj.vm2.lib.ResourceFinder;

public class Globals extends LuaTable {
    public BaseLib baselib;
    public Compiler compiler;
    public DebugLib debuglib;
    public ResourceFinder finder;
    public Loader loader;
    public PackageLib package_;
    public Undumper undumper;
    public InputStream STDIN = null;
    public PrintStream STDOUT = System.out;
    public PrintStream STDERR = System.err;
    public LuaThread running = new LuaThread(this);

    public static abstract class AbstractBufferedStream extends InputStream {

        protected byte[] f102750b;

        protected int f102751i = 0;

        protected int f102752j = 0;

        public AbstractBufferedStream(int i10) {
            this.f102750b = new byte[i10];
        }

        public abstract int avail() throws IOException;

        @Override
        public int available() throws IOException {
            return this.f102752j - this.f102751i;
        }

        @Override
        public int read() throws IOException {
            if (avail() <= 0) {
                return -1;
            }
            byte[] bArr = this.f102750b;
            int i10 = this.f102751i;
            this.f102751i = i10 + 1;
            return bArr[i10] & 255;
        }

        @Override
        public long skip(long j10) throws IOException {
            long min = Math.min(j10, this.f102752j - this.f102751i);
            this.f102751i = (int) (this.f102751i + min);
            return min;
        }

        @Override
        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int avail = avail();
            if (avail <= 0) {
                return -1;
            }
            int min = Math.min(avail, i11);
            System.arraycopy(this.f102750b, this.f102751i, bArr, i10, min);
            this.f102751i += min;
            return min;
        }
    }

    public static class BufferedStream extends AbstractBufferedStream {

        private final InputStream f102753s;

        public BufferedStream(int i10, InputStream inputStream) {
            super(i10);
            this.f102753s = inputStream;
        }

        @Override
        public int avail() throws IOException {
            int i10 = this.f102751i;
            int i11 = this.f102752j;
            if (i10 < i11) {
                return i11 - i10;
            }
            byte[] bArr = this.f102750b;
            if (i11 >= bArr.length) {
                this.f102752j = 0;
                this.f102751i = 0;
            }
            InputStream inputStream = this.f102753s;
            int i12 = this.f102752j;
            int read = inputStream.read(bArr, i12, bArr.length - i12);
            if (read < 0) {
                return -1;
            }
            if (read == 0) {
                int read2 = this.f102753s.read();
                if (read2 < 0) {
                    return -1;
                }
                this.f102750b[this.f102752j] = (byte) read2;
                read = 1;
            }
            this.f102752j += read;
            return read;
        }

        @Override
        public void close() throws IOException {
            this.f102753s.close();
        }

        @Override
        public synchronized void mark(int i10) {
            try {
                int i11 = this.f102751i;
                if (i11 <= 0) {
                    if (i10 > this.f102750b.length) {
                    }
                }
                byte[] bArr = this.f102750b;
                byte[] bArr2 = i10 > bArr.length ? new byte[i10] : bArr;
                System.arraycopy(bArr, i11, bArr2, 0, this.f102752j - i11);
                this.f102752j -= this.f102751i;
                this.f102751i = 0;
                this.f102750b = bArr2;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public synchronized void reset() throws IOException {
            this.f102751i = 0;
        }

        public BufferedStream(InputStream inputStream) {
            this(128, inputStream);
        }
    }

    public interface Compiler {
        Prototype compile(InputStream inputStream, String str) throws IOException;
    }

    public interface Loader {
        LuaFunction load(Prototype prototype, String str, LuaValue luaValue) throws IOException;
    }

    public static class StrReader extends Reader {

        int f102754i = 0;

        final int f102755n;

        final String f102756s;

        public StrReader(String str) {
            this.f102756s = str;
            this.f102755n = str.length();
        }

        @Override
        public void close() throws IOException {
            this.f102754i = this.f102755n;
        }

        @Override
        public int read() throws IOException {
            int i10 = this.f102754i;
            if (i10 >= this.f102755n) {
                return -1;
            }
            String str = this.f102756s;
            this.f102754i = i10 + 1;
            return str.charAt(i10);
        }

        @Override
        public int read(char[] cArr, int i10, int i11) throws IOException {
            int i12 = 0;
            while (i12 < i11) {
                int i13 = this.f102754i;
                if (i13 >= this.f102755n) {
                    break;
                }
                cArr[i10 + i12] = this.f102756s.charAt(i13);
                i12++;
                this.f102754i++;
            }
            if (i12 > 0 || i11 == 0) {
                return i12;
            }
            return -1;
        }
    }

    public static class UTF8Stream extends AbstractBufferedStream {

        private final char[] f102757c;

        private final Reader f102758r;

        public UTF8Stream(Reader reader) {
            super(96);
            this.f102757c = new char[32];
            this.f102758r = reader;
        }

        @Override
        public int avail() throws IOException {
            int i10 = this.f102751i;
            int i11 = this.f102752j;
            if (i10 < i11) {
                return i11 - i10;
            }
            int read = this.f102758r.read(this.f102757c);
            if (read < 0) {
                return -1;
            }
            if (read == 0) {
                int read2 = this.f102758r.read();
                if (read2 < 0) {
                    return -1;
                }
                this.f102757c[0] = (char) read2;
                read = 1;
            }
            char[] cArr = this.f102757c;
            byte[] bArr = this.f102750b;
            this.f102751i = 0;
            int encodeToUtf8 = LuaString.encodeToUtf8(cArr, read, bArr, 0);
            this.f102752j = encodeToUtf8;
            return encodeToUtf8;
        }

        @Override
        public void close() throws IOException {
            this.f102758r.close();
        }
    }

    public interface Undumper {
        Prototype undump(InputStream inputStream, String str) throws IOException;
    }

    @Override
    public Globals checkglobals() {
        return this;
    }

    public Prototype compilePrototype(InputStream inputStream, String str) throws IOException {
        if (this.compiler == null) {
            LuaValue.error("No compiler.");
        }
        return this.compiler.compile(inputStream, str);
    }

    public LuaValue load(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        try {
            return this.loader.load(loadPrototype(inputStream, str, str2), str, luaValue);
        } catch (LuaError e10) {
            throw e10;
        } catch (Exception e11) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("load ");
            stringBuffer.append(str);
            stringBuffer.append(": ");
            stringBuffer.append((Object) e11);
            return LuaValue.error(stringBuffer.toString());
        }
    }

    public Prototype loadPrototype(InputStream inputStream, String str, String str2) throws IOException {
        if (str2.indexOf(98) >= 0) {
            if (this.undumper == null) {
                LuaValue.error("No undumper.");
            }
            if (!inputStream.markSupported()) {
                inputStream = new BufferedStream(inputStream);
            }
            inputStream.mark(4);
            Prototype undump = this.undumper.undump(inputStream, str);
            if (undump != null) {
                return undump;
            }
            inputStream.reset();
        }
        if (str2.indexOf(116) >= 0) {
            return compilePrototype(inputStream, str);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Failed to load prototype ");
        stringBuffer.append(str);
        stringBuffer.append(" using mode '");
        stringBuffer.append(str2);
        stringBuffer.append("'");
        LuaValue.error(stringBuffer.toString());
        return null;
    }

    public LuaValue loadfile(String str) {
        try {
            InputStream findResource = this.finder.findResource(str);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("@");
            stringBuffer.append(str);
            return load(findResource, stringBuffer.toString(), "bt", this);
        } catch (Exception e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("load ");
            stringBuffer2.append(str);
            stringBuffer2.append(": ");
            stringBuffer2.append((Object) e10);
            return LuaValue.error(stringBuffer2.toString());
        }
    }

    public Varargs yield(Varargs varargs) {
        LuaThread luaThread = this.running;
        if (luaThread == null || luaThread.isMainThread()) {
            throw new LuaError("cannot yield main thread");
        }
        return this.running.state.lua_yield(varargs);
    }

    public Prototype compilePrototype(Reader reader, String str) throws IOException {
        return compilePrototype(new UTF8Stream(reader), str);
    }

    public LuaValue load(Reader reader, String str) {
        return load(new UTF8Stream(reader), str, "t", this);
    }

    public LuaValue load(Reader reader, String str, LuaTable luaTable) {
        return load(new UTF8Stream(reader), str, "t", luaTable);
    }

    public LuaValue load(String str) {
        return load(new StrReader(str), str);
    }

    public LuaValue load(String str, String str2) {
        return load(new StrReader(str), str2);
    }

    public LuaValue load(String str, String str2, LuaTable luaTable) {
        return load(new StrReader(str), str2, luaTable);
    }
}
