package org.xml.sax.ext;

import org.xml.sax.SAXException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/ext/LexicalHandler.class
 */
public interface LexicalHandler {
    void startDTD(String str, String str2, String str3) throws SAXException;

    void endDTD() throws SAXException;

    void startEntity(String str) throws SAXException;

    void endEntity(String str) throws SAXException;

    void startCDATA() throws SAXException;

    void endCDATA() throws SAXException;

    void comment(char[] cArr, int i10, int i11) throws SAXException;
}
