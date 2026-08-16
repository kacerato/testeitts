package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public abstract class JavaModelOperation implements IWorkspaceRunnable, IProgressMonitor {
    protected static final int APPEND = 1;
    public static final String HAS_MODIFIED_RESOURCE_ATTR = "hasModifiedResource";
    protected static final int KEEP_EXISTING = 3;
    protected static final IJavaElement[] NO_ELEMENTS = new IJavaElement[0];
    protected static final ThreadLocal OPERATION_STACKS = new ThreadLocal();
    protected static boolean POST_ACTION_VERBOSE = false;
    protected static final int REMOVEALL_APPEND = 2;
    public static final String TRUE = "true";
    protected IPostAction[] actions;
    protected int actionsEnd;
    protected int actionsStart;
    protected HashMap attributes;
    protected IJavaElement[] elementsToProcess;
    protected boolean force;
    protected boolean isNested;
    protected IJavaElement[] parentElements;
    public SubMonitor progressMonitor;
    protected IJavaElement[] resultElements;

    public interface IPostAction {
        String getID();

        void run() throws JavaModelException;
    }

    public JavaModelOperation() {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.force = false;
    }

    public static Object getAttribute(Object obj) {
        HashMap hashMap;
        ArrayList currentOperationStack = getCurrentOperationStack();
        if (currentOperationStack.size() == 0 || (hashMap = ((JavaModelOperation) currentOperationStack.get(0)).attributes) == null) {
            return null;
        }
        return hashMap.get(obj);
    }

    public static ArrayList getCurrentOperationStack() {
        ThreadLocal threadLocal = OPERATION_STACKS;
        ArrayList arrayList = (ArrayList) threadLocal.get();
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        threadLocal.set(arrayList2);
        return arrayList2;
    }

    public static void setAttribute(Object obj, Object obj2) {
        ArrayList currentOperationStack = getCurrentOperationStack();
        if (currentOperationStack.size() == 0) {
            return;
        }
        JavaModelOperation javaModelOperation = (JavaModelOperation) currentOperationStack.get(0);
        if (javaModelOperation.attributes == null) {
            javaModelOperation.attributes = new HashMap();
        }
        javaModelOperation.attributes.put(obj, obj2);
    }

    public void addAction(IPostAction iPostAction) {
        IPostAction[] iPostActionArr = this.actions;
        int length = iPostActionArr.length;
        int i10 = this.actionsEnd + 1;
        this.actionsEnd = i10;
        if (length == i10) {
            IPostAction[] iPostActionArr2 = new IPostAction[length * 2];
            this.actions = iPostActionArr2;
            System.arraycopy(iPostActionArr, 0, iPostActionArr2, 0, length);
        }
        this.actions[this.actionsEnd] = iPostAction;
    }

    public void addDelta(IJavaElementDelta iJavaElementDelta) {
        JavaModelManager.getJavaModelManager().getDeltaProcessor().registerJavaModelDelta(iJavaElementDelta);
    }

    public void addReconcileDelta(ICompilationUnit iCompilationUnit, IJavaElementDelta iJavaElementDelta) {
        Map<ICompilationUnit, IJavaElementDelta> map = JavaModelManager.getJavaModelManager().getDeltaProcessor().reconcileDeltas;
        JavaElementDelta javaElementDelta = (JavaElementDelta) map.get(iCompilationUnit);
        if (javaElementDelta == null) {
            map.put(iCompilationUnit, iJavaElementDelta);
            return;
        }
        for (IJavaElementDelta iJavaElementDelta2 : iJavaElementDelta.getAffectedChildren()) {
            JavaElementDelta javaElementDelta2 = (JavaElementDelta) iJavaElementDelta2;
            javaElementDelta.insertDeltaTree(javaElementDelta2.getElement(), javaElementDelta2);
        }
        if ((iJavaElementDelta.getFlags() & 524288) != 0) {
            javaElementDelta.changedAST(iJavaElementDelta.getCompilationUnitAST());
        }
    }

    public void applyTextEdit(ICompilationUnit iCompilationUnit, TextEdit textEdit) throws JavaModelException {
        try {
            textEdit.apply(getDocument(iCompilationUnit));
        } catch (BadLocationException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.INVALID_CONTENTS);
        }
    }

    public void beginTask(String str, int i10) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.beginTask(str, i10);
        }
    }

    public boolean canModifyRoots() {
        return false;
    }

    public void checkCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException(Messages.operation_cancelled);
        }
    }

    public IJavaModelStatus commonVerify() {
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        if (iJavaElementArr == null || iJavaElementArr.length == 0) {
            return new JavaModelStatus(968);
        }
        int i10 = 0;
        while (true) {
            IJavaElement[] iJavaElementArr2 = this.elementsToProcess;
            if (i10 >= iJavaElementArr2.length) {
                return JavaModelStatus.VERIFIED_OK;
            }
            if (iJavaElementArr2[i10] == null) {
                return new JavaModelStatus(968);
            }
            i10++;
        }
    }

    public void copyResources(IResource[] iResourceArr, IPath iPath) throws JavaModelException {
        IProgressMonitor subProgressMonitor = getSubProgressMonitor(iResourceArr.length);
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        try {
            for (IResource iResource : iResourceArr) {
                IPath append = iPath.append(iResource.getName());
                if (root.findMember(append) == null) {
                    iResource.copy(append, false, subProgressMonitor);
                }
            }
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public void createFile(IContainer iContainer, String str, InputStream inputStream, boolean z10) throws JavaModelException {
        try {
            iContainer.getFile(new Path(str)).create(inputStream, z10 ? 3 : 2, getSubProgressMonitor(1));
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public void createFolder(IContainer iContainer, String str, boolean z10) throws JavaModelException {
        try {
            iContainer.getFolder(new Path(str)).create(z10 ? 3 : 2, true, getSubProgressMonitor(1));
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void deleteEmptyPackageFragment(IPackageFragment iPackageFragment, boolean z10, IResource iResource) throws JavaModelException {
        IContainer resource = ((JavaElement) iPackageFragment).resource();
        try {
            resource.delete(z10 ? 3 : 2, getSubProgressMonitor(1));
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
            while (resource instanceof IFolder) {
                resource = resource.getParent();
                if (resource.equals(iResource) || resource.members().length != 0) {
                    return;
                }
                resource.delete(z10 ? 3 : 2, getSubProgressMonitor(1));
                setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
            }
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public void deleteResource(IResource iResource, int i10) throws JavaModelException {
        try {
            iResource.delete(i10, getSubProgressMonitor(1));
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public void deleteResources(IResource[] iResourceArr, boolean z10) throws JavaModelException {
        if (iResourceArr == null || iResourceArr.length == 0) {
            return;
        }
        try {
            iResourceArr[0].getWorkspace().delete(iResourceArr, z10 ? 3 : 2, getSubProgressMonitor(iResourceArr.length));
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public void done() {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.done();
        }
    }

    public boolean equalsOneOf(IPath iPath, IPath[] iPathArr) {
        for (IPath iPath2 : iPathArr) {
            if (iPath.equals(iPath2)) {
                return true;
            }
        }
        return false;
    }

    public void executeNestedOperation(JavaModelOperation javaModelOperation, int i10) throws JavaModelException {
        IJavaModelStatus verify = javaModelOperation.verify();
        if (!verify.isOK()) {
            throw new JavaModelException(verify);
        }
        IProgressMonitor subProgressMonitor = getSubProgressMonitor(i10);
        try {
            javaModelOperation.setNested(true);
            javaModelOperation.run(subProgressMonitor);
        } catch (CoreException e10) {
            if (e10 instanceof JavaModelException) {
                throw ((JavaModelException) e10);
            }
            if (e10.getStatus().getCode() == 76) {
                e10.getStatus().getException();
            }
            throw new JavaModelException(e10);
        }
    }

    public abstract void executeOperation() throws JavaModelException;

    public int firstActionWithID(String str, int i10) {
        while (i10 <= this.actionsEnd) {
            if (this.actions[i10].getID().equals(str)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public ICompilationUnit getCompilationUnitFor(IJavaElement iJavaElement) {
        return ((JavaElement) iJavaElement).getCompilationUnit();
    }

    public IDocument getDocument(ICompilationUnit iCompilationUnit) throws JavaModelException {
        IDocument buffer = iCompilationUnit.getBuffer();
        return buffer instanceof IDocument ? buffer : new DocumentAdapter(buffer);
    }

    public IJavaElement getElementToProcess() {
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        if (iJavaElementArr == null || iJavaElementArr.length == 0) {
            return null;
        }
        return iJavaElementArr[0];
    }

    public IJavaModel getJavaModel() {
        return JavaModelManager.getJavaModelManager().getJavaModel();
    }

    public IPath[] getNestedFolders(IPackageFragmentRoot iPackageFragmentRoot) throws JavaModelException {
        IPath path = iPackageFragmentRoot.getPath();
        IClasspathEntry[] rawClasspath = iPackageFragmentRoot.getJavaProject().getRawClasspath();
        int length = rawClasspath.length;
        IPath[] iPathArr = new IPath[length];
        int i10 = 0;
        for (IClasspathEntry iClasspathEntry : rawClasspath) {
            IPath path2 = iClasspathEntry.getPath();
            if (path.isPrefixOf(path2) && !path.equals(path2)) {
                iPathArr[i10] = path2;
                i10++;
            }
        }
        if (i10 >= length) {
            return iPathArr;
        }
        IPath[] iPathArr2 = new IPath[i10];
        System.arraycopy(iPathArr, 0, iPathArr2, 0, i10);
        return iPathArr2;
    }

    public IJavaElement getParentElement() {
        IJavaElement[] iJavaElementArr = this.parentElements;
        if (iJavaElementArr == null || iJavaElementArr.length == 0) {
            return null;
        }
        return iJavaElementArr[0];
    }

    public IJavaElement[] getParentElements() {
        return this.parentElements;
    }

    public IJavaElement[] getResultElements() {
        return this.resultElements;
    }

    public ISchedulingRule getSchedulingRule() {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    public IProgressMonitor getSubProgressMonitor(int i10) {
        return this.progressMonitor.split(i10);
    }

    public boolean hasModifiedResource() {
        return !isReadOnly() && getAttribute(HAS_MODIFIED_RESOURCE_ATTR) == "true";
    }

    public void internalWorked(double d10) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.internalWorked(d10);
        }
    }

    public boolean isCanceled() {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            return subMonitor.isCanceled();
        }
        return false;
    }

    public boolean isReadOnly() {
        return false;
    }

    public boolean isTopLevelOperation() {
        ArrayList currentOperationStack = getCurrentOperationStack();
        return currentOperationStack.size() > 0 && currentOperationStack.get(0) == this;
    }

    public void moveResources(IResource[] iResourceArr, IPath iPath) throws JavaModelException {
        SubMonitor newChild = this.progressMonitor.newChild(iResourceArr.length);
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        try {
            for (IResource iResource : iResourceArr) {
                IPath append = iPath.append(iResource.getName());
                if (root.findMember(append) == null) {
                    iResource.move(append, false, newChild.split(1));
                }
            }
            setAttribute(HAS_MODIFIED_RESOURCE_ATTR, "true");
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public JavaElementDelta newJavaElementDelta() {
        return new JavaElementDelta(getJavaModel());
    }

    public JavaModelOperation popOperation() {
        ArrayList currentOperationStack = getCurrentOperationStack();
        int size = currentOperationStack.size();
        if (size <= 0) {
            return null;
        }
        if (size == 1) {
            OPERATION_STACKS.set(null);
        }
        return (JavaModelOperation) currentOperationStack.remove(size - 1);
    }

    public void postAction(IPostAction iPostAction, int i10) {
        if (POST_ACTION_VERBOSE) {
            PrintStream printStream = System.out;
            printStream.print("(" + ((Object) Thread.currentThread()) + ") [JavaModelOperation.postAction(IPostAction, int)] Posting action " + iPostAction.getID());
            if (i10 == 1) {
                printStream.println(" (APPEND)");
            } else if (i10 == 2) {
                printStream.println(" (REMOVEALL_APPEND)");
            } else if (i10 == 3) {
                printStream.println(" (KEEP_EXISTING)");
            }
        }
        JavaModelOperation javaModelOperation = (JavaModelOperation) getCurrentOperationStack().get(0);
        IPostAction[] iPostActionArr = javaModelOperation.actions;
        if (iPostActionArr == null) {
            javaModelOperation.actions = r9;
            IPostAction[] iPostActionArr2 = {iPostAction};
            javaModelOperation.actionsEnd = 0;
            return;
        }
        String id2 = iPostAction.getID();
        if (i10 == 1) {
            javaModelOperation.addAction(iPostAction);
            return;
        }
        if (i10 != 2) {
            if (i10 == 3 && javaModelOperation.firstActionWithID(id2, 0) < 0) {
                javaModelOperation.addAction(iPostAction);
                return;
            }
            return;
        }
        int i11 = this.actionsStart - 1;
        while (true) {
            i11 = javaModelOperation.firstActionWithID(id2, i11 + 1);
            if (i11 < 0) {
                javaModelOperation.addAction(iPostAction);
                return;
            }
            System.arraycopy(iPostActionArr, i11 + 1, iPostActionArr, i11, javaModelOperation.actionsEnd - i11);
            int i12 = javaModelOperation.actionsEnd;
            javaModelOperation.actionsEnd = i12 - 1;
            iPostActionArr[i12] = null;
        }
    }

    public boolean prefixesOneOf(IPath iPath, IPath[] iPathArr) {
        for (IPath iPath2 : iPathArr) {
            if (iPath.isPrefixOf(iPath2)) {
                return true;
            }
        }
        return false;
    }

    public void pushOperation(JavaModelOperation javaModelOperation) {
        getCurrentOperationStack().add(javaModelOperation);
    }

    public void removeAllPostAction(String str) {
        if (POST_ACTION_VERBOSE) {
            System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelOperation.removeAllPostAction(String)] Removing actions " + str);
        }
        JavaModelOperation javaModelOperation = (JavaModelOperation) getCurrentOperationStack().get(0);
        IPostAction[] iPostActionArr = javaModelOperation.actions;
        if (iPostActionArr == null) {
            return;
        }
        int i10 = this.actionsStart - 1;
        while (true) {
            i10 = javaModelOperation.firstActionWithID(str, i10 + 1);
            if (i10 < 0) {
                return;
            }
            System.arraycopy(iPostActionArr, i10 + 1, iPostActionArr, i10, javaModelOperation.actionsEnd - i10);
            int i11 = javaModelOperation.actionsEnd;
            javaModelOperation.actionsEnd = i11 - 1;
            iPostActionArr[i11] = null;
        }
    }

    public void removeReconcileDelta(ICompilationUnit iCompilationUnit) {
        JavaModelManager.getJavaModelManager().getDeltaProcessor().reconcileDeltas.remove(iCompilationUnit);
    }

    /* JADX WARN: Finally extract failed */
    public void run(IProgressMonitor iProgressMonitor) throws CoreException {
        SubMonitor subMonitor = this.progressMonitor;
        try {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            int size = javaModelManager.getDeltaProcessor().javaModelDeltas.size();
            try {
                this.progressMonitor = SubMonitor.convert(iProgressMonitor);
                pushOperation(this);
                try {
                    if (canModifyRoots()) {
                        JavaModelManager.getDeltaState().initializeRoots(false);
                    }
                    executeOperation();
                    if (isTopLevelOperation()) {
                        runPostActions();
                    }
                    try {
                        DeltaProcessor deltaProcessor = javaModelManager.getDeltaProcessor();
                        int size2 = deltaProcessor.javaModelDeltas.size();
                        for (int i10 = size; i10 < size2; i10++) {
                            deltaProcessor.updateJavaModel(deltaProcessor.javaModelDeltas.get(i10));
                        }
                        int length = this.resultElements.length;
                        for (int i11 = 0; i11 < length; i11++) {
                            IJavaElement iJavaElement = this.resultElements[i11];
                            Openable openable = (Openable) iJavaElement.getOpenable();
                            if (!(openable instanceof CompilationUnit) || !((CompilationUnit) openable).isWorkingCopy()) {
                                ((JavaElement) openable.getParent()).close();
                            }
                            int elementType = iJavaElement.getElementType();
                            if (elementType == 3 || elementType == 4) {
                                deltaProcessor.projectCachesToReset.add(iJavaElement.getJavaProject());
                            }
                        }
                        deltaProcessor.resetProjectCaches();
                        if (isTopLevelOperation()) {
                            if (deltaProcessor.javaModelDeltas.size() <= size) {
                                if (!deltaProcessor.reconcileDeltas.isEmpty()) {
                                }
                            }
                            if (!hasModifiedResource()) {
                                deltaProcessor.fire(null, 0);
                            }
                        }
                        popOperation();
                    } catch (Throwable th2) {
                        popOperation();
                        throw th2;
                    }
                } finally {
                    if (isTopLevelOperation()) {
                        runPostActions();
                    }
                }
            } catch (Throwable th3) {
                try {
                    DeltaProcessor deltaProcessor2 = javaModelManager.getDeltaProcessor();
                    int size3 = deltaProcessor2.javaModelDeltas.size();
                    for (int i12 = size; i12 < size3; i12++) {
                        deltaProcessor2.updateJavaModel(deltaProcessor2.javaModelDeltas.get(i12));
                    }
                    int length2 = this.resultElements.length;
                    for (int i13 = 0; i13 < length2; i13++) {
                        IJavaElement iJavaElement2 = this.resultElements[i13];
                        Openable openable2 = (Openable) iJavaElement2.getOpenable();
                        if (!(openable2 instanceof CompilationUnit) || !((CompilationUnit) openable2).isWorkingCopy()) {
                            ((JavaElement) openable2.getParent()).close();
                        }
                        int elementType2 = iJavaElement2.getElementType();
                        if (elementType2 == 3 || elementType2 == 4) {
                            deltaProcessor2.projectCachesToReset.add(iJavaElement2.getJavaProject());
                        }
                    }
                    deltaProcessor2.resetProjectCaches();
                    if (isTopLevelOperation()) {
                        if (deltaProcessor2.javaModelDeltas.size() <= size) {
                            if (!deltaProcessor2.reconcileDeltas.isEmpty()) {
                            }
                        }
                        if (!hasModifiedResource()) {
                            deltaProcessor2.fire(null, 0);
                        }
                    }
                    popOperation();
                    throw th3;
                } catch (Throwable th4) {
                    popOperation();
                    throw th4;
                }
            }
        } finally {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            this.progressMonitor = subMonitor;
        }
    }

    public void runOperation(IProgressMonitor iProgressMonitor) throws JavaModelException {
        IJavaModelStatus verify = verify();
        if (!verify.isOK()) {
            throw new JavaModelException(verify);
        }
        try {
            if (isReadOnly()) {
                run(iProgressMonitor);
            } else {
                ResourcesPlugin.getWorkspace().run(this, getSchedulingRule(), 1, iProgressMonitor);
            }
        } catch (CoreException e10) {
            if (e10 instanceof JavaModelException) {
                throw ((JavaModelException) e10);
            }
            if (e10.getStatus().getCode() == 76) {
                e10.getStatus().getException();
            }
            throw new JavaModelException(e10);
        }
    }

    public void runPostActions() throws JavaModelException {
        while (true) {
            int i10 = this.actionsStart;
            if (i10 > this.actionsEnd) {
                return;
            }
            IPostAction[] iPostActionArr = this.actions;
            this.actionsStart = i10 + 1;
            IPostAction iPostAction = iPostActionArr[i10];
            if (POST_ACTION_VERBOSE) {
                System.out.println("(" + ((Object) Thread.currentThread()) + ") [JavaModelOperation.runPostActions()] Running action " + iPostAction.getID());
            }
            iPostAction.run();
        }
    }

    public void setCanceled(boolean z10) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.setCanceled(z10);
        }
    }

    public void setNested(boolean z10) {
        this.isNested = z10;
    }

    public void setTaskName(String str) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.setTaskName(str);
        }
    }

    public void subTask(String str) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.subTask(str);
        }
    }

    public IJavaModelStatus verify() {
        return commonVerify();
    }

    public void worked(int i10) {
        SubMonitor subMonitor = this.progressMonitor;
        if (subMonitor != null) {
            subMonitor.worked(i10);
            checkCanceled();
        }
    }

    public JavaModelOperation(IJavaElement[] iJavaElementArr) {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.force = false;
        this.elementsToProcess = iJavaElementArr;
    }

    public JavaModelOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2) {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.force = false;
        this.elementsToProcess = iJavaElementArr;
        this.parentElements = iJavaElementArr2;
    }

    public JavaModelOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, boolean z10) {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.elementsToProcess = iJavaElementArr;
        this.parentElements = iJavaElementArr2;
        this.force = z10;
    }

    public JavaModelOperation(IJavaElement[] iJavaElementArr, boolean z10) {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.elementsToProcess = iJavaElementArr;
        this.force = z10;
    }

    public JavaModelOperation(IJavaElement iJavaElement) {
        this.actionsStart = 0;
        this.actionsEnd = -1;
        this.resultElements = NO_ELEMENTS;
        this.progressMonitor = SubMonitor.convert((IProgressMonitor) null);
        this.isNested = false;
        this.force = false;
        this.elementsToProcess = new IJavaElement[]{iJavaElement};
    }
}
