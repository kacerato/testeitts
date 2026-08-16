package com.github.javaparser.printer.configuration.imports;

import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.printer.P;
import com.github.javaparser.printer.configuration.ImportOrderingStrategy;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class IntelliJImportOrderingStrategy implements ImportOrderingStrategy {
    private boolean sortImportsAlphabetically = false;

    @Override
    public boolean isSortImportsAlphabetically() {
        return this.sortImportsAlphabetically;
    }

    @Override
    public void setSortImportsAlphabetically(boolean sortAlphabetically) {
        this.sortImportsAlphabetically = sortAlphabetically;
    }

    @Override
    public List<NodeList<ImportDeclaration>> sortImports(NodeList<ImportDeclaration> nodes) {
        NodeList nodeList = new NodeList();
        NodeList nodeList2 = new NodeList();
        NodeList nodeList3 = new NodeList();
        Iterator<ImportDeclaration> it = nodes.iterator();
        while (it.hasNext()) {
            ImportDeclaration next = it.next();
            if (next.isStatic()) {
                nodeList3.add((NodeList) next);
            } else {
                String nameAsString = next.getNameAsString();
                if (nameAsString.startsWith("java.") || nameAsString.startsWith("javax.")) {
                    nodeList2.add((NodeList) next);
                } else {
                    nodeList.add((NodeList) next);
                }
            }
        }
        if (this.sortImportsAlphabetically) {
            Comparator comparing = Comparator.comparing(new P());
            nodeList.sort(comparing);
            nodeList2.sort(comparing);
            nodeList3.sort(comparing);
        }
        return Arrays.asList(nodeList, nodeList2, nodeList3);
    }
}
