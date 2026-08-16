package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry3;
import org.eclipse.jdt.core.util.IModuleAttribute;
import org.eclipse.jdt.core.util.IPackageVisibilityInfo;
import org.eclipse.jdt.core.util.IProvidesInfo;
import org.eclipse.jdt.core.util.IRequiresInfo;

public class ModuleAttribute extends ClassFileAttribute implements IModuleAttribute {
    private int exportsCount;
    private IPackageVisibilityInfo[] exportsInfo;
    private int moduleFlags;
    private char[] moduleName;
    private int moduleNameIndex;
    private int moduleVersionIndex;
    private char[] moduleVersionValue;
    private int opensCount;
    private IPackageVisibilityInfo[] opensInfo;
    private int providesCount;
    private IProvidesInfo[] providesInfo;
    private int requiresCount;
    private IRequiresInfo[] requiresInfo;
    private int usesCount;
    private int[] usesIndices;
    private char[][] usesNames;
    static final IRequiresInfo[] NO_REQUIRES = new IRequiresInfo[0];
    static final IPackageVisibilityInfo[] NO_PACKAGE_VISIBILITY_INFOS = new IPackageVisibilityInfo[0];
    static final int[] NO_USES = new int[0];
    static final IProvidesInfo[] NO_PROVIDES_INFOS = new IProvidesInfo[0];

    public ModuleAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.moduleNameIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 19) {
            throw new ClassFormatException(3);
        }
        this.moduleName = ((IConstantPoolEntry3) decodeEntry).getModuleName();
        this.moduleFlags = u2At(bArr, 8, i10);
        int u2At2 = u2At(bArr, 10, i10);
        this.moduleVersionIndex = u2At2;
        if (u2At2 != 0) {
            IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At2);
            if (decodeEntry2.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.moduleVersionValue = decodeEntry2.getUtf8Value();
        } else {
            this.moduleVersionValue = CharOperation.NO_CHAR;
        }
        int u2At3 = u2At(bArr, 12, i10);
        this.requiresCount = u2At3;
        int i11 = 14;
        if (u2At3 != 0) {
            this.requiresInfo = new RequiresInfo[u2At3];
            for (int i12 = 0; i12 < this.requiresCount; i12++) {
                this.requiresInfo[i12] = new RequiresInfo(bArr, iConstantPool, i10 + i11);
                i11 += 6;
            }
        } else {
            this.requiresInfo = NO_REQUIRES;
        }
        int u2At4 = u2At(bArr, i11, i10);
        this.exportsCount = u2At4;
        int i13 = i11 + 2;
        if (u2At4 != 0) {
            this.exportsInfo = new PackageVisibilityInfo[u2At4];
            for (int i14 = 0; i14 < this.exportsCount; i14++) {
                this.exportsInfo[i14] = new PackageVisibilityInfo(bArr, iConstantPool, i10 + i13);
                i13 += (this.exportsInfo[i14].getTargetsCount() * 2) + 6;
            }
        } else {
            this.exportsInfo = NO_PACKAGE_VISIBILITY_INFOS;
        }
        int u2At5 = u2At(bArr, i13, i10);
        this.opensCount = u2At5;
        int i15 = i13 + 2;
        if (u2At5 != 0) {
            this.opensInfo = new PackageVisibilityInfo[u2At5];
            for (int i16 = 0; i16 < this.opensCount; i16++) {
                this.opensInfo[i16] = new PackageVisibilityInfo(bArr, iConstantPool, i10 + i15);
                i15 += (this.opensInfo[i16].getTargetsCount() * 2) + 6;
            }
        } else {
            this.opensInfo = NO_PACKAGE_VISIBILITY_INFOS;
        }
        int u2At6 = u2At(bArr, i15, i10);
        this.usesCount = u2At6;
        int i17 = i15 + 2;
        if (u2At6 != 0) {
            this.usesIndices = new int[u2At6];
            this.usesNames = new char[u2At6];
            for (int i18 = 0; i18 < this.usesCount; i18++) {
                this.usesIndices[i18] = u2At(bArr, i17, i10);
                i17 += 2;
                IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(this.usesIndices[i18]);
                if (decodeEntry3.getKind() != 7) {
                    throw new ClassFormatException(3);
                }
                this.usesNames[i18] = decodeEntry3.getClassInfoName();
            }
        } else {
            this.usesIndices = NO_USES;
            this.usesNames = CharOperation.NO_CHAR_CHAR;
        }
        int u2At7 = u2At(bArr, i17, i10);
        this.providesCount = u2At7;
        int i19 = i17 + 2;
        if (u2At7 == 0) {
            this.providesInfo = NO_PROVIDES_INFOS;
            return;
        }
        this.providesInfo = new ProvidesInfo[u2At7];
        for (int i20 = 0; i20 < this.providesCount; i20++) {
            this.providesInfo[i20] = new ProvidesInfo(bArr, iConstantPool, i10 + i19);
            i19 += (this.providesInfo[i20].getImplementationsCount() * 2) + 4;
        }
    }

    @Override
    public int getExportsCount() {
        return this.exportsCount;
    }

    @Override
    public IPackageVisibilityInfo[] getExportsInfo() {
        return this.exportsInfo;
    }

    @Override
    public int getModuleFlags() {
        return this.moduleFlags;
    }

    @Override
    public char[] getModuleName() {
        return this.moduleName;
    }

    @Override
    public int getModuleNameIndex() {
        return this.moduleNameIndex;
    }

    @Override
    public int getModuleVersionIndex() {
        return this.moduleVersionIndex;
    }

    @Override
    public char[] getModuleVersionValue() {
        return this.moduleVersionValue;
    }

    @Override
    public int getOpensCount() {
        return this.opensCount;
    }

    @Override
    public IPackageVisibilityInfo[] getOpensInfo() {
        return this.opensInfo;
    }

    @Override
    public int getProvidesCount() {
        return this.providesCount;
    }

    @Override
    public IProvidesInfo[] getProvidesInfo() {
        return this.providesInfo;
    }

    @Override
    public int getRequiresCount() {
        return this.requiresCount;
    }

    @Override
    public IRequiresInfo[] getRequiresInfo() {
        return this.requiresInfo;
    }

    @Override
    public char[][] getUsesClassNames() {
        return this.usesNames;
    }

    @Override
    public int getUsesCount() {
        return this.usesCount;
    }

    @Override
    public int[] getUsesIndices() {
        return this.usesIndices;
    }
}
