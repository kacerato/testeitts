package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.dex.DexOptions;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IndentingWriter;
import com.android.dx.util.TwoColumnOutput;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringWriter;

public abstract class BaseDumper implements ParseObserver {
    protected Args args;
    private int at;
    private final byte[] bytes;
    protected final DexOptions dexOptions;
    private final String filePath;
    private final int hexCols;
    private int indent;
    private final PrintStream out;
    private final boolean rawBytes;
    private String separator;
    private final boolean strictParse;
    private final int width;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        if (r1 > 10) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BaseDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        this.bytes = bArr;
        boolean z10 = args.rawBytes;
        this.rawBytes = z10;
        this.out = printStream;
        int i10 = args.width;
        i10 = i10 <= 0 ? 79 : i10;
        this.width = i10;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.indent = 0;
        this.separator = z10 ? "|" : "";
        this.at = 0;
        this.args = args;
        this.dexOptions = new DexOptions();
        int i11 = (((i10 - 5) / 15) + 1) & (-2);
        int i12 = i11 >= 6 ? 10 : 6;
        i11 = i12;
        this.hexCols = i11;
    }

    public static int computeParamWidth(ConcreteMethod concreteMethod, boolean z10) {
        return concreteMethod.getEffectiveDescriptor().getParameterTypes().getWordCount();
    }

    @Override
    public void changeIndent(int i10) {
        this.indent += i10;
        this.separator = this.rawBytes ? "|" : "";
        for (int i11 = 0; i11 < this.indent; i11++) {
            this.separator += GlideException.a.f59088e;
        }
    }

    @Override
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
    }

    public final int getAt() {
        return this.at;
    }

    public final byte[] getBytes() {
        return this.bytes;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final boolean getRawBytes() {
        return this.rawBytes;
    }

    public final boolean getStrictParse() {
        return this.strictParse;
    }

    public final int getWidth1() {
        if (!this.rawBytes) {
            return 0;
        }
        int i10 = this.hexCols;
        return (i10 * 2) + 5 + (i10 / 2);
    }

    public final int getWidth2() {
        return (this.width - (this.rawBytes ? getWidth1() + 1 : 0)) - (this.indent * 2);
    }

    public final String hexDump(int i10, int i11) {
        return Hex.dump(this.bytes, i10, i11, i10, this.hexCols, 4);
    }

    @Override
    public void parsed(ByteArray byteArray, int i10, int i11, String str) {
        int underlyingOffset = byteArray.underlyingOffset(i10, getBytes());
        boolean rawBytes = getRawBytes();
        int i12 = this.at;
        if (underlyingOffset < i12) {
            println("<dump skipped backwards to " + Hex.u4(underlyingOffset) + ">");
            this.at = underlyingOffset;
        } else if (underlyingOffset > i12) {
            print(twoColumns(rawBytes ? hexDump(i12, underlyingOffset - i12) : "", "<skipped to " + Hex.u4(underlyingOffset) + ">"));
            this.at = underlyingOffset;
        }
        print(twoColumns(rawBytes ? hexDump(underlyingOffset, i11) : "", str));
        this.at += i11;
    }

    public final void print(String str) {
        this.out.print(str);
    }

    public final void println(String str) {
        this.out.println(str);
    }

    public final void setAt(ByteArray byteArray, int i10) {
        this.at = byteArray.underlyingOffset(i10, this.bytes);
    }

    @Override
    public void startParsingMember(ByteArray byteArray, int i10, String str, String str2) {
    }

    public final String twoColumns(String str, String str2) {
        int width1 = getWidth1();
        int width2 = getWidth2();
        try {
            if (width1 != 0) {
                return TwoColumnOutput.toString(str, width1, this.separator, str2, width2);
            }
            int length = str2.length();
            StringWriter stringWriter = new StringWriter(length * 2);
            IndentingWriter indentingWriter = new IndentingWriter(stringWriter, width2, this.separator);
            indentingWriter.write(str2);
            if (length != 0) {
                if (str2.charAt(length - 1) != '\n') {
                }
                indentingWriter.flush();
                return stringWriter.toString();
            }
            indentingWriter.write(10);
            indentingWriter.flush();
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
