package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.util.Messages;

public class MoveElementsOperation extends CopyElementsOperation {
    public MoveElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_moveElementProgress;
    }

    @Override
    public boolean isMove() {
        return true;
    }
}
