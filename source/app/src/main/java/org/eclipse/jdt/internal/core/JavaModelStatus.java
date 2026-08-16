package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;

public class JavaModelStatus extends Status implements IJavaModelStatus, IJavaModelStatusConstants {
    protected static final IStatus[] NO_CHILDREN = new IStatus[0];
    public static final IJavaModelStatus VERIFIED_OK = new JavaModelStatus(0, 0, Messages.status_OK);
    protected IStatus[] children;
    protected IJavaElement[] elements;
    protected IPath path;
    protected String string;

    public JavaModelStatus() {
        super(4, JavaCore.PLUGIN_ID, 0, "JavaModelStatus", (Throwable) null);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
    }

    public static IJavaModelStatus newMultiStatus(IJavaModelStatus[] iJavaModelStatusArr) {
        JavaModelStatus javaModelStatus = new JavaModelStatus();
        javaModelStatus.children = iJavaModelStatusArr;
        return javaModelStatus;
    }

    public int getBits() {
        return (1 << ((getCode() % 100) / 33)) | (1 << ((getCode() / 100) + 3));
    }

    public IStatus[] getChildren() {
        return this.children;
    }

    @Override
    public IJavaElement[] getElements() {
        return this.elements;
    }

    public String getMessage() {
        IClasspathContainer iClasspathContainer;
        Throwable exception = getException();
        if (exception != null) {
            String message = exception.getMessage();
            return message != null ? message : exception.toString();
        }
        switch (getCode()) {
            case IJavaModelStatusConstants.INVALID_CP_CONTAINER_ENTRY:
                IJavaProject iJavaProject = (IJavaProject) this.elements[0];
                try {
                    iClasspathContainer = JavaCore.getClasspathContainer(this.path, iJavaProject);
                } catch (JavaModelException unused) {
                    iClasspathContainer = null;
                }
                if (iClasspathContainer == null) {
                    ClasspathContainerInitializer classpathContainerInitializer = JavaCore.getClasspathContainerInitializer(this.path.segment(0));
                    if (classpathContainerInitializer != null) {
                        r1 = classpathContainerInitializer.getDescription(this.path, iJavaProject);
                    }
                } else {
                    r1 = iClasspathContainer.getDescription();
                }
                if (r1 == null) {
                    r1 = this.path.makeRelative().toString();
                }
                return Messages.bind(Messages.classpath_invalidContainer, (Object[]) new String[]{r1, iJavaProject.getElementName()});
            case IJavaModelStatusConstants.CP_CONTAINER_PATH_UNBOUND:
                IJavaProject iJavaProject2 = (IJavaProject) this.elements[0];
                ClasspathContainerInitializer classpathContainerInitializer2 = JavaCore.getClasspathContainerInitializer(this.path.segment(0));
                r1 = classpathContainerInitializer2 != null ? classpathContainerInitializer2.getDescription(this.path, iJavaProject2) : null;
                if (r1 == null) {
                    r1 = this.path.makeRelative().toString();
                }
                return Messages.bind(Messages.classpath_unboundContainerPath, (Object[]) new String[]{r1, iJavaProject2.getElementName()});
            case IJavaModelStatusConstants.CP_VARIABLE_PATH_UNBOUND:
                return Messages.bind(Messages.classpath_unboundVariablePath, (Object[]) new String[]{this.path.makeRelative().toString(), ((IJavaProject) this.elements[0]).getElementName()});
            case IJavaModelStatusConstants.CORE_EXCEPTION:
                return Messages.status_coreException;
            case IJavaModelStatusConstants.INVALID_ELEMENT_TYPES:
                StringBuffer stringBuffer = new StringBuffer(Messages.operation_notSupported);
                for (int i10 = 0; i10 < this.elements.length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(((JavaElement) this.elements[i10]).toStringWithAncestors());
                }
                return stringBuffer.toString();
            case 968:
                return Messages.operation_needElements;
            case 969:
                return Messages.bind(Messages.element_doesNotExist, ((JavaElement) this.elements[0]).toStringWithAncestors());
            case 970:
                return Messages.operation_needPath;
            case 971:
                return Messages.bind(Messages.operation_pathOutsideProject, (Object[]) new String[]{this.string, ((JavaElement) this.elements[0]).toStringWithAncestors()});
            case IJavaModelStatusConstants.RELATIVE_PATH:
                return Messages.bind(Messages.operation_needAbsolutePath, getPath().toString());
            case IJavaModelStatusConstants.DEVICE_PATH:
                return Messages.bind(Messages.status_cannotUseDeviceOnPath, getPath().toString());
            case IJavaModelStatusConstants.NULL_STRING:
                return Messages.operation_needString;
            case 976:
                IJavaElement iJavaElement = this.elements[0];
                String elementName = iJavaElement.getElementName();
                return ((iJavaElement instanceof IPackageFragment) && elementName.equals("")) ? Messages.status_defaultPackageReadOnly : Messages.bind(Messages.status_readOnly, elementName);
            case 977:
                IJavaElement[] iJavaElementArr = this.elements;
                if (iJavaElementArr != null && iJavaElementArr.length > 0) {
                    IJavaElement iJavaElement2 = iJavaElementArr[0];
                    if ((iJavaElement2 instanceof PackageFragment) && ((PackageFragment) iJavaElement2).isDefaultPackage()) {
                        return Messages.operation_cannotRenameDefaultPackage;
                    }
                }
                String str = this.string;
                return str != null ? str : Messages.bind(Messages.status_nameCollision, "");
            case 978:
                return Messages.bind(Messages.status_invalidDestination, ((JavaElement) this.elements[0]).toStringWithAncestors());
            case IJavaModelStatusConstants.INVALID_PATH:
                String str2 = this.string;
                if (str2 != null) {
                    return str2;
                }
                return Messages.bind(Messages.status_invalidPath, (Object[]) new String[]{getPath() == null ? "null" : getPath().toString()});
            case IJavaModelStatusConstants.INDEX_OUT_OF_BOUNDS:
                return Messages.status_indexOutOfBounds;
            case IJavaModelStatusConstants.UPDATE_CONFLICT:
                return Messages.status_updateConflict;
            case IJavaModelStatusConstants.NULL_NAME:
                return Messages.operation_needName;
            case IJavaModelStatusConstants.INVALID_NAME:
                return Messages.bind(Messages.status_invalidName, this.string);
            case IJavaModelStatusConstants.INVALID_CONTENTS:
                return Messages.status_invalidContents;
            case IJavaModelStatusConstants.IO_EXCEPTION:
                return Messages.status_IOException;
            case IJavaModelStatusConstants.DOM_EXCEPTION:
                return Messages.status_JDOMError;
            case IJavaModelStatusConstants.TARGET_EXCEPTION:
                return Messages.status_targetException;
            case IJavaModelStatusConstants.BUILDER_INITIALIZATION_ERROR:
                return Messages.build_initializationError;
            case IJavaModelStatusConstants.BUILDER_SERIALIZATION_ERROR:
                return Messages.build_serializationError;
            case IJavaModelStatusConstants.EVALUATION_ERROR:
                return Messages.bind(Messages.status_evaluationError, this.string);
            case IJavaModelStatusConstants.INVALID_SIBLING:
                String str3 = this.string;
                return str3 != null ? Messages.bind(Messages.status_invalidSibling, str3) : Messages.bind(Messages.status_invalidSibling, ((JavaElement) this.elements[0]).toStringWithAncestors());
            case IJavaModelStatusConstants.INVALID_RESOURCE:
                return Messages.bind(Messages.status_invalidResource, this.string);
            case IJavaModelStatusConstants.INVALID_RESOURCE_TYPE:
                return Messages.bind(Messages.status_invalidResourceType, this.string);
            case IJavaModelStatusConstants.INVALID_PROJECT:
                return Messages.bind(Messages.status_invalidProject, this.string);
            case IJavaModelStatusConstants.INVALID_PACKAGE:
                return Messages.bind(Messages.status_invalidPackage, this.string);
            case 999:
                return Messages.bind(Messages.status_noLocalContents, getPath().toString());
            case 1001:
                return Messages.bind(Messages.classpath_cycle, (Object[]) new String[]{((IJavaProject) this.elements[0]).getElementName(), this.string});
            case 1002:
                String elementName2 = ((IJavaProject) this.elements[0]).getElementName();
                IPath iPath = this.path;
                if (iPath.segment(0).toString().equals(elementName2)) {
                    iPath = this.path.removeFirstSegments(1);
                }
                return Messages.bind(Messages.classpath_disabledInclusionExclusionPatterns, (Object[]) new String[]{iPath.makeRelative().toString(), elementName2});
            case 1003:
                String elementName3 = ((IJavaProject) this.elements[0]).getElementName();
                IPath iPath2 = this.path;
                if (iPath2.segment(0).toString().equals(elementName3)) {
                    iPath2 = this.path.removeFirstSegments(1);
                }
                return Messages.bind(Messages.classpath_disabledMultipleOutputLocations, (Object[]) new String[]{iPath2.makeRelative().toString(), elementName3});
            case 1006:
                return Messages.bind(Messages.element_notOnClasspath, ((JavaElement) this.elements[0]).toStringWithAncestors());
            case 1008:
                IJavaElement[] iJavaElementArr2 = this.elements;
                if (iJavaElementArr2 != null && iJavaElementArr2.length == 1) {
                    return this.string != null ? Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, ((JavaElement) iJavaElementArr2[0]).toStringWithAncestors(), this.string) : Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, ((JavaElement) iJavaElementArr2[0]).toStringWithAncestors(), "");
                }
                String str4 = this.string;
                if (str4 != null) {
                    return Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, str4, "");
                }
                break;
            case 1009:
                return Messages.bind(Messages.status_unknown_javadoc_format, ((JavaElement) this.elements[0]).toStringWithAncestors());
            case 1010:
                return Messages.bind(Messages.classpath_deprecated_variable, (Object[]) new String[]{this.path.segment(0).toString(), ((IJavaProject) this.elements[0]).getElementName(), this.string});
            case 1012:
                IJavaElement[] iJavaElementArr3 = this.elements;
                if (iJavaElementArr3 != null && iJavaElementArr3.length == 1) {
                    return this.string != null ? Messages.bind(Messages.status_timeout_javadoc, ((JavaElement) iJavaElementArr3[0]).toStringWithAncestors(), this.string) : Messages.bind(Messages.status_timeout_javadoc, ((JavaElement) iJavaElementArr3[0]).toStringWithAncestors(), "");
                }
                String str5 = this.string;
                if (str5 != null) {
                    return Messages.bind(Messages.status_timeout_javadoc, str5, "");
                }
                break;
            case 1015:
                String elementName4 = ((IJavaProject) this.elements[0]).getElementName();
                IPath iPath3 = this.path;
                if (iPath3.segment(0).toString().equals(elementName4)) {
                    iPath3 = this.path.removeFirstSegments(1);
                }
                return Messages.bind(Messages.classpath_testSourceRequiresSeparateOutputFolder, (Object[]) new String[]{iPath3.makeRelative().toString(), elementName4});
            case 1016:
                String elementName5 = ((IJavaProject) this.elements[0]).getElementName();
                IPath iPath4 = this.path;
                if (iPath4.segment(0).toString().equals(elementName5)) {
                    iPath4 = this.path.removeFirstSegments(1);
                }
                return Messages.bind(Messages.classpath_testOutputFolderMustBeSeparateFromMainOutputFolders, (Object[]) new String[]{iPath4.makeRelative().toString(), elementName5});
        }
        String str6 = this.string;
        return str6 != null ? str6 : "";
    }

    @Override
    public IPath getPath() {
        return this.path;
    }

    public int getSeverity() {
        IStatus[] iStatusArr = this.children;
        if (iStatusArr == NO_CHILDREN) {
            return super.getSeverity();
        }
        int length = iStatusArr.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            int severity = this.children[i11].getSeverity();
            if (severity > i10) {
                i10 = severity;
            }
        }
        return i10;
    }

    @Override
    public String getString() {
        return this.string;
    }

    @Override
    public boolean isDoesNotExist() {
        int code = getCode();
        return code == 969 || code == 1006;
    }

    public boolean isMultiStatus() {
        return this.children != NO_CHILDREN;
    }

    public boolean isOK() {
        return getCode() == 0;
    }

    public boolean matches(int i10) {
        if (!isMultiStatus()) {
            return matches(this, i10);
        }
        int length = this.children.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (matches((JavaModelStatus) this.children[i11], i10)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (this == VERIFIED_OK) {
            return "JavaModelStatus[OK]";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Java Model Status [");
        stringBuffer.append(getMessage());
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public JavaModelStatus(int i10) {
        super(4, JavaCore.PLUGIN_ID, i10, "JavaModelStatus", (Throwable) null);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = JavaElement.NO_ELEMENTS;
    }

    public boolean matches(JavaModelStatus javaModelStatus, int i10) {
        int i11 = i10 & 7;
        int i12 = i10 & (-8);
        int bits = javaModelStatus.getBits();
        if (i11 == 0 || (i11 & bits) != 0) {
            return i12 == 0 || (bits & i12) != 0;
        }
        return false;
    }

    public JavaModelStatus(int i10, IJavaElement[] iJavaElementArr) {
        super(4, JavaCore.PLUGIN_ID, i10, "JavaModelStatus", (Throwable) null);
        this.children = NO_CHILDREN;
        this.elements = iJavaElementArr;
        this.path = null;
    }

    public JavaModelStatus(int i10, String str) {
        this(4, i10, str);
    }

    public JavaModelStatus(int i10, int i11, String str) {
        super(i10, JavaCore.PLUGIN_ID, i11, "JavaModelStatus", (Throwable) null);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = JavaElement.NO_ELEMENTS;
        this.path = null;
        this.string = str;
    }

    public JavaModelStatus(int i10, Throwable th2) {
        super(4, JavaCore.PLUGIN_ID, i10, "JavaModelStatus", th2);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = JavaElement.NO_ELEMENTS;
    }

    public JavaModelStatus(int i10, IPath iPath) {
        super(4, JavaCore.PLUGIN_ID, i10, "JavaModelStatus", (Throwable) null);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = JavaElement.NO_ELEMENTS;
        this.path = iPath;
    }

    public JavaModelStatus(int i10, IJavaElement iJavaElement) {
        this(i10, new IJavaElement[]{iJavaElement});
    }

    public JavaModelStatus(int i10, IJavaElement iJavaElement, String str) {
        this(i10, new IJavaElement[]{iJavaElement});
        this.string = str;
    }

    public JavaModelStatus(int i10, IJavaElement iJavaElement, IPath iPath) {
        this(i10, new IJavaElement[]{iJavaElement});
        this.path = iPath;
    }

    public JavaModelStatus(int i10, IJavaElement iJavaElement, IPath iPath, String str) {
        this(i10, new IJavaElement[]{iJavaElement});
        this.path = iPath;
        this.string = str;
    }

    public JavaModelStatus(int i10, int i11, IJavaElement iJavaElement, IPath iPath, String str) {
        super(i10, JavaCore.PLUGIN_ID, i11, "JavaModelStatus", (Throwable) null);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = new IJavaElement[]{iJavaElement};
        this.path = iPath;
        this.string = str;
    }

    public JavaModelStatus(CoreException coreException) {
        super(4, JavaCore.PLUGIN_ID, IJavaModelStatusConstants.CORE_EXCEPTION, "JavaModelStatus", coreException);
        this.elements = new IJavaElement[0];
        this.children = NO_CHILDREN;
        this.elements = JavaElement.NO_ELEMENTS;
    }
}
