package org.eclipse.jdt.core.util;

public abstract class ClassFileBytesDisassembler {
    public static final int COMPACT = 8;
    public static final int DEFAULT = 2;
    public static final int DETAILED = 1;
    public static final int SYSTEM = 4;
    public static final int WORKING_COPY = 16;

    public abstract String disassemble(byte[] bArr, String str) throws ClassFormatException;

    public abstract String disassemble(byte[] bArr, String str, int i10) throws ClassFormatException;

    public abstract String getDescription();
}
