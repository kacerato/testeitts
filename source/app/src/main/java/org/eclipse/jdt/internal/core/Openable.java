package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import android.provider.Telephony;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.jdt.core.BufferChangedEvent;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferChangedListener;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.util.Util;
import org.openjdk.tools.doclint.DocLint;

public abstract class Openable extends JavaElement implements IOpenable, IBufferChangedListener {
    public Openable(JavaElement javaElement) {
        super(javaElement);
    }

    @Override
    public void bufferChanged(BufferChangedEvent bufferChangedEvent) {
        if (!bufferChangedEvent.getBuffer().isClosed()) {
            JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().add(this);
        } else {
            JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().remove(this);
            getBufferManager().removeBuffer(bufferChangedEvent.getBuffer());
        }
    }

    public abstract boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException;

    public boolean canBeRemovedFromCache() {
        try {
            return !hasUnsavedChanges();
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public boolean canBufferBeRemovedFromCache(IBuffer iBuffer) {
        return !iBuffer.hasUnsavedChanges();
    }

    public void closeBuffer() {
        IBuffer buffer;
        if (hasBuffer() && (buffer = getBufferManager().getBuffer(this)) != null) {
            buffer.close();
            buffer.removeBufferChangedListener(this);
        }
    }

    @Override
    public void closing(Object obj) {
        closeBuffer();
    }

    public void codeComplete(ICompilationUnit iCompilationUnit, ICompilationUnit iCompilationUnit2, int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, ITypeRoot iTypeRoot, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (completionRequestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        PerformanceStats stats = CompletionEngine.PERF ? PerformanceStats.getStats(JavaModelManager.COMPLETION_PERF, this) : null;
        if (stats != null) {
            stats.startRun(new String(iCompilationUnit.getFileName()) + " at " + i10);
        }
        IBuffer buffer = getBuffer();
        if (buffer == null) {
            return;
        }
        if (i10 < -1 || i10 > buffer.getLength()) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INDEX_OUT_OF_BOUNDS));
        }
        JavaProject javaProject = (JavaProject) getJavaProject();
        SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(workingCopyOwner, completionRequestor.isTestCodeExcluded());
        newSearchableNameEnvironment.unitToSkip = iCompilationUnit2;
        new CompletionEngine(newSearchableNameEnvironment, completionRequestor, javaProject.getOptions(true), javaProject, workingCopyOwner, iProgressMonitor).complete(iCompilationUnit, i10, 0, iTypeRoot);
        if (stats != null) {
            stats.endRun();
        }
        if (NameLookup.VERBOSE) {
            PrintStream printStream = System.out;
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
        }
    }

    public IJavaElement[] codeSelect(ICompilationUnit iCompilationUnit, int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        int i12;
        PerformanceStats stats = SelectionEngine.PERF ? PerformanceStats.getStats(JavaModelManager.SELECTION_PERF, this) : null;
        if (stats != null) {
            stats.startRun(new String(iCompilationUnit.getFileName()) + " at [" + i10 + DocLint.SEPARATOR + i11 + "]");
        }
        JavaProject javaProject = (JavaProject) getJavaProject();
        SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(workingCopyOwner);
        SelectionRequestor selectionRequestor = new SelectionRequestor(newSearchableNameEnvironment.nameLookup, this);
        IBuffer buffer = getBuffer();
        if (buffer == null) {
            return selectionRequestor.getElements();
        }
        int length = buffer.getLength();
        if (i10 < 0 || i11 < 0 || (i12 = i11 + i10) > length) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INDEX_OUT_OF_BOUNDS));
        }
        new SelectionEngine(newSearchableNameEnvironment, selectionRequestor, javaProject.getOptions(true), workingCopyOwner).select(iCompilationUnit, i10, i12 - 1);
        if (stats != null) {
            stats.endRun();
        }
        if (NameLookup.VERBOSE) {
            PrintStream printStream = System.out;
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
        }
        return selectionRequestor.getElements();
    }

    @Override
    public Object createElementInfo() {
        return new OpenableElementInfo();
    }

    @Override
    public boolean exists() {
        if (JavaModelManager.getJavaModelManager().getInfo(this) != null) {
            return true;
        }
        int elementType = getElementType();
        if (elementType == 4) {
            PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
            if (packageFragmentRoot.isArchive()) {
                try {
                    return ((JarPackageFragmentRootInfo) packageFragmentRoot.getElementInfo()).rawPackageInfo.containsKey(((PackageFragment) this).names);
                } catch (JavaModelException unused) {
                    return false;
                }
            }
        } else if (elementType == 6 && getPackageFragmentRoot().isArchive()) {
            return super.exists();
        }
        return validateExistence(resource()).isOK();
    }

    @Override
    public String findRecommendedLineSeparator() throws JavaModelException {
        IBuffer buffer = getBuffer();
        return Util.getLineSeparator(buffer == null ? null : buffer.getContents(), getJavaProject());
    }

    @Override
    public void generateInfos(Object obj, HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (JavaModelCache.VERBOSE) {
            int elementType = getElementType();
            String str = elementType != 2 ? elementType != 3 ? elementType != 4 ? elementType != 5 ? elementType != 6 ? "element" : "class file" : "compilation unit" : Telephony.Sms.Intents.EXTRA_PACKAGE_NAME : "root" : "project";
            System.out.println(((Object) Thread.currentThread()) + " OPENING " + str + " " + toStringWithAncestors());
        }
        openAncestors(hashMap, iProgressMonitor);
        IResource resource = resource();
        IStatus validateExistence = validateExistence(resource);
        if (!validateExistence.isOK() && !ignoreErrorStatus(validateExistence)) {
            throw newJavaModelException(validateExistence);
        }
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        hashMap.put(this, obj);
        try {
            OpenableElementInfo openableElementInfo = (OpenableElementInfo) obj;
            openableElementInfo.setIsStructureKnown(buildStructure(openableElementInfo, iProgressMonitor, hashMap, resource));
            JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().remove(this);
            if (JavaModelCache.VERBOSE) {
                System.out.println(JavaModelManager.getJavaModelManager().cacheToString("-> "));
            }
        } catch (JavaModelException e10) {
            hashMap.remove(this);
            throw e10;
        }
    }

    public IBuffer getBuffer() throws JavaModelException {
        if (!hasBuffer()) {
            return null;
        }
        Object elementInfo = getElementInfo();
        IBuffer buffer = getBufferManager().getBuffer(this);
        if (buffer == null) {
            buffer = openBuffer(null, elementInfo);
        }
        if (buffer instanceof NullBuffer) {
            return null;
        }
        return buffer;
    }

    public IBufferFactory getBufferFactory() {
        return getBufferManager().getDefaultBufferFactory();
    }

    public BufferManager getBufferManager() {
        return BufferManager.getDefaultBufferManager();
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        return getUnderlyingResource();
    }

    @Override
    public IOpenable getOpenable() {
        return this;
    }

    public PackageFragmentRoot getPackageFragmentRoot() {
        return (PackageFragmentRoot) getAncestor(3);
    }

    @Override
    public IResource getResource() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (packageFragmentRoot != null) {
            if (packageFragmentRoot.isExternal()) {
                return null;
            }
            if (packageFragmentRoot.isArchive()) {
                return packageFragmentRoot.resource(packageFragmentRoot);
            }
        }
        return resource(packageFragmentRoot);
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        IContainer underlyingResource = this.parent.getUnderlyingResource();
        if (underlyingResource == null) {
            return null;
        }
        int type = underlyingResource.getType();
        if (type != 2 && type != 4) {
            return underlyingResource;
        }
        IResource findMember = underlyingResource.findMember(getElementName());
        if (findMember != null) {
            return findMember;
        }
        throw newNotPresentException();
    }

    public boolean hasBuffer() {
        return false;
    }

    @Override
    public boolean hasUnsavedChanges() throws JavaModelException {
        if (isReadOnly() || !isOpen()) {
            return false;
        }
        IBuffer buffer = getBuffer();
        if (buffer != null && buffer.hasUnsavedChanges()) {
            return true;
        }
        int elementType = getElementType();
        if (elementType == 4 || elementType == 3 || elementType == 2 || elementType == 1) {
            Enumeration<IBuffer> openBuffers = getBufferManager().getOpenBuffers();
            while (openBuffers.hasMoreElements()) {
                IBuffer nextElement = openBuffers.nextElement();
                if (nextElement.hasUnsavedChanges() && isAncestorOf((IJavaElement) nextElement.getOwner())) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean ignoreErrorStatus(IStatus iStatus) {
        return false;
    }

    public boolean isConsistent() {
        return true;
    }

    @Override
    public boolean isOpen() {
        return JavaModelManager.getJavaModelManager().getInfo(this) != null;
    }

    public boolean isSourceElement() {
        return false;
    }

    @Override
    public boolean isStructureKnown() throws JavaModelException {
        return ((OpenableElementInfo) getElementInfo()).isStructureKnown();
    }

    public void makeConsistent(IProgressMonitor iProgressMonitor) throws JavaModelException {
    }

    @Override
    public void open(IProgressMonitor iProgressMonitor) throws JavaModelException {
        getElementInfo(iProgressMonitor);
    }

    public void openAncestors(HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException {
        Openable openable = (Openable) getOpenableParent();
        if (openable == null || openable.isOpen()) {
            return;
        }
        openable.generateInfos(openable.createElementInfo(), hashMap, iProgressMonitor);
    }

    public IBuffer openBuffer(IProgressMonitor iProgressMonitor, Object obj) throws JavaModelException {
        return null;
    }

    @Override
    public IResource resource() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (packageFragmentRoot != null && packageFragmentRoot.isArchive()) {
            return packageFragmentRoot.resource(packageFragmentRoot);
        }
        return resource(packageFragmentRoot);
    }

    public abstract IResource resource(PackageFragmentRoot packageFragmentRoot);

    public boolean resourceExists(IResource iResource) {
        return iResource.isAccessible();
    }

    public void save(IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException {
        if (isReadOnly()) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
        }
        IBuffer buffer = getBuffer();
        if (buffer != null) {
            buffer.save(iProgressMonitor, z10);
            makeConsistent(iProgressMonitor);
        }
    }

    public abstract IStatus validateExistence(IResource iResource);
}
