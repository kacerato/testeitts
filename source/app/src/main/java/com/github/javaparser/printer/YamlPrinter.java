package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.metamodel.NodeMetaModel;
import com.github.javaparser.metamodel.PropertyMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import yd.C16181m;

public class YamlPrinter {
    private static final int NUM_SPACES_FOR_INDENT = 4;
    private final boolean outputNodeType;

    public YamlPrinter(boolean outputNodeType) {
        this.outputNodeType = outputNodeType;
    }

    private String escapeValue(String value) {
        return JavadocConstants.ANCHOR_PREFIX_END + value.replace(C16181m.f130232i, "\\\\").replaceAll(JavadocConstants.ANCHOR_PREFIX_END, "\\\\\"").replace("\n", "\\n").replace(StringUtils.CR, "\\r").replace("\f", "\\f").replace("\b", "\\b").replace("\t", "\\t") + JavadocConstants.ANCHOR_PREFIX_END;
    }

    private String indent(int level) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < level; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                sb2.append(" ");
            }
        }
        return sb2.toString();
    }

    public static void print(Node node) {
        System.out.println(new YamlPrinter(true).output(node));
    }

    public String output(Node node) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---");
        output(node, "root", 0, sb2);
        sb2.append(System.lineSeparator() + "...");
        return sb2.toString();
    }

    public void output(Node node, String name, int level, StringBuilder builder) {
        Utils.assertNotNull(node);
        NodeMetaModel metaModel = node.getMetaModel();
        List<PropertyMetaModel> allPropertyMetaModels = metaModel.getAllPropertyMetaModels();
        List<PropertyMetaModel> list = (List) allPropertyMetaModels.stream().filter(new E()).filter(new F()).collect(Collectors.toList());
        List<PropertyMetaModel> list2 = (List) allPropertyMetaModels.stream().filter(new G()).filter(new F()).collect(Collectors.toList());
        List<PropertyMetaModel> list3 = (List) allPropertyMetaModels.stream().filter(new H()).collect(Collectors.toList());
        if (this.outputNodeType) {
            builder.append(System.lineSeparator() + indent(level) + name + "(Type=" + metaModel.getTypeName() + "): ");
        } else {
            builder.append(System.lineSeparator() + indent(level) + name + ": ");
        }
        int i10 = level + 1;
        for (PropertyMetaModel propertyMetaModel : list) {
            builder.append(System.lineSeparator() + indent(i10) + propertyMetaModel.getName() + ": " + escapeValue(propertyMetaModel.getValue(node).toString()));
        }
        for (PropertyMetaModel propertyMetaModel2 : list2) {
            Node node2 = (Node) propertyMetaModel2.getValue(node);
            if (node2 != null) {
                output(node2, propertyMetaModel2.getName(), i10, builder);
            }
        }
        for (PropertyMetaModel propertyMetaModel3 : list3) {
            NodeList nodeList = (NodeList) propertyMetaModel3.getValue(node);
            if (nodeList != null && nodeList.isNonEmpty()) {
                builder.append(System.lineSeparator() + indent(i10) + propertyMetaModel3.getName() + ": ");
                String name2 = propertyMetaModel3.getName();
                if (name2.endsWith("s")) {
                    name2 = name2.substring(0, propertyMetaModel3.getName().length() - 1);
                }
                Iterator it = nodeList.iterator();
                while (it.hasNext()) {
                    output((Node) it.next(), "- " + name2, level + 2, builder);
                }
            }
        }
    }
}
