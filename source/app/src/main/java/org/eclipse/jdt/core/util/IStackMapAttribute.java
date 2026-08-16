package org.eclipse.jdt.core.util;

public interface IStackMapAttribute extends IClassFileAttribute {
    int getNumberOfEntries();

    IStackMapFrame[] getStackMapFrame();
}
