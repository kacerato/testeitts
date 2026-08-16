package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry3;
import org.eclipse.jdt.core.util.IPackageVisibilityInfo;

public class PackageVisibilityInfo extends ClassFileStruct implements IPackageVisibilityInfo {
    private int flags;
    private int index;
    private char[] packageName;
    private int[] targetModuleIndices;
    private char[][] targetModuleNames;
    private int targetsCount;

    public PackageVisibilityInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.index = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 20) {
            throw new ClassFormatException(3);
        }
        char[] packageName = ((IConstantPoolEntry3) decodeEntry).getPackageName();
        this.packageName = packageName == null ? CharOperation.NO_CHAR : packageName;
        this.flags = u2At(bArr, 2, i10);
        int u2At2 = u2At(bArr, 4, i10);
        this.targetsCount = u2At2;
        if (u2At2 == 0) {
            this.targetModuleIndices = new int[0];
            this.targetModuleNames = CharOperation.NO_CHAR_CHAR;
            return;
        }
        this.targetModuleIndices = new int[u2At2];
        this.targetModuleNames = new char[u2At2];
        int i11 = 6;
        for (int i12 = 0; i12 < this.targetsCount; i12++) {
            this.targetModuleIndices[i12] = u2At(bArr, i11, i10);
            i11 += 2;
            IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(this.targetModuleIndices[i12]);
            if (decodeEntry2.getKind() != 19) {
                throw new ClassFormatException(3);
            }
            char[] moduleName = ((IConstantPoolEntry3) decodeEntry2).getModuleName();
            char[][] cArr = this.targetModuleNames;
            if (moduleName == null) {
                moduleName = CharOperation.NO_CHAR;
            }
            cArr[i12] = moduleName;
        }
    }

    @Override
    public int getFlags() {
        return this.flags;
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public char[] getPackageName() {
        return this.packageName;
    }

    @Override
    public int[] getTargetModuleIndices() {
        return this.targetModuleIndices;
    }

    @Override
    public char[][] getTargetModuleNames() {
        return this.targetModuleNames;
    }

    @Override
    public int getTargetsCount() {
        return this.targetsCount;
    }
}
