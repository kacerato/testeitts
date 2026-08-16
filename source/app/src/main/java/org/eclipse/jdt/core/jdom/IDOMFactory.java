package org.eclipse.jdt.core.jdom;

public interface IDOMFactory {
    IDOMType createClass();

    IDOMCompilationUnit createCompilationUnit();

    IDOMCompilationUnit createCompilationUnit(String str, String str2);

    IDOMCompilationUnit createCompilationUnit(char[] cArr, String str);

    IDOMField createField();

    IDOMField createField(String str);

    IDOMImport createImport();

    IDOMImport createImport(String str);

    IDOMInitializer createInitializer();

    IDOMInitializer createInitializer(String str);

    IDOMType createInterface();

    IDOMMethod createMethod();

    IDOMMethod createMethod(String str);

    IDOMPackage createPackage();

    IDOMPackage createPackage(String str);

    IDOMType createType();

    IDOMType createType(String str);
}
