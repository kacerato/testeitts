package com.ardor3d.util.export.xml;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DOMSerializer {
    private String _indent = "";
    private String _lineSeparator = "\n";
    private String _encoding = "UTF8";
    private final boolean _displayAttributesOnSeperateLine = true;

    private void print(Writer writer, String str) throws IOException {
        if (str == null) {
            return;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\r') {
                writer.write("&#xD;");
            } else if (charAt == '&') {
                writer.write("&amp;");
            } else if (charAt == '<') {
                writer.write("&lt;");
            } else if (charAt != '>') {
                writer.write(charAt);
            } else {
                writer.write("&gt;");
            }
        }
    }

    private void serializeNode(Node node, Writer writer, String str) throws IOException {
        switch (node.getNodeType()) {
            case 1:
                String nodeName = node.getNodeName();
                writer.write("<" + nodeName);
                NamedNodeMap attributes = node.getAttributes();
                for (int i10 = 0; i10 < attributes.getLength(); i10++) {
                    Node item = attributes.item(i10);
                    writer.write((i10 != 0 ? this._lineSeparator + str + this._indent : " ") + item.getNodeName() + "=\"");
                    print(writer, item.getNodeValue());
                    writer.write(JavadocConstants.ANCHOR_PREFIX_END);
                }
                writer.write(">");
                NodeList childNodes = node.getChildNodes();
                if (childNodes != null) {
                    if (childNodes.item(0) != null) {
                        childNodes.item(0).getNodeType();
                    }
                    for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                        serializeNode(childNodes.item(i11), writer, str + this._indent);
                    }
                    if (childNodes.item(0) != null) {
                        childNodes.item(childNodes.getLength() - 1).getNodeType();
                    }
                }
                writer.write("</" + nodeName + ">");
                return;
            case 2:
            case 6:
            default:
                return;
            case 3:
                print(writer, node.getNodeValue());
                return;
            case 4:
                writer.write("<![CDATA[");
                print(writer, node.getNodeValue());
                writer.write("]]>");
                return;
            case 5:
                writer.write("&" + node.getNodeName() + ";");
                return;
            case 7:
                writer.write("<?" + node.getNodeName() + " " + node.getNodeValue() + "?>");
                writer.write(this._lineSeparator);
                return;
            case 8:
                writer.write(str + "<!-- " + node.getNodeValue() + " -->");
                writer.write(this._lineSeparator);
                return;
            case 9:
                Document document = (Document) node;
                writer.write("<?xml version=\"");
                writer.write(document.getXmlVersion());
                writer.write("\" encoding=\"UTF-8\" standalone=\"");
                if (document.getXmlStandalone()) {
                    writer.write("yes");
                } else {
                    writer.write("no");
                }
                writer.write(JavadocConstants.ANCHOR_PREFIX_END);
                writer.write("?>");
                writer.write(this._lineSeparator);
                NodeList childNodes2 = node.getChildNodes();
                if (childNodes2 != null) {
                    for (int i12 = 0; i12 < childNodes2.getLength(); i12++) {
                        serializeNode(childNodes2.item(i12), writer, "");
                    }
                    return;
                }
                return;
            case 10:
                DocumentType documentType = (DocumentType) node;
                String publicId = documentType.getPublicId();
                String systemId = documentType.getSystemId();
                String internalSubset = documentType.getInternalSubset();
                writer.write("<!DOCTYPE " + documentType.getName());
                if (publicId != null) {
                    writer.write(" PUBLIC \"" + publicId + "\" ");
                } else {
                    writer.write(" SYSTEM ");
                }
                writer.write(JavadocConstants.ANCHOR_PREFIX_END + systemId + JavadocConstants.ANCHOR_PREFIX_END);
                if (internalSubset != null) {
                    writer.write(" [" + internalSubset + "]");
                }
                writer.write(">");
                writer.write(this._lineSeparator);
                return;
        }
    }

    public void serialize(Document document, OutputStream outputStream) throws IOException {
        serialize(document, new OutputStreamWriter(outputStream, this._encoding));
    }

    public void setEncoding(String str) {
        this._encoding = str;
    }

    public void setIndent(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append("\t");
        }
        this._indent = stringBuffer.toString();
    }

    public void setLineSeparator(String str) {
        this._lineSeparator = str;
    }

    public void serialize(Document document, File file) throws IOException {
        serialize(document, new FileWriter(file));
    }

    public void serialize(Document document, Writer writer) throws IOException {
        serializeNode(document, writer, "");
        writer.flush();
    }
}
