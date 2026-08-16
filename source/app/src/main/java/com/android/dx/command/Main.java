package com.android.dx.command;

import java.io.PrintStream;

public class Main {
    private static final String USAGE_MESSAGE = "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.13).\n  dx --help\n    Print this message.";

    private Main() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void main(String[] strArr) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        int i10 = 0;
        while (true) {
            try {
                if (i10 >= strArr.length) {
                    z11 = false;
                    break;
                }
                String str = strArr[i10];
                if (str.equals("--") || !str.startsWith("--")) {
                    break;
                }
                try {
                    if (str.equals("--dex")) {
                        com.android.dx.command.dexer.Main.main(without(strArr, i10));
                        break;
                    }
                    if (str.equals("--dump")) {
                        com.android.dx.command.dump.Main.main(without(strArr, i10));
                        break;
                    }
                    if (str.equals("--annotool")) {
                        com.android.dx.command.annotool.Main.main(without(strArr, i10));
                        break;
                    }
                    if (str.equals("--find-usages")) {
                        com.android.dx.command.findusages.Main.main(without(strArr, i10));
                        break;
                    }
                    if (str.equals("--version")) {
                        version();
                        break;
                    } else {
                        if (str.equals("--help")) {
                            z11 = true;
                            z12 = true;
                            break;
                        }
                        i10++;
                    }
                } catch (UsageException unused) {
                    z12 = true;
                    z11 = true;
                    if (!z12) {
                    }
                    if (z11) {
                    }
                } catch (RuntimeException e10) {
                    e = e10;
                    z10 = true;
                    System.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                    e.printStackTrace();
                    System.exit(2);
                    z11 = false;
                    z12 = z10;
                    if (!z12) {
                    }
                    if (z11) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z10 = true;
                    PrintStream printStream = System.err;
                    printStream.println("\nUNEXPECTED TOP-LEVEL ERROR:");
                    th.printStackTrace();
                    if ((th instanceof NoClassDefFoundError) || (th instanceof NoSuchMethodError)) {
                        printStream.println("Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)");
                    }
                    System.exit(3);
                    z11 = false;
                    z12 = z10;
                    if (!z12) {
                    }
                    if (z11) {
                    }
                }
            } catch (UsageException unused2) {
            } catch (RuntimeException e11) {
                e = e11;
                z10 = false;
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
        }
        z11 = false;
        z12 = true;
        if (!z12) {
            System.err.println("error: no command specified");
            z11 = true;
        }
        if (z11) {
            return;
        }
        usage();
        System.exit(1);
    }

    private static void usage() {
        System.err.println(USAGE_MESSAGE);
    }

    private static void version() {
        System.err.println("dx version 1.13");
        System.exit(0);
    }

    private static String[] without(String[] strArr, int i10) {
        int length = strArr.length - 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, i10);
        System.arraycopy(strArr, i10 + 1, strArr2, i10, length - i10);
        return strArr2;
    }
}
