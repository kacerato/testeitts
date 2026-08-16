package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;

public class RenameResourceElementsOperation extends MoveResourceElementsOperation {
    public RenameResourceElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, String[] strArr, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
        setRenamings(strArr);
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_renameResourceProgress;
    }

    @Override
    public boolean isRename() {
        return true;
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        super.verify(iJavaElement);
        int elementType = iJavaElement.getElementType();
        if (elementType != 5 && elementType != 4) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        if (elementType == 5) {
            CompilationUnit compilationUnit = (CompilationUnit) iJavaElement;
            if (compilationUnit.isWorkingCopy() && !compilationUnit.isPrimary()) {
                error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
            }
        }
        verifyRenaming(iJavaElement);
    }
}
