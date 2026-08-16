package org.eclipse.jdt.core.util;

public interface ISourceAttribute extends IClassFileAttribute {
    int getSourceFileIndex();

    char[] getSourceFileName();
}
