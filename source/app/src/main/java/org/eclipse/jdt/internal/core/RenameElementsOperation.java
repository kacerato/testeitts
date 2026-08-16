package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;

public class RenameElementsOperation extends MoveElementsOperation {
    public RenameElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, String[] strArr, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
        setRenamings(strArr);
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_renameElementProgress;
    }

    @Override
    public boolean isRename() {
        return true;
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        String[] strArr = this.renamingsList;
        if (strArr != null && strArr.length != 0) {
            return JavaModelStatus.VERIFIED_OK;
        }
        return new JavaModelStatus(IJavaModelStatusConstants.NULL_NAME);
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        if (iJavaElement == null || !iJavaElement.exists()) {
            error(969, iJavaElement);
        }
        if (iJavaElement.isReadOnly()) {
            error(976, iJavaElement);
        }
        if (!(iJavaElement instanceof ISourceReference)) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        int elementType = iJavaElement.getElementType();
        if (elementType < 7 || elementType == 10) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        verifyRenaming(iJavaElement);
    }
}
