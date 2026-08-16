package org.luaj.vm2.lib;

import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.Context;
import android.provider.Telephony;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import en.b;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import u8.C15580b;

public abstract class IoLib extends TwoArgFunction {
    private static final int FILE_CLOSE = 11;
    private static final int FILE_FLUSH = 12;
    private static final int FILE_LINES = 13;
    private static final int FILE_READ = 14;
    private static final int FILE_SEEK = 15;
    private static final int FILE_SETVBUF = 16;
    private static final int FILE_WRITE = 17;
    protected static final int FTYPE_NAMED = 3;
    protected static final int FTYPE_STDERR = 2;
    protected static final int FTYPE_STDIN = 0;
    protected static final int FTYPE_STDOUT = 1;
    private static final int IO_CLOSE = 0;
    private static final int IO_FLUSH = 1;
    private static final int IO_INDEX = 18;
    private static final int IO_INPUT = 2;
    private static final int IO_LINES = 3;
    private static final int IO_OPEN = 4;
    private static final int IO_OUTPUT = 5;
    private static final int IO_POPEN = 6;
    private static final int IO_READ = 7;
    private static final int IO_TMPFILE = 8;
    private static final int IO_TYPE = 9;
    private static final int IO_WRITE = 10;
    private static final int LINES_ITER = 19;
    static Class class$org$luaj$vm2$lib$IoLib$IoLibV;
    LuaTable filemethods;
    protected Globals globals;
    private static final LuaValue STDIN = LuaValue.valueOf(b.f85926e);
    private static final LuaValue STDOUT = LuaValue.valueOf("stdout");
    private static final LuaValue STDERR = LuaValue.valueOf("stderr");
    private static final LuaValue FILE = LuaValue.valueOf(ContentResolver.SCHEME_FILE);
    private static final LuaValue CLOSED_FILE = LuaValue.valueOf("closed file");
    public static final String[] IO_NAMES = {"close", "flush", Context.INPUT_SERVICE, "lines", AbstractCircuitBreaker.PROPERTY_NAME, "output", "popen", "read", "tmpfile", "type", "write"};
    public static final String[] FILE_NAMES = {"close", "flush", "lines", "read", "seek", "setvbuf", "write"};
    private File infile = null;
    private File outfile = null;
    private File errfile = null;

    public abstract class File extends LuaValue {
        public File() {
        }

        public abstract void close() throws IOException;

        public abstract void flush() throws IOException;

        @Override
        public LuaValue get(LuaValue luaValue) {
            return IoLib.this.filemethods.get(luaValue);
        }

        public abstract boolean isclosed();

        public abstract boolean isstdfile();

        public abstract int peek() throws IOException, EOFException;

        public abstract int read() throws IOException, EOFException;

        public abstract int read(byte[] bArr, int i10, int i11) throws IOException;

        public abstract int remaining() throws IOException;

        public abstract int seek(String str, int i10) throws IOException;

        public abstract void setvbuf(String str, int i10);

        @Override
        public String tojstring() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("file: ");
            stringBuffer.append(Integer.toHexString(hashCode()));
            return stringBuffer.toString();
        }

        @Override
        public int type() {
            return 7;
        }

        @Override
        public String typename() {
            return AccountManager.KEY_USERDATA;
        }

        public abstract void write(LuaString luaString) throws IOException;
    }

    public static final class IoLibV extends VarArgFunction {

        private File f102798f;
        public IoLib iolib;

        public IoLibV() {
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            try {
                switch (this.opcode) {
                    case 0:
                        return this.iolib._io_close(varargs.arg1());
                    case 1:
                        return this.iolib._io_flush();
                    case 2:
                        return this.iolib._io_input(varargs.arg1());
                    case 3:
                        return this.iolib._io_lines(varargs.isvalue(1) ? varargs.checkjstring(1) : null);
                    case 4:
                        return this.iolib._io_open(varargs.checkjstring(1), varargs.optjstring(2, a.f72595c));
                    case 5:
                        return this.iolib._io_output(varargs.arg1());
                    case 6:
                        return this.iolib._io_popen(varargs.checkjstring(1), varargs.optjstring(2, a.f72595c));
                    case 7:
                        return this.iolib._io_read(varargs);
                    case 8:
                        return this.iolib._io_tmpfile();
                    case 9:
                        return this.iolib._io_type(varargs.arg1());
                    case 10:
                        return this.iolib._io_write(varargs);
                    case 11:
                        return this.iolib._file_close(varargs.arg1());
                    case 12:
                        return this.iolib._file_flush(varargs.arg1());
                    case 13:
                        return this.iolib._file_lines(varargs.arg1());
                    case 14:
                        return this.iolib._file_read(varargs.arg1(), varargs.subargs(2));
                    case 15:
                        return this.iolib._file_seek(varargs.arg1(), varargs.optjstring(2, "cur"), varargs.optint(3, 0));
                    case 16:
                        return this.iolib._file_setvbuf(varargs.arg1(), varargs.checkjstring(2), varargs.optint(3, 1024));
                    case 17:
                        return this.iolib._file_write(varargs.arg1(), varargs.subargs(2));
                    case 18:
                        return this.iolib._io_index(varargs.arg(2));
                    case 19:
                        return this.iolib._lines_iter(this.f102798f);
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e10) {
                return IoLib.errorresult(e10);
            }
        }

        public IoLibV(File file, String str, int i10, IoLib ioLib) {
            this.f102798f = file;
            this.name = str;
            this.opcode = i10;
            this.iolib = ioLib;
        }
    }

    private static File checkfile(LuaValue luaValue) {
        File optfile = optfile(luaValue);
        if (optfile == null) {
            LuaValue.argerror(1, ContentResolver.SCHEME_FILE);
        }
        checkopen(optfile);
        return optfile;
    }

    private static File checkopen(File file) {
        if (file.isclosed()) {
            LuaValue.error("attempt to use a closed file");
        }
        return file;
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static Varargs errorresult(Exception exc) {
        String message = exc.getMessage();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("io error: ");
        if (message == null) {
            message = exc.toString();
        }
        stringBuffer.append(message);
        return errorresult(stringBuffer.toString());
    }

    private File errput() {
        File file = this.errfile;
        if (file != null) {
            return file;
        }
        File ioopenfile = ioopenfile(2, "-", "w");
        this.errfile = ioopenfile;
        return ioopenfile;
    }

    public static LuaValue freadall(File file) throws IOException {
        int remaining = file.remaining();
        return remaining >= 0 ? freadbytes(file, remaining) : freaduntil(file, false);
    }

    public static LuaValue freadbytes(File file, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int read = file.read(bArr, 0, i10);
        return read < 0 ? LuaValue.NIL : LuaString.valueUsing(bArr, 0, read);
    }

    private static void freadchars(File file, String str, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        while (true) {
            int peek = file.peek();
            if (str.indexOf(peek) < 0) {
                return;
            }
            file.read();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.write(peek);
            }
        }
    }

    public static LuaValue freadline(File file) throws IOException {
        return freaduntil(file, true);
    }

    public static LuaValue freadnumber(File file) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        freadchars(file, " \t\r\n", null);
        freadchars(file, "-+", byteArrayOutputStream);
        freadchars(file, "0123456789", byteArrayOutputStream);
        freadchars(file, ".", byteArrayOutputStream);
        freadchars(file, "0123456789", byteArrayOutputStream);
        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
        return byteArrayOutputStream2.length() > 0 ? LuaValue.valueOf(Double.parseDouble(byteArrayOutputStream2)) : LuaValue.NIL;
    }

    public static LuaValue freaduntil(File file, boolean z10) throws IOException {
        int i10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (!z10) {
                while (true) {
                    i10 = file.read();
                    if (i10 <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(i10);
                }
            } else {
                while (true) {
                    i10 = file.read();
                    if (i10 <= 0 || i10 == 10) {
                        break;
                    }
                    if (i10 != 13) {
                        byteArrayOutputStream.write(i10);
                    }
                }
            }
        } catch (EOFException unused) {
            i10 = -1;
        }
        return (i10 >= 0 || byteArrayOutputStream.size() != 0) ? LuaString.valueUsing(byteArrayOutputStream.toByteArray()) : LuaValue.NIL;
    }

    private File input() {
        File file = this.infile;
        if (file != null) {
            return file;
        }
        File ioopenfile = ioopenfile(0, "-", a.f72595c);
        this.infile = ioopenfile;
        return ioopenfile;
    }

    private static Varargs ioclose(File file) throws IOException {
        if (file.isstdfile()) {
            return errorresult("cannot close standard file");
        }
        file.close();
        return successresult();
    }

    private File ioopenfile(int i10, String str, String str2) {
        try {
            return rawopenfile(i10, str, str2);
        } catch (Exception e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("io error: ");
            stringBuffer.append(e10.getMessage());
            LuaValue.error(stringBuffer.toString());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        if (r3 != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return org.luaj.vm2.LuaValue.NIL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        return org.luaj.vm2.LuaValue.varargsOf(r1, 0, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Varargs ioread(File file, Varargs varargs) throws IOException {
        int i10;
        LuaValue freadbytes;
        int narg = varargs.narg();
        LuaValue[] luaValueArr = new LuaValue[narg];
        int i11 = 0;
        while (true) {
            if (i11 >= narg) {
                break;
            }
            i10 = i11 + 1;
            LuaValue arg = varargs.arg(i10);
            int type = arg.type();
            if (type == 3) {
                freadbytes = freadbytes(file, arg.toint());
            } else if (type == 4) {
                LuaString checkstring = arg.checkstring();
                if (checkstring.m_length != 2) {
                    break;
                }
                byte[] bArr = checkstring.m_bytes;
                int i12 = checkstring.m_offset;
                if (bArr[i12] != 42) {
                    break;
                }
                byte b10 = bArr[i12 + 1];
                if (b10 == 97) {
                    freadbytes = freadall(file);
                } else if (b10 == 108) {
                    freadbytes = freadline(file);
                } else {
                    if (b10 != 110) {
                        break;
                    }
                    freadbytes = freadnumber(file);
                }
            } else {
                break;
            }
            luaValueArr[i11] = freadbytes;
            if (freadbytes.isnil()) {
                i11 = i10;
                break;
            }
            i11 = i10;
        }
        return LuaValue.argerror(i10, "(invalid format)");
    }

    private static Varargs iowrite(File file, Varargs varargs) throws IOException {
        int narg = varargs.narg();
        for (int i10 = 1; i10 <= narg; i10++) {
            file.write(varargs.checkstring(i10));
        }
        return file;
    }

    private Varargs lines(File file) {
        try {
            return new IoLibV(file, "lnext", 19, this);
        } catch (Exception e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("lines: ");
            stringBuffer.append((Object) e10);
            return LuaValue.error(stringBuffer.toString());
        }
    }

    private static File optfile(LuaValue luaValue) {
        if (luaValue instanceof File) {
            return (File) luaValue;
        }
        return null;
    }

    private File output() {
        File file = this.outfile;
        if (file != null) {
            return file;
        }
        File ioopenfile = ioopenfile(1, "-", "w");
        this.outfile = ioopenfile;
        return ioopenfile;
    }

    private File rawopenfile(int i10, String str, String str2) throws IOException {
        if (i10 == 0) {
            return wrapStdin();
        }
        if (i10 == 1) {
            return wrapStdout();
        }
        if (i10 != 2) {
            return openFile(str, str2.startsWith(a.f72595c), str2.startsWith("a"), str2.indexOf("+") > 0, str2.endsWith(C15580b.f118629u));
        }
        return wrapStderr();
    }

    private void setLibInstance(LuaTable luaTable) {
        for (LuaValue luaValue : luaTable.keys()) {
            ((IoLibV) luaTable.get(luaValue)).iolib = this;
        }
    }

    private static Varargs successresult() {
        return LuaValue.TRUE;
    }

    public Varargs _file_close(LuaValue luaValue) throws IOException {
        return ioclose(checkfile(luaValue));
    }

    public Varargs _file_flush(LuaValue luaValue) throws IOException {
        checkfile(luaValue).flush();
        return LuaValue.TRUE;
    }

    public Varargs _file_lines(LuaValue luaValue) {
        return lines(checkfile(luaValue));
    }

    public Varargs _file_read(LuaValue luaValue, Varargs varargs) throws IOException {
        return ioread(checkfile(luaValue), varargs);
    }

    public Varargs _file_seek(LuaValue luaValue, String str, int i10) throws IOException {
        return LuaValue.valueOf(checkfile(luaValue).seek(str, i10));
    }

    public Varargs _file_setvbuf(LuaValue luaValue, String str, int i10) {
        checkfile(luaValue).setvbuf(str, i10);
        return LuaValue.TRUE;
    }

    public Varargs _file_write(LuaValue luaValue, Varargs varargs) throws IOException {
        return iowrite(checkfile(luaValue), varargs);
    }

    public Varargs _io_close(LuaValue luaValue) throws IOException {
        File output = luaValue.isnil() ? output() : checkfile(luaValue);
        checkopen(output);
        return ioclose(output);
    }

    public Varargs _io_flush() throws IOException {
        checkopen(output());
        this.outfile.flush();
        return LuaValue.TRUE;
    }

    public Varargs _io_index(LuaValue luaValue) {
        return luaValue.equals(STDOUT) ? output() : luaValue.equals(STDIN) ? input() : luaValue.equals(STDERR) ? errput() : LuaValue.NIL;
    }

    public Varargs _io_input(LuaValue luaValue) {
        File input = luaValue.isnil() ? input() : luaValue.isstring() ? ioopenfile(3, luaValue.checkjstring(), a.f72595c) : checkfile(luaValue);
        this.infile = input;
        return input;
    }

    public Varargs _io_lines(String str) {
        File input = str == null ? input() : ioopenfile(3, str, a.f72595c);
        this.infile = input;
        checkopen(input);
        return lines(this.infile);
    }

    public Varargs _io_open(String str, String str2) throws IOException {
        return rawopenfile(3, str, str2);
    }

    public Varargs _io_output(LuaValue luaValue) {
        File output = luaValue.isnil() ? output() : luaValue.isstring() ? ioopenfile(3, luaValue.checkjstring(), "w") : checkfile(luaValue);
        this.outfile = output;
        return output;
    }

    public Varargs _io_popen(String str, String str2) throws IOException {
        return openProgram(str, str2);
    }

    public Varargs _io_read(Varargs varargs) throws IOException {
        checkopen(input());
        return ioread(this.infile, varargs);
    }

    public Varargs _io_tmpfile() throws IOException {
        return tmpFile();
    }

    public Varargs _io_type(LuaValue luaValue) {
        File optfile = optfile(luaValue);
        return optfile != null ? optfile.isclosed() ? CLOSED_FILE : FILE : LuaValue.NIL;
    }

    public Varargs _io_write(Varargs varargs) throws IOException {
        checkopen(output());
        return iowrite(this.outfile, varargs);
    }

    public Varargs _lines_iter(LuaValue luaValue) throws IOException {
        return freadline(checkfile(luaValue));
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        Class cls = class$org$luaj$vm2$lib$IoLib$IoLibV;
        if (cls == null) {
            cls = class$("org.luaj.vm2.lib.IoLib$IoLibV");
            class$org$luaj$vm2$lib$IoLib$IoLibV = cls;
        }
        bind(luaTable, cls, IO_NAMES);
        LuaTable luaTable2 = new LuaTable();
        this.filemethods = luaTable2;
        Class cls2 = class$org$luaj$vm2$lib$IoLib$IoLibV;
        if (cls2 == null) {
            cls2 = class$("org.luaj.vm2.lib.IoLib$IoLibV");
            class$org$luaj$vm2$lib$IoLib$IoLibV = cls2;
        }
        bind(luaTable2, cls2, FILE_NAMES, 11);
        LuaTable luaTable3 = new LuaTable();
        Class cls3 = class$org$luaj$vm2$lib$IoLib$IoLibV;
        if (cls3 == null) {
            cls3 = class$("org.luaj.vm2.lib.IoLib$IoLibV");
            class$org$luaj$vm2$lib$IoLib$IoLibV = cls3;
        }
        bind(luaTable3, cls3, new String[]{"__index"}, 18);
        luaTable.setmetatable(luaTable3);
        setLibInstance(luaTable);
        setLibInstance(this.filemethods);
        setLibInstance(luaTable3);
        luaValue2.set("io", luaTable);
        luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("io", luaTable);
        return luaTable;
    }

    public abstract File openFile(String str, boolean z10, boolean z11, boolean z12, boolean z13) throws IOException;

    public abstract File openProgram(String str, String str2) throws IOException;

    public abstract File tmpFile() throws IOException;

    public abstract File wrapStderr() throws IOException;

    public abstract File wrapStdin() throws IOException;

    public abstract File wrapStdout() throws IOException;

    private static Varargs errorresult(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(str));
    }
}
