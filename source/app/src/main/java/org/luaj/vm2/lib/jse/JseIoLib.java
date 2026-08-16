package org.luaj.vm2.lib.jse;

import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import org.luaj.vm2.LuaError;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.lib.IoLib;

public class JseIoLib extends IoLib {

    public final class FileImpl extends IoLib.File {
        private boolean closed;
        private final RandomAccessFile file;
        private final InputStream is;
        private boolean nobuffer;
        private final OutputStream os;
        private final JseIoLib this$0;

        private FileImpl(JseIoLib jseIoLib, InputStream inputStream) {
            this(jseIoLib, null, inputStream, null);
        }

        @Override
        public void close() throws IOException {
            this.closed = true;
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        }

        @Override
        public void flush() throws IOException {
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                outputStream.flush();
            }
        }

        @Override
        public boolean isclosed() {
            return this.closed;
        }

        @Override
        public boolean isstdfile() {
            return this.file == null;
        }

        @Override
        public int peek() throws IOException {
            InputStream inputStream = this.is;
            if (inputStream != null) {
                inputStream.mark(1);
                int read = this.is.read();
                this.is.reset();
                return read;
            }
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile == null) {
                JseIoLib.notimplemented();
                return 0;
            }
            long filePointer = randomAccessFile.getFilePointer();
            int read2 = this.file.read();
            this.file.seek(filePointer);
            return read2;
        }

        @Override
        public int read() throws IOException {
            InputStream inputStream = this.is;
            if (inputStream != null) {
                return inputStream.read();
            }
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                return randomAccessFile.read();
            }
            JseIoLib.notimplemented();
            return 0;
        }

        @Override
        public int remaining() throws IOException {
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                return (int) (randomAccessFile.length() - this.file.getFilePointer());
            }
            return -1;
        }

        @Override
        public int seek(String str, int i10) throws IOException {
            RandomAccessFile randomAccessFile;
            long filePointer;
            long j10;
            if (this.file == null) {
                JseIoLib.notimplemented();
                return 0;
            }
            if ("set".equals(str)) {
                randomAccessFile = this.file;
                j10 = i10;
            } else {
                if ("end".equals(str)) {
                    randomAccessFile = this.file;
                    filePointer = randomAccessFile.length();
                } else {
                    randomAccessFile = this.file;
                    filePointer = randomAccessFile.getFilePointer();
                }
                j10 = filePointer + i10;
            }
            randomAccessFile.seek(j10);
            return (int) this.file.getFilePointer();
        }

        @Override
        public void setvbuf(String str, int i10) {
            this.nobuffer = "no".equals(str);
        }

        @Override
        public String tojstring() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("file (");
            stringBuffer.append(hashCode());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override
        public void write(LuaString luaString) throws IOException {
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                outputStream.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
            } else {
                RandomAccessFile randomAccessFile = this.file;
                if (randomAccessFile != null) {
                    randomAccessFile.write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
                } else {
                    JseIoLib.notimplemented();
                }
            }
            if (this.nobuffer) {
                flush();
            }
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            RandomAccessFile randomAccessFile = this.file;
            if (randomAccessFile != null) {
                return randomAccessFile.read(bArr, i10, i11);
            }
            InputStream inputStream = this.is;
            if (inputStream != null) {
                return inputStream.read(bArr, i10, i11);
            }
            JseIoLib.notimplemented();
            return i11;
        }

        private FileImpl(JseIoLib jseIoLib, OutputStream outputStream) {
            this(jseIoLib, null, null, outputStream);
        }

        private FileImpl(JseIoLib jseIoLib, RandomAccessFile randomAccessFile) {
            this(jseIoLib, randomAccessFile, null, null);
        }

        private FileImpl(JseIoLib jseIoLib, RandomAccessFile randomAccessFile, InputStream inputStream, OutputStream outputStream) {
            super();
            this.this$0 = jseIoLib;
            this.closed = false;
            this.nobuffer = false;
            this.file = randomAccessFile;
            if (inputStream == null) {
                inputStream = null;
            } else if (!inputStream.markSupported()) {
                inputStream = new BufferedInputStream(inputStream);
            }
            this.is = inputStream;
            this.os = outputStream;
        }
    }

    public final class StdinFile extends IoLib.File {
        private final JseIoLib this$0;

        private StdinFile(JseIoLib jseIoLib) {
            super();
            this.this$0 = jseIoLib;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public boolean isclosed() {
            return false;
        }

        @Override
        public boolean isstdfile() {
            return true;
        }

        @Override
        public int peek() throws IOException, EOFException {
            ((IoLib) this.this$0).globals.STDIN.mark(1);
            int read = ((IoLib) this.this$0).globals.STDIN.read();
            ((IoLib) this.this$0).globals.STDIN.reset();
            return read;
        }

        @Override
        public int read() throws IOException, EOFException {
            return ((IoLib) this.this$0).globals.STDIN.read();
        }

        @Override
        public int remaining() throws IOException {
            return 0;
        }

        @Override
        public int seek(String str, int i10) throws IOException {
            return 0;
        }

        @Override
        public void setvbuf(String str, int i10) {
        }

        @Override
        public String tojstring() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("file (");
            stringBuffer.append(hashCode());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override
        public void write(LuaString luaString) throws IOException {
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            return ((IoLib) this.this$0).globals.STDIN.read(bArr, i10, i11);
        }
    }

    public final class StdoutFile extends IoLib.File {
        private final int file_type;
        private final JseIoLib this$0;

        private StdoutFile(JseIoLib jseIoLib, int i10) {
            super();
            this.this$0 = jseIoLib;
            this.file_type = i10;
        }

        private final PrintStream getPrintStream() {
            return this.file_type == 2 ? ((IoLib) this.this$0).globals.STDERR : ((IoLib) this.this$0).globals.STDOUT;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
            getPrintStream().flush();
        }

        @Override
        public boolean isclosed() {
            return false;
        }

        @Override
        public boolean isstdfile() {
            return true;
        }

        @Override
        public int peek() throws IOException, EOFException {
            return 0;
        }

        @Override
        public int read() throws IOException, EOFException {
            return 0;
        }

        @Override
        public int remaining() throws IOException {
            return 0;
        }

        @Override
        public int seek(String str, int i10) throws IOException {
            return 0;
        }

        @Override
        public void setvbuf(String str, int i10) {
        }

        @Override
        public String tojstring() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("file (");
            stringBuffer.append(hashCode());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }

        @Override
        public void write(LuaString luaString) throws IOException {
            getPrintStream().write(luaString.m_bytes, luaString.m_offset, luaString.m_length);
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            return 0;
        }
    }

    public static void notimplemented() {
        throw new LuaError("not implemented");
    }

    @Override
    public IoLib.File openFile(String str, boolean z10, boolean z11, boolean z12, boolean z13) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, z10 ? a.f72595c : "rw");
        if (z11) {
            randomAccessFile.seek(randomAccessFile.length());
        } else if (!z10) {
            randomAccessFile.setLength(0L);
        }
        return new FileImpl(randomAccessFile);
    }

    @Override
    public IoLib.File openProgram(String str, String str2) throws IOException {
        Process exec = Runtime.getRuntime().exec(str);
        return "w".equals(str2) ? new FileImpl(exec.getOutputStream()) : new FileImpl(exec.getInputStream());
    }

    @Override
    public IoLib.File tmpFile() throws IOException {
        File createTempFile = File.createTempFile(".luaj", "bin");
        createTempFile.deleteOnExit();
        return new FileImpl(new RandomAccessFile(createTempFile, "rw"));
    }

    @Override
    public IoLib.File wrapStderr() throws IOException {
        return new StdoutFile(2);
    }

    @Override
    public IoLib.File wrapStdin() throws IOException {
        return new StdinFile();
    }

    @Override
    public IoLib.File wrapStdout() throws IOException {
        return new StdoutFile(1);
    }
}
