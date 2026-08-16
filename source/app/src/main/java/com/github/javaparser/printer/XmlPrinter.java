package com.github.javaparser.printer;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.metamodel.NodeMetaModel;
import com.github.javaparser.metamodel.PropertyMetaModel;
import com.github.javaparser.utils.Utils;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;

public class XmlPrinter {
    private static final Class<?> TYPE_CLASS = Type.class;
    private final boolean outputNodeType;

    public XmlPrinter(boolean outputNodeType) {
        this.outputNodeType = outputNodeType;
    }

    public static boolean lambda$outputNode$0(final Node node, PropertyMetaModel propertyMetaModel) {
        return propertyMetaModel.getValue(node) != null;
    }

    public static boolean lambda$outputNode$1(final Node node, PropertyMetaModel propertyMetaModel) {
        return ((NodeList) propertyMetaModel.getValue(node)).isNonEmpty();
    }

    public static boolean lambda$outputNode$2(PropertyMetaModel propertyMetaModel) {
        return TYPE_CLASS == propertyMetaModel.getType();
    }

    public static void lambda$outputNode$3(final Node node, final XMLStreamWriter xmlWriter, PropertyMetaModel attributeMetaModel) {
        try {
            xmlWriter.writeAttribute(attributeMetaModel.getName(), attributeMetaModel.getValue(node).toString());
        } catch (XMLStreamException e10) {
            throw new RuntimeXMLStreamException(e10);
        }
    }

    public void lambda$outputNode$4(final Node node, final XMLStreamWriter xmlWriter, PropertyMetaModel subNodeMetaModel) {
        try {
            outputNode((Node) subNodeMetaModel.getValue(node), subNodeMetaModel.getName(), xmlWriter);
        } catch (XMLStreamException e10) {
            throw new RuntimeXMLStreamException(e10);
        }
    }

    public void lambda$outputNode$5(final Node node, final XMLStreamWriter xmlWriter, PropertyMetaModel listMetaModel) {
        try {
            String name = listMetaModel.getName();
            String substring = name.substring(0, name.length() - 1);
            NodeList nodeList = (NodeList) listMetaModel.getValue(node);
            xmlWriter.writeStartElement(name);
            Iterator it = nodeList.iterator();
            while (it.hasNext()) {
                outputNode((Node) it.next(), substring, xmlWriter);
            }
            xmlWriter.writeEndElement();
        } catch (XMLStreamException e10) {
            throw new RuntimeXMLStreamException(e10);
        }
    }

    public static void print(Node node) {
        System.out.println(new XmlPrinter(true).output(node));
    }

    public String output(Node node) {
        return stringWriterOutput(node, "root").toString();
    }

    public void outputDocument(Node node, String name, Writer writer) throws XMLStreamException {
        XMLStreamWriter createXMLStreamWriter = XMLOutputFactory.newInstance().createXMLStreamWriter(writer);
        try {
            outputDocument(node, name, createXMLStreamWriter);
        } finally {
            createXMLStreamWriter.close();
        }
    }

    public void outputNode(final Node node, String name, final XMLStreamWriter xmlWriter) throws XMLStreamException {
        Utils.assertNotNull(node);
        Utils.assertNonEmpty(name);
        Utils.assertNotNull(xmlWriter);
        NodeMetaModel metaModel = node.getMetaModel();
        List<PropertyMetaModel> allPropertyMetaModels = metaModel.getAllPropertyMetaModels();
        Predicate<? super PropertyMetaModel> predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$outputNode$0;
                lambda$outputNode$0 = XmlPrinter.lambda$outputNode$0(Node.this, (PropertyMetaModel) obj);
                return lambda$outputNode$0;
            }
        };
        Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$outputNode$1;
                lambda$outputNode$1 = XmlPrinter.lambda$outputNode$1(Node.this, (PropertyMetaModel) obj);
                return lambda$outputNode$1;
            }
        };
        Predicate predicate3 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$outputNode$2;
                lambda$outputNode$2 = XmlPrinter.lambda$outputNode$2((PropertyMetaModel) obj);
                return lambda$outputNode$2;
            }
        };
        xmlWriter.writeStartElement(name);
        if (this.outputNodeType) {
            xmlWriter.writeAttribute("type", metaModel.getTypeName());
        }
        try {
            allPropertyMetaModels.stream().filter(new E()).filter(new F()).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    XmlPrinter.lambda$outputNode$3(Node.this, xmlWriter, (PropertyMetaModel) obj);
                }
            });
            allPropertyMetaModels.stream().filter(new G()).filter(new F()).filter(predicate).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    XmlPrinter.this.lambda$outputNode$4(node, xmlWriter, (PropertyMetaModel) obj);
                }
            });
            allPropertyMetaModels.stream().filter(new H()).filter(predicate).filter(predicate2.or(predicate3)).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    XmlPrinter.this.lambda$outputNode$5(node, xmlWriter, (PropertyMetaModel) obj);
                }
            });
            xmlWriter.writeEndElement();
        } catch (RuntimeXMLStreamException e10) {
            throw e10.getXMLStreamCause();
        }
    }

    public StringWriter stringWriterOutput(Node node, String name) {
        StringWriter stringWriter = new StringWriter();
        try {
            outputDocument(node, name, stringWriter);
            return stringWriter;
        } catch (XMLStreamException e10) {
            throw new RuntimeXMLStreamException(e10);
        }
    }

    @Deprecated
    public void output(Node node, String name, int level, StringBuilder builder) {
        builder.append(stringWriterOutput(node, name).toString());
    }

    public void outputDocument(Node node, String name, XMLStreamWriter xmlWriter) throws XMLStreamException {
        xmlWriter.writeStartDocument();
        outputNode(node, name, xmlWriter);
        xmlWriter.writeEndDocument();
    }
}
