package org.eclipse.jdt.internal.core.nd.java;

public interface ClasspathResolver {
    public static final int NOT_ON_CLASSPATH = -1;

    int resolve(NdResourceFile ndResourceFile, NdResourceFile ndResourceFile2);
}
