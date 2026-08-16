package org.eclipse.jdt.core.util;

public interface ILineNumberAttribute extends IClassFileAttribute {
    int[][] getLineNumberTable();

    int getLineNumberTableLength();
}
