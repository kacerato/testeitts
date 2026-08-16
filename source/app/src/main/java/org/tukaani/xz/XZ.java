package org.tukaani.xz;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class XZ {
    public static final int CHECK_CRC32 = 1;
    public static final int CHECK_CRC64 = 4;
    public static final int CHECK_NONE = 0;
    public static final int CHECK_SHA256 = 10;
    public static final byte[] HEADER_MAGIC = {-3, Opcodes.OPC_lstore, 122, Opcodes.OPC_pop2, 90, 0};
    public static final byte[] FOOTER_MAGIC = {Opcodes.OPC_dup, 90};

    private XZ() {
    }
}
