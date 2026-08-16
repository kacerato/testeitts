package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class DeleteElementsOperation extends MultiOperation {
    protected Map childrenToRemove;
    protected ASTParser parser;

    public DeleteElementsOperation(IJavaElement[] iJavaElementArr, boolean z10) {
        super(iJavaElementArr, z10);
        initASTParser();
    }

    private void deleteElement(IJavaElement iJavaElement, ICompilationUnit iCompilationUnit) throws JavaModelException {
        iCompilationUnit.makeConsistent(this.progressMonitor);
        this.parser.setSource(iCompilationUnit);
        org.eclipse.jdt.core.dom.CompilationUnit compilationUnit = (org.eclipse.jdt.core.dom.CompilationUnit) this.parser.createAST(this.progressMonitor);
        ASTNode findNode = ((JavaElement) iJavaElement).findNode(compilationUnit);
        if (findNode == null) {
            Assert.isTrue(false, "Failed to locate " + iJavaElement.getElementName() + " in " + iCompilationUnit.getElementName());
        }
        ASTRewrite create = ASTRewrite.create(compilationUnit.getAST());
        create.remove(findNode, null);
        applyTextEdit(iCompilationUnit, create.rewriteAST());
    }

    private void initASTParser() {
        this.parser = ASTParser.newParser(11);
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_deleteElementProgress;
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        IResource resource;
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        return (iJavaElementArr == null || iJavaElementArr.length != 1 || (resource = iJavaElementArr[0].getResource()) == null) ? super.getSchedulingRule() : ResourcesPlugin.getWorkspace().getRuleFactory().modifyRule(resource);
    }

    public void groupElements() throws JavaModelException {
        this.childrenToRemove = new HashMap(1);
        int length = this.elementsToProcess.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            IJavaElement iJavaElement = this.elementsToProcess[i12];
            ICompilationUnit compilationUnitFor = getCompilationUnitFor(iJavaElement);
            if (compilationUnitFor == null) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, iJavaElement));
            }
            IRegion iRegion = (IRegion) this.childrenToRemove.get(compilationUnitFor);
            if (iRegion == null) {
                iRegion = new Region();
                this.childrenToRemove.put(compilationUnitFor, iRegion);
                i11++;
            }
            iRegion.add(iJavaElement);
        }
        this.elementsToProcess = new IJavaElement[i11];
        Iterator it = this.childrenToRemove.o().iterator();
        while (it.hasNext()) {
            this.elementsToProcess[i10] = (IJavaElement) it.next();
            i10++;
        }
    }

    @Override
    public void processElement(IJavaElement iJavaElement) throws JavaModelException {
        ICompilationUnit iCompilationUnit = (ICompilationUnit) iJavaElement;
        int length = iCompilationUnit.getImports().length;
        JavaElementDelta javaElementDelta = new JavaElementDelta(iCompilationUnit);
        for (IJavaElement iJavaElement2 : ((IRegion) this.childrenToRemove.get(iCompilationUnit)).getElements()) {
            if (iJavaElement2.exists()) {
                deleteElement(iJavaElement2, iCompilationUnit);
                javaElementDelta.removed(iJavaElement2);
                if (iJavaElement2.getElementType() == 13 && length - 1 == 0) {
                    javaElementDelta.removed(iCompilationUnit.getImportContainer());
                }
            }
        }
        if (javaElementDelta.getAffectedChildren().length > 0) {
            iCompilationUnit.save(getSubProgressMonitor(1), this.force);
            if (iCompilationUnit.isWorkingCopy()) {
                return;
            }
            addDelta(javaElementDelta);
            JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
        }
    }

    @Override
    public void processElements() throws JavaModelException {
        groupElements();
        super.processElements();
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        for (IJavaElement iJavaElement2 : ((IRegion) this.childrenToRemove.get(iJavaElement)).getElements()) {
            if (iJavaElement2.getCorrespondingResource() != null) {
                error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement2);
            }
            if (iJavaElement2.isReadOnly()) {
                error(976, iJavaElement2);
            }
        }
    }
}
