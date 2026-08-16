package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public abstract class AbstractC8671nw0 {
    public static boolean a(byte b10) {
        return b10 >= 0;
    }

    public static boolean b(byte b10) {
        return b10 > -65;
    }

    public static void a(byte b10, byte b11, char[] cArr, int i10) {
        if (b10 >= -62 && !b(b11)) {
            cArr[i10] = (char) (((b10 & 31) << 6) | (b11 & Opcodes.OPC_lstore_0));
            return;
        }
        throw new MJ("Protocol message had invalid UTF-8.");
    }

    public static void a(byte b10, byte b11, byte b12, char[] cArr, int i10) {
        if (!b(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !b(b12)))) {
            cArr[i10] = (char) (((b10 & 15) << 12) | ((b11 & Opcodes.OPC_lstore_0) << 6) | (b12 & Opcodes.OPC_lstore_0));
            return;
        }
        throw new MJ("Protocol message had invalid UTF-8.");
    }

    public static void a(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) {
        if (!b(b11)) {
            if ((((b11 + 112) + (b10 << 28)) >> 30) == 0 && !b(b12) && !b(b13)) {
                int i11 = ((b10 & 7) << 18) | ((b11 & Opcodes.OPC_lstore_0) << 12) | ((b12 & Opcodes.OPC_lstore_0) << 6) | (b13 & Opcodes.OPC_lstore_0);
                cArr[i10] = (char) ((i11 >>> 10) + 55232);
                cArr[i10 + 1] = (char) ((i11 & 1023) + 56320);
                return;
            }
        }
        throw new MJ("Protocol message had invalid UTF-8.");
    }
}
