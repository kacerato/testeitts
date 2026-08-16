package org.eclipse.jdt.core.util;

public interface IRequiresInfo {
    int getRequiresFlags();

    int getRequiresIndex();

    char[] getRequiresModuleName();

    int getRequiresVersionIndex();

    char[] getRequiresVersionValue();
}
