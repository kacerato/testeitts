package com.ardor3d.util.export.xml;

import java.io.OutputStream;
import org.w3c.dom.Document;

public class DOM_PrettyPrint {
    public static void serialize(Document document, OutputStream outputStream) throws Exception {
        DOMSerializer dOMSerializer = new DOMSerializer();
        dOMSerializer.setIndent(2);
        dOMSerializer.serialize(document, outputStream);
    }
}
