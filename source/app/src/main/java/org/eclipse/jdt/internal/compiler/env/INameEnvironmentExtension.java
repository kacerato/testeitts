package org.eclipse.jdt.internal.compiler.env;

public interface INameEnvironmentExtension extends INameEnvironment {
    default NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, boolean z10) {
        return findType(cArr, cArr2, z10, null);
    }

    NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, boolean z10, char[] cArr3);
}
