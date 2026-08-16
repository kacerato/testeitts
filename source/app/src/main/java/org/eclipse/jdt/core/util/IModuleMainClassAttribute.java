package org.eclipse.jdt.core.util;

public interface IModuleMainClassAttribute extends IClassFileAttribute {
    int getMainClassIndex();

    char[] getMainClassName();
}
