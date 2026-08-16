package org.xml.sax;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/EntityResolver.class
 */
public interface EntityResolver {
    InputSource resolveEntity(String str, String str2) throws SAXException, IOException;
}
