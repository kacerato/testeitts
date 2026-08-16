package org.eclipse.jdt.internal.compiler.env;

public interface INameEnvironment {
    void cleanup();

    NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2);

    NameEnvironmentAnswer findType(char[][] cArr);

    boolean isPackage(char[][] cArr, char[] cArr2);
}
