package com.github.javaparser.printer;

import B0.C2324i;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.metamodel.NodeMetaModel;
import com.github.javaparser.metamodel.PropertyMetaModel;
import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class DotPrinter {
    private int nodeCount;
    private final boolean outputNodeType;

    public DotPrinter(boolean outputNodeType) {
        this.outputNodeType = outputNodeType;
    }

    private static String escape(String value) {
        return value.replace(JavadocConstants.ANCHOR_PREFIX_END, "\\\"");
    }

    private String nextNodeName() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(C2324i.f1246e);
        int i10 = this.nodeCount;
        this.nodeCount = i10 + 1;
        sb2.append(i10);
        return sb2.toString();
    }

    public String output(Node node) {
        this.nodeCount = 0;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("digraph {");
        output(node, null, "root", sb2);
        sb2.append(((Object) LineSeparator.SYSTEM) + VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public void output(Node node, String parentNodeName, String name, StringBuilder builder) {
        Utils.assertNotNull(node);
        NodeMetaModel metaModel = node.getMetaModel();
        List<PropertyMetaModel> allPropertyMetaModels = metaModel.getAllPropertyMetaModels();
        List<PropertyMetaModel> list = (List) allPropertyMetaModels.stream().filter(new E()).filter(new F()).collect(Collectors.toList());
        List<PropertyMetaModel> list2 = (List) allPropertyMetaModels.stream().filter(new G()).filter(new F()).collect(Collectors.toList());
        List<PropertyMetaModel> list3 = (List) allPropertyMetaModels.stream().filter(new H()).collect(Collectors.toList());
        String nextNodeName = nextNodeName();
        if (this.outputNodeType) {
            builder.append(((Object) LineSeparator.SYSTEM) + nextNodeName + " [label=\"" + escape(name) + " (" + metaModel.getTypeName() + ")\"];");
        } else {
            builder.append(((Object) LineSeparator.SYSTEM) + nextNodeName + " [label=\"" + escape(name) + "\"];");
        }
        if (parentNodeName != null) {
            builder.append(((Object) LineSeparator.SYSTEM) + parentNodeName + " -> " + nextNodeName + ";");
        }
        for (PropertyMetaModel propertyMetaModel : list) {
            String nextNodeName2 = nextNodeName();
            StringBuilder sb2 = new StringBuilder();
            LineSeparator lineSeparator = LineSeparator.SYSTEM;
            sb2.append((Object) lineSeparator);
            sb2.append(nextNodeName2);
            sb2.append(" [label=\"");
            sb2.append(escape(propertyMetaModel.getName()));
            sb2.append("='");
            sb2.append(escape(propertyMetaModel.getValue(node).toString()));
            sb2.append("'\"];");
            builder.append(sb2.toString());
            builder.append(((Object) lineSeparator) + nextNodeName + " -> " + nextNodeName2 + ";");
        }
        for (PropertyMetaModel propertyMetaModel2 : list2) {
            Node node2 = (Node) propertyMetaModel2.getValue(node);
            if (node2 != null) {
                output(node2, nextNodeName, propertyMetaModel2.getName(), builder);
            }
        }
        for (PropertyMetaModel propertyMetaModel3 : list3) {
            NodeList nodeList = (NodeList) propertyMetaModel3.getValue(node);
            if (nodeList != null && nodeList.isNonEmpty()) {
                String nextNodeName3 = nextNodeName();
                StringBuilder sb3 = new StringBuilder();
                LineSeparator lineSeparator2 = LineSeparator.SYSTEM;
                sb3.append((Object) lineSeparator2);
                sb3.append(nextNodeName3);
                sb3.append(" [label=\"");
                sb3.append(escape(propertyMetaModel3.getName()));
                sb3.append("\"];");
                builder.append(sb3.toString());
                builder.append(((Object) lineSeparator2) + nextNodeName + " -> " + nextNodeName3 + ";");
                String substring = propertyMetaModel3.getName().substring(0, propertyMetaModel3.getName().length() + (-1));
                Iterator it = nodeList.iterator();
                while (it.hasNext()) {
                    output((Node) it.next(), nextNodeName3, substring, builder);
                }
            }
        }
    }
}
