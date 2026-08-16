package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.core.util.DOMFinder;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import yd.C16181m;

public abstract class SourceRefElement extends JavaElement implements ISourceReference {
    public int occurrenceCount;

    public SourceRefElement(JavaElement javaElement) {
        super(javaElement);
        this.occurrenceCount = 1;
    }

    @Override
    public void closing(Object obj) throws JavaModelException {
    }

    public void copy(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().copy(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, iJavaElement2 != null ? new IJavaElement[]{iJavaElement2} : null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    @Override
    public Object createElementInfo() {
        return null;
    }

    public void delete(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        getJavaModel().delete(new IJavaElement[]{this}, z10, iProgressMonitor);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof SourceRefElement) && this.occurrenceCount == ((SourceRefElement) obj).occurrenceCount && super.equals(obj);
    }

    @Override
    public ASTNode findNode(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
        try {
            return new DOMFinder(compilationUnit, this, false).search();
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public void generateInfos(Object obj, HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException {
        Openable openable = (Openable) getOpenableParent();
        if (openable != null && ((JavaElementInfo) JavaModelManager.getJavaModelManager().getInfo(openable)) == null) {
            openable.generateInfos(openable.createElementInfo(), hashMap, iProgressMonitor);
        }
    }

    public IAnnotation getAnnotation(String str) {
        return new Annotation(this, str);
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        return ((AnnotatableInfo) getElementInfo()).annotations;
    }

    @Override
    public ICompilationUnit getCompilationUnit() {
        return (ICompilationUnit) getAncestor(5);
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        if (exists()) {
            return null;
        }
        throw newNotPresentException();
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        return str.charAt(0) != '!' ? this : getHandleUpdatingCountFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        super.getHandleMemento(stringBuffer);
        if (this.occurrenceCount > 1) {
            stringBuffer.append('!');
            stringBuffer.append(this.occurrenceCount);
        }
    }

    public IJavaElement getHandleUpdatingCountFromMemento(MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        this.occurrenceCount = Integer.parseInt(mementoTokenizer.nextToken());
        return !mementoTokenizer.hasMoreTokens() ? this : getHandleFromMemento(mementoTokenizer.nextToken(), mementoTokenizer, workingCopyOwner);
    }

    public int getOccurrenceCount() {
        return this.occurrenceCount;
    }

    @Override
    public IOpenable getOpenableParent() {
        for (IJavaElement parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof IOpenable) {
                return (IOpenable) parent;
            }
        }
        return null;
    }

    public IPath getPath() {
        return getParent().getPath();
    }

    public String getSource() throws JavaModelException {
        IBuffer buffer = getOpenableParent().getBuffer();
        if (buffer == null) {
            return null;
        }
        ISourceRange sourceRange = getSourceRange();
        int offset = sourceRange.getOffset();
        int length = sourceRange.getLength();
        if (offset != -1 && length != 0) {
            try {
                return buffer.getText(offset, length);
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        return ((SourceRefElementInfo) getElementInfo()).getSourceRange();
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (exists()) {
            return getParent().getUnderlyingResource();
        }
        throw newNotPresentException();
    }

    @Override
    public boolean hasChildren() throws JavaModelException {
        return getChildren().length > 0;
    }

    public boolean isStructureKnown() throws JavaModelException {
        return true;
    }

    public void move(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().move(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, iJavaElement2 != null ? new IJavaElement[]{iJavaElement2} : null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    public void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        IJavaElement[] iJavaElementArr = {getParent()};
        getJavaModel().rename(new IJavaElement[]{this}, iJavaElementArr, new String[]{str}, z10, iProgressMonitor);
    }

    @Override
    public IResource resource() {
        return this.parent.resource();
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        super.toStringName(stringBuffer);
        if (this.occurrenceCount > 1) {
            stringBuffer.append(C16181m.f130230g);
            stringBuffer.append(this.occurrenceCount);
        }
    }
}
