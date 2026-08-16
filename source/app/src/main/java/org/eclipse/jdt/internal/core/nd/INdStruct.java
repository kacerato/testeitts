package org.eclipse.jdt.internal.core.nd;

public interface INdStruct {
    static long addressOf(INdStruct iNdStruct) {
        if (iNdStruct == null) {
            return 0L;
        }
        return iNdStruct.getAddress();
    }

    long getAddress();

    Nd getNd();
}
