package org.luaj.vm2.lib.jse;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.OsLib;

public class JseOsLib extends OsLib {
    public static int EXEC_ERROR = -3;
    public static int EXEC_INTERRUPTED = -2;
    public static int EXEC_IOEXCEPTION = 1;

    @Override
    public Varargs execute(String str) {
        int i10;
        try {
            Globals globals = this.globals;
            i10 = new JseProcess(str, (InputStream) null, globals.STDOUT, globals.STDERR).waitFor();
        } catch (IOException unused) {
            i10 = EXEC_IOEXCEPTION;
        } catch (InterruptedException unused2) {
            i10 = EXEC_INTERRUPTED;
        } catch (Throwable unused3) {
            i10 = EXEC_ERROR;
        }
        return i10 == 0 ? LuaValue.varargsOf(LuaValue.TRUE, LuaValue.valueOf("exit"), LuaValue.ZERO) : LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("signal"), LuaValue.valueOf(i10));
    }

    @Override
    public String getenv(String str) {
        String str2 = System.getenv(str);
        return str2 != null ? str2 : System.getProperty(str);
    }

    @Override
    public void remove(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("No such file or directory");
        }
        if (!file.delete()) {
            throw new IOException("Failed to delete");
        }
    }

    @Override
    public void rename(String str, String str2) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("No such file or directory");
        }
        if (!file.renameTo(new File(str2))) {
            throw new IOException("Failed to delete");
        }
    }

    @Override
    public String tmpname() {
        try {
            return File.createTempFile(OsLib.TMP_PREFIX, OsLib.TMP_SUFFIX).getName();
        } catch (IOException unused) {
            return super.tmpname();
        }
    }
}
