package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;

public abstract class MultiOperation extends JavaModelOperation {
    protected Map insertBeforeElements;
    protected Map newParents;
    protected Map renamings;
    protected String[] renamingsList;

    public MultiOperation(IJavaElement[] iJavaElementArr, boolean z10) {
        super(iJavaElementArr, z10);
        this.insertBeforeElements = new HashMap(1);
        this.renamingsList = null;
    }

    private void initializeRenamings() {
        String[] strArr = this.renamingsList;
        if (strArr == null || strArr.length != this.elementsToProcess.length) {
            return;
        }
        this.renamings = new HashMap(this.renamingsList.length);
        int i10 = 0;
        while (true) {
            String[] strArr2 = this.renamingsList;
            if (i10 >= strArr2.length) {
                return;
            }
            String str = strArr2[i10];
            if (str != null) {
                this.renamings.put(this.elementsToProcess[i10], str);
            }
            i10++;
        }
    }

    public void error(int i10, IJavaElement iJavaElement) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(i10, iJavaElement));
    }

    @Override
    public void executeOperation() throws JavaModelException {
        processElements();
    }

    public IJavaElement getDestinationParent(IJavaElement iJavaElement) {
        return (IJavaElement) this.newParents.get(iJavaElement);
    }

    public abstract String getMainTaskName();

    public String getNewNameFor(IJavaElement iJavaElement) throws JavaModelException {
        Map map = this.renamings;
        String str = map != null ? (String) map.get(iJavaElement) : null;
        return (str == null && (iJavaElement instanceof IMethod) && ((IMethod) iJavaElement).isConstructor()) ? getDestinationParent(iJavaElement).getElementName() : str;
    }

    public boolean isMove() {
        return false;
    }

    public boolean isRename() {
        return false;
    }

    public abstract void processElement(IJavaElement iJavaElement) throws JavaModelException;

    public void processElements() throws JavaModelException {
        try {
            beginTask(getMainTaskName(), this.elementsToProcess.length);
            IJavaModelStatus[] iJavaModelStatusArr = new IJavaModelStatus[3];
            int i10 = 0;
            int i11 = 0;
            while (true) {
                IJavaElement[] iJavaElementArr = this.elementsToProcess;
                if (i10 >= iJavaElementArr.length) {
                    break;
                }
                try {
                    try {
                        verify(iJavaElementArr[i10]);
                        processElement(this.elementsToProcess[i10]);
                    } finally {
                        worked(1);
                    }
                } catch (JavaModelException e10) {
                    if (i11 == iJavaModelStatusArr.length) {
                        IJavaModelStatus[] iJavaModelStatusArr2 = new IJavaModelStatus[i11 * 2];
                        System.arraycopy(iJavaModelStatusArr, 0, iJavaModelStatusArr2, 0, i11);
                        iJavaModelStatusArr = iJavaModelStatusArr2;
                    }
                    int i12 = i11 + 1;
                    iJavaModelStatusArr[i11] = e10.getJavaModelStatus();
                    worked(1);
                    i11 = i12;
                }
                i10++;
            }
            if (i11 == 1) {
                throw new JavaModelException(iJavaModelStatusArr[0]);
            }
            if (i11 <= 1) {
                done();
                return;
            }
            if (i11 != iJavaModelStatusArr.length) {
                IJavaModelStatus[] iJavaModelStatusArr3 = new IJavaModelStatus[i11];
                System.arraycopy(iJavaModelStatusArr, 0, iJavaModelStatusArr3, 0, i11);
                iJavaModelStatusArr = iJavaModelStatusArr3;
            }
            throw new JavaModelException(JavaModelStatus.newMultiStatus(iJavaModelStatusArr));
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }

    public void setInsertBefore(IJavaElement iJavaElement, IJavaElement iJavaElement2) {
        this.insertBeforeElements.put(iJavaElement, iJavaElement2);
    }

    public void setRenamings(String[] strArr) {
        this.renamingsList = strArr;
        initializeRenamings();
    }

    public abstract void verify(IJavaElement iJavaElement) throws JavaModelException;

    public void verifyDestination(IJavaElement iJavaElement, IJavaElement iJavaElement2) throws JavaModelException {
        if (iJavaElement2 == null || !iJavaElement2.exists()) {
            error(969, iJavaElement2);
        }
        int elementType = iJavaElement2.getElementType();
        switch (iJavaElement.getElementType()) {
            case 4:
                if (((IPackageFragment) iJavaElement).getParent().isReadOnly()) {
                    error(976, iJavaElement);
                    return;
                } else {
                    if (elementType != 3) {
                        error(978, iJavaElement);
                        return;
                    }
                    return;
                }
            case 5:
                if (elementType != 4) {
                    error(978, iJavaElement);
                    return;
                }
                CompilationUnit compilationUnit = (CompilationUnit) iJavaElement;
                if (isMove() && compilationUnit.isWorkingCopy() && !compilationUnit.isPrimary()) {
                    error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
                    return;
                }
                return;
            case 6:
            case 12:
            default:
                error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
                return;
            case 7:
                if (elementType == 5 || elementType == 7) {
                    return;
                }
                error(978, iJavaElement);
                return;
            case 8:
            case 9:
            case 10:
                if (elementType != 7 || (iJavaElement2 instanceof BinaryType)) {
                    error(978, iJavaElement);
                    return;
                }
                return;
            case 11:
            case 13:
                if (elementType != 5) {
                    error(978, iJavaElement);
                    return;
                }
                return;
        }
    }

    public void verifyRenaming(IJavaElement iJavaElement) throws JavaModelException {
        String newNameFor = getNewNameFor(iJavaElement);
        IJavaProject javaProject = iJavaElement.getJavaProject();
        String option = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
        String option2 = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        int elementType = iJavaElement.getElementType();
        if (elementType != 4) {
            if (elementType != 5) {
                if (elementType != 10 && JavaConventions.validateIdentifier(newNameFor, option, option2).getSeverity() != 4) {
                    return;
                }
            } else if (JavaConventions.validateCompilationUnitName(newNameFor, option, option2).getSeverity() != 4) {
                return;
            }
        } else {
            if (((IPackageFragment) iJavaElement).isDefaultPackage()) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, iJavaElement));
            }
            if (JavaConventions.validatePackageName(newNameFor, option, option2).getSeverity() != 4) {
                return;
            }
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_NAME, iJavaElement, newNameFor));
    }

    public void verifySibling(IJavaElement iJavaElement, IJavaElement iJavaElement2) throws JavaModelException {
        IJavaElement iJavaElement3 = (IJavaElement) this.insertBeforeElements.get(iJavaElement);
        if (iJavaElement3 != null) {
            if (iJavaElement3.exists() && iJavaElement3.getParent().equals(iJavaElement2)) {
                return;
            }
            error(IJavaModelStatusConstants.INVALID_SIBLING, iJavaElement3);
        }
    }

    public MultiOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
        this.insertBeforeElements = new HashMap(1);
        this.renamingsList = null;
        this.newParents = new HashMap(iJavaElementArr.length);
        if (iJavaElementArr.length == iJavaElementArr2.length) {
            for (int i10 = 0; i10 < iJavaElementArr.length; i10++) {
                this.newParents.put(iJavaElementArr[i10], iJavaElementArr2[i10]);
            }
        } else {
            for (IJavaElement iJavaElement : iJavaElementArr) {
                this.newParents.put(iJavaElement, iJavaElementArr2[0]);
            }
        }
    }
}
