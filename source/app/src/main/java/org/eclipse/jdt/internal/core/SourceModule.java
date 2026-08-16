package org.eclipse.jdt.internal.core;

import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;

public class SourceModule extends NamedMember implements AbstractModule {
    public SourceModule(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    @Override
    public String[] getCategories() throws JavaModelException {
        String[] strArr;
        Map<IJavaElement, String[]> categories = ((ModuleDescriptionInfo) getElementInfo()).getCategories();
        return (categories == null || (strArr = categories.get(this)) == null) ? CharOperation.NO_STRINGS : strArr;
    }

    @Override
    public int getFlags() throws JavaModelException {
        return ((ModuleDescriptionInfo) getElementInfo()).getModifiers();
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_MODULE;
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
}
