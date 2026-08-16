package com.android.tools.r8.graph;

import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class K2 {

    public static final boolean f36525c = true;

    public int f36526a;

    public final L2 f36527b;

    public K2(int i10, L2 l22) {
        this.f36527b = l22;
        this.f36526a = i10;
    }

    public final boolean a() {
        int i10 = this.f36526a;
        byte[] bArr = this.f36527b.f36562f;
        return i10 < bArr.length && (bArr[i10] & 255) != 0;
    }

    public final char b() {
        byte b10;
        int i10;
        if (!a()) {
            throw new NoSuchElementException();
        }
        byte[] bArr = this.f36527b.f36562f;
        int i11 = this.f36526a;
        int i12 = i11 + 1;
        this.f36526a = i12;
        char c10 = (char) (bArr[i11] & 255);
        if (!f36525c && c10 == 0) {
            throw new AssertionError();
        }
        if (c10 < '\u0080') {
            return c10;
        }
        if ((c10 & '\u00e0') == 192) {
            this.f36526a = i11 + 2;
            b10 = bArr[i12];
            int i13 = b10 & 255;
            if ((b10 & Opcodes.OPC_checkcast) != 128) {
                throw L2.e(c10, i13);
            }
            i10 = (c10 & H2.c.f7959b) << 6;
        } else {
            if ((c10 & '\u00f0') != 224) {
                throw L2.k(c10);
            }
            int i14 = i11 + 2;
            this.f36526a = i14;
            byte b11 = bArr[i12];
            int i15 = b11 & 255;
            this.f36526a = i11 + 3;
            b10 = bArr[i14];
            int i16 = b10 & 255;
            if ((b11 & Opcodes.OPC_checkcast) != 128 || (b10 & Opcodes.OPC_checkcast) != 128) {
                throw L2.a(c10, i15, i16);
            }
            i10 = ((c10 & 15) << 12) | ((b11 & Opcodes.OPC_lstore_0) << 6);
        }
        return (char) ((b10 & Opcodes.OPC_lstore_0) | i10);
    }
}
