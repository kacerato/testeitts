package com.github.javaparser.printer.configuration.imports;

import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.printer.P;
import com.github.javaparser.printer.configuration.ImportOrderingStrategy;
import com.github.javaparser.printer.configuration.imports.DefaultImportOrderingStrategy;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.ToIntFunction;

public class DefaultImportOrderingStrategy implements ImportOrderingStrategy {
    private boolean sortImportsAlphabetically = false;

    public static int lambda$sortImports$0(ImportDeclaration importDeclaration) {
        return !importDeclaration.isStatic() ? 1 : 0;
    }

    @Override
    public boolean isSortImportsAlphabetically() {
        return this.sortImportsAlphabetically;
    }

    @Override
    public void setSortImportsAlphabetically(boolean sortImportsAlphabetically) {
        this.sortImportsAlphabetically = sortImportsAlphabetically;
    }

    @Override
    public List<NodeList<ImportDeclaration>> sortImports(NodeList<ImportDeclaration> nodes) {
        if (this.sortImportsAlphabetically) {
            nodes.sort(Comparator.comparingInt(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int lambda$sortImports$0;
                    lambda$sortImports$0 = DefaultImportOrderingStrategy.lambda$sortImports$0((ImportDeclaration) obj);
                    return lambda$sortImports$0;
                }
            }).thenComparing(new P()));
        }
        return Collections.singletonList(nodes);
    }
}
