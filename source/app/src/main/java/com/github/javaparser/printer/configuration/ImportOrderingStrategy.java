package com.github.javaparser.printer.configuration;

import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.NodeList;
import java.util.List;

public interface ImportOrderingStrategy {
    boolean isSortImportsAlphabetically();

    void setSortImportsAlphabetically(boolean sortAlphabetically);

    List<NodeList<ImportDeclaration>> sortImports(NodeList<ImportDeclaration> imports);
}
