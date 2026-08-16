package org.eclipse.jdt.internal.core;

import java.net.URL;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.core.JavaModelManager;

public class BinaryModule extends BinaryMember implements AbstractModule {
    private IBinaryModule info;

    public BinaryModule(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryModule iBinaryModule = (IBinaryModule) getModuleInfo();
        return getAnnotations(iBinaryModule.getAnnotations(), iBinaryModule.getTagBits() & (-70368744177665L));
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents = getJavadocContents(iProgressMonitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getModuleDoc();
    }

    @Override
    public IJavaElement[] getChildren() throws JavaModelException {
        return JavaElement.NO_ELEMENTS;
    }

    @Override
    public int getFlags() throws JavaModelException {
        return getModuleInfo().isOpen() ? 32 : 0;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_MODULE;
    }

    public JavadocContents getJavadocContents(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents;
        JavaModelManager.PerProjectInfo perProjectInfoCheckExistence = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(getJavaProject().getProject());
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            javadocContents = (JavadocContents) perProjectInfoCheckExistence.javadocCache.get(this);
        }
        if (javadocContents != null && javadocContents != BinaryType.EMPTY_JAVADOC) {
            return javadocContents;
        }
        URL javadocBaseLocation = getJavadocBaseLocation();
        if (javadocBaseLocation == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(javadocBaseLocation.toExternalForm());
        if (stringBuffer.charAt(stringBuffer.length() - 1) != '/') {
            stringBuffer.append('/');
        }
        stringBuffer.append(getElementName());
        stringBuffer.append(JavadocConstants.MODULE_FILE_SUFFIX);
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        JavadocContents javadocContents2 = new JavadocContents(getURLContents(javadocBaseLocation, String.valueOf(stringBuffer)));
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            perProjectInfoCheckExistence.javadocCache.put(this, javadocContents2);
        }
        return javadocContents2;
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return getKey(this, z10);
    }

    @Override
    public IModule getModuleInfo() throws JavaModelException {
        if (this.info == null) {
            this.info = ((ModularClassFile) this.parent).getBinaryModuleInfo();
        }
        return this.info;
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null) {
            return SourceMapper.UNKNOWN_RANGE;
        }
        ((ModularClassFile) getClassFile()).getBuffer();
        return sourceMapper.getSourceRange(this);
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    @Override
    public String toString(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            toStringContent(stringBuffer, str);
        } catch (JavaModelException e10) {
            e10.printStackTrace();
        }
        return stringBuffer.toString();
    }

    public BinaryModule(JavaElement javaElement, IBinaryModule iBinaryModule) {
        super(javaElement, String.valueOf(iBinaryModule.name()));
        this.info = iBinaryModule;
    }
}
