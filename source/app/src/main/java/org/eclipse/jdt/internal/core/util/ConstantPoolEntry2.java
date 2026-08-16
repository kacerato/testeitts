package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.IConstantPoolEntry3;

public class ConstantPoolEntry2 extends ConstantPoolEntry implements IConstantPoolEntry3 {
    private int bootstrapMethodAttributeIndex;
    private int descriptorIndex;
    private int moduleIndex;
    private char[] moduleName;
    private int packageIndex;
    private char[] packageName;
    private int referenceIndex;
    private int referenceKind;

    @Override
    public int getBootstrapMethodAttributeIndex() {
        return this.bootstrapMethodAttributeIndex;
    }

    @Override
    public int getDescriptorIndex() {
        return this.descriptorIndex;
    }

    @Override
    public int getModuleIndex() {
        return this.moduleIndex;
    }

    @Override
    public char[] getModuleName() {
        return this.moduleName;
    }

    @Override
    public int getPackageIndex() {
        return this.packageIndex;
    }

    @Override
    public char[] getPackageName() {
        return this.packageName;
    }

    @Override
    public int getReferenceIndex() {
        return this.referenceIndex;
    }

    @Override
    public int getReferenceKind() {
        return this.referenceKind;
    }

    @Override
    public void reset() {
        super.reset();
        this.descriptorIndex = 0;
        this.referenceKind = 0;
        this.referenceIndex = 0;
        this.bootstrapMethodAttributeIndex = 0;
        this.moduleIndex = 0;
        this.moduleName = null;
        this.packageIndex = 0;
        this.packageName = null;
    }

    public void setBootstrapMethodAttributeIndex(int i10) {
        this.bootstrapMethodAttributeIndex = i10;
    }

    public void setDescriptorIndex(int i10) {
        this.descriptorIndex = i10;
    }

    public void setModuleIndex(int i10) {
        this.moduleIndex = i10;
    }

    public void setModuleName(char[] cArr) {
        this.moduleName = cArr;
    }

    public void setPackageIndex(int i10) {
        this.packageIndex = i10;
    }

    public void setPackageName(char[] cArr) {
        this.packageName = cArr;
    }

    public void setReferenceIndex(int i10) {
        this.referenceIndex = i10;
    }

    public void setReferenceKind(int i10) {
        this.referenceKind = i10;
    }
}
