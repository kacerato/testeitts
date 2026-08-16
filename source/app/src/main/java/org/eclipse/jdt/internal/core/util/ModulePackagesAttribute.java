package org.eclipse.jdt.internal.core.util;

import java.lang.reflect.Array;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry3;
import org.eclipse.jdt.core.util.IModulePackagesAttribute;

public class ModulePackagesAttribute extends ClassFileAttribute implements IModulePackagesAttribute {
    private int[] packageIndices;
    private char[][] packageNames;
    private int packagesCount;

    public ModulePackagesAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.packagesCount = u2At;
        if (u2At == 0) {
            this.packageNames = CharOperation.NO_CHAR_CHAR;
            return;
        }
        this.packageIndices = new int[u2At];
        this.packageNames = (char[][]) Array.newInstance(Character.TYPE, u2At, 0);
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.packageIndices[i12] = u2At(bArr, i11, i10);
            i11 += 2;
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(this.packageIndices[i12]);
            if (decodeEntry.getKind() != 20) {
                throw new ClassFormatException(3);
            }
            char[] packageName = ((IConstantPoolEntry3) decodeEntry).getPackageName();
            char[][] cArr = this.packageNames;
            if (packageName == null) {
                packageName = CharOperation.NO_CHAR;
            }
            cArr[i12] = packageName;
        }
    }

    @Override
    public int[] getPackageIndices() {
        return this.packageIndices;
    }

    @Override
    public char[][] getPackageNames() {
        return this.packageNames;
    }

    @Override
    public int getPackagesCount() {
        return this.packagesCount;
    }
}
