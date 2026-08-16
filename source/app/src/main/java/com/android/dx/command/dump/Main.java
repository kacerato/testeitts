package com.android.dx.command.dump;

import com.android.dex.util.FileUtils;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.util.HexParser;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

public class Main {
    private Args parsedArgs = new Args();

    private Main() {
    }

    public static void main(String[] strArr) {
        new Main().run(strArr);
    }

    private void processOne(String str, byte[] bArr) {
        Args args = this.parsedArgs;
        if (args.dotDump) {
            DotDumper.dump(bArr, str, args);
            return;
        }
        if (args.basicBlocks) {
            BlockDumper.dump(bArr, System.out, str, false, args);
            return;
        }
        if (args.ropBlocks) {
            BlockDumper.dump(bArr, System.out, str, true, args);
        } else if (!args.ssaBlocks) {
            ClassDumper.dump(bArr, System.out, str, args);
        } else {
            args.optimize = false;
            SsaDumper.dump(bArr, System.out, str, args);
        }
    }

    private void run(String[] strArr) {
        int i10 = 0;
        while (i10 < strArr.length) {
            String str = strArr[i10];
            if (str.equals("--") || !str.startsWith("--")) {
                break;
            }
            if (str.equals("--bytes")) {
                this.parsedArgs.rawBytes = true;
            } else if (str.equals("--basic-blocks")) {
                this.parsedArgs.basicBlocks = true;
            } else if (str.equals("--rop-blocks")) {
                this.parsedArgs.ropBlocks = true;
            } else if (str.equals("--optimize")) {
                this.parsedArgs.optimize = true;
            } else if (str.equals("--ssa-blocks")) {
                this.parsedArgs.ssaBlocks = true;
            } else if (str.startsWith("--ssa-step=")) {
                this.parsedArgs.ssaStep = str.substring(str.indexOf(61) + 1);
            } else if (str.equals("--debug")) {
                this.parsedArgs.debug = true;
            } else if (str.equals("--dot")) {
                this.parsedArgs.dotDump = true;
            } else if (str.equals("--strict")) {
                this.parsedArgs.strictParse = true;
            } else if (str.startsWith("--width=")) {
                this.parsedArgs.width = Integer.parseInt(str.substring(str.indexOf(61) + 1));
            } else {
                if (!str.startsWith("--method=")) {
                    System.err.println("unknown option: " + str);
                    throw new RuntimeException("usage");
                }
                this.parsedArgs.method = str.substring(str.indexOf(61) + 1);
            }
            i10++;
        }
        if (i10 == strArr.length) {
            System.err.println("no input files specified");
            throw new RuntimeException("usage");
        }
        while (i10 < strArr.length) {
            try {
                String str2 = strArr[i10];
                System.out.println("reading " + str2 + "...");
                byte[] readFile = FileUtils.readFile(str2);
                if (!str2.endsWith(".class")) {
                    try {
                        readFile = HexParser.parse(new String(readFile, "utf-8"));
                    } catch (UnsupportedEncodingException e10) {
                        throw new RuntimeException("shouldn't happen", e10);
                        break;
                    }
                }
                processOne(str2, readFile);
            } catch (ParseException e11) {
                PrintStream printStream = System.err;
                printStream.println("\ntrouble parsing:");
                if (this.parsedArgs.debug) {
                    e11.printStackTrace();
                } else {
                    e11.printContext(printStream);
                }
            }
            i10++;
        }
    }
}
