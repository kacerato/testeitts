package org.eclipse.jdt.core.util;

public interface IStackMapTableAttribute extends IClassFileAttribute {
    int getNumberOfEntries();

    IStackMapFrame[] getStackMapFrame();
}
