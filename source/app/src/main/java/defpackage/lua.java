package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.Vector;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Print;
import org.luaj.vm2.Varargs;
import org.luaj.vm2.lib.jse.JsePlatform;
import org.luaj.vm2.luajc.LuaJC;
import org.openjdk.tools.doclint.DocLint;

public class lua {
    private static String encoding = null;
    private static Globals globals = null;
    private static boolean print = false;
    private static final String usage = "usage: java -cp luaj-jse.jar lua [options] [script [args]].\nAvailable options are:\n  -e stat  execute string 'stat'\n  -l name  require library 'name'\n  -i       enter interactive mode after executing 'script'\n  -v       show version information\n  -b      \tuse luajc bytecode-to-bytecode compiler (requires bcel on class path)\n  -n      \tnodebug - do not load debug library by default\n  -p      \tprint the prototype\n  -c enc  \tuse the supplied encoding 'enc' for input files\n  --       stop handling options\n  -        execute stdin and stop handling options";
    private static final String version = "Luaj-jse 3.0.1 Copyright (c) 2012 Luaj.org.org";

    private static void interactiveMode() throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.f92798in));
        while (true) {
            PrintStream printStream = System.out;
            printStream.print("> ");
            printStream.flush();
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return;
            } else {
                processScript(new ByteArrayInputStream(readLine.getBytes()), "=stdin", null, 0);
            }
        }
    }

    private static void loadLibrary(String str) throws IOException {
        LuaString valueOf = LuaValue.valueOf(str);
        try {
            globals.get("require").call(valueOf);
        } catch (Exception e10) {
            try {
                ((LuaValue) Class.forName(str).newInstance()).call(valueOf, globals);
            } catch (Exception e11) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("loadLibrary(");
                stringBuffer.append(str);
                stringBuffer.append(") failed: ");
                stringBuffer.append((Object) e10);
                stringBuffer.append(DocLint.SEPARATOR);
                stringBuffer.append((Object) e11);
                throw new IOException(stringBuffer.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a0, code lost:
    
        java.lang.System.out.println(defpackage.lua.version);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void main(String[] strArr) throws IOException {
        InputStream fileInputStream;
        String str;
        boolean z10 = strArr.length == 0;
        Vector vector = null;
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = true;
        while (i10 < strArr.length && z14 && strArr[i10].startsWith("-") && strArr[i10].length() > 1) {
            try {
                char charAt = strArr[i10].charAt(1);
                if (charAt == '-') {
                    if (strArr[i10].length() > 2) {
                        usageExit();
                    }
                    z14 = false;
                } else if (charAt == 'e') {
                    i10++;
                    if (i10 >= strArr.length) {
                        usageExit();
                    }
                } else if (charAt == 'i') {
                    z10 = true;
                } else if (charAt == 'l') {
                    i10++;
                    if (i10 >= strArr.length) {
                        usageExit();
                    }
                    if (vector == null) {
                        vector = new Vector();
                    }
                    vector.addElement(strArr[i10]);
                } else if (charAt == 'n') {
                    z12 = true;
                } else if (charAt == 'p') {
                    print = true;
                } else if (charAt == 'v') {
                    z11 = true;
                } else if (charAt != 'b') {
                    if (charAt == 'c') {
                        i10++;
                        if (i10 >= strArr.length) {
                            usageExit();
                        }
                        encoding = strArr[i10];
                    }
                    usageExit();
                } else {
                    z13 = true;
                }
                i10++;
            } catch (IOException e10) {
                System.err.println(e10.toString());
                System.exit(-2);
                return;
            }
        }
        Globals standardGlobals = z12 ? JsePlatform.standardGlobals() : JsePlatform.debugGlobals();
        globals = standardGlobals;
        if (z13) {
            LuaJC.install(standardGlobals);
        }
        int size = vector != null ? vector.size() : 0;
        for (int i11 = 0; i11 < size; i11++) {
            loadLibrary((String) vector.elementAt(i11));
        }
        int i12 = 0;
        boolean z15 = true;
        while (i12 < strArr.length) {
            if (z15 && strArr[i12].startsWith("-")) {
                if ("-".equals(strArr[i12])) {
                    fileInputStream = System.f92798in;
                    str = "=stdin";
                    processScript(fileInputStream, str, strArr, i12);
                    break;
                }
                char charAt2 = strArr[i12].charAt(1);
                if (charAt2 != '-') {
                    if (charAt2 != 'c') {
                        if (charAt2 == 'e') {
                            i12++;
                            processScript(new ByteArrayInputStream(strArr[i12].getBytes()), TypedValues.Custom.S_STRING, strArr, i12);
                        } else if (charAt2 != 'l') {
                        }
                    }
                    i12++;
                } else {
                    z15 = false;
                }
                i12++;
            }
            fileInputStream = new FileInputStream(strArr[i12]);
            str = strArr[i12];
            processScript(fileInputStream, str, strArr, i12);
        }
        if (z10) {
            interactiveMode();
        }
    }

    private static void processScript(InputStream inputStream, String str, String[] strArr, int i10) throws IOException {
        InputStream inputStream2;
        Throwable th2;
        LuaValue load;
        try {
            try {
                inputStream2 = new BufferedInputStream(inputStream);
            } catch (Throwable th3) {
                inputStream2 = inputStream;
                th2 = th3;
            }
            try {
                if (encoding != null) {
                    load = globals.load(new InputStreamReader(inputStream2, encoding), str);
                } else {
                    Globals globals2 = globals;
                    load = globals2.load(inputStream2, str, "bt", globals2);
                }
                inputStream2.close();
                if (print && load.isclosure()) {
                    Print.print(load.checkclosure().f102760p);
                }
                load.invoke(setGlobalArg(str, strArr, i10, globals));
            } catch (Throwable th4) {
                th2 = th4;
                inputStream2.close();
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace(System.err);
        }
    }

    private static Varargs setGlobalArg(String str, String[] strArr, int i10, LuaValue luaValue) {
        if (strArr == null) {
            return LuaValue.NONE;
        }
        LuaTable tableOf = LuaValue.tableOf();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            tableOf.set(i11 - i10, LuaValue.valueOf(strArr[i11]));
        }
        tableOf.set(0, LuaValue.valueOf(str));
        tableOf.set(-1, LuaValue.valueOf("luaj"));
        luaValue.set("arg", tableOf);
        return tableOf.unpack();
    }

    private static void usageExit() {
        System.out.println(usage);
        System.exit(-1);
    }
}
