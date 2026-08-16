package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;

public class OpenableElementInfo extends JavaElementInfo {
    protected volatile IJavaElement[] children = JavaElement.NO_ELEMENTS;
    protected boolean isStructureKnown = false;
    protected IModuleDescription module;
    protected Object[] nonJavaResources;

    public void addChild(IJavaElement iJavaElement) {
        IJavaElement[] iJavaElementArr = this.children;
        int length = iJavaElementArr.length;
        if (length == 0) {
            this.children = new IJavaElement[]{iJavaElement};
            return;
        }
        for (IJavaElement iJavaElement2 : iJavaElementArr) {
            if (iJavaElement2.equals(iJavaElement)) {
                return;
            }
        }
        IJavaElement[] iJavaElementArr2 = new IJavaElement[1 + length];
        System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, length);
        iJavaElementArr2[length] = iJavaElement;
        this.children = iJavaElementArr2;
    }

    @Override
    public IJavaElement[] getChildren() {
        return this.children;
    }

    public IModuleDescription getModule() {
        return this.module;
    }

    public boolean isStructureKnown() {
        return this.isStructureKnown;
    }

    public void removeChild(IJavaElement iJavaElement) {
        IJavaElement[] iJavaElementArr = this.children;
        int length = iJavaElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (iJavaElementArr[i10].equals(iJavaElement)) {
                if (length == 1) {
                    this.children = JavaElement.NO_ELEMENTS;
                    return;
                }
                int i11 = length - 1;
                IJavaElement[] iJavaElementArr2 = new IJavaElement[i11];
                System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
                if (i10 < i11) {
                    System.arraycopy(iJavaElementArr, i10 + 1, iJavaElementArr2, i10, i11 - i10);
                }
                this.children = iJavaElementArr2;
                return;
            }
        }
    }

    public void setChildren(IJavaElement[] iJavaElementArr) {
        if (iJavaElementArr.length <= 0) {
            iJavaElementArr = JavaElement.NO_ELEMENTS;
        }
        this.children = iJavaElementArr;
    }

    public void setIsStructureKnown(boolean z10) {
        this.isStructureKnown = z10;
    }

    public void setModule(IModuleDescription iModuleDescription) {
        this.module = iModuleDescription;
    }

    public void setNonJavaResources(Object[] objArr) {
        this.nonJavaResources = objArr;
    }
}
