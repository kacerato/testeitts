package org.eclipse.jdt.core.jdom;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.core.jdom.DOMBuilder;
import org.eclipse.jdt.internal.core.jdom.SimpleDOMBuilder;
import org.eclipse.jdt.internal.core.util.Util;

public class DOMFactory implements IDOMFactory {
    String lineSeparator = Util.getLineSeparator((String) null, (IJavaProject) null);

    @Override
    public IDOMType createClass() {
        return createType("public class AClass {" + this.lineSeparator + VectorFormat.DEFAULT_SUFFIX + this.lineSeparator);
    }

    @Override
    public IDOMCompilationUnit createCompilationUnit() {
        return new DOMBuilder().createCompilationUnit();
    }

    @Override
    public IDOMField createField() {
        return createField("Object aField;" + this.lineSeparator);
    }

    @Override
    public IDOMImport createImport() {
        return new DOMBuilder().createImport();
    }

    @Override
    public IDOMInitializer createInitializer() {
        return createInitializer("static {}" + this.lineSeparator);
    }

    @Override
    public IDOMType createInterface() {
        return createType("public interface AnInterface {" + this.lineSeparator + VectorFormat.DEFAULT_SUFFIX + this.lineSeparator);
    }

    @Override
    public IDOMMethod createMethod() {
        return createMethod("public void newMethod() {" + this.lineSeparator + VectorFormat.DEFAULT_SUFFIX + this.lineSeparator);
    }

    @Override
    public IDOMPackage createPackage() {
        return new DOMBuilder().createPackage();
    }

    @Override
    public IDOMType createType() {
        return createType("public class AClass {" + this.lineSeparator + VectorFormat.DEFAULT_SUFFIX + this.lineSeparator);
    }

    @Override
    public IDOMCompilationUnit createCompilationUnit(char[] cArr, String str) {
        if (cArr == null) {
            return null;
        }
        return new SimpleDOMBuilder().createCompilationUnit(cArr, str.toCharArray());
    }

    @Override
    public IDOMField createField(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createField(str.toCharArray());
    }

    @Override
    public IDOMImport createImport(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createImport(str.toCharArray());
    }

    @Override
    public IDOMInitializer createInitializer(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createInitializer(str.toCharArray());
    }

    @Override
    public IDOMMethod createMethod(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createMethod(str.toCharArray());
    }

    @Override
    public IDOMPackage createPackage(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createPackage(str.toCharArray());
    }

    @Override
    public IDOMType createType(String str) {
        if (str == null) {
            return null;
        }
        return new DOMBuilder().createType(str.toCharArray());
    }

    @Override
    public IDOMCompilationUnit createCompilationUnit(String str, String str2) {
        if (str == null) {
            return null;
        }
        return new SimpleDOMBuilder().createCompilationUnit(str.toCharArray(), str2.toCharArray());
    }
}
