package org.eclipse.jdt.internal.compiler.env;

public interface IBinaryModule extends IModule {
    IBinaryAnnotation[] getAnnotations();

    long getTagBits();
}
