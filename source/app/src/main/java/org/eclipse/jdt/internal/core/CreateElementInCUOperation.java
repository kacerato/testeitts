package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.dom.rewrite.ListRewrite;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class CreateElementInCUOperation extends JavaModelOperation {
    protected static final int INSERT_AFTER = 2;
    protected static final int INSERT_BEFORE = 3;
    protected static final int INSERT_LAST = 1;
    protected IJavaElement anchorElement;
    protected boolean creationOccurred;
    protected org.eclipse.jdt.core.dom.CompilationUnit cuAST;
    protected int insertionPolicy;

    public CreateElementInCUOperation(IJavaElement iJavaElement) {
        super((IJavaElement[]) null, new IJavaElement[]{iJavaElement});
        this.insertionPolicy = 1;
        this.anchorElement = null;
        this.creationOccurred = true;
        initializeDefaultPosition();
    }

    @Override
    public void checkCanceled() {
        if (this.isNested) {
            return;
        }
        super.checkCanceled();
    }

    public void createAfter(IJavaElement iJavaElement) {
        setRelativePosition(iJavaElement, 2);
    }

    public void createBefore(IJavaElement iJavaElement) {
        setRelativePosition(iJavaElement, 3);
    }

    @Override
    public void executeOperation() throws JavaModelException {
        try {
            beginTask(getMainTaskName(), getMainAmountOfWork());
            JavaElementDelta newJavaElementDelta = newJavaElementDelta();
            ICompilationUnit compilationUnit = getCompilationUnit();
            generateNewCompilationUnitAST(compilationUnit);
            if (this.creationOccurred) {
                int i10 = 0;
                compilationUnit.save(null, false);
                boolean isWorkingCopy = compilationUnit.isWorkingCopy();
                if (!isWorkingCopy) {
                    JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
                }
                worked(1);
                this.resultElements = generateResultHandles();
                if (!isWorkingCopy && !Util.isExcluded(compilationUnit) && compilationUnit.getParent().exists()) {
                    while (true) {
                        IJavaElement[] iJavaElementArr = this.resultElements;
                        if (i10 >= iJavaElementArr.length) {
                            break;
                        }
                        newJavaElementDelta.added(iJavaElementArr[i10]);
                        i10++;
                    }
                    addDelta(newJavaElementDelta);
                }
            }
            done();
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }

    public abstract ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException;

    public void generateNewCompilationUnitAST(ICompilationUnit iCompilationUnit) throws JavaModelException {
        org.eclipse.jdt.core.dom.CompilationUnit parse = parse(iCompilationUnit);
        this.cuAST = parse;
        ASTRewrite create = ASTRewrite.create(parse.getAST());
        ASTNode generateElementAST = generateElementAST(create, iCompilationUnit);
        if (generateElementAST != null) {
            ASTNode findNode = ((JavaElement) getParentElement()).findNode(this.cuAST);
            if (findNode == null) {
                findNode = this.cuAST;
            }
            insertASTNode(create, findNode, generateElementAST);
            applyTextEdit(iCompilationUnit, create.rewriteAST());
        }
        worked(1);
    }

    public abstract IJavaElement generateResultHandle();

    public IJavaElement[] generateResultHandles() {
        return new IJavaElement[]{generateResultHandle()};
    }

    public abstract StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode aSTNode);

    public ICompilationUnit getCompilationUnit() {
        return getCompilationUnitFor(getParentElement());
    }

    public int getMainAmountOfWork() {
        return 2;
    }

    public abstract String getMainTaskName();

    @Override
    public ISchedulingRule getSchedulingRule() {
        IResource resource = getCompilationUnit().getResource();
        return resource.getWorkspace().getRuleFactory().modifyRule(resource);
    }

    public void initializeDefaultPosition() {
    }

    public void insertASTNode(ASTRewrite aSTRewrite, ASTNode aSTNode, ASTNode aSTNode2) throws JavaModelException {
        StructuralPropertyDescriptor childPropertyDescriptor = getChildPropertyDescriptor(aSTNode);
        if (!(childPropertyDescriptor instanceof ChildListPropertyDescriptor)) {
            aSTRewrite.set(aSTNode, childPropertyDescriptor, aSTNode2, null);
            return;
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = (ChildListPropertyDescriptor) childPropertyDescriptor;
        ListRewrite listRewrite = aSTRewrite.getListRewrite(aSTNode, childListPropertyDescriptor);
        int i10 = this.insertionPolicy;
        if (i10 == 1) {
            listRewrite.insertLast(aSTNode2, null);
            return;
        }
        if (i10 == 2) {
            ASTNode findNode = ((JavaElement) this.anchorElement).findNode(this.cuAST);
            if (childListPropertyDescriptor.getElementType().isAssignableFrom(findNode.getClass())) {
                listRewrite.insertAfter(aSTNode2, findNode, null);
                return;
            } else {
                listRewrite.insertLast(aSTNode2, null);
                return;
            }
        }
        if (i10 != 3) {
            return;
        }
        ASTNode findNode2 = ((JavaElement) this.anchorElement).findNode(this.cuAST);
        if (childListPropertyDescriptor.getElementType().isAssignableFrom(findNode2.getClass())) {
            listRewrite.insertBefore(aSTNode2, findNode2, null);
        } else {
            listRewrite.insertLast(aSTNode2, null);
        }
    }

    public org.eclipse.jdt.core.dom.CompilationUnit parse(ICompilationUnit iCompilationUnit) throws JavaModelException {
        iCompilationUnit.makeConsistent(this.progressMonitor);
        ASTParser newParser = ASTParser.newParser(11);
        newParser.setSource(iCompilationUnit);
        return (org.eclipse.jdt.core.dom.CompilationUnit) newParser.createAST(this.progressMonitor);
    }

    public void setAlteredName(String str) {
    }

    public void setRelativePosition(IJavaElement iJavaElement, int i10) throws IllegalArgumentException {
        if (iJavaElement == null) {
            this.anchorElement = null;
            this.insertionPolicy = 1;
        } else {
            this.anchorElement = iJavaElement;
            this.insertionPolicy = i10;
        }
    }

    @Override
    public IJavaModelStatus verify() {
        if (getParentElement() == null) {
            return new JavaModelStatus(968);
        }
        IJavaElement iJavaElement = this.anchorElement;
        if (iJavaElement != null) {
            IJavaElement parent = iJavaElement.getParent();
            if (parent.getElementType() == 12) {
                parent = parent.getParent();
            }
            if (!parent.equals(getParentElement())) {
                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_SIBLING, this.anchorElement);
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}
