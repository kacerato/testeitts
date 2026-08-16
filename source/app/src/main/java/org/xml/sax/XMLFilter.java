package org.xml.sax;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/XMLFilter.class
 */
public interface XMLFilter extends XMLReader {
    void setParent(XMLReader xMLReader);

    XMLReader getParent();
}
