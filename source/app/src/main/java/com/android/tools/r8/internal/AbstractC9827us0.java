package com.android.tools.r8.internal;

import com.ardor3d.util.resource.ResourceLocatorTool;
import java.io.Reader;
import java.util.LinkedHashMap;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

public abstract class AbstractC9827us0 {
    public static final void a(Reader reader, AbstractC5963Tf0 abstractC5963Tf0) {
        GJ.c(abstractC5963Tf0, ResourceLocatorTool.TYPE_MODEL);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            XMLStreamReader createXMLStreamReader = XMLInputFactory.newInstance().createXMLStreamReader(reader);
            boolean z10 = false;
            while (!z10) {
                if (!createXMLStreamReader.hasNext()) {
                    break;
                }
                createXMLStreamReader.next();
                if (createXMLStreamReader.isStartElement()) {
                    if (GJ.a((Object) createXMLStreamReader.getLocalName(), (Object) "resources")) {
                        int attributeCount = createXMLStreamReader.getAttributeCount();
                        for (int i10 = 0; i10 < attributeCount; i10++) {
                            if (GJ.a((Object) createXMLStreamReader.getAttributeNamespace(i10), (Object) "http://schemas.android.com/tools")) {
                                String attributeLocalName = createXMLStreamReader.getAttributeLocalName(i10);
                                GJ.b(attributeLocalName, "xmlStreamReader.getAttributeLocalName(i)");
                                String attributeValue = createXMLStreamReader.getAttributeValue(i10);
                                GJ.b(attributeValue, "xmlStreamReader.getAttributeValue(i)");
                                linkedHashMap.put(attributeLocalName, attributeValue);
                            }
                        }
                    }
                    z10 = true;
                }
            }
            reader.close();
            AbstractC8552nC.a(linkedHashMap).forEach(new C9660ts0(abstractC5963Tf0));
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    reader.close();
                } catch (Throwable th4) {
                    if (th2 != th4) {
                        AbstractC9036q60.f51718a.a(th2, th4);
                    }
                }
                throw th3;
            }
        }
    }
}
