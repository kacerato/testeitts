package defpackage;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import org.luaj.vm2.Globals;
import org.luaj.vm2.Print;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.compiler.DumpState;
import org.luaj.vm2.lib.jse.JsePlatform;

public class luac {
    private static final String usage = "usage: java -cp luaj-jse.jar luac [options] [filenames].\nAvailable options are:\n  -        process stdin\n  -l       list\n  -o name  output to file 'name' (default is \"luac.out\")\n  -p       parse only\n  -s       strip debug information\n  -e       little endian format for numbers\n  -i<n>    number format 'n', (n=0,1 or 4, default=0)\n  -v       show version information\n  -c enc  \tuse the supplied encoding 'enc' for input files\n  --       stop handling options\n";
    private static final String version = "Luaj-jse 3.0.1Copyright (C) 2009 luaj.org";
    private String encoding;
    private boolean list;
    private boolean littleendian;
    private int numberformat;
    private String output;
    private boolean parseonly;
    private boolean processing;
    private boolean stripdebug;
    private boolean versioninfo;

    private luac(String[] strArr) throws IOException {
        this.list = false;
        this.output = "luac.out";
        this.parseonly = false;
        this.stripdebug = false;
        this.littleendian = false;
        this.numberformat = 0;
        this.versioninfo = false;
        this.processing = true;
        this.encoding = null;
        int i10 = 0;
        while (i10 < strArr.length) {
            try {
                if (this.processing && strArr[i10].startsWith("-") && strArr[i10].length() > 1) {
                    char charAt = strArr[i10].charAt(1);
                    if (charAt == '-') {
                        if (strArr[i10].length() > 2) {
                            usageExit();
                        }
                        this.processing = false;
                    } else if (charAt == 'c') {
                        i10++;
                        if (i10 >= strArr.length) {
                            usageExit();
                        }
                        this.encoding = strArr[i10];
                    } else if (charAt == 'e') {
                        this.littleendian = true;
                    } else if (charAt == 'i') {
                        if (strArr[i10].length() <= 2) {
                            usageExit();
                        }
                        this.numberformat = Integer.parseInt(strArr[i10].substring(2));
                    } else if (charAt == 'l') {
                        this.list = true;
                    } else if (charAt == 's') {
                        this.stripdebug = true;
                    } else if (charAt == 'v') {
                        this.versioninfo = true;
                    } else if (charAt == 'o') {
                        i10++;
                        if (i10 >= strArr.length) {
                            usageExit();
                        }
                        this.output = strArr[i10];
                    } else if (charAt != 'p') {
                        usageExit();
                    } else {
                        this.parseonly = true;
                    }
                }
                i10++;
            } catch (IOException e10) {
                System.err.println(e10.toString());
                System.exit(-2);
                return;
            }
        }
        if (this.versioninfo) {
            System.out.println(version);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.output);
        try {
            Globals standardGlobals = JsePlatform.standardGlobals();
            this.processing = true;
            int i11 = 0;
            while (i11 < strArr.length) {
                if (this.processing && strArr[i11].startsWith("-")) {
                    if (strArr[i11].length() <= 1) {
                        processScript(standardGlobals, System.f92798in, "=stdin", fileOutputStream);
                    } else {
                        char charAt2 = strArr[i11].charAt(1);
                        if (charAt2 == '-') {
                            this.processing = false;
                        } else if (charAt2 == 'c' || charAt2 == 'o') {
                            i11++;
                        }
                    }
                    i11++;
                }
                processScript(standardGlobals, new FileInputStream(strArr[i11]), strArr[i11].substring(0, r9.length() - 4), fileOutputStream);
                i11++;
            }
            fileOutputStream.close();
        } finally {
            fileOutputStream.close();
        }
    }

    public static void main(String[] strArr) throws IOException {
        new luac(strArr);
    }

    private void processScript(Globals globals, InputStream inputStream, String str, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(inputStream);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Prototype compilePrototype = this.encoding != null ? globals.compilePrototype(new InputStreamReader(bufferedInputStream, this.encoding), str) : globals.compilePrototype(bufferedInputStream, str);
            if (this.list) {
                Print.printCode(compilePrototype);
            }
            if (!this.parseonly) {
                DumpState.dump(compilePrototype, outputStream, this.stripdebug, this.numberformat, this.littleendian);
            }
            bufferedInputStream.close();
        } catch (Exception e11) {
            e = e11;
            inputStream = bufferedInputStream;
            e.printStackTrace(System.err);
            inputStream.close();
        } catch (Throwable th3) {
            th = th3;
            inputStream = bufferedInputStream;
            inputStream.close();
            throw th;
        }
    }

    private static void usageExit() {
        System.out.println(usage);
        System.exit(-1);
    }
}
