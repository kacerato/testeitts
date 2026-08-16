package com.github.javaparser.printer.configuration.imports;

import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.printer.P;
import com.github.javaparser.printer.configuration.ImportOrderingStrategy;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class EclipseImportOrderingStrategy implements ImportOrderingStrategy {
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
        NodeList nodeList4 = new NodeList();
        NodeList nodeList5 = new NodeList();
        NodeList nodeList6 = new NodeList();
        Iterator<ImportDeclaration> it = nodes.iterator();
        while (it.hasNext()) {
            ImportDeclaration next = it.next();
            if (next.isStatic()) {
                nodeList.add((NodeList) next);
            } else {
                String nameAsString = next.getNameAsString();
                if (nameAsString.startsWith("java.")) {
                    nodeList2.add((NodeList) next);
                } else if (nameAsString.startsWith("javax.")) {
                    nodeList3.add((NodeList) next);
                } else if (nameAsString.startsWith("org.")) {
                    nodeList4.add((NodeList) next);
                } else if (nameAsString.startsWith("com.")) {
                    nodeList5.add((NodeList) next);
                } else {
                    nodeList6.add((NodeList) next);
                }
            }
        }
        if (this.sortImportsAlphabetically) {
            Comparator comparing = Comparator.comparing(new P());
            nodeList.sort(comparing);
            nodeList2.sort(comparing);
            nodeList3.sort(comparing);
            nodeList4.sort(comparing);
            nodeList5.sort(comparing);
            nodeList6.sort(comparing);
        }
        return Arrays.asList(nodeList, nodeList2, nodeList3, nodeList4, nodeList5, nodeList6);
    }
}
