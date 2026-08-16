package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public interface IJavaElement extends IAdaptable {
    public static final int ANNOTATION = 16;
    public static final int CLASS_FILE = 6;
    public static final int COMPILATION_UNIT = 5;
    public static final int FIELD = 8;
    public static final int IMPORT_CONTAINER = 12;
    public static final int IMPORT_DECLARATION = 13;
    public static final int INITIALIZER = 10;
    public static final int JAVA_MODEL = 1;
    public static final int JAVA_MODULE = 17;
    public static final int JAVA_PROJECT = 2;
    public static final int LOCAL_VARIABLE = 14;
    public static final int METHOD = 9;
    public static final int PACKAGE_DECLARATION = 11;
    public static final int PACKAGE_FRAGMENT = 4;
    public static final int PACKAGE_FRAGMENT_ROOT = 3;
    public static final int TYPE = 7;
    public static final int TYPE_PARAMETER = 15;

    boolean exists();

    IJavaElement getAncestor(int i10);

    String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException;

    IResource getCorrespondingResource() throws JavaModelException;

    String getElementName();

    int getElementType();

    String getHandleIdentifier();

    IJavaModel getJavaModel();

    IJavaProject getJavaProject();

    IOpenable getOpenable();

    IJavaElement getParent();

    IPath getPath();

    IJavaElement getPrimaryElement();

    IResource getResource();

    ISchedulingRule getSchedulingRule();

    IResource getUnderlyingResource() throws JavaModelException;

    boolean isReadOnly();

    boolean isStructureKnown() throws JavaModelException;
}
