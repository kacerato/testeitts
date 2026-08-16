package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CopyElementsOperation extends MultiOperation implements SuffixConstants {
    private Map sources;

    public CopyElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
        this.sources = new HashMap();
    }

    private String getSourceFor(IJavaElement iJavaElement) throws JavaModelException {
        String str = (String) this.sources.get(iJavaElement);
        if (str != null || !(iJavaElement instanceof IMember)) {
            return str;
        }
        String source = ((IMember) iJavaElement).getSource();
        this.sources.put(iJavaElement, source);
        return source;
    }

    private IJavaElement resolveRenameAnchor(IJavaElement iJavaElement) throws JavaModelException {
        for (IJavaElement iJavaElement2 : ((IParent) iJavaElement.getParent()).getChildren()) {
            if (iJavaElement2.equals(iJavaElement)) {
                return iJavaElement2;
            }
        }
        return null;
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_copyElementProgress;
    }

    public JavaModelOperation getNestedOperation(IJavaElement iJavaElement) {
        try {
            IJavaElement destinationParent = getDestinationParent(iJavaElement);
            switch (iJavaElement.getElementType()) {
                case 7:
                    if (!isRenamingMainType(iJavaElement, destinationParent)) {
                        String sourceFor = getSourceFor(iJavaElement);
                        return new CreateTypeOperation(destinationParent, String.valueOf(sourceFor) + Util.getLineSeparator(sourceFor, iJavaElement.getJavaProject()), this.force);
                    }
                    String fileExtension = iJavaElement.getPath().getFileExtension();
                    return new RenameResourceElementsOperation(new IJavaElement[]{destinationParent}, new IJavaElement[]{destinationParent.getParent()}, new String[]{String.valueOf(getNewNameFor(iJavaElement)) + '.' + fileExtension}, this.force);
                case 8:
                    String sourceFor2 = getSourceFor(iJavaElement);
                    return new CreateFieldOperation((IType) destinationParent, String.valueOf(sourceFor2) + Util.getLineSeparator(sourceFor2, iJavaElement.getJavaProject()), this.force);
                case 9:
                    String sourceFor3 = getSourceFor(iJavaElement);
                    return new CreateMethodOperation((IType) destinationParent, String.valueOf(sourceFor3) + Util.getLineSeparator(sourceFor3, iJavaElement.getJavaProject()), this.force);
                case 10:
                    String sourceFor4 = getSourceFor(iJavaElement);
                    return new CreateInitializerOperation((IType) destinationParent, String.valueOf(sourceFor4) + Util.getLineSeparator(sourceFor4, iJavaElement.getJavaProject()));
                case 11:
                    return new CreatePackageDeclarationOperation(iJavaElement.getElementName(), (ICompilationUnit) destinationParent);
                case 12:
                default:
                    return null;
                case 13:
                    return new CreateImportOperation(iJavaElement.getElementName(), (ICompilationUnit) destinationParent, ((IImportDeclaration) iJavaElement).getFlags());
            }
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public boolean isRenamingMainType(IJavaElement iJavaElement, IJavaElement iJavaElement2) throws JavaModelException {
        if ((isRename() || getNewNameFor(iJavaElement) != null) && iJavaElement2.getElementType() == 5) {
            if (iJavaElement.getElementName().equals(Util.getNameWithoutJavaLikeExtension(iJavaElement2.getElementName())) && iJavaElement.getParent().equals(iJavaElement2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void processElement(IJavaElement iJavaElement) throws JavaModelException {
        IJavaElement resolveRenameAnchor;
        JavaModelOperation nestedOperation = getNestedOperation(iJavaElement);
        boolean z10 = nestedOperation instanceof CreateElementInCUOperation;
        if (nestedOperation == null) {
            return;
        }
        if (z10) {
            IJavaElement iJavaElement2 = (IJavaElement) this.insertBeforeElements.get(iJavaElement);
            if (iJavaElement2 != null) {
                ((CreateElementInCUOperation) nestedOperation).setRelativePosition(iJavaElement2, 3);
            } else if (isRename() && (resolveRenameAnchor = resolveRenameAnchor(iJavaElement)) != null) {
                ((CreateElementInCUOperation) nestedOperation).setRelativePosition(resolveRenameAnchor, 2);
            }
            String newNameFor = getNewNameFor(iJavaElement);
            if (newNameFor != null) {
                ((CreateElementInCUOperation) nestedOperation).setAlteredName(newNameFor);
            }
        }
        executeNestedOperation(nestedOperation, 1);
        JavaElement javaElement = (JavaElement) getDestinationParent(iJavaElement);
        ICompilationUnit compilationUnit = javaElement.getCompilationUnit();
        if (!compilationUnit.isWorkingCopy()) {
            compilationUnit.close();
        }
        if (z10 && isMove() && !isRenamingMainType(iJavaElement, javaElement)) {
            executeNestedOperation(new DeleteElementsOperation(new IJavaElement[]{iJavaElement}, this.force), 1);
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        String[] strArr = this.renamingsList;
        if (strArr != null && strArr.length != this.elementsToProcess.length) {
            return new JavaModelStatus(IJavaModelStatusConstants.INDEX_OUT_OF_BOUNDS);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    public CopyElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement iJavaElement, boolean z10) {
        this(iJavaElementArr, new IJavaElement[]{iJavaElement}, z10);
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        if (iJavaElement == null || !iJavaElement.exists()) {
            error(969, iJavaElement);
        }
        if (iJavaElement.getElementType() < 7) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        if (iJavaElement.isReadOnly()) {
            error(976, iJavaElement);
        }
        IJavaElement destinationParent = getDestinationParent(iJavaElement);
        verifyDestination(iJavaElement, destinationParent);
        verifySibling(iJavaElement, destinationParent);
        if (this.renamingsList != null) {
            verifyRenaming(iJavaElement);
        }
    }
}
