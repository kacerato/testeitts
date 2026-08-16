package org.eclipse.jdt.core.util;

public interface IClassFileDisassembler {
    public static final int DEFAULT = 2;
    public static final int DETAILED = 1;

    String disassemble(IClassFileReader iClassFileReader, String str);

    String disassemble(IClassFileReader iClassFileReader, String str, int i10);
}
