package org.xml.sax.ext;

import org.xml.sax.SAXException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/ext/DeclHandler.class
 */
public interface DeclHandler {
    void elementDecl(String str, String str2) throws SAXException;

    void attributeDecl(String str, String str2, String str3, String str4, String str5) throws SAXException;

    void internalEntityDecl(String str, String str2) throws SAXException;

    void externalEntityDecl(String str, String str2, String str3) throws SAXException;
}
